; ModuleID = 'fs/notify/group.c'
source_filename = "fs/notify/group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fsnotify_put_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fsnotify_put_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fsnotify_alloc_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fsnotify_alloc_group ; .previous"

%struct.static_call_key = type { ptr, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.lock_class_key = type {}
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.13 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.13 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.14, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }

@__UNIQUE_ID___addressable_fsnotify_put_group337 = internal global ptr @fsnotify_put_group, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_fsnotify_alloc_group338 = internal global ptr @fsnotify_alloc_group, section ".discard.addressable", align 8, !dbg !294
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !296
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@__fsnotify_alloc_group.nofs_marks_lock = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !302
@__fsnotify_alloc_group.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5336
@.str = private unnamed_addr constant [27 x i8] c"&group->notification_waitq\00", align 1, !dbg !5338
@__fsnotify_alloc_group.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5343
@.str.2 = private unnamed_addr constant [19 x i8] c"&group->mark_mutex\00", align 1, !dbg !5345
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5350
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_fsnotify_put_group337, ptr @__UNIQUE_ID___addressable_fsnotify_alloc_group338, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fsnotify_group_stop_queueing(ptr noundef %group) #0 align 16 !dbg !5364 {
entry:
  %group.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  %0 = load ptr, ptr %group.addr, align 8, !dbg !5368
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2, !dbg !5369
  call void @spin_lock(ptr noundef %notification_lock) #14, !dbg !5370
  %1 = load ptr, ptr %group.addr, align 8, !dbg !5371
  %shutdown = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 8, !dbg !5372
  store i8 1, ptr %shutdown, align 4, !dbg !5373
  %2 = load ptr, ptr %group.addr, align 8, !dbg !5374
  %notification_lock1 = getelementptr inbounds %struct.fsnotify_group, ptr %2, i32 0, i32 2, !dbg !5375
  call void @spin_unlock(ptr noundef %notification_lock1) #14, !dbg !5376
  ret void, !dbg !5377
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #2 align 16 !dbg !5378 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5385
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5385
  call void @_raw_spin_lock(ptr noundef %1) #14, !dbg !5385
  ret void, !dbg !5386
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #2 align 16 !dbg !5387 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5389, metadata !DIExpression()), !dbg !5390
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5391
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5391
  call void @_raw_spin_unlock(ptr noundef %1) #14, !dbg !5391
  ret void, !dbg !5392
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fsnotify_destroy_group(ptr noundef %group) #0 align 16 !dbg !5393 {
entry:
  %group.addr = alloca ptr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5395, metadata !DIExpression()), !dbg !5416
  %0 = load ptr, ptr %group.addr, align 8, !dbg !5417
  call void @fsnotify_group_stop_queueing(ptr noundef %0) #14, !dbg !5418
  %1 = load ptr, ptr %group.addr, align 8, !dbg !5419
  call void @fsnotify_clear_marks_by_group(ptr noundef %1, i32 noundef -1) #14, !dbg !5420
  br label %do.body, !dbg !5421

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5422

do.body1:                                         ; preds = %do.body
  call void @might_resched() #14, !dbg !5423
  br label %do.end, !dbg !5423

do.end:                                           ; preds = %do.body1
  %2 = load ptr, ptr %group.addr, align 8, !dbg !5425
  %user_waits = getelementptr inbounds %struct.fsnotify_group, ptr %2, i32 0, i32 12, !dbg !5425
  %call = call i32 @atomic_read(ptr noundef %user_waits) #14, !dbg !5425
  %tobool = icmp ne i32 %call, 0, !dbg !5425
  br i1 %tobool, label %if.end, label %if.then, !dbg !5422

if.then:                                          ; preds = %do.end
  br label %do.end9, !dbg !5425

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #15, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5396, metadata !DIExpression()), !dbg !5427
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5410, metadata !DIExpression()), !dbg !5427
  store i64 0, ptr %__ret, align 8, !dbg !5427
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #14, !dbg !5427
  br label %for.cond, !dbg !5427

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #15, !dbg !5428
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5411, metadata !DIExpression()), !dbg !5428
  %3 = load ptr, ptr %group.addr, align 8, !dbg !5428
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 4, !dbg !5428
  %call2 = call i64 @prepare_to_wait_event(ptr noundef %notification_waitq, ptr noundef %__wq_entry, i32 noundef 2) #14, !dbg !5428
  store i64 %call2, ptr %__int, align 8, !dbg !5428
  %4 = load ptr, ptr %group.addr, align 8, !dbg !5429
  %user_waits3 = getelementptr inbounds %struct.fsnotify_group, ptr %4, i32 0, i32 12, !dbg !5429
  %call4 = call i32 @atomic_read(ptr noundef %user_waits3) #14, !dbg !5429
  %tobool5 = icmp ne i32 %call4, 0, !dbg !5429
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5428

if.then6:                                         ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5429

if.end7:                                          ; preds = %for.cond
  call void @schedule() #14, !dbg !5428
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5431
  br label %cleanup, !dbg !5431

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #15, !dbg !5431
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5431, !llvm.loop !5432

for.end:                                          ; preds = %cleanup
  %5 = load ptr, ptr %group.addr, align 8, !dbg !5427
  %notification_waitq8 = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 4, !dbg !5427
  call void @finish_wait(ptr noundef %notification_waitq8, ptr noundef %__wq_entry) #14, !dbg !5427
  br label %__out, !dbg !5427

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5415), !dbg !5427
  %6 = load i64, ptr %__ret, align 8, !dbg !5427
  store i64 %6, ptr %tmp, align 8, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !5422
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #15, !dbg !5422
  %7 = load i64, ptr %tmp, align 8, !dbg !5427
  br label %do.end9, !dbg !5422

do.end9:                                          ; preds = %__out, %if.then
  call void @fsnotify_wait_marks_destroyed() #14, !dbg !5435
  %8 = load ptr, ptr %group.addr, align 8, !dbg !5436
  call void @fsnotify_flush_notify(ptr noundef %8) #14, !dbg !5437
  %9 = load ptr, ptr %group.addr, align 8, !dbg !5438
  %overflow_event = getelementptr inbounds %struct.fsnotify_group, ptr %9, i32 0, i32 15, !dbg !5440
  %10 = load ptr, ptr %overflow_event, align 8, !dbg !5440
  %tobool10 = icmp ne ptr %10, null, !dbg !5438
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !5441

if.then11:                                        ; preds = %do.end9
  %11 = load ptr, ptr %group.addr, align 8, !dbg !5442
  %ops = getelementptr inbounds %struct.fsnotify_group, ptr %11, i32 0, i32 0, !dbg !5443
  %12 = load ptr, ptr %ops, align 8, !dbg !5443
  %free_event = getelementptr inbounds %struct.fsnotify_ops, ptr %12, i32 0, i32 4, !dbg !5444
  %13 = load ptr, ptr %free_event, align 8, !dbg !5444
  %14 = load ptr, ptr %group.addr, align 8, !dbg !5445
  %15 = load ptr, ptr %group.addr, align 8, !dbg !5446
  %overflow_event12 = getelementptr inbounds %struct.fsnotify_group, ptr %15, i32 0, i32 15, !dbg !5447
  %16 = load ptr, ptr %overflow_event12, align 8, !dbg !5447
  call void %13(ptr noundef %14, ptr noundef %16) #14, !dbg !5442
  br label %if.end13, !dbg !5442

if.end13:                                         ; preds = %if.then11, %do.end9
  %17 = load ptr, ptr %group.addr, align 8, !dbg !5448
  call void @fsnotify_put_group(ptr noundef %17) #14, !dbg !5449
  ret void, !dbg !5450

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5451 dso_local void @fsnotify_clear_marks_by_group(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #2 align 16 !dbg !298 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5454
  %0 = load ptr, ptr %tmp, align 8, !dbg !5454
  %call = call i32 %0() #14, !dbg !5456
  ret void, !dbg !5457
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #2 align 16 !dbg !5458 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5465, metadata !DIExpression()), !dbg !5466
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5467
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #14, !dbg !5468
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5469
  %call = call i32 @raw_atomic_read(ptr noundef %1) #14, !dbg !5470
  ret i32 %call, !dbg !5471
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5472 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5475 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5479 dso_local void @schedule() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5480 dso_local void @finish_wait(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5483 dso_local void @fsnotify_wait_marks_destroyed() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5484 dso_local void @fsnotify_flush_notify(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fsnotify_put_group(ptr noundef %group) #0 align 16 !dbg !5486 {
entry:
  %group.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5488, metadata !DIExpression()), !dbg !5489
  %0 = load ptr, ptr %group.addr, align 8, !dbg !5490
  %refcnt = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 1, !dbg !5492
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcnt) #14, !dbg !5493
  br i1 %call, label %if.then, label %if.end, !dbg !5494

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %group.addr, align 8, !dbg !5495
  call void @fsnotify_final_destroy_group(ptr noundef %1) #14, !dbg !5496
  br label %if.end, !dbg !5496

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5497
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fsnotify_get_group(ptr noundef %group) #0 align 16 !dbg !5498 {
entry:
  %group.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5500, metadata !DIExpression()), !dbg !5501
  %0 = load ptr, ptr %group.addr, align 8, !dbg !5502
  %refcnt = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 1, !dbg !5503
  call void @refcount_inc(ptr noundef %refcnt) #14, !dbg !5504
  ret void, !dbg !5505
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #5 align 16 !dbg !5506 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5511, metadata !DIExpression()), !dbg !5512
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5513
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #14, !dbg !5514
  ret void, !dbg !5515
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !5516 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5520, metadata !DIExpression()), !dbg !5521
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5522
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !5523
  ret i1 %call, !dbg !5524
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fsnotify_final_destroy_group(ptr noundef %group) #0 align 16 !dbg !5525 {
entry:
  %group.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !5527, metadata !DIExpression()), !dbg !5528
  %0 = load ptr, ptr %group.addr, align 8, !dbg !5529
  %ops = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 0, !dbg !5531
  %1 = load ptr, ptr %ops, align 8, !dbg !5531
  %free_group_priv = getelementptr inbounds %struct.fsnotify_ops, ptr %1, i32 0, i32 2, !dbg !5532
  %2 = load ptr, ptr %free_group_priv, align 8, !dbg !5532
  %tobool = icmp ne ptr %2, null, !dbg !5529
  br i1 %tobool, label %if.then, label %if.end, !dbg !5533

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %group.addr, align 8, !dbg !5534
  %ops1 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 0, !dbg !5535
  %4 = load ptr, ptr %ops1, align 8, !dbg !5535
  %free_group_priv2 = getelementptr inbounds %struct.fsnotify_ops, ptr %4, i32 0, i32 2, !dbg !5536
  %5 = load ptr, ptr %free_group_priv2, align 8, !dbg !5536
  %6 = load ptr, ptr %group.addr, align 8, !dbg !5537
  call void %5(ptr noundef %6) #14, !dbg !5534
  br label %if.end, !dbg !5534

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %group.addr, align 8, !dbg !5538
  %memcg = getelementptr inbounds %struct.fsnotify_group, ptr %7, i32 0, i32 16, !dbg !5539
  %8 = load ptr, ptr %memcg, align 8, !dbg !5539
  call void @mem_cgroup_put(ptr noundef %8) #14, !dbg !5540
  %9 = load ptr, ptr %group.addr, align 8, !dbg !5541
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %9, i32 0, i32 11, !dbg !5542
  call void @mutex_destroy(ptr noundef %mark_mutex) #14, !dbg !5543
  %10 = load ptr, ptr %group.addr, align 8, !dbg !5544
  call void @kfree(ptr noundef %10) #14, !dbg !5545
  ret void, !dbg !5546
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @fsnotify_alloc_group(ptr noundef %ops, i32 noundef %flags) #0 align 16 !dbg !5547 {
entry:
  %ops.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %gfp = alloca i32, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5551, metadata !DIExpression()), !dbg !5554
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5552, metadata !DIExpression()), !dbg !5555
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp) #15, !dbg !5556
  call void @llvm.dbg.declare(metadata ptr %gfp, metadata !5553, metadata !DIExpression()), !dbg !5557
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5558
  %and = and i32 %0, 1, !dbg !5559
  %tobool = icmp ne i32 %and, 0, !dbg !5560
  %1 = zext i1 %tobool to i64, !dbg !5560
  %cond = select i1 %tobool, i32 4197568, i32 3264, !dbg !5560
  store i32 %cond, ptr %gfp, align 4, !dbg !5557
  %2 = load ptr, ptr %ops.addr, align 8, !dbg !5561
  %3 = load i32, ptr %flags.addr, align 4, !dbg !5562
  %4 = load i32, ptr %gfp, align 4, !dbg !5563
  %call = call ptr @__fsnotify_alloc_group(ptr noundef %2, i32 noundef %3, i32 noundef %4) #14, !dbg !5564
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp) #15, !dbg !5565
  ret ptr %call, !dbg !5566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__fsnotify_alloc_group(ptr noundef %ops, i32 noundef %flags, i32 noundef %gfp) #0 align 16 !dbg !304 {
entry:
  %retval = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %group = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5332, metadata !DIExpression()), !dbg !5567
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5333, metadata !DIExpression()), !dbg !5568
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5334, metadata !DIExpression()), !dbg !5569
  call void @llvm.lifetime.start.p0(i64 8, ptr %group) #15, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %group, metadata !5335, metadata !DIExpression()), !dbg !5571
  %0 = load i32, ptr %gfp.addr, align 4, !dbg !5572
  %call = call noalias ptr @kzalloc(i64 noundef 200, i32 noundef %0) #16, !dbg !5573
  store ptr %call, ptr %group, align 8, !dbg !5574
  %1 = load ptr, ptr %group, align 8, !dbg !5575
  %tobool = icmp ne ptr %1, null, !dbg !5575
  br i1 %tobool, label %if.end, label %if.then, !dbg !5577

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !5578
  store ptr %call1, ptr %retval, align 8, !dbg !5579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5579

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %group, align 8, !dbg !5580
  %refcnt = getelementptr inbounds %struct.fsnotify_group, ptr %2, i32 0, i32 1, !dbg !5581
  call void @refcount_set(ptr noundef %refcnt, i32 noundef 1) #14, !dbg !5582
  %3 = load ptr, ptr %group, align 8, !dbg !5583
  %user_waits = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 12, !dbg !5584
  call void @atomic_set(ptr noundef %user_waits, i32 noundef 0) #14, !dbg !5585
  br label %do.body, !dbg !5586

do.body:                                          ; preds = %if.end
  %4 = load ptr, ptr %group, align 8, !dbg !5587
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %4, i32 0, i32 2, !dbg !5587
  %call2 = call ptr @spinlock_check(ptr noundef %notification_lock) #14, !dbg !5587
  %5 = load ptr, ptr %group, align 8, !dbg !5587
  %notification_lock3 = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 2, !dbg !5587
  %6 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5587
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !5587
  %7 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5587
  %counter = getelementptr inbounds %struct.atomic_t, ptr %7, i32 0, i32 0, !dbg !5587
  store i32 0, ptr %counter, align 4, !dbg !5587
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %notification_lock3, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5587
  br label %do.cond, !dbg !5587

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5587

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %group, align 8, !dbg !5589
  %notification_list = getelementptr inbounds %struct.fsnotify_group, ptr %8, i32 0, i32 3, !dbg !5590
  call void @INIT_LIST_HEAD(ptr noundef %notification_list) #14, !dbg !5591
  br label %do.body4, !dbg !5592

do.body4:                                         ; preds = %do.end
  %9 = load ptr, ptr %group, align 8, !dbg !5593
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %9, i32 0, i32 4, !dbg !5593
  call void @__init_waitqueue_head(ptr noundef %notification_waitq, ptr noundef @.str, ptr noundef @__fsnotify_alloc_group.__key) #14, !dbg !5593
  br label %do.cond5, !dbg !5593

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5593

do.end6:                                          ; preds = %do.cond5
  %10 = load ptr, ptr %group, align 8, !dbg !5595
  %max_events = getelementptr inbounds %struct.fsnotify_group, ptr %10, i32 0, i32 6, !dbg !5596
  store i32 -1, ptr %max_events, align 4, !dbg !5597
  br label %do.body7, !dbg !5598

do.body7:                                         ; preds = %do.end6
  %11 = load ptr, ptr %group, align 8, !dbg !5599
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %11, i32 0, i32 11, !dbg !5599
  call void @__mutex_init(ptr noundef %mark_mutex, ptr noundef @.str.2, ptr noundef @__fsnotify_alloc_group.__key.1) #14, !dbg !5599
  br label %do.cond8, !dbg !5599

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5599

do.end9:                                          ; preds = %do.cond8
  %12 = load ptr, ptr %group, align 8, !dbg !5601
  %marks_list = getelementptr inbounds %struct.fsnotify_group, ptr %12, i32 0, i32 13, !dbg !5602
  call void @INIT_LIST_HEAD(ptr noundef %marks_list) #14, !dbg !5603
  %13 = load ptr, ptr %ops.addr, align 8, !dbg !5604
  %14 = load ptr, ptr %group, align 8, !dbg !5605
  %ops10 = getelementptr inbounds %struct.fsnotify_group, ptr %14, i32 0, i32 0, !dbg !5606
  store ptr %13, ptr %ops10, align 8, !dbg !5607
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5608
  %16 = load ptr, ptr %group, align 8, !dbg !5609
  %flags11 = getelementptr inbounds %struct.fsnotify_group, ptr %16, i32 0, i32 9, !dbg !5610
  store i32 %15, ptr %flags11, align 8, !dbg !5611
  %17 = load i32, ptr %flags.addr, align 4, !dbg !5612
  %and = and i32 %17, 4, !dbg !5614
  %tobool12 = icmp ne i32 %and, 0, !dbg !5614
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !5615

if.then13:                                        ; preds = %do.end9
  br label %do.body14, !dbg !5616

do.body14:                                        ; preds = %if.then13
  br label %do.cond15, !dbg !5617

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5617

do.end16:                                         ; preds = %do.cond15
  br label %if.end17, !dbg !5617

if.end17:                                         ; preds = %do.end16, %do.end9
  %18 = load ptr, ptr %group, align 8, !dbg !5619
  store ptr %18, ptr %retval, align 8, !dbg !5620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5620

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %group) #15, !dbg !5621
  %19 = load ptr, ptr %retval, align 8, !dbg !5621
  ret ptr %19, !dbg !5621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fsnotify_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 16 !dbg !5622 {
entry:
  %fd.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %on.addr = alloca i32, align 4
  %group = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5624, metadata !DIExpression()), !dbg !5628
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5625, metadata !DIExpression()), !dbg !5629
  store i32 %on, ptr %on.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %on.addr, metadata !5626, metadata !DIExpression()), !dbg !5630
  call void @llvm.lifetime.start.p0(i64 8, ptr %group) #15, !dbg !5631
  call void @llvm.dbg.declare(metadata ptr %group, metadata !5627, metadata !DIExpression()), !dbg !5632
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5633
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5634
  %1 = load ptr, ptr %private_data, align 8, !dbg !5634
  store ptr %1, ptr %group, align 8, !dbg !5632
  %2 = load i32, ptr %fd.addr, align 4, !dbg !5635
  %3 = load ptr, ptr %file.addr, align 8, !dbg !5636
  %4 = load i32, ptr %on.addr, align 4, !dbg !5637
  %5 = load ptr, ptr %group, align 8, !dbg !5638
  %fsn_fa = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 14, !dbg !5639
  %call = call i32 @fasync_helper(i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %fsn_fa) #14, !dbg !5640
  %cmp = icmp sge i32 %call, 0, !dbg !5641
  %6 = zext i1 %cmp to i64, !dbg !5640
  %cond = select i1 %cmp, i32 0, i32 -5, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %group) #15, !dbg !5642
  ret i32 %cond, !dbg !5643
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5644 dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5648 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5653 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !5654 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5662, metadata !DIExpression()), !dbg !5664
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5663, metadata !DIExpression()), !dbg !5665
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5666
  %1 = load i64, ptr %size.addr, align 8, !dbg !5667
  %conv = trunc i64 %1 to i32, !dbg !5667
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !5668
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5669
  %3 = load i64, ptr %size.addr, align 8, !dbg !5669
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !5669
  ret void, !dbg !5670
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #2 align 16 !dbg !5671 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5674, metadata !DIExpression()), !dbg !5675
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5676
  %call = call i32 @arch_atomic_read(ptr noundef %0) #14, !dbg !5677
  ret i32 %call, !dbg !5678
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5679 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5684, metadata !DIExpression()), !dbg !5686
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5685, metadata !DIExpression()), !dbg !5687
  ret i1 true, !dbg !5688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5689 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5694, metadata !DIExpression()), !dbg !5697
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5695, metadata !DIExpression()), !dbg !5698
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5696, metadata !DIExpression()), !dbg !5699
  ret void, !dbg !5700
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #2 align 16 !dbg !5701 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5704, metadata !DIExpression()), !dbg !5705
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5706
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5706
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5706
  ret i32 %1, !dbg !5707
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5708 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5712, metadata !DIExpression()), !dbg !5714
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5713, metadata !DIExpression()), !dbg !5715
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5716
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5717
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !5718
  ret void, !dbg !5719
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5720 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5724, metadata !DIExpression()), !dbg !5728
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5725, metadata !DIExpression()), !dbg !5729
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5726, metadata !DIExpression()), !dbg !5730
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !5731
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5727, metadata !DIExpression()), !dbg !5732
  %0 = load i32, ptr %i.addr, align 4, !dbg !5733
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5734
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5735
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #14, !dbg !5736
  store i32 %call, ptr %old, align 4, !dbg !5732
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5737
  %tobool = icmp ne ptr %2, null, !dbg !5737
  br i1 %tobool, label %if.then, label %if.end, !dbg !5739

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5740
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5741
  store i32 %3, ptr %4, align 4, !dbg !5742
  br label %if.end, !dbg !5743

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5744
  %tobool1 = icmp ne i32 %5, 0, !dbg !5744
  %lnot = xor i1 %tobool1, true, !dbg !5744
  %lnot2 = xor i1 %lnot, true, !dbg !5744
  %lnot3 = xor i1 %lnot2, true, !dbg !5744
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5744
  %conv = sext i32 %lnot.ext to i64, !dbg !5744
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5744
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5744
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5746

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5747
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #14, !dbg !5748
  br label %if.end18, !dbg !5748

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5749
  %cmp = icmp slt i32 %7, 0, !dbg !5749
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5749

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5749
  %9 = load i32, ptr %i.addr, align 4, !dbg !5749
  %add = add i32 %8, %9, !dbg !5749
  %cmp7 = icmp slt i32 %add, 0, !dbg !5749
  br label %lor.end, !dbg !5749

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5749
  %lnot11 = xor i1 %lnot9, true, !dbg !5749
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5749
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5749
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5749
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5749
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5751

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5752
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #14, !dbg !5753
  br label %if.end17, !dbg !5753

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !5754
  ret void, !dbg !5754
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !5755 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5760, metadata !DIExpression()), !dbg !5762
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5761, metadata !DIExpression()), !dbg !5763
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5764
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5765
  %1 = load i32, ptr %i.addr, align 4, !dbg !5766
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5767
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #14, !dbg !5768
  ret i32 %call, !dbg !5769
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5770 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !5773 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5775, metadata !DIExpression()), !dbg !5777
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5776, metadata !DIExpression()), !dbg !5778
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5779
  %1 = load i64, ptr %size.addr, align 8, !dbg !5780
  %conv = trunc i64 %1 to i32, !dbg !5780
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !5781
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5782
  %3 = load i64, ptr %size.addr, align 8, !dbg !5782
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !5782
  ret void, !dbg !5783
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !5784 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5786, metadata !DIExpression()), !dbg !5788
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5787, metadata !DIExpression()), !dbg !5789
  %0 = load i32, ptr %i.addr, align 4, !dbg !5790
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5791
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #14, !dbg !5792
  ret i32 %call, !dbg !5793
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5794 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5796, metadata !DIExpression()), !dbg !5798
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5797, metadata !DIExpression()), !dbg !5799
  ret i1 true, !dbg !5800
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !5801 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5803, metadata !DIExpression()), !dbg !5807
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5804, metadata !DIExpression()), !dbg !5808
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !5809
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5805, metadata !DIExpression()), !dbg !5809
  %0 = load i32, ptr %i.addr, align 4, !dbg !5809
  store i32 %0, ptr %__ret, align 4, !dbg !5809
  %1 = load i32, ptr %__ret, align 4, !dbg !5809
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5809
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5809
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !5809, !srcloc !5810
  store i32 %3, ptr %__ret, align 4, !dbg !5809
  %4 = load i32, ptr %__ret, align 4, !dbg !5809
  store i32 %4, ptr %tmp, align 4, !dbg !5809
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !5811
  %5 = load i32, ptr %tmp, align 4, !dbg !5809
  ret i32 %5, !dbg !5812
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5813 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5817, metadata !DIExpression()), !dbg !5819
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5818, metadata !DIExpression()), !dbg !5820
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5821
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5822
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !5823
  ret i1 %call, !dbg !5824
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5825 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5829, metadata !DIExpression()), !dbg !5833
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5830, metadata !DIExpression()), !dbg !5834
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5831, metadata !DIExpression()), !dbg !5835
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !5836
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5832, metadata !DIExpression()), !dbg !5837
  %0 = load i32, ptr %i.addr, align 4, !dbg !5838
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5839
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5840
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !5841
  store i32 %call, ptr %old, align 4, !dbg !5837
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5842
  %tobool = icmp ne ptr %2, null, !dbg !5842
  br i1 %tobool, label %if.then, label %if.end, !dbg !5844

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5845
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5846
  store i32 %3, ptr %4, align 4, !dbg !5847
  br label %if.end, !dbg !5848

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5849
  %6 = load i32, ptr %i.addr, align 4, !dbg !5851
  %cmp = icmp eq i32 %5, %6, !dbg !5852
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5853

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5854

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5856

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5858

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5858

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5856

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5860

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5862

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5862

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5860, !srcloc !5864
  br label %do.cond7, !dbg !5860

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5860

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5856

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5856

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5865

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5866
  %cmp12 = icmp slt i32 %7, 0, !dbg !5866
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5866

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5866
  %9 = load i32, ptr %i.addr, align 4, !dbg !5866
  %sub = sub i32 %8, %9, !dbg !5866
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5866
  br label %lor.end, !dbg !5866

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5866
  %lnot14 = xor i1 %lnot, true, !dbg !5866
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5866
  %conv = sext i32 %lnot.ext to i64, !dbg !5866
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5866
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5866
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5868

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5869
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !5870
  br label %if.end17, !dbg !5870

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5871

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !5872
  %12 = load i1, ptr %retval, align 1, !dbg !5872
  ret i1 %12, !dbg !5872
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !5873 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5875, metadata !DIExpression()), !dbg !5877
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5876, metadata !DIExpression()), !dbg !5878
  br label %do.body, !dbg !5879

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5880

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5882
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5883
  %1 = load i32, ptr %i.addr, align 4, !dbg !5884
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5885
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !5886
  ret i32 %call, !dbg !5887
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !5888 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5890, metadata !DIExpression()), !dbg !5892
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5891, metadata !DIExpression()), !dbg !5893
  %0 = load i32, ptr %i.addr, align 4, !dbg !5894
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5895
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !5896
  ret i32 %call, !dbg !5897
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !5898 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5900, metadata !DIExpression()), !dbg !5904
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5901, metadata !DIExpression()), !dbg !5905
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5902, metadata !DIExpression()), !dbg !5906
  %0 = load i32, ptr %i.addr, align 4, !dbg !5906
  %sub = sub i32 0, %0, !dbg !5906
  store i32 %sub, ptr %__ret, align 4, !dbg !5906
  %1 = load i32, ptr %__ret, align 4, !dbg !5906
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5906
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5906
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !5906, !srcloc !5907
  store i32 %3, ptr %__ret, align 4, !dbg !5906
  %4 = load i32, ptr %__ret, align 4, !dbg !5906
  store i32 %4, ptr %tmp, align 4, !dbg !5906
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !5908
  %5 = load i32, ptr %tmp, align 4, !dbg !5906
  ret i32 %5, !dbg !5909
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mem_cgroup_put(ptr noundef %memcg) #5 align 16 !dbg !5910 {
entry:
  %memcg.addr = alloca ptr, align 8
  store ptr %memcg, ptr %memcg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memcg.addr, metadata !5915, metadata !DIExpression()), !dbg !5916
  ret void, !dbg !5917
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mutex_destroy(ptr noundef %lock) #5 align 16 !dbg !5918 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  ret void, !dbg !5925
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5926 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5929 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5933, metadata !DIExpression()), !dbg !5935
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5934, metadata !DIExpression()), !dbg !5936
  %0 = load i64, ptr %size.addr, align 8, !dbg !5937
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5938
  %or = or i32 %1, 256, !dbg !5939
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !5940
  ret ptr %call, !dbg !5941
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5942 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5947, metadata !DIExpression()), !dbg !5948
  %0 = load i64, ptr %error.addr, align 8, !dbg !5949
  %1 = inttoptr i64 %0 to ptr, !dbg !5950
  ret ptr %1, !dbg !5951
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #5 align 16 !dbg !5952 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5956, metadata !DIExpression()), !dbg !5958
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5957, metadata !DIExpression()), !dbg !5959
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5960
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !5961
  %1 = load i32, ptr %n.addr, align 4, !dbg !5962
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #14, !dbg !5963
  ret void, !dbg !5964
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !5965 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5969, metadata !DIExpression()), !dbg !5971
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5970, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5973
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5974
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5975
  %2 = load i32, ptr %i.addr, align 4, !dbg !5976
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #14, !dbg !5977
  ret void, !dbg !5978
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #2 align 16 !dbg !5979 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5983, metadata !DIExpression()), !dbg !5984
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5985
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5986
  ret ptr %1, !dbg !5987
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5988 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5993, metadata !DIExpression()), !dbg !5994
  br label %do.body, !dbg !5995

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5996

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5998

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5996

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6000
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6000
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6000
  store volatile ptr %0, ptr %next, align 8, !dbg !6000
  br label %do.end3, !dbg !6000

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5996

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6002

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6003

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6005

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6003

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6007
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6007
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6007
  store volatile ptr %2, ptr %prev, align 8, !dbg !6007
  br label %do.end9, !dbg !6007

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6003

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6009
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6010 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6014 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6017 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6019, metadata !DIExpression()), !dbg !6024
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6020, metadata !DIExpression()), !dbg !6025
  %0 = load i64, ptr %size.addr, align 8, !dbg !6026
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6027
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6028

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6029
  %tobool = icmp ne i64 %2, 0, !dbg !6029
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6030

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6021, metadata !DIExpression()), !dbg !6032
  %3 = load i64, ptr %size.addr, align 8, !dbg !6033
  %cmp = icmp ugt i64 %3, 8192, !dbg !6035
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6036

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6037
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6038
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !6039
  store ptr %call, ptr %retval, align 8, !dbg !6040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6040

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6041
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !6041
  store i32 %call2, ptr %index, align 4, !dbg !6042
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6043
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6044
  %9 = ptrtoint ptr %8 to i64, !dbg !6044
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !6045
  %idxprom = zext i32 %call3 to i64, !dbg !6046
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6046
  %10 = load i32, ptr %index, align 4, !dbg !6047
  %idxprom4 = zext i32 %10 to i64, !dbg !6046
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6046
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6046
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6048
  %13 = load i64, ptr %size.addr, align 8, !dbg !6049
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !6050
  store ptr %call6, ptr %retval, align 8, !dbg !6051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6051

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6052
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6053
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6054
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !6055
  store ptr %call8, ptr %retval, align 8, !dbg !6056
  br label %return, !dbg !6056

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6057
  ret ptr %16, !dbg !6057
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6058 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #2 align 16 !dbg !6059 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6063, metadata !DIExpression()), !dbg !6065
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6064, metadata !DIExpression()), !dbg !6066
  %0 = load i64, ptr %size.addr, align 8, !dbg !6067
  %tobool = icmp ne i64 %0, 0, !dbg !6067
  br i1 %tobool, label %if.end, label %if.then, !dbg !6069

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6070
  br label %return, !dbg !6070

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6071
  %cmp = icmp ule i64 %1, 8, !dbg !6073
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6074

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6075
  br label %return, !dbg !6075

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6076
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6078
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6079

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6080
  %cmp4 = icmp ule i64 %3, 96, !dbg !6081
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6082

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6083
  br label %return, !dbg !6083

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6084
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6086
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6087

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6088
  %cmp9 = icmp ule i64 %5, 192, !dbg !6089
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6090

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6091
  br label %return, !dbg !6091

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6092
  %cmp12 = icmp ule i64 %6, 8, !dbg !6094
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6095

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6096
  br label %return, !dbg !6096

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6097
  %cmp15 = icmp ule i64 %7, 16, !dbg !6099
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6100

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6101
  br label %return, !dbg !6101

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6102
  %cmp18 = icmp ule i64 %8, 32, !dbg !6104
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6105

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6106
  br label %return, !dbg !6106

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6107
  %cmp21 = icmp ule i64 %9, 64, !dbg !6109
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6110

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6111
  br label %return, !dbg !6111

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6112
  %cmp24 = icmp ule i64 %10, 128, !dbg !6114
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6115

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6116
  br label %return, !dbg !6116

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6117
  %cmp27 = icmp ule i64 %11, 256, !dbg !6119
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6120

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6121
  br label %return, !dbg !6121

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6122
  %cmp30 = icmp ule i64 %12, 512, !dbg !6124
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6125

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6126
  br label %return, !dbg !6126

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6127
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6129
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6130

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6131
  br label %return, !dbg !6131

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6132
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6134
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6135

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6136
  br label %return, !dbg !6136

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6137
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6139
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6140

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6141
  br label %return, !dbg !6141

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6142
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6144
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6145

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6146
  br label %return, !dbg !6146

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6147
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6149
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6150

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6151
  br label %return, !dbg !6151

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6152
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6154
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6155

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6156
  br label %return, !dbg !6156

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6157
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6159
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6160

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6161
  br label %return, !dbg !6161

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6162
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6164
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6165

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6166
  br label %return, !dbg !6166

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6167
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6169
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6170

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6171
  br label %return, !dbg !6171

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6172
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6174
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6175

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6176
  br label %return, !dbg !6176

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6177
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6179
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6180

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6181
  br label %return, !dbg !6181

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6182
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6184
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6185

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6186
  br label %return, !dbg !6186

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6187, !range !6189, !noundef !856
  %tobool69 = trunc i8 %25 to i1, !dbg !6187
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6190

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6191

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #18, !dbg !6192, !srcloc !6195
  unreachable, !dbg !6192

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6196

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6197

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6198

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6200

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6198

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !6202, !srcloc !6204
  br label %do.end75, !dbg !6202

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6198

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6205
  br label %return, !dbg !6205

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6206
  ret i32 %26, !dbg !6206
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6207 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #2 align 16 !dbg !6210 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6214, metadata !DIExpression()), !dbg !6216
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6215, metadata !DIExpression()), !dbg !6217
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6218
  %and = and i32 %0, 17, !dbg !6218
  %cmp = icmp eq i32 %and, 0, !dbg !6218
  %lnot = xor i1 %cmp, true, !dbg !6218
  %lnot1 = xor i1 %lnot, true, !dbg !6218
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6218
  %conv = sext i32 %lnot.ext to i64, !dbg !6218
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6218
  %tobool = icmp ne i64 %expval, 0, !dbg !6218
  br i1 %tobool, label %if.then, label %if.end, !dbg !6220

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6221
  br label %return, !dbg !6221

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6222
  %and2 = and i32 %1, 1, !dbg !6224
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6224
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6225

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6226
  br label %return, !dbg !6226

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6227
  br label %return, !dbg !6227

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6229
  ret i32 %2, !dbg !6229
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6230 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6231 dso_local void @__compiletime_assert_117() #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !6232 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6234, metadata !DIExpression()), !dbg !6236
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6235, metadata !DIExpression()), !dbg !6237
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6238
  %1 = load i64, ptr %size.addr, align 8, !dbg !6239
  %conv = trunc i64 %1 to i32, !dbg !6239
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !6240
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6241
  %3 = load i64, ptr %size.addr, align 8, !dbg !6241
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !6241
  ret void, !dbg !6242
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !6243 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6245, metadata !DIExpression()), !dbg !6247
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6246, metadata !DIExpression()), !dbg !6248
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6249
  %1 = load i32, ptr %i.addr, align 4, !dbg !6250
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #14, !dbg !6251
  ret void, !dbg !6252
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #2 align 16 !dbg !6253 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6255, metadata !DIExpression()), !dbg !6257
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6256, metadata !DIExpression()), !dbg !6258
  br label %do.body, !dbg !6259

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6260
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6260
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6260
  store volatile i32 %0, ptr %counter, align 4, !dbg !6260
  br label %do.end, !dbg !6260

do.end:                                           ; preds = %do.body
  ret void, !dbg !6262
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362}
!llvm.ident = !{!5363}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fsnotify_put_group337", scope: !2, file: !3, line: 112, type: !41, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/notify/.group.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/notify/group\22 -D KBUILD_BASENAME=\22group\22 -D KBUILD_MODNAME=\22group\22 -D __KBUILD_MODNAME=kmod_group -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/notify/group.ll fs/notify/group.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !285, globals: !293, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/notify/group.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4c7649b6832ecb8afcbee9cc286b8329")
!4 = !{!5, !13, !21, !26, !32, !128, !135, !143, !159, !164, !171, !177, !182, !188, !194, !201, !209, !216, !225, !230, !235, !241, !253, !258, !267, !275}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !14, line: 68, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!17 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!18 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!19 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!20 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!25 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !27, line: 16, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "TT_NONE", value: 0)
!30 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!31 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 147, baseType: !7, size: 32, elements: !125)
!33 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !33, line: 135, size: 512, elements: !35)
!35 = !{!36, !40, !42, !44, !48, !49, !65, !123, !124}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !34, file: !33, line: 136, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !34, file: !33, line: 137, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !34, file: !33, line: 138, baseType: !43, size: 32, offset: 128)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !34, file: !33, line: 139, baseType: !45, size: 16, offset: 160)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !46, line: 24, baseType: !47)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !33, line: 150, baseType: !32, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !34, file: !33, line: 151, baseType: !50, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !33, line: 64, baseType: !52)
!52 = !DISubroutineType(types: !53)
!53 = !{!43, !54, !43, !41, !55, !61}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 61, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !58, line: 72, baseType: !59)
!58 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !58, line: 16, baseType: !60)
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !46, line: 52, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !58, line: 88, baseType: !64)
!64 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !34, file: !33, line: 152, baseType: !66, size: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !33, line: 117, size: 256, elements: !68)
!68 = !{!69, !74}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !67, file: !33, line: 118, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !46, line: 174, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 172, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !71, file: !46, line: 173, baseType: !43, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !67, file: !33, line: 119, baseType: !75, size: 192, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !76, line: 41, baseType: !77)
!76 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !76, line: 37, size: 192, elements: !78)
!78 = !{!79, !117}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !77, file: !76, line: 38, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !81, line: 29, baseType: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !81, line: 17, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !81, line: 18, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !81, line: 18, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !85, file: !81, line: 19, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !89, line: 14, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !88, file: !89, line: 15, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !93, line: 44, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !93, line: 14, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !93, line: 15, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !93, line: 15, size: 32, elements: !98)
!98 = !{!99, !100, !110}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !97, file: !93, line: 16, baseType: !70, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 24, baseType: !101, size: 16)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 24, size: 16, elements: !102)
!102 = !{!103, !109}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !101, file: !93, line: 25, baseType: !104, size: 8)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !105, line: 17, baseType: !106)
!105 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !107, line: 21, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !101, file: !93, line: 26, baseType: !104, size: 8, offset: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 28, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 28, size: 32, elements: !112)
!112 = !{!113, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !111, file: !93, line: 29, baseType: !114, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !105, line: 19, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !107, line: 24, baseType: !47)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !111, file: !93, line: 30, baseType: !114, size: 16, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !77, file: !76, line: 39, baseType: !118, size: 128, offset: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !46, line: 190, size: 128, elements: !119)
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !46, line: 191, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !118, file: !46, line: 191, baseType: !121, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !34, file: !33, line: 153, baseType: !41, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !34, file: !33, line: 154, baseType: !41, size: 64, offset: 448)
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!127 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !129, line: 51, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!132 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!133 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!134 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !136, line: 9, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!137 = !{!138, !139, !140, !141, !142}
!138 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!139 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!140 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!141 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!142 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !144, line: 1325, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!146 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!147 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!148 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!149 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!150 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!151 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!152 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!153 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!154 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!155 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!156 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!157 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!158 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !160, line: 32, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!161 = !{!162, !163}
!162 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!163 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !165, line: 15, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!168 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!169 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!170 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !172, line: 26, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!173 = !{!174, !175, !176}
!174 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!175 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!176 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !178, line: 2052, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!179 = !{!180, !181}
!180 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!181 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !183, line: 54, baseType: !7, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!184 = !{!185, !186, !187}
!185 = !DIEnumerator(name: "USRQUOTA", value: 0)
!186 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!187 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !189, line: 45, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!190 = !{!191, !192, !193}
!191 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!192 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!193 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !195, line: 487, baseType: !7, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!196 = !{!197, !198, !199, !200}
!197 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!198 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!199 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!200 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !202, line: 620, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!203 = !{!204, !205, !206, !207, !208}
!204 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!205 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!206 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!207 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!208 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !202, line: 597, baseType: !43, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214, !215}
!211 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!212 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!213 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!214 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!215 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !195, line: 547, baseType: !7, size: 32, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224}
!218 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!219 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!220 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!221 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!222 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!223 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!224 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !195, line: 564, baseType: !7, size: 32, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!228 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!229 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !195, line: 577, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!233 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!234 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !195, line: 503, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240}
!237 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!238 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!239 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!240 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !242, line: 44, baseType: !7, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252}
!244 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!245 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!246 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!247 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!248 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!249 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!250 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!251 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!252 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !254, line: 10, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!255 = !{!256, !257}
!256 = !DIEnumerator(name: "false", value: 0)
!257 = !DIEnumerator(name: "true", value: 1)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsnotify_obj_type", file: !259, line: 386, baseType: !43, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!260 = !{!261, !262, !263, !264, !265, !266}
!261 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_ANY", value: -1)
!262 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_INODE", value: 0)
!263 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_VFSMOUNT", value: 1)
!264 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_SB", value: 2)
!265 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_COUNT", value: 3)
!266 = !DIEnumerator(name: "FSNOTIFY_OBJ_TYPE_DETACHED", value: 3)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !268, line: 119, baseType: !7, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!271 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!272 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!273 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!274 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !276, line: 364, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!277 = !{!278, !279, !280, !281, !282, !283, !284}
!278 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!279 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!280 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!281 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!282 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!283 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!284 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!285 = !{!41, !286, !287, !60, !290, !291}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 154, baseType: !7)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!293 = !{!0, !294, !296, !302, !5336, !5338, !5343, !5345, !5350}
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fsnotify_alloc_group338", scope: !2, file: !3, line: 164, type: !41, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !298, file: !299, line: 112, type: !41, isLocal: true, isDefinition: true)
!298 = distinct !DISubprogram(name: "might_resched", scope: !299, file: !299, line: 110, type: !300, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!299 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!300 = !DISubroutineType(types: !301)
!301 = !{null}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "nofs_marks_lock", scope: !304, file: !3, line: 118, type: !4120, isLocal: true, isDefinition: true)
!304 = distinct !DISubprogram(name: "__fsnotify_alloc_group", scope: !3, file: !3, line: 114, type: !305, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5331)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !311, !43, !286}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_group", file: !259, line: 185, size: 1600, elements: !309)
!309 = !{!310, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5319, !5320, !5321}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !308, file: !259, line: 186, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_ops", file: !259, line: 155, size: 384, elements: !314)
!314 = !{!315, !5272, !5276, !5280, !5284, !5292}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "handle_event", scope: !313, file: !259, line: 156, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!43, !307, !319, !321, !43, !323, !439, !319, !5252}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !105, line: 21, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !7)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !178, line: 641, size: 4800, elements: !325)
!325 = !{!326, !327, !328, !336, !337, !344, !345, !348, !349, !5190, !5191, !5192, !5193, !5194, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5234, !5237, !5238, !5239, !5248, !5249, !5250, !5251}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !324, file: !178, line: 642, baseType: !45, size: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !324, file: !178, line: 643, baseType: !47, size: 16, offset: 16)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !324, file: !178, line: 644, baseType: !329, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !330, line: 23, baseType: !331)
!330 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 21, size: 32, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !331, file: !330, line: 22, baseType: !334, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !46, line: 37, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !58, line: 49, baseType: !7)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !324, file: !178, line: 645, baseType: !118, size: 128, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !324, file: !178, line: 646, baseType: !338, size: 32, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !330, line: 28, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 26, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !339, file: !330, line: 27, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !46, line: 38, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !58, line: 50, baseType: !7)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !324, file: !178, line: 647, baseType: !7, size: 32, offset: 224)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !324, file: !178, line: 650, baseType: !346, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !178, line: 607, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !324, file: !178, line: 651, baseType: !346, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !324, file: !178, line: 654, baseType: !350, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !178, line: 1966, size: 2048, align: 512, elements: !353)
!353 = !{!354, !5024, !5034, !5038, !5042, !5046, !5050, !5054, !5058, !5062, !5066, !5067, !5071, !5075, !5112, !5141, !5145, !5151, !5155, !5159, !5163, !5167, !5171, !5177, !5181}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !352, file: !178, line: 1967, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !323, !358, !7}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !360, line: 82, size: 1536, elements: !361)
!360 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!361 = !{!362, !363, !373, !381, !382, !400, !401, !405, !418, !5008, !5009, !5010, !5011, !5016, !5017, !5018}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !359, file: !360, line: 84, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !359, file: !360, line: 85, baseType: !364, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !365, line: 275, baseType: !366)
!365 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !365, line: 275, size: 32, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !366, file: !365, line: 275, baseType: !369, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !365, line: 69, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !365, line: 64, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !370, file: !365, line: 65, baseType: !7, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !359, file: !360, line: 86, baseType: !374, size: 128, offset: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !375, line: 38, size: 128, elements: !376)
!375 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!376 = !{!377, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !375, line: 39, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !374, file: !375, line: 39, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !359, file: !360, line: 87, baseType: !358, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !359, file: !360, line: 88, baseType: !383, size: 128, offset: 256)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !360, line: 49, size: 128, elements: !384)
!384 = !{!385, !397}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !360, line: 50, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !360, line: 50, size: 64, elements: !387)
!387 = !{!388, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !360, line: 51, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !360, line: 51, size: 64, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !389, file: !360, line: 52, baseType: !319, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !389, file: !360, line: 52, baseType: !319, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !386, file: !360, line: 54, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !105, line: 23, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !396)
!396 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !360, line: 56, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !359, file: !360, line: 89, baseType: !323, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !359, file: !360, line: 91, baseType: !402, size: 256, offset: 448)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !359, file: !360, line: 94, baseType: !406, size: 64, offset: 704)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !407, line: 25, size: 64, elements: !408)
!407 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !407, line: 26, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !407, line: 26, size: 64, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !410, file: !407, line: 28, baseType: !395, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !407, line: 30, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !407, line: 30, size: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !414, file: !407, line: 31, baseType: !80, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !414, file: !407, line: 32, baseType: !43, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !359, file: !360, line: 95, baseType: !419, size: 64, offset: 768)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !360, line: 128, size: 1024, align: 512, elements: !422)
!422 = !{!423, !427, !428, !435, !441, !445, !449, !453, !454, !458, !463, !4998, !5002}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !421, file: !360, line: 129, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!43, !358, !7}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !421, file: !360, line: 130, baseType: !424, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !421, file: !360, line: 131, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!43, !432, !434}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !421, file: !360, line: 132, baseType: !436, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!43, !432, !7, !37, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !421, file: !360, line: 134, baseType: !442, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!43, !432}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !421, file: !360, line: 135, baseType: !446, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!43, !358}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !421, file: !360, line: 136, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !358}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !421, file: !360, line: 137, baseType: !450, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !421, file: !360, line: 138, baseType: !455, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !358, !323}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !421, file: !360, line: 139, baseType: !459, size: 64, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !358, !462, !43}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !421, file: !360, line: 140, baseType: !464, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!467, !4997}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !469, line: 70, size: 256, elements: !470)
!469 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!470 = !{!471, !472, !4993, !4994}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !468, file: !469, line: 71, baseType: !358, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !468, file: !469, line: 72, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !178, line: 1190, size: 10752, elements: !475)
!475 = !{!476, !477, !480, !481, !482, !483, !4129, !4261, !4301, !4386, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4403, !4407, !4408, !4797, !4800, !4857, !4860, !4861, !4862, !4903, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4943, !4944, !4945, !4946, !4947, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !474, file: !178, line: 1191, baseType: !118, size: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !474, file: !178, line: 1192, baseType: !478, size: 32, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !46, line: 21, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !46, line: 18, baseType: !319)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !474, file: !178, line: 1193, baseType: !108, size: 8, offset: 160)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !474, file: !178, line: 1194, baseType: !60, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !474, file: !178, line: 1195, baseType: !62, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !474, file: !178, line: 1196, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !178, line: 2366, size: 576, elements: !486)
!486 = !{!487, !488, !489, !495, !499, !503, !507, !4117, !4118, !4119, !4121, !4122, !4123, !4125, !4126, !4127, !4128}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !178, line: 2367, baseType: !37, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !485, file: !178, line: 2368, baseType: !43, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !485, file: !178, line: 2376, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!43, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !469, line: 21, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !485, file: !178, line: 2377, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !178, line: 75, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !485, file: !178, line: 2378, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!358, !484, !43, !37, !41}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !485, file: !178, line: 2380, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !473}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !485, file: !178, line: 2381, baseType: !508, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !510)
!510 = !{!511, !512, !513, !517, !3793, !3819, !3820, !3821, !3822, !3826, !3829, !3830, !3831, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3899, !3903, !3921, !3938, !3939, !3940, !3941, !3950, !3973, !3974, !3977, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3991, !3992, !4078, !4086, !4087, !4088, !4090, !4094, !4095, !4099, !4100, !4101, !4102, !4104, !4105, !4106, !4113, !4114, !4115, !4116}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !509, file: !6, line: 403, baseType: !5, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !509, file: !6, line: 406, baseType: !118, size: 128, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !6, line: 409, baseType: !514, size: 448, offset: 192)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 448, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 56)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !509, file: !6, line: 417, baseType: !518, size: 768, offset: 640)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !519)
!519 = !{!520, !3787, !3788, !3789, !3792}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !518, file: !6, line: 46, baseType: !521, size: 512)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !522, line: 64, size: 512, elements: !523)
!522 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!523 = !{!524, !525, !526, !528, !574, !3776, !3777, !3782, !3783, !3784, !3785, !3786}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !521, file: !522, line: 65, baseType: !37, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !521, file: !522, line: 66, baseType: !118, size: 128, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !521, file: !522, line: 67, baseType: !527, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !521, file: !522, line: 68, baseType: !529, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !522, line: 168, size: 768, elements: !531)
!531 = !{!532, !533, !534, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !530, file: !522, line: 169, baseType: !118, size: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !530, file: !522, line: 170, baseType: !80, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !530, file: !522, line: 171, baseType: !521, size: 512, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !530, file: !522, line: 172, baseType: !536, size: 64, offset: 704)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !522, line: 133, size: 192, elements: !539)
!539 = !{!540, !547, !552}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !538, file: !522, line: 134, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!43, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !538, file: !522, line: 135, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!37, !545}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !538, file: !522, line: 136, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!43, !545, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !522, line: 125, size: 20736, elements: !559)
!559 = !{!560, !564, !568, !569, !573}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !558, file: !522, line: 126, baseType: !561, size: 192)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 192, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 3)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !558, file: !522, line: 127, baseType: !565, size: 4096, offset: 192)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 4096, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !558, file: !522, line: 128, baseType: !43, size: 32, offset: 4288)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !558, file: !522, line: 129, baseType: !570, size: 16384, offset: 4320)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16384, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 2048)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !558, file: !522, line: 130, baseType: !43, size: 32, offset: 20704)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !521, file: !522, line: 69, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !522, line: 116, size: 384, elements: !578)
!578 = !{!579, !583, !606, !3737, !3768, !3772}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !577, file: !522, line: 117, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !527}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !577, file: !522, line: 118, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !587, line: 254, size: 128, elements: !588)
!587 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!588 = !{!589, !602}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !586, file: !587, line: 255, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!593, !527, !597, !462}
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !46, line: 66, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !58, line: 73, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !58, line: 15, baseType: !596)
!596 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !587, line: 30, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !587, line: 31, baseType: !37, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !598, file: !587, line: 32, baseType: !45, size: 16, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !586, file: !587, line: 256, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!593, !527, !597, !37, !56}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !577, file: !522, line: 119, baseType: !607, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !587, line: 84, size: 320, elements: !611)
!611 = !{!612, !613, !617, !3733, !3735}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !610, file: !587, line: 85, baseType: !37, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !610, file: !587, line: 86, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!45, !527, !597, !43}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !610, file: !587, line: 88, baseType: !618, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!45, !527, !621, !43}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !587, line: 175, size: 512, elements: !623)
!623 = !{!624, !625, !626, !627, !3724, !3728, !3729}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !622, file: !587, line: 176, baseType: !598, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !622, file: !587, line: 177, baseType: !56, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !622, file: !587, line: 178, baseType: !41, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !622, file: !587, line: 179, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !178, line: 472, size: 1536, align: 64, elements: !633)
!633 = !{!634, !635, !642, !664, !665, !666, !681, !682, !683, !3718, !3719, !3720, !3721, !3722, !3723}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !632, file: !178, line: 473, baseType: !323, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !632, file: !178, line: 474, baseType: !636, size: 128, offset: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !637, line: 296, size: 128, elements: !638)
!637 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!638 = !{!639, !640, !641}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !636, file: !637, line: 297, baseType: !80, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !636, file: !637, line: 299, baseType: !286, size: 32, offset: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !636, file: !637, line: 300, baseType: !41, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !632, file: !178, line: 475, baseType: !643, size: 320, offset: 192)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !644, line: 48, size: 320, elements: !645)
!644 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!645 = !{!646, !655, !656, !661, !663}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !643, file: !644, line: 49, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !648, line: 13, baseType: !649)
!648 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !46, line: 181, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 179, size: 64, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !650, file: !46, line: 180, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !105, line: 22, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !643, file: !644, line: 55, baseType: !647, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !643, file: !644, line: 57, baseType: !657, size: 32, offset: 128)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !658, line: 15, size: 32, elements: !659)
!658 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !657, file: !658, line: 20, baseType: !70, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !643, file: !644, line: 59, baseType: !662, size: 32, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !89, line: 23, baseType: !88)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !643, file: !644, line: 60, baseType: !118, size: 128, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !632, file: !178, line: 476, baseType: !286, size: 32, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !632, file: !178, line: 477, baseType: !70, size: 32, offset: 544)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !632, file: !178, line: 482, baseType: !667, size: 128, offset: 576)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !668, line: 26, size: 128, elements: !669)
!668 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!669 = !{!670, !680}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !667, file: !668, line: 27, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !668, line: 12, size: 64, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !671, file: !668, line: 13, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !668, line: 5, size: 192, align: 64, elements: !676)
!676 = !{!677, !678, !679}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !675, file: !668, line: 6, baseType: !60, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !675, file: !668, line: 7, baseType: !674, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !675, file: !668, line: 8, baseType: !674, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !667, file: !668, line: 28, baseType: !674, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !632, file: !178, line: 483, baseType: !60, size: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !632, file: !178, line: 484, baseType: !60, size: 64, offset: 768)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !632, file: !178, line: 485, baseType: !684, size: 64, offset: 832)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !178, line: 404, size: 1280, elements: !687)
!687 = !{!688, !3574, !3644, !3648, !3652, !3658, !3663, !3667, !3672, !3676, !3680, !3684, !3685, !3689, !3693, !3697, !3702, !3706, !3713, !3714}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !686, file: !178, line: 405, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!43, !692, !3554}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !144, line: 74, size: 512, align: 128, elements: !694)
!694 = !{!695, !696, !3548, !3553}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !144, line: 75, baseType: !60, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !144, line: 83, baseType: !697, size: 320, offset: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !144, line: 83, size: 320, elements: !698)
!698 = !{!699, !720, !734, !738, !3547}
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !144, line: 84, baseType: !700, size: 320)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !697, file: !144, line: 84, size: 320, elements: !701)
!701 = !{!702, !713, !714, !719}
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !144, line: 90, baseType: !703, size: 128)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !144, line: 90, size: 128, elements: !704)
!704 = !{!705, !706, !711, !712}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !703, file: !144, line: 91, baseType: !118, size: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !144, line: 94, baseType: !707, size: 128)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !144, line: 94, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !707, file: !144, line: 96, baseType: !41, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !707, file: !144, line: 98, baseType: !7, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !703, file: !144, line: 102, baseType: !118, size: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !703, file: !144, line: 103, baseType: !118, size: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !700, file: !144, line: 106, baseType: !631, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !144, line: 107, baseType: !715, size: 64, offset: 192)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !144, line: 107, size: 64, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !715, file: !144, line: 108, baseType: !60, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !715, file: !144, line: 109, baseType: !60, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !700, file: !144, line: 117, baseType: !60, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !144, line: 119, baseType: !721, size: 320)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !697, file: !144, line: 119, size: 320, elements: !722)
!722 = !{!723, !724, !727, !728, !729}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !721, file: !144, line: 124, baseType: !60, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !721, file: !144, line: 125, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !144, line: 125, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !721, file: !144, line: 126, baseType: !60, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !721, file: !144, line: 127, baseType: !60, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !144, line: 128, baseType: !730, size: 64, offset: 256)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !144, line: 128, size: 64, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !730, file: !144, line: 133, baseType: !60, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !730, file: !144, line: 138, baseType: !647, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !144, line: 141, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !697, file: !144, line: 141, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !735, file: !144, line: 142, baseType: !60, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !144, line: 144, baseType: !739, size: 128)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !697, file: !144, line: 144, size: 128, elements: !740)
!740 = !{!741, !3546}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !739, file: !144, line: 146, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !744)
!744 = !{!745, !755, !786, !797, !798, !799, !800, !3528, !3529, !3530}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !743, file: !14, line: 127, baseType: !746, size: 384)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !747)
!747 = !{!748, !749, !751, !752, !753, !754}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !746, file: !14, line: 22, baseType: !60, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !746, file: !14, line: 23, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !746, file: !14, line: 24, baseType: !750, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !746, file: !14, line: 25, baseType: !60, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !746, file: !14, line: 26, baseType: !60, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !746, file: !14, line: 27, baseType: !60, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !743, file: !14, line: 128, baseType: !756, size: 128, offset: 384)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !757, line: 105, size: 128, elements: !758)
!757 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !756, file: !757, line: 110, baseType: !60, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !756, file: !757, line: 118, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !757, line: 95, size: 448, elements: !763)
!763 = !{!764, !765, !771, !772, !775, !776, !785}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !762, file: !757, line: 96, baseType: !647, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !762, file: !757, line: 97, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !757, line: 60, baseType: !768)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !762, file: !757, line: 98, baseType: !766, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !762, file: !757, line: 99, baseType: !773, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !774)
!774 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !762, file: !757, line: 100, baseType: !773, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !762, file: !757, line: 101, baseType: !777, size: 128, align: 64, offset: 256)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !46, line: 232, size: 128, align: 64, elements: !778)
!778 = !{!779, !781}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !46, line: 233, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !777, file: !46, line: 234, baseType: !782, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !780}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !762, file: !757, line: 102, baseType: !770, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !743, file: !14, line: 129, baseType: !787, size: 256, offset: 512)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !788, line: 26, size: 256, elements: !789)
!788 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !787, file: !788, line: 27, baseType: !7, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !787, file: !788, line: 28, baseType: !792, size: 192, offset: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !793, line: 43, size: 192, elements: !794)
!793 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !792, file: !793, line: 44, baseType: !662, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !792, file: !793, line: 45, baseType: !118, size: 128, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !743, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !743, file: !14, line: 132, baseType: !60, size: 64, offset: 832)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !743, file: !14, line: 133, baseType: !801, size: 64, offset: 896)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !804)
!804 = !{!805, !809, !3524}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !803, file: !14, line: 83, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !692}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !803, file: !14, line: 89, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !144, line: 1184, baseType: !7)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !816, line: 512, size: 896, elements: !817)
!816 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!817 = !{!818, !3491, !3492, !3499, !3506, !3516, !3517, !3518, !3520, !3522}
!818 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 513, baseType: !819, size: 320)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !815, file: !816, line: 513, size: 320, elements: !820)
!820 = !{!821, !3487, !3488, !3489, !3490}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !819, file: !816, line: 514, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !144, line: 625, size: 1344, elements: !824)
!824 = !{!825, !834, !3450, !3456, !3463, !3464, !3469, !3470, !3475, !3476, !3479, !3480, !3481, !3482, !3483, !3484, !3485}
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !144, line: 628, baseType: !826, size: 128)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !144, line: 628, size: 128, elements: !827)
!827 = !{!828, !833}
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !144, line: 629, baseType: !829, size: 128)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !826, file: !144, line: 629, size: 128, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !829, file: !144, line: 631, baseType: !60, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !829, file: !144, line: 632, baseType: !60, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !826, file: !144, line: 635, baseType: !777, size: 128, align: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !823, file: !144, line: 639, baseType: !835, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !144, line: 733, size: 10240, elements: !837)
!837 = !{!838, !3448}
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !144, line: 734, baseType: !839, size: 10240)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !836, file: !144, line: 734, size: 10240, elements: !840)
!840 = !{!841, !845, !859, !3323, !3324, !3325, !3326, !3327, !3328, !3337, !3338, !3339, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3378, !3380, !3383, !3428, !3429, !3430, !3433, !3434, !3435, !3438, !3439, !3440, !3446, !3447}
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !839, file: !144, line: 739, baseType: !842, size: 512, align: 512)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !839, file: !144, line: 739, size: 512, align: 512, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !842, file: !144, line: 747, baseType: !70, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !839, file: !144, line: 750, baseType: !846, size: 128, offset: 512)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !847, line: 218, size: 128, elements: !848)
!847 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!848 = !{!849, !857, !858}
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !847, line: 219, baseType: !850, size: 32)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !847, line: 219, size: 32, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !850, file: !847, line: 220, baseType: !80, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !850, file: !847, line: 221, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !847, line: 197, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !847, line: 197, elements: !856)
!856 = !{}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !846, file: !847, line: 223, baseType: !7, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !846, file: !847, line: 224, baseType: !41, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !839, file: !144, line: 752, baseType: !860, size: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!60, !863, !60, !60, !60, !60}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !178, line: 994, size: 1856, align: 64, elements: !865)
!865 = !{!866, !877, !878, !880, !881, !889, !890, !891, !3141, !3142, !3151, !3157, !3158, !3313, !3314, !3315, !3316, !3318, !3319, !3322}
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !178, line: 995, baseType: !867, size: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !178, line: 995, size: 128, elements: !868)
!868 = !{!869, !875, !876}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !867, file: !178, line: 996, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !871, line: 60, size: 64, elements: !872)
!871 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !870, file: !871, line: 61, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !867, file: !178, line: 997, baseType: !777, size: 128, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !867, file: !178, line: 998, baseType: !7, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !864, file: !178, line: 1005, baseType: !80, size: 32, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !864, file: !178, line: 1006, baseType: !879, size: 32, offset: 160)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !46, line: 156, baseType: !7)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !864, file: !178, line: 1007, baseType: !647, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !864, file: !178, line: 1008, baseType: !882, size: 256, offset: 256)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !883, line: 66, size: 256, elements: !884)
!883 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!884 = !{!885, !886, !887, !888}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !882, file: !883, line: 67, baseType: !647, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !882, file: !883, line: 68, baseType: !662, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !882, file: !883, line: 70, baseType: !657, size: 32, offset: 96)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !882, file: !883, line: 72, baseType: !118, size: 128, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !864, file: !178, line: 1009, baseType: !62, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !864, file: !178, line: 1010, baseType: !7, size: 32, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !864, file: !178, line: 1011, baseType: !892, size: 256, offset: 640)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !178, line: 948, size: 256, elements: !893)
!893 = !{!894, !915, !3137, !3138, !3139, !3140}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !892, file: !178, line: 949, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !896, line: 34, baseType: !897)
!896 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !896, line: 25, size: 64, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !897, file: !896, line: 26, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !901, line: 27, baseType: !902)
!901 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !901, line: 13, size: 64, elements: !903)
!903 = !{!904, !914}
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !901, line: 14, baseType: !905, size: 32)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !902, file: !901, line: 14, size: 32, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !905, file: !901, line: 15, baseType: !70, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !905, file: !901, line: 16, baseType: !909, size: 32)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !905, file: !901, line: 16, size: 32, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !909, file: !901, line: 18, baseType: !104, size: 8)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !909, file: !901, line: 19, baseType: !913, size: 24, offset: 8)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 24, elements: !562)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !902, file: !901, line: 26, baseType: !92, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !892, file: !178, line: 950, baseType: !916, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !136, line: 59, size: 768, elements: !918)
!918 = !{!919, !924, !925, !926, !939, !940, !941, !942}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !917, file: !136, line: 61, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !268, line: 113, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !268, line: 111, size: 32, elements: !922)
!922 = !{!923}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !921, file: !268, line: 112, baseType: !70, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !917, file: !136, line: 62, baseType: !7, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !917, file: !136, line: 63, baseType: !80, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !917, file: !136, line: 65, baseType: !927, size: 256, offset: 128)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 256, elements: !937)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !46, line: 194, size: 64, elements: !929)
!929 = !{!930}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !928, file: !46, line: 195, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !46, line: 198, size: 128, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !932, file: !46, line: 199, baseType: !931, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !932, file: !46, line: 199, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!937 = !{!938}
!938 = !DISubrange(count: 4)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !917, file: !136, line: 66, baseType: !928, size: 64, offset: 384)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !917, file: !136, line: 68, baseType: !75, size: 192, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !917, file: !136, line: 69, baseType: !777, size: 128, align: 64, offset: 640)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !917, file: !136, line: 70, baseType: !943, offset: 768)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, elements: !1706)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !136, line: 54, size: 128, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !944, file: !136, line: 55, baseType: !43, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !944, file: !136, line: 56, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !950, line: 26, size: 1152, elements: !951)
!950 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!951 = !{!952, !959, !960, !961, !3114, !3117, !3118, !3119, !3132, !3133, !3134, !3135, !3136}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !949, file: !950, line: 27, baseType: !953, size: 192)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !954, line: 19, size: 192, elements: !955)
!954 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !953, file: !954, line: 20, baseType: !636, size: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !953, file: !954, line: 21, baseType: !7, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !953, file: !954, line: 22, baseType: !7, size: 32, offset: 160)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !949, file: !950, line: 28, baseType: !777, size: 128, align: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !949, file: !950, line: 29, baseType: !7, size: 32, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !949, file: !950, line: 30, baseType: !962, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !964, line: 746, size: 58368, elements: !965)
!964 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!965 = !{!966, !974, !975, !976, !977, !978, !979, !980, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1046, !1057, !1145, !1149, !1152, !1183, !1184, !1185, !1186, !1197, !1199, !1200, !1201, !1202, !1203, !1204, !1215, !1216, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1233, !1234, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1330, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1345, !1346, !1347, !1349, !1351, !1352, !1353, !1354, !1355, !1356, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1380, !1386, !1713, !1714, !1715, !1716, !1720, !1723, !1730, !1735, !1738, !1741, !1744, !2330, !2529, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2567, !2568, !2569, !2578, !2586, !2587, !2588, !2589, !2590, !2595, !2596, !2597, !2600, !2601, !2604, !2607, !2610, !2618, !2621, !2622, !2708, !2709, !2710, !2711, !2712, !2718, !2719, !2720, !2721, !2722, !2723, !2726, !2729, !2730, !2733, !2734, !2735, !2738, !2739, !2740, !2741, !2742, !2743, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2775, !2778, !2784, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2796, !2868, !2870, !2871, !2872, !2873, !2874, !2875, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2893, !2894, !2895}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !963, file: !964, line: 752, baseType: !967, size: 192)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !968, line: 56, size: 192, elements: !969)
!968 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!969 = !{!970, !971, !972, !973}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !968, line: 57, baseType: !60, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !967, file: !968, line: 58, baseType: !60, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !967, file: !968, line: 59, baseType: !319, size: 32, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !967, file: !968, line: 61, baseType: !319, size: 32, offset: 160)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !963, file: !964, line: 754, baseType: !7, size: 32, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !963, file: !964, line: 767, baseType: !41, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !963, file: !964, line: 768, baseType: !920, size: 32, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !964, line: 770, baseType: !7, size: 32, offset: 352)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !963, file: !964, line: 771, baseType: !7, size: 32, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !963, file: !964, line: 774, baseType: !43, size: 32, offset: 416)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !963, file: !964, line: 775, baseType: !981, size: 128, offset: 448)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !982, line: 58, size: 128, elements: !983)
!982 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!983 = !{!984, !985, !990, !991}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !981, file: !982, line: 59, baseType: !870, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !982, line: 60, baseType: !986, size: 32, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !982, line: 60, size: 32, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !986, file: !982, line: 61, baseType: !7, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !986, file: !982, line: 62, baseType: !70, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !981, file: !982, line: 65, baseType: !114, size: 16, offset: 96)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !981, file: !982, line: 65, baseType: !114, size: 16, offset: 112)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !963, file: !964, line: 776, baseType: !7, size: 32, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !963, file: !964, line: 777, baseType: !60, size: 64, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !963, file: !964, line: 778, baseType: !962, size: 64, offset: 704)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !963, file: !964, line: 787, baseType: !43, size: 32, offset: 768)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !963, file: !964, line: 788, baseType: !43, size: 32, offset: 800)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !963, file: !964, line: 790, baseType: !43, size: 32, offset: 832)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !963, file: !964, line: 792, baseType: !43, size: 32, offset: 864)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !963, file: !964, line: 793, baseType: !43, size: 32, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !963, file: !964, line: 794, baseType: !43, size: 32, offset: 928)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !963, file: !964, line: 795, baseType: !7, size: 32, offset: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !963, file: !964, line: 797, baseType: !1003, size: 2048, offset: 1024)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !964, line: 551, size: 2048, elements: !1004)
!1004 = !{!1005, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1025, !1028, !1029, !1030}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1003, file: !964, line: 553, baseType: !1006, size: 128)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !964, line: 411, size: 128, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1006, file: !964, line: 412, baseType: !60, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1006, file: !964, line: 413, baseType: !319, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1003, file: !964, line: 554, baseType: !675, size: 192, align: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1003, file: !964, line: 555, baseType: !394, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1003, file: !964, line: 556, baseType: !394, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1003, file: !964, line: 558, baseType: !118, size: 128, offset: 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1003, file: !964, line: 559, baseType: !7, size: 32, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1003, file: !964, line: 561, baseType: !394, size: 64, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1003, file: !964, line: 562, baseType: !394, size: 64, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1003, file: !964, line: 563, baseType: !394, size: 64, offset: 768)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1003, file: !964, line: 564, baseType: !394, size: 64, offset: 832)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1003, file: !964, line: 565, baseType: !653, size: 64, offset: 896)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1003, file: !964, line: 566, baseType: !394, size: 64, offset: 960)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1003, file: !964, line: 568, baseType: !394, size: 64, offset: 1024)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1003, file: !964, line: 571, baseType: !43, size: 32, offset: 1088)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1003, file: !964, line: 572, baseType: !1024, size: 64, offset: 1152)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1003, file: !964, line: 574, baseType: !1026, size: 64, offset: 1216)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !964, line: 49, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1003, file: !964, line: 576, baseType: !1026, size: 64, offset: 1280)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1003, file: !964, line: 578, baseType: !60, size: 64, offset: 1344)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1003, file: !964, line: 588, baseType: !1031, size: 512, align: 512, offset: 1536)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !964, line: 497, size: 512, align: 512, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1031, file: !964, line: 498, baseType: !394, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1031, file: !964, line: 499, baseType: !394, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1031, file: !964, line: 500, baseType: !394, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1031, file: !964, line: 501, baseType: !319, size: 32, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1031, file: !964, line: 502, baseType: !319, size: 32, offset: 224)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1031, file: !964, line: 503, baseType: !60, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1031, file: !964, line: 504, baseType: !60, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1031, file: !964, line: 505, baseType: !60, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1031, file: !964, line: 506, baseType: !1042, size: 64, align: 64, offset: 448)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !964, line: 445, size: 64, align: 64, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1042, file: !964, line: 446, baseType: !7, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1042, file: !964, line: 447, baseType: !7, size: 32, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !963, file: !964, line: 798, baseType: !1047, size: 384, offset: 3072)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !964, line: 592, size: 384, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1047, file: !964, line: 593, baseType: !118, size: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1047, file: !964, line: 594, baseType: !60, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1047, file: !964, line: 595, baseType: !60, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1047, file: !964, line: 596, baseType: !7, size: 32, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1047, file: !964, line: 597, baseType: !47, size: 16, offset: 288)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1047, file: !964, line: 598, baseType: !47, size: 16, offset: 304)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1047, file: !964, line: 600, baseType: !1056, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !963, file: !964, line: 799, baseType: !1058, size: 1792, offset: 3456)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !964, line: 610, size: 1792, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1142, !1143}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1058, file: !964, line: 611, baseType: !675, size: 192, align: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1058, file: !964, line: 618, baseType: !394, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1058, file: !964, line: 619, baseType: !394, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1058, file: !964, line: 620, baseType: !394, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1058, file: !964, line: 621, baseType: !394, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1058, file: !964, line: 622, baseType: !394, size: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1058, file: !964, line: 629, baseType: !653, size: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1058, file: !964, line: 630, baseType: !394, size: 64, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1058, file: !964, line: 631, baseType: !7, size: 32, offset: 640)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1058, file: !964, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1058, file: !964, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1058, file: !964, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1058, file: !964, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1058, file: !964, line: 662, baseType: !1074, size: 512, offset: 704)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !1075)
!1075 = !{!1076, !1084, !1085, !1090, !1138, !1139, !1140, !1141}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1074, file: !22, line: 119, baseType: !1077, size: 256)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1078, line: 9, size: 256, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1077, file: !1078, line: 10, baseType: !675, size: 192, align: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1077, file: !1078, line: 11, baseType: !1082, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1083, line: 29, baseType: !653)
!1083 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1074, file: !22, line: 120, baseType: !1082, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1074, file: !22, line: 121, baseType: !1086, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!21, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1074, file: !22, line: 122, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !1093)
!1093 = !{!1094, !1119, !1120, !1123, !1128, !1129, !1133, !1137}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1092, file: !22, line: 160, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1096, file: !22, line: 216, baseType: !662, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1096, file: !22, line: 217, baseType: !7, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1096, file: !22, line: 218, baseType: !7, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1096, file: !22, line: 219, baseType: !7, size: 32, offset: 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1096, file: !22, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1096, file: !22, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1096, file: !22, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1096, file: !22, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1096, file: !22, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1096, file: !22, line: 226, baseType: !7, size: 32, offset: 160)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1096, file: !22, line: 227, baseType: !47, size: 16, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1096, file: !22, line: 228, baseType: !47, size: 16, offset: 208)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1096, file: !22, line: 229, baseType: !7, size: 32, offset: 224)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1096, file: !22, line: 235, baseType: !1082, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1096, file: !22, line: 236, baseType: !1089, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1096, file: !22, line: 237, baseType: !1082, size: 64, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1096, file: !22, line: 238, baseType: !1089, size: 64, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1096, file: !22, line: 239, baseType: !1116, size: 4096, align: 512, offset: 512)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1092, size: 4096, align: 512, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 8)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1092, file: !22, line: 161, baseType: !7, size: 32, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1092, file: !22, line: 162, baseType: !1121, size: 32, offset: 96)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !46, line: 32, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !58, line: 96, baseType: !43)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1092, file: !22, line: 163, baseType: !1124, size: 32, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !365, line: 274, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !365, line: 274, size: 32, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1125, file: !365, line: 274, baseType: !369, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1092, file: !22, line: 164, baseType: !1089, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1092, file: !22, line: 165, baseType: !1130, size: 128, offset: 256)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1078, line: 14, size: 128, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1130, file: !1078, line: 15, baseType: !667, size: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1092, file: !22, line: 166, baseType: !1134, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!1082}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1092, file: !22, line: 167, baseType: !1082, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1074, file: !22, line: 123, baseType: !104, size: 8, offset: 448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1074, file: !22, line: 124, baseType: !104, size: 8, offset: 456)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1074, file: !22, line: 125, baseType: !104, size: 8, offset: 464)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1074, file: !22, line: 126, baseType: !104, size: 8, offset: 472)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1058, file: !964, line: 671, baseType: !1074, size: 512, offset: 1216)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1058, file: !964, line: 679, baseType: !1144, size: 64, offset: 1728)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !963, file: !964, line: 800, baseType: !1146, size: 64, offset: 5248)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !964, line: 800, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !963, file: !964, line: 809, baseType: !1150, size: 64, offset: 5312)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !964, line: 70, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !963, file: !964, line: 825, baseType: !1153, size: 2048, align: 512, offset: 5632)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !964, line: 509, size: 2048, align: 512, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1153, file: !964, line: 511, baseType: !394, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1153, file: !964, line: 512, baseType: !394, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1153, file: !964, line: 513, baseType: !394, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1153, file: !964, line: 514, baseType: !394, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1153, file: !964, line: 515, baseType: !394, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1153, file: !964, line: 516, baseType: !394, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1153, file: !964, line: 518, baseType: !394, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1153, file: !964, line: 519, baseType: !394, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1153, file: !964, line: 520, baseType: !653, size: 64, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1153, file: !964, line: 522, baseType: !394, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1153, file: !964, line: 523, baseType: !394, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1153, file: !964, line: 524, baseType: !653, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1153, file: !964, line: 526, baseType: !653, size: 64, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1153, file: !964, line: 527, baseType: !394, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1153, file: !964, line: 529, baseType: !394, size: 64, offset: 896)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1153, file: !964, line: 530, baseType: !394, size: 64, offset: 960)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1153, file: !964, line: 531, baseType: !394, size: 64, offset: 1024)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1153, file: !964, line: 532, baseType: !394, size: 64, offset: 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1153, file: !964, line: 533, baseType: !394, size: 64, offset: 1152)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1153, file: !964, line: 535, baseType: !394, size: 64, offset: 1216)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1153, file: !964, line: 536, baseType: !394, size: 64, offset: 1280)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1153, file: !964, line: 537, baseType: !394, size: 64, offset: 1344)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1153, file: !964, line: 538, baseType: !394, size: 64, offset: 1408)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1153, file: !964, line: 539, baseType: !394, size: 64, offset: 1472)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1153, file: !964, line: 540, baseType: !394, size: 64, offset: 1536)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1153, file: !964, line: 541, baseType: !394, size: 64, offset: 1600)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1153, file: !964, line: 542, baseType: !394, size: 64, offset: 1664)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1153, file: !964, line: 543, baseType: !394, size: 64, offset: 1728)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !963, file: !964, line: 833, baseType: !7, size: 32, offset: 7680)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !963, file: !964, line: 836, baseType: !7, size: 32, offset: 7712)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !963, file: !964, line: 837, baseType: !43, size: 32, offset: 7744)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !963, file: !964, line: 838, baseType: !1187, size: 64, offset: 7808)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1190, line: 19, baseType: !1191)
!1190 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1190, line: 19, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1191, file: !1190, line: 19, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 1)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !963, file: !964, line: 839, baseType: !1198, size: 64, offset: 7872)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !963, file: !964, line: 840, baseType: !1189, size: 64, offset: 7936)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !963, file: !964, line: 841, baseType: !41, size: 64, offset: 8000)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !963, file: !964, line: 843, baseType: !47, size: 16, offset: 8064)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !963, file: !964, line: 845, baseType: !47, size: 16, offset: 8080)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !963, file: !964, line: 848, baseType: !43, size: 32, offset: 8096)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !963, file: !964, line: 849, baseType: !1205, size: 32, offset: 8128)
!1205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !964, line: 718, size: 32, elements: !1206)
!1206 = !{!1207, !1214}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1205, file: !964, line: 724, baseType: !1208, size: 32)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1205, file: !964, line: 719, size: 32, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1208, file: !964, line: 720, baseType: !104, size: 8)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1208, file: !964, line: 721, baseType: !104, size: 8, offset: 8)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1208, file: !964, line: 722, baseType: !104, size: 8, offset: 16)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1208, file: !964, line: 723, baseType: !104, size: 8, offset: 24)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1205, file: !964, line: 725, baseType: !319, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !963, file: !964, line: 850, baseType: !118, size: 128, offset: 8192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !963, file: !964, line: 851, baseType: !1217, size: 64, offset: 8320)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !964, line: 60, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !963, file: !964, line: 855, baseType: !60, size: 64, offset: 8384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !963, file: !964, line: 856, baseType: !104, size: 8, offset: 8448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !963, file: !964, line: 857, baseType: !104, size: 8, offset: 8456)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !963, file: !964, line: 858, baseType: !43, size: 32, offset: 8480)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !963, file: !964, line: 859, baseType: !118, size: 128, offset: 8512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !963, file: !964, line: 860, baseType: !43, size: 32, offset: 8640)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !963, file: !964, line: 861, baseType: !118, size: 128, offset: 8704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !963, file: !964, line: 873, baseType: !1227, size: 256, offset: 8832)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !964, line: 376, size: 256, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1227, file: !964, line: 381, baseType: !60, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1227, file: !964, line: 384, baseType: !396, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1227, file: !964, line: 389, baseType: !396, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1227, file: !964, line: 392, baseType: !396, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !963, file: !964, line: 875, baseType: !118, size: 128, offset: 9088)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !963, file: !964, line: 877, baseType: !1235, size: 320, offset: 9216)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1236, line: 86, size: 320, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1237 = !{!1238, !1239, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1235, file: !1236, line: 87, baseType: !43, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1235, file: !1236, line: 88, baseType: !118, size: 128, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1235, file: !1236, line: 89, baseType: !118, size: 128, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !963, file: !964, line: 878, baseType: !675, size: 192, align: 64, offset: 9536)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !963, file: !964, line: 881, baseType: !835, size: 64, offset: 9728)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !963, file: !964, line: 882, baseType: !835, size: 64, offset: 9792)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !963, file: !964, line: 884, baseType: !43, size: 32, offset: 9856)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !963, file: !964, line: 885, baseType: !43, size: 32, offset: 9888)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !963, file: !964, line: 886, baseType: !43, size: 32, offset: 9920)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !963, file: !964, line: 888, baseType: !43, size: 32, offset: 9952)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !963, file: !964, line: 890, baseType: !60, size: 64, offset: 9984)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !963, file: !964, line: 893, baseType: !7, size: 32, offset: 10048)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !963, file: !964, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !963, file: !964, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !963, file: !964, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !963, file: !964, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !963, file: !964, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !963, file: !964, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !963, file: !964, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !963, file: !964, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !963, file: !964, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !963, file: !964, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !963, file: !964, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !963, file: !964, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !963, file: !964, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !963, file: !964, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !963, file: !964, line: 969, baseType: !60, size: 64, offset: 10176)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !963, file: !964, line: 971, baseType: !1266, size: 448, offset: 10240)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !27, line: 25, size: 448, elements: !1267)
!1267 = !{!1268, !1269, !1274}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1266, file: !27, line: 26, baseType: !60, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1266, file: !27, line: 27, baseType: !1270, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!596, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !27, line: 28, baseType: !1275, size: 320, offset: 128)
!1275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !27, line: 28, size: 320, elements: !1276)
!1276 = !{!1277, !1287, !1314}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1275, file: !27, line: 37, baseType: !1278, size: 320)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1275, file: !27, line: 30, size: 320, elements: !1279)
!1279 = !{!1280, !1282, !1283, !1284, !1285, !1286}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1278, file: !27, line: 31, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1278, file: !27, line: 32, baseType: !319, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !27, line: 33, baseType: !319, size: 32, offset: 96)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1278, file: !27, line: 34, baseType: !319, size: 32, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1278, file: !27, line: 35, baseType: !394, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1278, file: !27, line: 36, baseType: !1281, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1275, file: !27, line: 47, baseType: !1288, size: 192)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1275, file: !27, line: 39, size: 192, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1313}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1288, file: !27, line: 40, baseType: !1121, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1288, file: !27, line: 41, baseType: !26, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !27, line: 42, baseType: !1293, size: 64, offset: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !27, line: 42, size: 64, elements: !1294)
!1294 = !{!1295, !1303}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1293, file: !27, line: 43, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1298, line: 7, size: 128, elements: !1299)
!1298 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1299 = !{!1300, !1302}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1297, file: !1298, line: 8, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !58, line: 93, baseType: !64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1297, file: !1298, line: 9, baseType: !64, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1293, file: !27, line: 44, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1306, line: 7, size: 64, elements: !1307)
!1306 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1307 = !{!1308, !1312}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1305, file: !1306, line: 8, baseType: !1309, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1306, line: 5, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !105, line: 20, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !43)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1305, file: !1306, line: 9, baseType: !1310, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1288, file: !27, line: 46, baseType: !394, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1275, file: !27, line: 55, baseType: !1315, size: 256)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1275, file: !27, line: 49, size: 256, elements: !1316)
!1316 = !{!1317, !1326, !1327, !1328, !1329}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1315, file: !27, line: 50, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1320, line: 36, size: 64, elements: !1321)
!1320 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1321 = !{!1322, !1323, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1319, file: !1320, line: 37, baseType: !43, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1319, file: !1320, line: 38, baseType: !1324, size: 16, offset: 32)
!1324 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1319, file: !1320, line: 39, baseType: !1324, size: 16, offset: 48)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1315, file: !27, line: 51, baseType: !43, size: 32, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1315, file: !27, line: 52, baseType: !43, size: 32, offset: 96)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1315, file: !27, line: 53, baseType: !60, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1315, file: !27, line: 54, baseType: !60, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !963, file: !964, line: 973, baseType: !1331, size: 32, offset: 10688)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !46, line: 27, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !58, line: 28, baseType: !43)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !963, file: !964, line: 974, baseType: !1331, size: 32, offset: 10720)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !963, file: !964, line: 978, baseType: !60, size: 64, offset: 10752)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !963, file: !964, line: 987, baseType: !962, size: 64, offset: 10816)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !963, file: !964, line: 990, baseType: !962, size: 64, offset: 10880)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !963, file: !964, line: 995, baseType: !118, size: 128, offset: 10944)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !963, file: !964, line: 996, baseType: !118, size: 128, offset: 11072)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !963, file: !964, line: 997, baseType: !962, size: 64, offset: 11200)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !963, file: !964, line: 1005, baseType: !118, size: 128, offset: 11264)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !963, file: !964, line: 1006, baseType: !118, size: 128, offset: 11392)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !963, file: !964, line: 1009, baseType: !916, size: 64, offset: 11520)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !963, file: !964, line: 1010, baseType: !1344, size: 512, offset: 11584)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 512, elements: !937)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !963, file: !964, line: 1011, baseType: !118, size: 128, offset: 12096)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !963, file: !964, line: 1012, baseType: !118, size: 128, offset: 12224)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !963, file: !964, line: 1014, baseType: !1348, size: 64, offset: 12352)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !963, file: !964, line: 1017, baseType: !1350, size: 64, offset: 12416)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !963, file: !964, line: 1020, baseType: !1350, size: 64, offset: 12480)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !963, file: !964, line: 1023, baseType: !41, size: 64, offset: 12544)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !963, file: !964, line: 1025, baseType: !394, size: 64, offset: 12608)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !963, file: !964, line: 1026, baseType: !394, size: 64, offset: 12672)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !963, file: !964, line: 1031, baseType: !394, size: 64, offset: 12736)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !963, file: !964, line: 1032, baseType: !1357, size: 192, offset: 12800)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !964, line: 324, size: 192, elements: !1358)
!1358 = !{!1359, !1360, !1361}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1357, file: !964, line: 326, baseType: !394, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1357, file: !964, line: 327, baseType: !394, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1357, file: !964, line: 328, baseType: !662, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !963, file: !964, line: 1041, baseType: !60, size: 64, offset: 12992)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !963, file: !964, line: 1042, baseType: !60, size: 64, offset: 13056)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !963, file: !964, line: 1045, baseType: !394, size: 64, offset: 13120)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !963, file: !964, line: 1048, baseType: !394, size: 64, offset: 13184)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !963, file: !964, line: 1051, baseType: !60, size: 64, offset: 13248)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !963, file: !964, line: 1052, baseType: !60, size: 64, offset: 13312)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !963, file: !964, line: 1055, baseType: !1369, size: 640, offset: 13376)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1370, line: 132, size: 640, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1371 = !{!1372, !1378, !1379}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1369, file: !1370, line: 133, baseType: !1373, size: 576)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1374, size: 576, elements: !562)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1370, line: 117, size: 192, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1374, file: !1370, line: 118, baseType: !394, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1374, file: !1370, line: 119, baseType: !1130, size: 128, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1369, file: !1370, line: 134, baseType: !7, size: 32, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1369, file: !1370, line: 135, baseType: !7, size: 32, offset: 608)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !963, file: !964, line: 1058, baseType: !1381, size: 448, offset: 14016)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1370, line: 144, size: 448, elements: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1381, file: !1370, line: 145, baseType: !777, size: 128, align: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1381, file: !1370, line: 146, baseType: !882, size: 256, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1381, file: !1370, line: 147, baseType: !7, size: 32, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !963, file: !964, line: 1064, baseType: !1387, size: 64, offset: 14464)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1389)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1390, line: 110, size: 1472, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1408, !1409, !1410, !1411, !1412, !1413, !1523, !1524, !1525, !1526, !1527, !1558, !1697, !1698, !1708}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1389, file: !1390, line: 111, baseType: !647, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1389, file: !1390, line: 112, baseType: !329, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1389, file: !1390, line: 113, baseType: !338, size: 32, offset: 96)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1389, file: !1390, line: 114, baseType: !329, size: 32, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1389, file: !1390, line: 115, baseType: !338, size: 32, offset: 160)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1389, file: !1390, line: 116, baseType: !329, size: 32, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1389, file: !1390, line: 117, baseType: !338, size: 32, offset: 224)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1389, file: !1390, line: 118, baseType: !329, size: 32, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1389, file: !1390, line: 119, baseType: !338, size: 32, offset: 288)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1389, file: !1390, line: 120, baseType: !7, size: 32, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1389, file: !1390, line: 121, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1404, line: 24, baseType: !1405)
!1404 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1404, line: 24, size: 64, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1405, file: !1404, line: 24, baseType: !394, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1389, file: !1390, line: 122, baseType: !1403, size: 64, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1389, file: !1390, line: 123, baseType: !1403, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1389, file: !1390, line: 124, baseType: !1403, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1389, file: !1390, line: 125, baseType: !1403, size: 64, offset: 640)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1389, file: !1390, line: 127, baseType: !108, size: 8, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1389, file: !1390, line: 129, baseType: !1414, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1416, line: 195, size: 1728, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1417 = !{!1418, !1419, !1422, !1427, !1428, !1431, !1432, !1439, !1440, !1441, !1442, !1445, !1446, !1447, !1448, !1449, !1487, !1508}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1415, file: !1416, line: 196, baseType: !920, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1415, file: !1416, line: 197, baseType: !1420, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1416, line: 28, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !46, line: 104, baseType: !1310)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1416, line: 198, baseType: !1423, size: 192, offset: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !1416, line: 198, size: 192, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1423, file: !1416, line: 199, baseType: !118, size: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1423, file: !1416, line: 200, baseType: !675, size: 192, align: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1415, file: !1416, line: 205, baseType: !643, size: 320, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1415, file: !1416, line: 206, baseType: !1429, size: 64, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1416, line: 206, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1415, file: !1416, line: 207, baseType: !41, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1416, line: 208, baseType: !1433, size: 64, offset: 704)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !1416, line: 208, size: 64, elements: !1434)
!1434 = !{!1435, !1438}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1433, file: !1416, line: 209, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1437, line: 8, baseType: !654)
!1437 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1433, file: !1416, line: 210, baseType: !1436, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1415, file: !1416, line: 212, baseType: !1436, size: 64, offset: 768)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1415, file: !1416, line: 213, baseType: !329, size: 32, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1415, file: !1416, line: 214, baseType: !338, size: 32, offset: 864)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1415, file: !1416, line: 215, baseType: !1443, size: 32, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1416, line: 31, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 110, baseType: !319)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1415, file: !1416, line: 216, baseType: !47, size: 16, offset: 928)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1415, file: !1416, line: 217, baseType: !47, size: 16, offset: 944)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1415, file: !1416, line: 221, baseType: !1324, size: 16, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !1416, line: 228, baseType: !60, size: 64, offset: 1024)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1416, line: 245, baseType: !1450, size: 320, offset: 1088)
!1450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !1416, line: 245, size: 320, elements: !1451)
!1451 = !{!1452, !1479}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1450, file: !1416, line: 246, baseType: !1453, size: 320)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1416, line: 114, size: 320, elements: !1454)
!1454 = !{!1455, !1456, !1468, !1471, !1478}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1453, file: !1416, line: 116, baseType: !60, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1416, line: 117, baseType: !1457, size: 64, offset: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1416, line: 117, size: 64, elements: !1458)
!1458 = !{!1459, !1467}
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1416, line: 118, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !1416, line: 118, size: 64, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1460, file: !1416, line: 120, baseType: !114, size: 16)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1460, file: !1416, line: 121, baseType: !1464, size: 48, offset: 16)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, elements: !1465)
!1465 = !{!1466}
!1466 = !DISubrange(count: 6)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1457, file: !1416, line: 127, baseType: !60, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1453, file: !1416, line: 129, baseType: !1469, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1416, line: 102, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1453, file: !1416, line: 130, baseType: !1472, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1416, line: 108, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1473, file: !1416, line: 109, baseType: !777, size: 128, align: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1473, file: !1416, line: 110, baseType: !920, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1473, file: !1416, line: 111, baseType: !773, size: 8, offset: 160)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1453, file: !1416, line: 131, baseType: !37, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1416, line: 247, baseType: !1480, size: 320)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !1416, line: 247, size: 320, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1480, file: !1416, line: 248, baseType: !60, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1480, file: !1416, line: 249, baseType: !60, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1480, file: !1416, line: 250, baseType: !1469, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1480, file: !1416, line: 251, baseType: !1472, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1480, file: !1416, line: 252, baseType: !462, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1416, line: 260, baseType: !1488, size: 256, offset: 1408)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !1416, line: 260, size: 256, elements: !1489)
!1489 = !{!1490, !1496}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1488, file: !1416, line: 261, baseType: !1491, size: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1416, line: 134, size: 256, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1491, file: !1416, line: 135, baseType: !41, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1491, file: !1416, line: 136, baseType: !1495, size: 256)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !937)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1416, line: 262, baseType: !1497, size: 256)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !1416, line: 262, size: 256, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1497, file: !1416, line: 264, baseType: !118, size: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1497, file: !1416, line: 265, baseType: !1501, size: 128, offset: 128)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1502, line: 22, size: 128, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1503 = !{!1504, !1507}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1501, file: !1502, line: 23, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1502, line: 23, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1501, file: !1502, line: 24, baseType: !60, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1415, file: !1416, line: 280, baseType: !1509, size: 64, offset: 1664)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1416, line: 176, size: 192, elements: !1511)
!1511 = !{!1512, !1521, !1522}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1510, file: !1416, line: 177, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1416, line: 171, baseType: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!43, !1414, !1517, !1519, !1414}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1510, file: !1416, line: 178, baseType: !1414, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1510, file: !1416, line: 179, baseType: !1469, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1389, file: !1390, line: 130, baseType: !1414, size: 64, offset: 832)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1389, file: !1390, line: 131, baseType: !1414, size: 64, offset: 896)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1389, file: !1390, line: 132, baseType: !1414, size: 64, offset: 960)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1389, file: !1390, line: 135, baseType: !41, size: 64, offset: 1024)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1389, file: !1390, line: 137, baseType: !1528, size: 64, offset: 1088)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1530, line: 14, size: 1088, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1531 = !{!1532, !1533, !1542, !1543, !1544, !1545, !1546, !1547}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1529, file: !1530, line: 15, baseType: !920, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1529, file: !1530, line: 17, baseType: !1534, size: 320, offset: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1535, line: 22, size: 320, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1536 = !{!1537, !1538, !1539, !1540}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !1535, line: 23, baseType: !662, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1534, file: !1535, line: 24, baseType: !653, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1534, file: !1535, line: 26, baseType: !118, size: 128, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1534, file: !1535, line: 28, baseType: !1541, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1529, file: !1530, line: 19, baseType: !60, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1529, file: !1530, line: 20, baseType: !647, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1529, file: !1530, line: 23, baseType: !932, size: 128, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1529, file: !1530, line: 24, baseType: !329, size: 32, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1529, file: !1530, line: 29, baseType: !647, size: 64, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1529, file: !1530, line: 36, baseType: !1548, size: 320, offset: 768)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1549, line: 15, size: 320, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1548, file: !1549, line: 16, baseType: !662, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1548, file: !1549, line: 18, baseType: !43, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1548, file: !1549, line: 19, baseType: !43, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1548, file: !1549, line: 20, baseType: !43, size: 32, offset: 96)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1548, file: !1549, line: 21, baseType: !43, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1548, file: !1549, line: 22, baseType: !60, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1548, file: !1549, line: 23, baseType: !60, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1389, file: !1390, line: 138, baseType: !1559, size: 64, offset: 1152)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1561, line: 68, size: 4800, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1562 = !{!1563, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1602, !1603, !1604, !1605, !1606, !1607, !1619, !1678, !1679, !1693, !1695}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1560, file: !1561, line: 69, baseType: !1564, size: 576)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1561, line: 23, size: 576, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1564, file: !1561, line: 24, baseType: !319, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !1561, line: 25, baseType: !1568, size: 512, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1564, file: !1561, line: 25, size: 512, elements: !1569)
!1569 = !{!1570, !1579}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1568, file: !1561, line: 26, baseType: !1571, size: 480)
!1571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1572, size: 480, elements: !1577)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1561, line: 17, size: 96, elements: !1573)
!1573 = !{!1574, !1575, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1572, file: !1561, line: 18, baseType: !319, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1572, file: !1561, line: 19, baseType: !319, size: 32, offset: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1572, file: !1561, line: 20, baseType: !319, size: 32, offset: 64)
!1577 = !{!1578}
!1578 = !DISubrange(count: 5)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !1561, line: 27, baseType: !1580, size: 128)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !1561, line: 27, size: 128, elements: !1581)
!1581 = !{!1582, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1580, file: !1561, line: 28, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1580, file: !1561, line: 29, baseType: !1583, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1560, file: !1561, line: 70, baseType: !1564, size: 576, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1560, file: !1561, line: 71, baseType: !1564, size: 576, offset: 1152)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1560, file: !1561, line: 72, baseType: !1559, size: 64, offset: 1728)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1560, file: !1561, line: 73, baseType: !43, size: 32, offset: 1792)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1560, file: !1561, line: 74, baseType: !329, size: 32, offset: 1824)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1560, file: !1561, line: 75, baseType: !338, size: 32, offset: 1856)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1560, file: !1561, line: 76, baseType: !1592, size: 192, offset: 1920)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1593, line: 9, size: 192, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1594 = !{!1595, !1596, !1600, !1601}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1592, file: !1593, line: 10, baseType: !647, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1592, file: !1593, line: 11, baseType: !1597, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1593, line: 7, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1592, file: !1593, line: 12, baseType: !7, size: 32, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1592, file: !1593, line: 13, baseType: !920, size: 32, offset: 160)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1560, file: !1561, line: 77, baseType: !60, size: 64, offset: 2112)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1560, file: !1561, line: 80, baseType: !773, size: 8, offset: 2176)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1560, file: !1561, line: 88, baseType: !118, size: 128, offset: 2240)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1560, file: !1561, line: 89, baseType: !1414, size: 64, offset: 2368)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1560, file: !1561, line: 90, baseType: !643, size: 320, offset: 2432)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1560, file: !1561, line: 97, baseType: !1608, size: 256, offset: 2752)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1609, line: 98, size: 256, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1610 = !{!1611, !1612, !1613}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1608, file: !1609, line: 99, baseType: !647, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1608, file: !1609, line: 100, baseType: !118, size: 128, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1608, file: !1609, line: 101, baseType: !1614, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1609, line: 21, baseType: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1560, file: !1561, line: 99, baseType: !1620, size: 768, offset: 3008)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !33, line: 199, size: 768, elements: !1621)
!1621 = !{!1622, !1627}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1620, file: !33, line: 200, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!43, !1626}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1620, file: !33, line: 201, baseType: !1628, size: 704, offset: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !33, line: 193, size: 704, elements: !1629)
!1629 = !{!1630, !1677}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1628, file: !33, line: 195, baseType: !1631, size: 640)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !33, line: 173, size: 640, elements: !1632)
!1632 = !{!1633, !1645, !1646, !1647, !1667, !1668, !1670, !1676}
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !33, line: 174, baseType: !1634, size: 192)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1631, file: !33, line: 174, size: 192, elements: !1635)
!1635 = !{!1636, !1644}
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !33, line: 175, baseType: !1637, size: 192)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1634, file: !33, line: 175, size: 192, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1637, file: !33, line: 176, baseType: !54, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1637, file: !33, line: 177, baseType: !43, size: 32, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1637, file: !33, line: 178, baseType: !43, size: 32, offset: 96)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1637, file: !33, line: 179, baseType: !43, size: 32, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1637, file: !33, line: 180, baseType: !43, size: 32, offset: 160)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1634, file: !33, line: 182, baseType: !777, size: 128, align: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1631, file: !33, line: 184, baseType: !1348, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1631, file: !33, line: 185, baseType: !54, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1631, file: !33, line: 186, baseType: !1648, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !33, line: 204, size: 960, elements: !1650)
!1650 = !{!1651, !1652, !1656, !1663}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1649, file: !33, line: 205, baseType: !1620, size: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1649, file: !33, line: 206, baseType: !1653, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1626, !1648}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1649, file: !33, line: 207, baseType: !1657, size: 64, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !1660, !1661, !1662}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1649, file: !33, line: 209, baseType: !1664, size: 64, offset: 896)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!43, !1660, !54}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1631, file: !33, line: 187, baseType: !1626, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1631, file: !33, line: 188, baseType: !1669, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1631, file: !33, line: 189, baseType: !1671, size: 64, offset: 512)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !33, line: 157, size: 256, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1672, file: !33, line: 158, baseType: !675, size: 192, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1672, file: !33, line: 159, baseType: !1660, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1631, file: !33, line: 190, baseType: !928, size: 64, offset: 576)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1628, file: !33, line: 196, baseType: !671, size: 64, offset: 640)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1560, file: !1561, line: 100, baseType: !1660, size: 64, offset: 3776)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1560, file: !1561, line: 102, baseType: !1680, size: 64, offset: 3840)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1561, line: 107, size: 1152, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1691}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1681, file: !1561, line: 108, baseType: !932, size: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1681, file: !1561, line: 109, baseType: !1559, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1681, file: !1561, line: 110, baseType: !329, size: 32, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1681, file: !1561, line: 111, baseType: !70, size: 32, offset: 224)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1681, file: !1561, line: 112, baseType: !1688, size: 640, offset: 256)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 640, elements: !1689)
!1689 = !{!1690}
!1690 = !DISubrange(count: 10)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1681, file: !1561, line: 113, baseType: !1692, size: 256, offset: 896)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 256, elements: !937)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1560, file: !1561, line: 103, baseType: !1694, size: 640, offset: 3904)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 640, elements: !1689)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1560, file: !1561, line: 104, baseType: !1696, size: 256, offset: 4544)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 256, elements: !937)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1389, file: !1390, line: 139, baseType: !1680, size: 64, offset: 1216)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1389, file: !1390, line: 140, baseType: !1699, size: 64, offset: 1280)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1390, line: 25, size: 64, elements: !1701)
!1701 = !{!1702, !1703, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1700, file: !1390, line: 26, baseType: !70, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1700, file: !1390, line: 27, baseType: !43, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1700, file: !1390, line: 28, baseType: !1705, offset: 64)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: -1)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1390, line: 142, baseType: !1709, size: 128, offset: 1344)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1390, line: 142, size: 128, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1709, file: !1390, line: 143, baseType: !43, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1709, file: !1390, line: 144, baseType: !777, size: 128, align: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !963, file: !964, line: 1067, baseType: !1387, size: 64, offset: 14528)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !963, file: !964, line: 1070, baseType: !1387, size: 64, offset: 14592)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !963, file: !964, line: 1074, baseType: !1414, size: 64, offset: 14656)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !963, file: !964, line: 1084, baseType: !1717, size: 128, offset: 14720)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 16)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !963, file: !964, line: 1086, baseType: !1721, size: 64, offset: 14848)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !964, line: 55, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !963, file: !964, line: 1089, baseType: !1724, size: 64, offset: 14912)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1725, line: 12, size: 64, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1724, file: !1725, line: 13, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1725, line: 8, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !963, file: !964, line: 1090, baseType: !1731, size: 128, offset: 14976)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1732, line: 13, size: 128, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1731, file: !1732, line: 14, baseType: !118, size: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !963, file: !964, line: 1097, baseType: !1736, size: 64, offset: 15104)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !964, line: 50, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !963, file: !964, line: 1100, baseType: !1739, size: 64, offset: 15168)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !964, line: 1100, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !963, file: !964, line: 1103, baseType: !1742, size: 64, offset: 15232)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !964, line: 53, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !963, file: !964, line: 1107, baseType: !1745, size: 64, offset: 15296)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1747, line: 31, size: 576, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1748 = !{!1749, !1750, !1753, !1756, !1844, !1845, !1848, !1851, !1852}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1746, file: !1747, line: 32, baseType: !920, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1746, file: !1747, line: 33, baseType: !1751, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1747, line: 9, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1746, file: !1747, line: 34, baseType: !1754, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1747, line: 10, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1746, file: !1747, line: 35, baseType: !1757, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1759, line: 8, size: 960, elements: !1760)
!1759 = !DIFile(filename: "fs/notify/../mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a5eb1a988fb7c9469e00ad2dc4ac71")
!1760 = !{!1761, !1762, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1758, file: !1759, line: 9, baseType: !1592, size: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1758, file: !1759, line: 10, baseType: !1763, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount", file: !1759, line: 39, size: 2560, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1775, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1800, !1805, !1806, !1829, !1830, !1831, !1832, !1833, !1834}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_hash", scope: !1764, file: !1759, line: 40, baseType: !932, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_parent", scope: !1764, file: !1759, line: 41, baseType: !1763, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mountpoint", scope: !1764, file: !1759, line: 42, baseType: !358, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1764, file: !1759, line: 43, baseType: !468, size: 256, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !1759, line: 44, baseType: !1771, size: 128, offset: 512)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1764, file: !1759, line: 44, size: 128, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_rcu", scope: !1771, file: !1759, line: 45, baseType: !777, size: 128, align: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !1771, file: !1759, line: 46, baseType: !870, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pcp", scope: !1764, file: !1759, line: 49, baseType: !1776, size: 64, offset: 640)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_pcp", file: !1759, line: 27, size: 64, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_count", scope: !1777, file: !1759, line: 28, baseType: !43, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_writers", scope: !1777, file: !1759, line: 29, baseType: !43, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mounts", scope: !1764, file: !1759, line: 54, baseType: !118, size: 128, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_child", scope: !1764, file: !1759, line: 55, baseType: !118, size: 128, offset: 832)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_instance", scope: !1764, file: !1759, line: 56, baseType: !118, size: 128, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_devname", scope: !1764, file: !1759, line: 57, baseType: !37, size: 64, offset: 1088)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_list", scope: !1764, file: !1759, line: 58, baseType: !118, size: 128, offset: 1152)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expire", scope: !1764, file: !1759, line: 59, baseType: !118, size: 128, offset: 1280)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_share", scope: !1764, file: !1759, line: 60, baseType: !118, size: 128, offset: 1408)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave_list", scope: !1764, file: !1759, line: 61, baseType: !118, size: 128, offset: 1536)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave", scope: !1764, file: !1759, line: 62, baseType: !118, size: 128, offset: 1664)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_master", scope: !1764, file: !1759, line: 63, baseType: !1763, size: 64, offset: 1792)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1764, file: !1759, line: 64, baseType: !1757, size: 64, offset: 1856)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp", scope: !1764, file: !1759, line: 65, baseType: !1793, size: 64, offset: 1920)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mountpoint", file: !1759, line: 32, size: 320, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1799}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "m_hash", scope: !1794, file: !1759, line: 33, baseType: !932, size: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "m_dentry", scope: !1794, file: !1759, line: 34, baseType: !358, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !1794, file: !1759, line: 35, baseType: !928, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "m_count", scope: !1794, file: !1759, line: 36, baseType: !43, size: 32, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !1759, line: 66, baseType: !1801, size: 128, offset: 1984)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1764, file: !1759, line: 66, size: 128, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp_list", scope: !1801, file: !1759, line: 67, baseType: !932, size: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umount", scope: !1801, file: !1759, line: 68, baseType: !932, size: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umounting", scope: !1764, file: !1759, line: 70, baseType: !118, size: 128, offset: 2112)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_marks", scope: !1764, file: !1759, line: 72, baseType: !1807, size: 64, offset: 2240)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !259, line: 472, size: 256, elements: !1809)
!1809 = !{!1810, !1811, !1812, !1813, !1821, !1828}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1808, file: !259, line: 473, baseType: !80, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1808, file: !259, line: 474, baseType: !47, size: 16, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1808, file: !259, line: 477, baseType: !47, size: 16, offset: 48)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !1808, file: !259, line: 478, baseType: !1814, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !58, line: 81, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 79, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1815, file: !58, line: 80, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !1819)
!1819 = !{!1820}
!1820 = !DISubrange(count: 2)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !259, line: 479, baseType: !1822, size: 64, offset: 128)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !259, line: 479, size: 64, elements: !1823)
!1823 = !{!1824, !1827}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !1822, file: !259, line: 481, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !259, line: 464, baseType: !1807)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !1822, file: !259, line: 483, baseType: !1807, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1808, file: !259, line: 485, baseType: !928, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_mask", scope: !1764, file: !1759, line: 73, baseType: !320, size: 32, offset: 2304)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1764, file: !1759, line: 75, baseType: !43, size: 32, offset: 2336)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_group_id", scope: !1764, file: !1759, line: 76, baseType: !43, size: 32, offset: 2368)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expiry_mark", scope: !1764, file: !1759, line: 77, baseType: !43, size: 32, offset: 2400)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pins", scope: !1764, file: !1759, line: 78, baseType: !928, size: 64, offset: 2432)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_stuck_children", scope: !1764, file: !1759, line: 79, baseType: !928, size: 64, offset: 2496)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1758, file: !1759, line: 16, baseType: !118, size: 128, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ns_lock", scope: !1758, file: !1759, line: 17, baseType: !80, size: 32, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1758, file: !1759, line: 18, baseType: !1559, size: 64, offset: 448)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1758, file: !1759, line: 19, baseType: !1680, size: 64, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1758, file: !1759, line: 20, baseType: !394, size: 64, offset: 576)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1758, file: !1759, line: 21, baseType: !75, size: 192, offset: 640)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1758, file: !1759, line: 22, baseType: !394, size: 64, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "mounts", scope: !1758, file: !1759, line: 23, baseType: !7, size: 32, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mounts", scope: !1758, file: !1759, line: 24, baseType: !7, size: 32, offset: 928)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1746, file: !1747, line: 36, baseType: !948, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1746, file: !1747, line: 37, baseType: !1846, size: 64, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1416, line: 34, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1746, file: !1747, line: 38, baseType: !1849, size: 64, offset: 384)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1747, line: 38, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1746, file: !1747, line: 39, baseType: !1849, size: 64, offset: 448)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1746, file: !1747, line: 40, baseType: !1853, size: 64, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1855, line: 771, size: 384, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1856 = !{!1857, !1858, !1859, !1860}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1854, file: !1855, line: 772, baseType: !1592, size: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1854, file: !1855, line: 773, baseType: !1559, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1854, file: !1855, line: 774, baseType: !1680, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1854, file: !1855, line: 775, baseType: !1861, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1863, line: 209, size: 4736, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1864 = !{!1865, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1862, file: !1863, line: 215, baseType: !1866, size: 896)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1867, size: 896, elements: !2136)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1863, line: 152, size: 1600, elements: !1869)
!1869 = !{!1870, !2187, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2308}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1868, file: !1863, line: 154, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1863, line: 389, size: 7872, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !2087, !2104, !2105, !2109, !2110, !2111, !2112, !2113, !2114, !2133, !2134, !2138, !2139, !2140, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2174, !2177, !2178, !2185}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1872, file: !1863, line: 391, baseType: !1868, size: 1600)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1872, file: !1863, line: 393, baseType: !60, size: 64, offset: 1600)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1872, file: !1863, line: 401, baseType: !43, size: 32, offset: 1664)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1872, file: !1863, line: 404, baseType: !43, size: 32, offset: 1696)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1872, file: !1863, line: 417, baseType: !43, size: 32, offset: 1728)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1872, file: !1863, line: 418, baseType: !43, size: 32, offset: 1760)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1872, file: !1863, line: 419, baseType: !43, size: 32, offset: 1792)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1872, file: !1863, line: 432, baseType: !43, size: 32, offset: 1824)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1872, file: !1863, line: 433, baseType: !43, size: 32, offset: 1856)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1872, file: !1863, line: 434, baseType: !43, size: 32, offset: 1888)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1872, file: !1863, line: 436, baseType: !43, size: 32, offset: 1920)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1872, file: !1863, line: 439, baseType: !7, size: 32, offset: 1952)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1872, file: !1863, line: 441, baseType: !1887, size: 64, offset: 1984)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1889, line: 190, size: 1152, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !2079, !2080, !2081, !2082, !2083, !2086}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1888, file: !1889, line: 191, baseType: !70, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1888, file: !1889, line: 192, baseType: !70, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1888, file: !1889, line: 202, baseType: !1887, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1888, file: !1889, line: 203, baseType: !37, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1888, file: !1889, line: 205, baseType: !675, size: 192, align: 64, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1888, file: !1889, line: 207, baseType: !321, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1888, file: !1889, line: 208, baseType: !7, size: 32, offset: 448)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1888, file: !1889, line: 209, baseType: !1899, size: 256, offset: 512)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1888, file: !1889, line: 209, size: 256, elements: !1900)
!1900 = !{!1901, !1910, !1914}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1899, file: !1889, line: 210, baseType: !1902, size: 256)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1889, line: 153, size: 256, elements: !1903)
!1903 = !{!1904, !1905, !1906, !1909}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1902, file: !1889, line: 154, baseType: !60, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1902, file: !1889, line: 156, baseType: !671, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1902, file: !1889, line: 162, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1889, line: 162, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1902, file: !1889, line: 167, baseType: !60, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1899, file: !1889, line: 211, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1889, line: 170, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1911, file: !1889, line: 171, baseType: !1887, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1899, file: !1889, line: 212, baseType: !1915, size: 256)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1889, line: 174, size: 256, elements: !1916)
!1916 = !{!1917, !2074, !2077, !2078}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1915, file: !1889, line: 175, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1889, line: 271, size: 768, elements: !1921)
!1921 = !{!1922, !2038, !2042, !2043, !2044, !2045, !2046, !2050, !2051, !2052, !2053, !2070}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1920, file: !1889, line: 276, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!43, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1889, line: 251, size: 1216, elements: !1928)
!1928 = !{!1929, !1930, !1931, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1927, file: !1889, line: 253, baseType: !1887, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1927, file: !1889, line: 254, baseType: !863, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1927, file: !1889, line: 255, baseType: !1932, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1934, line: 17, size: 960, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1965, !1966, !1969}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1933, file: !1934, line: 18, baseType: !462, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1933, file: !1934, line: 19, baseType: !56, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1933, file: !1934, line: 20, baseType: !56, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1933, file: !1934, line: 21, baseType: !56, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1933, file: !1934, line: 22, baseType: !56, size: 64, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1933, file: !1934, line: 23, baseType: !62, size: 64, offset: 320)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1933, file: !1934, line: 24, baseType: !62, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1933, file: !1934, line: 25, baseType: !882, size: 256, offset: 448)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1933, file: !1934, line: 26, baseType: !1945, size: 64, offset: 704)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1934, line: 32, size: 256, elements: !1948)
!1948 = !{!1949, !1953, !1957, !1961}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1947, file: !1934, line: 33, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!41, !1932, !61}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1947, file: !1934, line: 34, baseType: !1954, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1932, !41}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1947, file: !1934, line: 35, baseType: !1958, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!41, !1932, !41, !61}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1947, file: !1934, line: 36, baseType: !1962, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!43, !1932, !41}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1933, file: !1934, line: 27, baseType: !43, size: 32, offset: 768)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1933, file: !1934, line: 28, baseType: !1967, size: 64, offset: 832)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1933, file: !1934, line: 29, baseType: !41, size: 64, offset: 896)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1927, file: !1889, line: 256, baseType: !41, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1927, file: !1889, line: 259, baseType: !882, size: 256, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1927, file: !1889, line: 260, baseType: !882, size: 256, offset: 512)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1927, file: !1889, line: 261, baseType: !43, size: 32, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1927, file: !1889, line: 262, baseType: !118, size: 128, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1927, file: !1889, line: 263, baseType: !462, size: 64, offset: 960)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1927, file: !1889, line: 265, baseType: !56, size: 64, offset: 1024)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1927, file: !1889, line: 266, baseType: !773, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1927, file: !1889, line: 267, baseType: !773, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1927, file: !1889, line: 268, baseType: !1980, size: 64, offset: 1152)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !816, line: 563, size: 1024, elements: !1983)
!1983 = !{!1984, !1988, !1989, !1993, !1997, !2001, !2002, !2006, !2010, !2014, !2015, !2016, !2020, !2024, !2030, !2034}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1982, file: !816, line: 564, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !822}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1982, file: !816, line: 569, baseType: !1985, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1982, file: !816, line: 571, baseType: !1990, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!43, !822, !60}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1982, file: !816, line: 572, baseType: !1994, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!43, !822}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1982, file: !816, line: 578, baseType: !1998, size: 64, offset: 256)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!43, !822, !60, !60, !60}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1982, file: !816, line: 580, baseType: !810, size: 64, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1982, file: !816, line: 581, baseType: !2003, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!813, !814, !7}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1982, file: !816, line: 582, baseType: !2007, size: 64, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!813, !814, !60, !60}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1982, file: !816, line: 584, baseType: !2011, size: 64, offset: 512)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!60, !822}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1982, file: !816, line: 588, baseType: !810, size: 64, offset: 576)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1982, file: !816, line: 591, baseType: !810, size: 64, offset: 640)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1982, file: !816, line: 597, baseType: !2017, size: 64, offset: 704)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!43, !822, !60, !41, !43, !43}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1982, file: !816, line: 603, baseType: !2021, size: 64, offset: 768)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!37, !822}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1982, file: !816, line: 613, baseType: !2025, size: 64, offset: 832)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!43, !822, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !144, line: 717, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1982, file: !816, line: 625, baseType: !2031, size: 64, offset: 896)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!2028, !822, !60}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1982, file: !816, line: 633, baseType: !2035, size: 64, offset: 960)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!692, !822, !60}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1920, file: !1889, line: 277, baseType: !2039, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{null, !1926}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1920, file: !1889, line: 290, baseType: !1962, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1920, file: !1889, line: 292, baseType: !1950, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1920, file: !1889, line: 293, baseType: !1958, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1920, file: !1889, line: 294, baseType: !1954, size: 64, offset: 320)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1920, file: !1889, line: 296, baseType: !2047, size: 64, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!593, !1926, !462, !56, !62}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1920, file: !1889, line: 306, baseType: !56, size: 64, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1920, file: !1889, line: 313, baseType: !773, size: 8, offset: 512)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1920, file: !1889, line: 314, baseType: !2047, size: 64, offset: 576)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1920, file: !1889, line: 317, baseType: !2054, size: 64, offset: 640)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!2057, !1926, !2059}
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2058, line: 59, baseType: !7)
!2058 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2061, line: 37, size: 128, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2062 = !{!2063, !2069}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2060, file: !2061, line: 38, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2061, line: 31, baseType: !2065)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !863, !2068, !2059}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2060, file: !2061, line: 39, baseType: !2057, size: 32, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1920, file: !1889, line: 320, baseType: !2071, size: 64, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!43, !1926, !822}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1915, file: !1889, line: 176, baseType: !2075, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1889, line: 35, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1915, file: !1889, line: 177, baseType: !62, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1915, file: !1889, line: 178, baseType: !1887, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1888, file: !1889, line: 215, baseType: !41, size: 64, offset: 768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1888, file: !1889, line: 221, baseType: !394, size: 64, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1888, file: !1889, line: 223, baseType: !47, size: 16, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1888, file: !1889, line: 224, baseType: !45, size: 16, offset: 912)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1888, file: !1889, line: 225, baseType: !2084, size: 64, offset: 960)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1889, line: 36, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1888, file: !1889, line: 227, baseType: !777, size: 128, align: 64, offset: 1024)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1872, file: !1863, line: 442, baseType: !2088, size: 448, offset: 2048)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1863, line: 138, size: 448, elements: !2089)
!2089 = !{!2090, !2091, !2092}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2088, file: !1863, line: 140, baseType: !1887, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2088, file: !1863, line: 141, baseType: !60, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2088, file: !1863, line: 142, baseType: !2093, size: 320, offset: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2094, line: 11, size: 320, elements: !2095)
!2094 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2095 = !{!2096, !2097, !2098, !2103}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2093, file: !2094, line: 16, baseType: !932, size: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2093, file: !2094, line: 17, baseType: !60, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2093, file: !2094, line: 18, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2093, file: !2094, line: 19, baseType: !319, size: 32, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1872, file: !1863, line: 443, baseType: !2088, size: 448, offset: 2496)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1872, file: !1863, line: 446, baseType: !2106, offset: 2944)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2088, elements: !2107)
!2107 = !{!2108}
!2108 = !DISubrange(count: 0)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1872, file: !1863, line: 455, baseType: !114, size: 16, offset: 2944)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1872, file: !1863, line: 456, baseType: !114, size: 16, offset: 2960)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1872, file: !1863, line: 457, baseType: !114, size: 16, offset: 2976)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1872, file: !1863, line: 458, baseType: !114, size: 16, offset: 2992)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1872, file: !1863, line: 461, baseType: !1866, size: 896, offset: 3008)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1872, file: !1863, line: 463, baseType: !2115, size: 64, offset: 3904)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1863, line: 537, size: 41664, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2131}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2116, file: !1863, line: 538, baseType: !1907, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2116, file: !1863, line: 541, baseType: !7, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2116, file: !1863, line: 544, baseType: !43, size: 32, offset: 96)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2116, file: !1863, line: 547, baseType: !118, size: 128, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2116, file: !1863, line: 548, baseType: !777, size: 128, align: 64, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2116, file: !1863, line: 555, baseType: !1872, size: 7872, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2116, file: !1863, line: 558, baseType: !1871, size: 64, offset: 8256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2116, file: !1863, line: 561, baseType: !70, size: 32, offset: 8320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2116, file: !1863, line: 564, baseType: !7, size: 32, offset: 8352)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2116, file: !1863, line: 567, baseType: !2128, size: 32768, offset: 8384)
!2128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32768, elements: !2129)
!2129 = !{!2130}
!2130 = !DISubrange(count: 4096)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2116, file: !1863, line: 570, baseType: !2132, size: 512, offset: 41152)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !566)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1872, file: !1863, line: 469, baseType: !118, size: 128, offset: 3968)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1872, file: !1863, line: 478, baseType: !2135, size: 1792, offset: 4096)
!2135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1792, elements: !2136)
!2136 = !{!2137}
!2137 = !DISubrange(count: 14)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1872, file: !1863, line: 487, baseType: !1871, size: 64, offset: 5888)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1872, file: !1863, line: 488, baseType: !1871, size: 64, offset: 5952)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1872, file: !1863, line: 491, baseType: !2141, size: 64, offset: 6016)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1863, line: 327, size: 896, elements: !2143)
!2143 = !{!2144, !2147, !2157, !2158, !2159, !2160, !2161}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2142, file: !1863, line: 332, baseType: !2145)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2146, line: 64, elements: !856)
!2146 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2142, file: !1863, line: 333, baseType: !2148, size: 192)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1863, line: 299, size: 192, elements: !2149)
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2148, file: !1863, line: 300, baseType: !2151, size: 192)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2152, line: 17, size: 192, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2151, file: !2152, line: 18, baseType: !394, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2151, file: !2152, line: 19, baseType: !394, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2151, file: !2152, line: 20, baseType: !396, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2142, file: !1863, line: 339, baseType: !2148, size: 192, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2142, file: !1863, line: 347, baseType: !2148, size: 192, offset: 384)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2142, file: !1863, line: 353, baseType: !2148, size: 192, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2142, file: !1863, line: 366, baseType: !1871, size: 64, offset: 768)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2142, file: !1863, line: 367, baseType: !1871, size: 64, offset: 832)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1872, file: !1863, line: 492, baseType: !118, size: 128, offset: 6080)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1872, file: !1863, line: 495, baseType: !2148, size: 192, offset: 6208)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1872, file: !1863, line: 496, baseType: !2148, size: 192, offset: 6400)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1872, file: !1863, line: 497, baseType: !1357, size: 192, offset: 6592)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1872, file: !1863, line: 503, baseType: !118, size: 128, offset: 6784)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1872, file: !1863, line: 504, baseType: !882, size: 256, offset: 6912)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1872, file: !1863, line: 507, baseType: !75, size: 192, offset: 7168)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1872, file: !1863, line: 510, baseType: !1608, size: 256, offset: 7360)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1872, file: !1863, line: 513, baseType: !2171, size: 64, offset: 7616)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2173, line: 214, elements: !856)
!2173 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1872, file: !1863, line: 516, baseType: !2175, offset: 7680)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2176, line: 76, elements: !856)
!2176 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1872, file: !1863, line: 519, baseType: !70, size: 32, offset: 7680)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1872, file: !1863, line: 522, baseType: !2179, size: 128, offset: 7712)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1863, line: 370, size: 128, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2179, file: !1863, line: 372, baseType: !773, size: 8)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2179, file: !1863, line: 375, baseType: !43, size: 32, offset: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2179, file: !1863, line: 380, baseType: !43, size: 32, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2179, file: !1863, line: 386, baseType: !43, size: 32, offset: 96)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1872, file: !1863, line: 529, baseType: !2186, offset: 7872)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1871, elements: !1706)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1868, file: !1863, line: 157, baseType: !2188, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1863, line: 669, size: 1984, elements: !2190)
!2190 = !{!2191, !2195, !2199, !2203, !2204, !2205, !2206, !2210, !2214, !2215, !2221, !2225, !2226, !2228, !2232, !2236, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2289, !2290}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2189, file: !1863, line: 670, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!1867, !1867}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2189, file: !1863, line: 671, baseType: !2196, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!43, !1867}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2189, file: !1863, line: 672, baseType: !2200, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !1867}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2189, file: !1863, line: 673, baseType: !2200, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2189, file: !1863, line: 674, baseType: !2200, size: 64, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2189, file: !1863, line: 675, baseType: !2200, size: 64, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2189, file: !1863, line: 676, baseType: !2207, size: 64, offset: 384)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !1867, !43}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2189, file: !1863, line: 677, baseType: !2211, size: 64, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!43, !1932, !1867}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2189, file: !1863, line: 679, baseType: !2211, size: 64, offset: 512)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2189, file: !1863, line: 682, baseType: !2216, size: 64, offset: 576)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!43, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1863, line: 30, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2189, file: !1863, line: 683, baseType: !2222, size: 64, offset: 640)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !2219}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2189, file: !1863, line: 684, baseType: !2222, size: 64, offset: 704)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2189, file: !1863, line: 685, baseType: !2227, size: 64, offset: 768)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2189, file: !1863, line: 686, baseType: !2229, size: 64, offset: 832)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!43, !962, !1861}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2189, file: !1863, line: 688, baseType: !2233, size: 64, offset: 896)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !962, !1861}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2189, file: !1863, line: 689, baseType: !2237, size: 64, offset: 960)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !962}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2189, file: !1863, line: 690, baseType: !2237, size: 64, offset: 1024)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2189, file: !1863, line: 691, baseType: !2237, size: 64, offset: 1088)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2189, file: !1863, line: 692, baseType: !2200, size: 64, offset: 1152)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2189, file: !1863, line: 694, baseType: !773, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2189, file: !1863, line: 707, baseType: !773, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2189, file: !1863, line: 719, baseType: !773, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2189, file: !1863, line: 722, baseType: !43, size: 32, offset: 1248)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2189, file: !1863, line: 723, baseType: !37, size: 64, offset: 1280)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2189, file: !1863, line: 726, baseType: !37, size: 64, offset: 1344)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2189, file: !1863, line: 729, baseType: !2115, size: 64, offset: 1408)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2189, file: !1863, line: 732, baseType: !953, size: 192, offset: 1472)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2189, file: !1863, line: 738, baseType: !118, size: 128, offset: 1664)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2189, file: !1863, line: 744, baseType: !2253, size: 64, offset: 1792)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1863, line: 580, size: 1728, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2265, !2266, !2267, !2271, !2275, !2276, !2277, !2278, !2279, !2283, !2287, !2288}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2254, file: !1863, line: 586, baseType: !2132, size: 512)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2254, file: !1863, line: 587, baseType: !60, size: 64, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2254, file: !1863, line: 593, baseType: !56, size: 64, offset: 576)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2254, file: !1863, line: 596, baseType: !7, size: 32, offset: 640)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2254, file: !1863, line: 604, baseType: !7, size: 32, offset: 672)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2254, file: !1863, line: 610, baseType: !2188, size: 64, offset: 704)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2254, file: !1863, line: 611, baseType: !118, size: 128, offset: 768)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2254, file: !1863, line: 612, baseType: !2264, size: 64, offset: 896)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2254, file: !1863, line: 614, baseType: !1923, size: 64, offset: 960)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2254, file: !1863, line: 615, baseType: !2039, size: 64, offset: 1024)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2254, file: !1863, line: 621, baseType: !2268, size: 64, offset: 1088)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!394, !1867, !2253}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2254, file: !1863, line: 625, baseType: !2272, size: 64, offset: 1152)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!653, !1867, !2253}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2254, file: !1863, line: 628, baseType: !1962, size: 64, offset: 1216)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2254, file: !1863, line: 631, baseType: !1950, size: 64, offset: 1280)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2254, file: !1863, line: 632, baseType: !1958, size: 64, offset: 1344)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2254, file: !1863, line: 633, baseType: !1954, size: 64, offset: 1408)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2254, file: !1863, line: 640, baseType: !2280, size: 64, offset: 1472)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!43, !1867, !2253, !394}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2254, file: !1863, line: 645, baseType: !2284, size: 64, offset: 1536)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!43, !1867, !2253, !653}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2254, file: !1863, line: 654, baseType: !2047, size: 64, offset: 1600)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2254, file: !1863, line: 657, baseType: !2054, size: 64, offset: 1664)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2189, file: !1863, line: 745, baseType: !2253, size: 64, offset: 1856)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2189, file: !1863, line: 754, baseType: !7, size: 32, offset: 1920)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1868, file: !1863, line: 160, baseType: !756, size: 128, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1868, file: !1863, line: 163, baseType: !118, size: 128, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1868, file: !1863, line: 164, baseType: !118, size: 128, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1868, file: !1863, line: 167, baseType: !118, size: 128, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1868, file: !1863, line: 173, baseType: !43, size: 32, offset: 640)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !1863, line: 175, baseType: !7, size: 32, offset: 672)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1868, file: !1863, line: 183, baseType: !394, size: 64, offset: 704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1868, file: !1863, line: 189, baseType: !70, size: 32, offset: 768)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1868, file: !1863, line: 192, baseType: !1608, size: 256, offset: 832)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1868, file: !1863, line: 193, baseType: !2301, size: 448, offset: 1088)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1609, line: 120, size: 448, elements: !2302)
!2302 = !{!2303, !2304, !2305}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2301, file: !1609, line: 121, baseType: !1608, size: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2301, file: !1609, line: 122, baseType: !777, size: 128, align: 64, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2301, file: !1609, line: 125, baseType: !2306, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1609, line: 18, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1868, file: !1863, line: 199, baseType: !1867, size: 64, offset: 1536)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1862, file: !1863, line: 218, baseType: !920, size: 32, offset: 896)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1862, file: !1863, line: 226, baseType: !1861, size: 64, offset: 960)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1862, file: !1863, line: 229, baseType: !1871, size: 64, offset: 1024)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1862, file: !1863, line: 232, baseType: !43, size: 32, offset: 1088)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1862, file: !1863, line: 241, baseType: !118, size: 128, offset: 1152)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1862, file: !1863, line: 242, baseType: !118, size: 128, offset: 1280)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1862, file: !1863, line: 243, baseType: !118, size: 128, offset: 1408)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1862, file: !1863, line: 246, baseType: !118, size: 128, offset: 1536)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1862, file: !1863, line: 255, baseType: !2135, size: 1792, offset: 1664)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1862, file: !1863, line: 258, baseType: !118, size: 128, offset: 3456)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1862, file: !1863, line: 259, baseType: !118, size: 128, offset: 3584)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1862, file: !1863, line: 265, baseType: !932, size: 128, offset: 3712)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1862, file: !1863, line: 271, baseType: !118, size: 128, offset: 3840)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1862, file: !1863, line: 277, baseType: !118, size: 128, offset: 3968)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1862, file: !1863, line: 278, baseType: !118, size: 128, offset: 4096)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1862, file: !1863, line: 279, baseType: !118, size: 128, offset: 4224)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1862, file: !1863, line: 288, baseType: !1871, size: 64, offset: 4352)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1862, file: !1863, line: 289, baseType: !1871, size: 64, offset: 4416)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1862, file: !1863, line: 290, baseType: !1861, size: 64, offset: 4480)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1862, file: !1863, line: 293, baseType: !773, size: 8, offset: 4544)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1862, file: !1863, line: 296, baseType: !777, size: 128, align: 64, offset: 4608)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !963, file: !964, line: 1110, baseType: !2331, size: 64, offset: 15360)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2333, line: 93, size: 8768, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2383, !2392, !2393, !2395, !2396, !2397, !2400, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2438, !2439, !2446, !2456, !2519, !2520, !2523, !2524, !2525, !2526, !2527, !2528}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2332, file: !2333, line: 94, baseType: !920, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2332, file: !2333, line: 95, baseType: !70, size: 32, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2332, file: !2333, line: 96, baseType: !43, size: 32, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2332, file: !2333, line: 97, baseType: !43, size: 32, offset: 96)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2332, file: !2333, line: 98, baseType: !118, size: 128, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2332, file: !2333, line: 100, baseType: !75, size: 192, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2332, file: !2333, line: 103, baseType: !962, size: 64, offset: 448)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2332, file: !2333, line: 106, baseType: !2343, size: 192, offset: 512)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2344, line: 32, size: 192, elements: !2345)
!2344 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2343, file: !2344, line: 33, baseType: !118, size: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2343, file: !2344, line: 34, baseType: !2348, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2349, line: 25, baseType: !2350)
!2349 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2349, line: 23, size: 64, elements: !2351)
!2351 = !{!2352}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2350, file: !2349, line: 24, baseType: !1194, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2332, file: !2333, line: 109, baseType: !928, size: 64, offset: 704)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2332, file: !2333, line: 112, baseType: !43, size: 32, offset: 768)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2332, file: !2333, line: 114, baseType: !43, size: 32, offset: 800)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2332, file: !2333, line: 115, baseType: !962, size: 64, offset: 832)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2332, file: !2333, line: 118, baseType: !43, size: 32, offset: 896)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2332, file: !2333, line: 119, baseType: !7, size: 32, offset: 928)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2332, file: !2333, line: 121, baseType: !2360, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2333, line: 80, size: 448, elements: !2362)
!2362 = !{!2363, !2364, !2370}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2361, file: !2333, line: 81, baseType: !70, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2361, file: !2333, line: 82, baseType: !2365, size: 128, offset: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2333, line: 75, size: 128, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2365, file: !2333, line: 76, baseType: !962, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2365, file: !2333, line: 77, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2361, file: !2333, line: 83, baseType: !787, size: 256, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2332, file: !2333, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2332, file: !2333, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2332, file: !2333, line: 138, baseType: !7, size: 32, offset: 1056)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2332, file: !2333, line: 139, baseType: !118, size: 128, offset: 1088)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2332, file: !2333, line: 142, baseType: !1074, size: 512, offset: 1216)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2332, file: !2333, line: 143, baseType: !1082, size: 64, offset: 1728)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2332, file: !2333, line: 150, baseType: !2378, size: 256, offset: 1792)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2379, size: 256, elements: !1819)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2333, line: 38, size: 128, elements: !2380)
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2379, file: !2333, line: 39, baseType: !394, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2379, file: !2333, line: 40, baseType: !394, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2332, file: !2333, line: 156, baseType: !2384, size: 192, offset: 2048)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2333, line: 66, size: 192, elements: !2385)
!2385 = !{!2386}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2384, file: !2333, line: 67, baseType: !2387, size: 192)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2333, line: 47, size: 192, elements: !2388)
!2388 = !{!2389, !2390, !2391}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2387, file: !2333, line: 48, baseType: !649, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2387, file: !2333, line: 49, baseType: !649, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2387, file: !2333, line: 50, baseType: !649, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2332, file: !2333, line: 160, baseType: !1369, size: 640, offset: 2240)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2332, file: !2333, line: 163, baseType: !2394, size: 256, offset: 2880)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 256, elements: !937)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2332, file: !2333, line: 169, baseType: !916, size: 64, offset: 3136)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2332, file: !2333, line: 172, baseType: !43, size: 32, offset: 3200)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2332, file: !2333, line: 174, baseType: !2398, size: 64, offset: 3264)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2333, line: 174, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2332, file: !2333, line: 185, baseType: !2401, size: 64, offset: 3328)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !365, line: 860, baseType: !2402)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !365, line: 853, size: 64, elements: !2403)
!2403 = !{!2404, !2405}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2402, file: !365, line: 858, baseType: !364, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2402, file: !365, line: 859, baseType: !80, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2332, file: !2333, line: 186, baseType: !394, size: 64, offset: 3392)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2332, file: !2333, line: 186, baseType: !394, size: 64, offset: 3456)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2332, file: !2333, line: 186, baseType: !394, size: 64, offset: 3520)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2332, file: !2333, line: 186, baseType: !394, size: 64, offset: 3584)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2332, file: !2333, line: 187, baseType: !394, size: 64, offset: 3648)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2332, file: !2333, line: 188, baseType: !394, size: 64, offset: 3712)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2332, file: !2333, line: 189, baseType: !1357, size: 192, offset: 3776)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2332, file: !2333, line: 190, baseType: !60, size: 64, offset: 3968)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2332, file: !2333, line: 190, baseType: !60, size: 64, offset: 4032)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2332, file: !2333, line: 190, baseType: !60, size: 64, offset: 4096)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2332, file: !2333, line: 190, baseType: !60, size: 64, offset: 4160)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2332, file: !2333, line: 191, baseType: !60, size: 64, offset: 4224)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2332, file: !2333, line: 191, baseType: !60, size: 64, offset: 4288)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2332, file: !2333, line: 191, baseType: !60, size: 64, offset: 4352)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2332, file: !2333, line: 191, baseType: !60, size: 64, offset: 4416)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2332, file: !2333, line: 192, baseType: !60, size: 64, offset: 4480)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2332, file: !2333, line: 192, baseType: !60, size: 64, offset: 4544)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2332, file: !2333, line: 192, baseType: !60, size: 64, offset: 4608)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2332, file: !2333, line: 192, baseType: !60, size: 64, offset: 4672)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2332, file: !2333, line: 193, baseType: !60, size: 64, offset: 4736)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2332, file: !2333, line: 193, baseType: !60, size: 64, offset: 4800)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2332, file: !2333, line: 194, baseType: !2428, size: 448, offset: 4864)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2429, line: 12, size: 448, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2430 = !{!2431, !2432, !2433, !2434, !2435, !2436, !2437}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2428, file: !2429, line: 15, baseType: !394, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2428, file: !2429, line: 17, baseType: !394, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2428, file: !2429, line: 19, baseType: !394, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2428, file: !2429, line: 21, baseType: !394, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2428, file: !2429, line: 29, baseType: !394, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2428, file: !2429, line: 35, baseType: !394, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2428, file: !2429, line: 44, baseType: !394, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2332, file: !2333, line: 202, baseType: !396, size: 64, offset: 5312)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2332, file: !2333, line: 213, baseType: !2440, size: 2048, offset: 5376)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2441, size: 2048, elements: !1718)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2442, line: 43, size: 128, elements: !2443)
!2442 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2443 = !{!2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2441, file: !2442, line: 44, baseType: !59, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2441, file: !2442, line: 45, baseType: !59, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2332, file: !2333, line: 216, baseType: !2447, size: 448, offset: 7424)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2333, line: 30, size: 448, elements: !2448)
!2448 = !{!2449, !2450, !2451, !2452, !2453, !2454, !2455}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2447, file: !2333, line: 31, baseType: !43, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2447, file: !2333, line: 32, baseType: !596, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2447, file: !2333, line: 33, baseType: !60, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2447, file: !2333, line: 34, baseType: !394, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2447, file: !2333, line: 34, baseType: !394, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2447, file: !2333, line: 35, baseType: !60, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2447, file: !2333, line: 35, baseType: !60, size: 64, offset: 384)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2332, file: !2333, line: 219, baseType: !2457, size: 64, offset: 7872)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2459, line: 41, size: 3456, elements: !2460)
!2459 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2475, !2476, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2458, file: !2459, line: 47, baseType: !115, size: 16)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2458, file: !2459, line: 48, baseType: !320, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2458, file: !2459, line: 54, baseType: !106, size: 8, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2458, file: !2459, line: 55, baseType: !106, size: 8, offset: 72)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2458, file: !2459, line: 73, baseType: !395, size: 64, align: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2458, file: !2459, line: 74, baseType: !395, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2458, file: !2459, line: 81, baseType: !395, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2458, file: !2459, line: 82, baseType: !395, size: 64, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2458, file: !2459, line: 85, baseType: !395, size: 64, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2458, file: !2459, line: 86, baseType: !395, size: 64, offset: 448)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2458, file: !2459, line: 94, baseType: !395, size: 64, offset: 512)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2458, file: !2459, line: 102, baseType: !395, size: 64, offset: 576)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2458, file: !2459, line: 107, baseType: !2474, size: 256, offset: 640)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !403)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2458, file: !2459, line: 108, baseType: !106, size: 8, align: 64, offset: 896)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2458, file: !2459, line: 110, baseType: !2477, size: 24, offset: 904)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 24, elements: !562)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2458, file: !2459, line: 111, baseType: !320, size: 32, align: 64, offset: 960)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2458, file: !2459, line: 113, baseType: !320, size: 32, offset: 992)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2458, file: !2459, line: 114, baseType: !320, size: 32, offset: 1024)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2458, file: !2459, line: 115, baseType: !320, size: 32, offset: 1056)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2458, file: !2459, line: 117, baseType: !320, size: 32, offset: 1088)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2458, file: !2459, line: 118, baseType: !395, size: 64, align: 64, offset: 1152)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2458, file: !2459, line: 120, baseType: !395, size: 64, offset: 1216)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2458, file: !2459, line: 121, baseType: !395, size: 64, offset: 1280)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2458, file: !2459, line: 122, baseType: !395, size: 64, offset: 1344)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2458, file: !2459, line: 123, baseType: !395, size: 64, offset: 1408)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2458, file: !2459, line: 133, baseType: !395, size: 64, offset: 1472)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2458, file: !2459, line: 137, baseType: !395, size: 64, offset: 1536)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2458, file: !2459, line: 142, baseType: !395, size: 64, offset: 1600)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2458, file: !2459, line: 143, baseType: !395, size: 64, offset: 1664)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2458, file: !2459, line: 146, baseType: !395, size: 64, offset: 1728)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2458, file: !2459, line: 147, baseType: !395, size: 64, offset: 1792)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2458, file: !2459, line: 148, baseType: !395, size: 64, offset: 1856)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2458, file: !2459, line: 149, baseType: !395, size: 64, offset: 1920)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2458, file: !2459, line: 154, baseType: !395, size: 64, offset: 1984)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2458, file: !2459, line: 155, baseType: !395, size: 64, offset: 2048)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2458, file: !2459, line: 156, baseType: !395, size: 64, offset: 2112)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2458, file: !2459, line: 158, baseType: !395, size: 64, offset: 2176)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2458, file: !2459, line: 159, baseType: !395, size: 64, offset: 2240)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2458, file: !2459, line: 162, baseType: !395, size: 64, offset: 2304)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2458, file: !2459, line: 163, baseType: !395, size: 64, offset: 2368)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2458, file: !2459, line: 164, baseType: !395, size: 64, offset: 2432)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2458, file: !2459, line: 167, baseType: !395, size: 64, offset: 2496)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2458, file: !2459, line: 168, baseType: !395, size: 64, offset: 2560)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2458, file: !2459, line: 171, baseType: !395, size: 64, offset: 2624)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2458, file: !2459, line: 172, baseType: !395, size: 64, offset: 2688)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2458, file: !2459, line: 175, baseType: !395, size: 64, offset: 2752)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2458, file: !2459, line: 178, baseType: !395, size: 64, offset: 2816)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2458, file: !2459, line: 179, baseType: !395, size: 64, offset: 2880)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2458, file: !2459, line: 182, baseType: !320, size: 32, offset: 2944)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2458, file: !2459, line: 186, baseType: !395, size: 64, align: 64, offset: 3008)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2458, file: !2459, line: 194, baseType: !395, size: 64, offset: 3072)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2458, file: !2459, line: 195, baseType: !395, size: 64, offset: 3136)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2458, file: !2459, line: 199, baseType: !395, size: 64, offset: 3200)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2458, file: !2459, line: 200, baseType: !395, size: 64, offset: 3264)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2458, file: !2459, line: 203, baseType: !395, size: 64, offset: 3328)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2458, file: !2459, line: 204, baseType: !395, size: 64, offset: 3392)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2332, file: !2333, line: 222, baseType: !7, size: 32, offset: 7936)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2332, file: !2333, line: 223, baseType: !2521, size: 64, offset: 8000)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2333, line: 223, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2332, file: !2333, line: 230, baseType: !773, size: 8, offset: 8064)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2332, file: !2333, line: 231, baseType: !1324, size: 16, offset: 8080)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2332, file: !2333, line: 232, baseType: !1324, size: 16, offset: 8096)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2332, file: !2333, line: 234, baseType: !835, size: 64, offset: 8128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2332, file: !2333, line: 237, baseType: !882, size: 256, offset: 8192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2332, file: !2333, line: 243, baseType: !643, size: 320, offset: 8448)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !963, file: !964, line: 1111, baseType: !2530, size: 64, offset: 15424)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2333, line: 20, size: 16640, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2536}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2531, file: !2333, line: 21, baseType: !80, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2531, file: !2333, line: 22, baseType: !920, size: 32, offset: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2531, file: !2333, line: 23, baseType: !75, size: 192, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2531, file: !2333, line: 24, baseType: !2537, size: 16384, offset: 256)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2538, size: 16384, elements: !566)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2344, line: 51, size: 256, elements: !2539)
!2539 = !{!2540}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2538, file: !2344, line: 52, baseType: !2541, size: 256)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2344, line: 37, size: 256, elements: !2542)
!2542 = !{!2543, !2550, !2551, !2555}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2541, file: !2344, line: 39, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2545, line: 83, baseType: !2546)
!2545 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2545, line: 82, baseType: !2548)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !43}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2541, file: !2344, line: 40, baseType: !60, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2541, file: !2344, line: 46, baseType: !2552, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2545, line: 86, baseType: !2553)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2545, line: 85, baseType: !300)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2541, file: !2344, line: 48, baseType: !2348, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !963, file: !964, line: 1112, baseType: !2348, size: 64, offset: 15488)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !963, file: !964, line: 1113, baseType: !2348, size: 64, offset: 15552)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !963, file: !964, line: 1115, baseType: !2348, size: 64, offset: 15616)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !963, file: !964, line: 1116, baseType: !2343, size: 192, offset: 15680)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !963, file: !964, line: 1117, baseType: !60, size: 64, offset: 15872)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !963, file: !964, line: 1118, baseType: !56, size: 64, offset: 15936)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !963, file: !964, line: 1119, baseType: !7, size: 32, offset: 16000)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !963, file: !964, line: 1121, baseType: !780, size: 64, offset: 16064)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !963, file: !964, line: 1125, baseType: !2565, size: 64, offset: 16128)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !964, line: 43, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !963, file: !964, line: 1127, baseType: !329, size: 32, offset: 16192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !963, file: !964, line: 1128, baseType: !7, size: 32, offset: 16224)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !963, file: !964, line: 1130, baseType: !2570, size: 128, offset: 16256)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2571, line: 37, size: 128, elements: !2572)
!2571 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2572 = !{!2573, !2574, !2575}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2570, file: !2571, line: 38, baseType: !43, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2570, file: !2571, line: 39, baseType: !70, size: 32, offset: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2570, file: !2571, line: 40, baseType: !2576, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2571, line: 24, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !963, file: !964, line: 1131, baseType: !2579, size: 256, offset: 16384)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2580, line: 12, size: 256, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2581 = !{!2582, !2583, !2584, !2585}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2579, file: !2580, line: 13, baseType: !462, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2579, file: !2580, line: 14, baseType: !60, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2579, file: !2580, line: 15, baseType: !60, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2579, file: !2580, line: 16, baseType: !773, size: 8, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !963, file: !964, line: 1134, baseType: !394, size: 64, offset: 16640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !963, file: !964, line: 1135, baseType: !394, size: 64, offset: 16704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !963, file: !964, line: 1138, baseType: !80, size: 32, offset: 16768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !963, file: !964, line: 1141, baseType: !662, size: 32, offset: 16800)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !963, file: !964, line: 1143, baseType: !2591, size: 64, offset: 16832)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !964, line: 735, size: 64, elements: !2592)
!2592 = !{!2593}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2591, file: !964, line: 736, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !963, file: !964, line: 1147, baseType: !667, size: 128, offset: 16896)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !963, file: !964, line: 1149, baseType: !962, size: 64, offset: 17024)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !963, file: !964, line: 1151, baseType: !2598, size: 64, offset: 17088)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !964, line: 1151, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !963, file: !964, line: 1188, baseType: !41, size: 64, offset: 17152)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !963, file: !964, line: 1191, baseType: !2602, size: 64, offset: 17216)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !964, line: 44, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !963, file: !964, line: 1194, baseType: !2605, size: 64, offset: 17280)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !964, line: 45, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !963, file: !964, line: 1197, baseType: !2608, size: 64, offset: 17344)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !964, line: 61, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !963, file: !964, line: 1199, baseType: !2611, size: 64, offset: 17408)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2613, line: 99, size: 128, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2614 = !{!2615, !2616, !2617}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2612, file: !2613, line: 100, baseType: !647, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2612, file: !2613, line: 101, baseType: !70, size: 32, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2612, file: !2613, line: 103, baseType: !47, size: 16, offset: 96)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !963, file: !964, line: 1202, baseType: !2619, size: 64, offset: 17472)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !964, line: 48, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !963, file: !964, line: 1205, baseType: !60, size: 64, offset: 17536)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !963, file: !964, line: 1206, baseType: !2623, size: 64, offset: 17600)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2344, line: 14, baseType: !2625)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2344, line: 12, size: 384, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !2625, file: !2344, line: 13, baseType: !2628, size: 384)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2625, file: !2344, line: 13, size: 384, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2628, file: !2344, line: 13, baseType: !43, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2628, file: !2344, line: 13, baseType: !43, size: 32, offset: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2628, file: !2344, line: 13, baseType: !43, size: 32, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2628, file: !2344, line: 13, baseType: !2634, size: 256, offset: 128)
!2634 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2635, line: 37, size: 256, elements: !2636)
!2635 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2636 = !{!2637, !2642, !2655, !2661, !2670, !2697, !2702}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2634, file: !2635, line: 42, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !2635, line: 39, size: 64, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2638, file: !2635, line: 40, baseType: !1332, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2638, file: !2635, line: 41, baseType: !335, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2634, file: !2635, line: 50, baseType: !2643, size: 192)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !2635, line: 45, size: 192, elements: !2644)
!2644 = !{!2645, !2647, !2648, !2654}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2643, file: !2635, line: 46, baseType: !2646, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !58, line: 95, baseType: !43)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2643, file: !2635, line: 47, baseType: !43, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2643, file: !2635, line: 48, baseType: !2649, size: 64, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2635, line: 11, baseType: !2650)
!2650 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2635, line: 8, size: 64, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2650, file: !2635, line: 9, baseType: !43, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2650, file: !2635, line: 10, baseType: !41, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2643, file: !2635, line: 49, baseType: !43, size: 32, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2634, file: !2635, line: 57, baseType: !2656, size: 128)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !2635, line: 53, size: 128, elements: !2657)
!2657 = !{!2658, !2659, !2660}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2656, file: !2635, line: 54, baseType: !1332, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2656, file: !2635, line: 55, baseType: !335, size: 32, offset: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2656, file: !2635, line: 56, baseType: !2649, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2634, file: !2635, line: 66, baseType: !2662, size: 256)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !2635, line: 60, size: 256, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667, !2669}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2662, file: !2635, line: 61, baseType: !1332, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2662, file: !2635, line: 62, baseType: !335, size: 32, offset: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2662, file: !2635, line: 63, baseType: !43, size: 32, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2662, file: !2635, line: 64, baseType: !2668, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !58, line: 94, baseType: !595)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2662, file: !2635, line: 65, baseType: !2668, size: 64, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2634, file: !2635, line: 105, baseType: !2671, size: 256)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !2635, line: 69, size: 256, elements: !2672)
!2672 = !{!2673, !2674}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2671, file: !2635, line: 70, baseType: !41, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2671, file: !2635, line: 79, baseType: !2675, size: 192, offset: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2671, file: !2635, line: 79, size: 192, elements: !2676)
!2676 = !{!2677, !2678, !2679, !2686, !2691}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2675, file: !2635, line: 81, baseType: !43, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2675, file: !2635, line: 86, baseType: !1324, size: 16)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2675, file: !2635, line: 92, baseType: !2680, size: 192)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2635, line: 88, size: 192, elements: !2681)
!2681 = !{!2682, !2684, !2685}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2680, file: !2635, line: 89, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !1117)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2680, file: !2635, line: 90, baseType: !41, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2680, file: !2635, line: 91, baseType: !41, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2675, file: !2635, line: 97, baseType: !2687, size: 96)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2635, line: 94, size: 96, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2687, file: !2635, line: 95, baseType: !2683, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2687, file: !2635, line: 96, baseType: !320, size: 32, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2675, file: !2635, line: 103, baseType: !2692, size: 128)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2635, line: 99, size: 128, elements: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2692, file: !2635, line: 100, baseType: !60, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2692, file: !2635, line: 101, baseType: !320, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2692, file: !2635, line: 102, baseType: !320, size: 32, offset: 96)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2634, file: !2635, line: 111, baseType: !2698, size: 128)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !2635, line: 108, size: 128, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2698, file: !2635, line: 109, baseType: !596, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2698, file: !2635, line: 110, baseType: !43, size: 32, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2634, file: !2635, line: 118, baseType: !2703, size: 128)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !2635, line: 114, size: 128, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2703, file: !2635, line: 115, baseType: !41, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2703, file: !2635, line: 116, baseType: !43, size: 32, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2703, file: !2635, line: 117, baseType: !7, size: 32, offset: 96)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !963, file: !964, line: 1208, baseType: !2428, size: 448, offset: 17664)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !963, file: !964, line: 1215, baseType: !394, size: 64, offset: 18112)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !963, file: !964, line: 1217, baseType: !394, size: 64, offset: 18176)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !963, file: !964, line: 1219, baseType: !394, size: 64, offset: 18240)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !963, file: !964, line: 1223, baseType: !2713, size: 64, offset: 18304)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2714, line: 99, baseType: !2715)
!2714 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2714, line: 99, size: 64, elements: !2716)
!2716 = !{!2717}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2715, file: !2714, line: 99, baseType: !1194, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !963, file: !964, line: 1225, baseType: !364, size: 32, offset: 18368)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !963, file: !964, line: 1226, baseType: !43, size: 32, offset: 18400)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !963, file: !964, line: 1227, baseType: !43, size: 32, offset: 18432)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !963, file: !964, line: 1231, baseType: !1861, size: 64, offset: 18496)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !963, file: !964, line: 1233, baseType: !118, size: 128, offset: 18560)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !963, file: !964, line: 1240, baseType: !2724, size: 64, offset: 18688)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !964, line: 62, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !963, file: !964, line: 1242, baseType: !2727, size: 64, offset: 18752)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !964, line: 1242, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !963, file: !964, line: 1244, baseType: !118, size: 128, offset: 18816)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !963, file: !964, line: 1245, baseType: !2731, size: 64, offset: 18944)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !964, line: 51, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !963, file: !964, line: 1246, baseType: !882, size: 256, offset: 19008)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !963, file: !964, line: 1247, baseType: !7, size: 32, offset: 19264)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !963, file: !964, line: 1250, baseType: !2736, size: 64, offset: 19328)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !964, line: 57, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !963, file: !964, line: 1251, baseType: !882, size: 256, offset: 19392)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !963, file: !964, line: 1252, baseType: !118, size: 128, offset: 19648)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !963, file: !964, line: 1259, baseType: !2028, size: 64, offset: 19776)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !963, file: !964, line: 1260, baseType: !1324, size: 16, offset: 19840)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !963, file: !964, line: 1261, baseType: !1324, size: 16, offset: 19856)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !963, file: !964, line: 1314, baseType: !2744, size: 64, offset: 19904)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2746, line: 62, size: 256, align: 256, elements: !2747)
!2746 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753, !2754}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2745, file: !2746, line: 75, baseType: !320, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2745, file: !2746, line: 90, baseType: !320, size: 32, offset: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2745, file: !2746, line: 112, baseType: !395, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2745, file: !2746, line: 132, baseType: !320, size: 32, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2745, file: !2746, line: 140, baseType: !320, size: 32, offset: 160)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2745, file: !2746, line: 149, baseType: !320, size: 32, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2745, file: !2746, line: 154, baseType: !2755, offset: 224)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1706)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !963, file: !964, line: 1315, baseType: !319, size: 32, offset: 19968)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !963, file: !964, line: 1316, baseType: !319, size: 32, offset: 20000)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !963, file: !964, line: 1321, baseType: !60, size: 64, offset: 20032)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !963, file: !964, line: 1325, baseType: !43, size: 32, offset: 20096)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !963, file: !964, line: 1326, baseType: !43, size: 32, offset: 20128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !963, file: !964, line: 1327, baseType: !43, size: 32, offset: 20160)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !963, file: !964, line: 1328, baseType: !43, size: 32, offset: 20192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !963, file: !964, line: 1329, baseType: !777, size: 128, align: 64, offset: 20224)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !963, file: !964, line: 1332, baseType: !2765, size: 128, offset: 20352)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2766, line: 51, size: 128, elements: !2767)
!2766 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2767 = !{!2768, !2773, !2774}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2765, file: !2766, line: 60, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2770, line: 7, size: 64, elements: !2771)
!2770 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2771 = !{!2772}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2769, file: !2770, line: 12, baseType: !1191, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2765, file: !2766, line: 63, baseType: !773, size: 8, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2765, file: !2766, line: 70, baseType: !773, size: 8, offset: 72)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !963, file: !964, line: 1335, baseType: !2776, size: 64, offset: 20480)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !964, line: 59, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !963, file: !964, line: 1337, baseType: !2779, size: 128, offset: 20544)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2766, line: 39, size: 128, elements: !2780)
!2780 = !{!2781, !2782, !2783}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2779, file: !2766, line: 40, baseType: !692, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2779, file: !2766, line: 42, baseType: !320, size: 32, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2779, file: !2766, line: 43, baseType: !320, size: 32, offset: 96)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !963, file: !964, line: 1340, baseType: !2785, size: 64, offset: 20672)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !964, line: 69, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !963, file: !964, line: 1351, baseType: !43, size: 32, offset: 20736)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !963, file: !964, line: 1352, baseType: !43, size: 32, offset: 20768)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !963, file: !964, line: 1354, baseType: !60, size: 64, offset: 20800)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !963, file: !964, line: 1364, baseType: !394, size: 64, offset: 20864)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !963, file: !964, line: 1365, baseType: !394, size: 64, offset: 20928)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !963, file: !964, line: 1412, baseType: !60, size: 64, offset: 20992)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !963, file: !964, line: 1453, baseType: !2794, size: 64, offset: 21056)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !964, line: 1453, flags: DIFlagFwdDecl)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !963, file: !964, line: 1457, baseType: !2797, size: 64, offset: 21120)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !129, line: 61, size: 576, elements: !2799)
!2799 = !{!2800, !2801, !2820, !2823, !2824, !2857, !2867}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2798, file: !129, line: 62, baseType: !128, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, scope: !2798, file: !129, line: 64, baseType: !2802, size: 192, offset: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2798, file: !129, line: 64, size: 192, elements: !2803)
!2803 = !{!2804, !2815}
!2804 = !DIDerivedType(tag: DW_TAG_member, scope: !2802, file: !129, line: 65, baseType: !2805, size: 192)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2802, file: !129, line: 65, size: 192, elements: !2806)
!2806 = !{!2807, !2814}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2805, file: !129, line: 66, baseType: !2808, size: 128)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2809, line: 50, size: 128, elements: !2810)
!2809 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2810 = !{!2811, !2812, !2813}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2808, file: !2809, line: 52, baseType: !60, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2808, file: !2809, line: 54, baseType: !7, size: 32, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2808, file: !2809, line: 55, baseType: !7, size: 32, offset: 96)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2805, file: !129, line: 67, baseType: !60, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, scope: !2802, file: !129, line: 70, baseType: !2816, size: 192)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2802, file: !129, line: 70, size: 192, elements: !2817)
!2817 = !{!2818, !2819}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2816, file: !129, line: 71, baseType: !777, size: 128, align: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2816, file: !129, line: 72, baseType: !60, size: 64, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2798, file: !129, line: 76, baseType: !2821, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !129, line: 76, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2798, file: !129, line: 77, baseType: !60, size: 64, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2798, file: !129, line: 79, baseType: !2825, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2809, line: 25, size: 256, elements: !2827)
!2827 = !{!2828, !2834, !2838}
!2828 = !DIDerivedType(tag: DW_TAG_member, scope: !2826, file: !2809, line: 26, baseType: !2829, size: 128)
!2829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2826, file: !2809, line: 26, size: 128, elements: !2830)
!2830 = !{!2831, !2833}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2829, file: !2809, line: 27, baseType: !2832, size: 128)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !1718)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2829, file: !2809, line: 28, baseType: !2832, size: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2826, file: !2809, line: 31, baseType: !2835, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2809, line: 23, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, scope: !2826, file: !2809, line: 33, baseType: !2839, size: 64, offset: 192)
!2839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2826, file: !2809, line: 33, size: 64, elements: !2840)
!2840 = !{!2841, !2847, !2852}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2839, file: !2809, line: 38, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2839, file: !2809, line: 34, size: 64, elements: !2843)
!2843 = !{!2844, !2845, !2846}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2842, file: !2809, line: 35, baseType: !1310, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2842, file: !2809, line: 36, baseType: !104, size: 8, offset: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2842, file: !2809, line: 37, baseType: !104, size: 8, offset: 40)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2839, file: !2809, line: 42, baseType: !2848, size: 16)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2839, file: !2809, line: 39, size: 16, elements: !2849)
!2849 = !{!2850, !2851}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2848, file: !2809, line: 40, baseType: !104, size: 8)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2848, file: !2809, line: 41, baseType: !104, size: 8, offset: 8)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2839, file: !2809, line: 46, baseType: !2853, size: 16)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2839, file: !2809, line: 43, size: 16, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2853, file: !2809, line: 44, baseType: !104, size: 8)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2853, file: !2809, line: 45, baseType: !104, size: 8, offset: 8)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2798, file: !129, line: 81, baseType: !2858, size: 64, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !129, line: 85, size: 384, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2859, file: !129, line: 86, baseType: !2821, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2859, file: !129, line: 87, baseType: !60, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2859, file: !129, line: 88, baseType: !60, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2859, file: !129, line: 89, baseType: !60, size: 64, offset: 192)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2859, file: !129, line: 90, baseType: !773, size: 8, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2859, file: !129, line: 92, baseType: !2858, size: 64, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2798, file: !129, line: 82, baseType: !7, size: 32, offset: 512)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !963, file: !964, line: 1463, baseType: !2869, offset: 21184)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !964, line: 739, elements: !856)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !963, file: !964, line: 1470, baseType: !777, size: 128, align: 64, offset: 21184)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !963, file: !964, line: 1471, baseType: !920, size: 32, offset: 21312)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !963, file: !964, line: 1472, baseType: !43, size: 32, offset: 21344)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !963, file: !964, line: 1474, baseType: !962, size: 64, offset: 21376)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !963, file: !964, line: 1475, baseType: !2093, size: 320, offset: 21440)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !963, file: !964, line: 1478, baseType: !2876, size: 64, offset: 21760)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2878, line: 14, flags: DIFlagFwdDecl)
!2878 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !963, file: !964, line: 1482, baseType: !920, size: 32, offset: 21824)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !963, file: !964, line: 1489, baseType: !41, size: 64, offset: 21888)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !963, file: !964, line: 1504, baseType: !41, size: 64, offset: 21952)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !963, file: !964, line: 1505, baseType: !395, size: 64, offset: 22016)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !963, file: !964, line: 1506, baseType: !394, size: 64, offset: 22080)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !963, file: !964, line: 1507, baseType: !395, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !963, file: !964, line: 1508, baseType: !395, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !963, file: !964, line: 1509, baseType: !395, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !963, file: !964, line: 1510, baseType: !777, size: 128, align: 64, offset: 22208)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !963, file: !964, line: 1511, baseType: !43, size: 32, offset: 22336)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !963, file: !964, line: 1515, baseType: !2890, size: 64, offset: 22400)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !871, line: 56, size: 64, elements: !2891)
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2890, file: !871, line: 57, baseType: !874, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !963, file: !964, line: 1518, baseType: !2890, size: 64, offset: 22464)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !963, file: !964, line: 1528, baseType: !777, size: 128, align: 64, offset: 22528)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !963, file: !964, line: 1552, baseType: !2896, size: 35328, offset: 23040)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2897, line: 430, size: 35328, elements: !2898)
!2897 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2898 = !{!2899, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2928, !2929, !2930, !2931, !2932, !2933, !2936, !2937, !2938, !2939}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2896, file: !2897, line: 432, baseType: !2900, size: 192)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2901, size: 192, elements: !562)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2902, line: 16, size: 64, elements: !2903)
!2902 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2901, file: !2902, line: 17, baseType: !114, size: 16)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2901, file: !2902, line: 18, baseType: !114, size: 16, offset: 16)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2901, file: !2902, line: 19, baseType: !114, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2901, file: !2902, line: 19, baseType: !114, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2901, file: !2902, line: 19, baseType: !114, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2901, file: !2902, line: 19, baseType: !114, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2901, file: !2902, line: 19, baseType: !114, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2901, file: !2902, line: 20, baseType: !114, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2901, file: !2902, line: 20, baseType: !114, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2901, file: !2902, line: 20, baseType: !114, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2901, file: !2902, line: 20, baseType: !114, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2901, file: !2902, line: 20, baseType: !114, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2901, file: !2902, line: 20, baseType: !114, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2896, file: !2897, line: 436, baseType: !60, size: 64, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2896, file: !2897, line: 440, baseType: !47, size: 16, offset: 256)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2896, file: !2897, line: 441, baseType: !47, size: 16, offset: 272)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2896, file: !2897, line: 442, baseType: !47, size: 16, offset: 288)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2896, file: !2897, line: 443, baseType: !47, size: 16, offset: 304)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2896, file: !2897, line: 447, baseType: !60, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2896, file: !2897, line: 448, baseType: !60, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2896, file: !2897, line: 459, baseType: !2925, size: 256, offset: 448)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2926, size: 256, elements: !937)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2897, line: 428, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2896, file: !2897, line: 461, baseType: !60, size: 64, offset: 704)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2896, file: !2897, line: 463, baseType: !60, size: 64, offset: 768)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2896, file: !2897, line: 465, baseType: !60, size: 64, offset: 832)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2896, file: !2897, line: 466, baseType: !60, size: 64, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2896, file: !2897, line: 467, baseType: !60, size: 64, offset: 960)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2896, file: !2897, line: 473, baseType: !2934, size: 64, offset: 1024)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2897, line: 10, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2896, file: !2897, line: 480, baseType: !60, size: 64, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2896, file: !2897, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2896, file: !2897, line: 491, baseType: !319, size: 32, offset: 1184)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2896, file: !2897, line: 501, baseType: !2940, size: 33792, offset: 1536)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2941, line: 448, size: 33792, elements: !2942)
!2941 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2942 = !{!2943, !2944, !2945, !3105, !3106, !3112, !3113}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2940, file: !2941, line: 461, baseType: !7, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2940, file: !2941, line: 468, baseType: !60, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2940, file: !2941, line: 476, baseType: !2946, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2941, line: 356, size: 33280, align: 512, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2947, file: !2941, line: 358, baseType: !7, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2947, file: !2941, line: 361, baseType: !7, size: 32, offset: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2947, file: !2941, line: 364, baseType: !394, size: 64, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2947, file: !2941, line: 367, baseType: !394, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2947, file: !2941, line: 370, baseType: !394, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2947, file: !2941, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2947, file: !2941, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2947, file: !2941, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2947, file: !2941, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2947, file: !2941, line: 397, baseType: !2959, size: 32768, offset: 512)
!2959 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2941, line: 348, size: 32768, elements: !2960)
!2960 = !{!2961, !2976, !3013, !3090, !3103}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2959, file: !2941, line: 349, baseType: !2962, size: 896)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2941, line: 12, size: 896, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2975}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2962, file: !2941, line: 13, baseType: !319, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2962, file: !2941, line: 14, baseType: !319, size: 32, offset: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2962, file: !2941, line: 15, baseType: !319, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2962, file: !2941, line: 16, baseType: !319, size: 32, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2962, file: !2941, line: 17, baseType: !319, size: 32, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2962, file: !2941, line: 18, baseType: !319, size: 32, offset: 160)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2962, file: !2941, line: 19, baseType: !319, size: 32, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2962, file: !2941, line: 22, baseType: !2972, size: 640, offset: 224)
!2972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 640, elements: !2973)
!2973 = !{!2974}
!2974 = !DISubrange(count: 20)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2962, file: !2941, line: 25, baseType: !319, size: 32, offset: 864)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2959, file: !2941, line: 350, baseType: !2977, size: 4096, align: 128)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2941, line: 34, size: 4096, align: 128, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2998, !2999, !3000, !3002, !3004, !3008}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2977, file: !2941, line: 35, baseType: !114, size: 16)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2977, file: !2941, line: 36, baseType: !114, size: 16, offset: 16)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2977, file: !2941, line: 37, baseType: !114, size: 16, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2977, file: !2941, line: 38, baseType: !114, size: 16, offset: 48)
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !2941, line: 39, baseType: !2984, size: 128, offset: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2977, file: !2941, line: 39, size: 128, elements: !2985)
!2985 = !{!2986, !2991}
!2986 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !2941, line: 40, baseType: !2987, size: 128)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !2941, line: 40, size: 128, elements: !2988)
!2988 = !{!2989, !2990}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2987, file: !2941, line: 41, baseType: !394, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2987, file: !2941, line: 42, baseType: !394, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !2984, file: !2941, line: 44, baseType: !2992, size: 128)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !2941, line: 44, size: 128, elements: !2993)
!2993 = !{!2994, !2995, !2996, !2997}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2992, file: !2941, line: 45, baseType: !319, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2992, file: !2941, line: 46, baseType: !319, size: 32, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2992, file: !2941, line: 47, baseType: !319, size: 32, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2992, file: !2941, line: 48, baseType: !319, size: 32, offset: 96)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2977, file: !2941, line: 51, baseType: !319, size: 32, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2977, file: !2941, line: 52, baseType: !319, size: 32, offset: 224)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2977, file: !2941, line: 55, baseType: !3001, size: 1024, offset: 256)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 1024, elements: !403)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2977, file: !2941, line: 58, baseType: !3003, size: 2048, offset: 1280)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 2048, elements: !566)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2977, file: !2941, line: 60, baseType: !3005, size: 384, offset: 3328)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 384, elements: !3006)
!3006 = !{!3007}
!3007 = !DISubrange(count: 12)
!3008 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !2941, line: 62, baseType: !3009, size: 384, offset: 3712)
!3009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2977, file: !2941, line: 62, size: 384, elements: !3010)
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3009, file: !2941, line: 63, baseType: !3005, size: 384)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3009, file: !2941, line: 64, baseType: !3005, size: 384)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2959, file: !2941, line: 351, baseType: !3014, size: 1088)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2941, line: 79, size: 1088, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3089}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3014, file: !2941, line: 80, baseType: !319, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3014, file: !2941, line: 81, baseType: !319, size: 32, offset: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3014, file: !2941, line: 82, baseType: !319, size: 32, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3014, file: !2941, line: 83, baseType: !319, size: 32, offset: 96)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3014, file: !2941, line: 84, baseType: !319, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3014, file: !2941, line: 85, baseType: !319, size: 32, offset: 160)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3014, file: !2941, line: 86, baseType: !319, size: 32, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3014, file: !2941, line: 88, baseType: !2972, size: 640, offset: 224)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3014, file: !2941, line: 89, baseType: !104, size: 8, offset: 864)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3014, file: !2941, line: 90, baseType: !104, size: 8, offset: 872)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3014, file: !2941, line: 91, baseType: !104, size: 8, offset: 880)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3014, file: !2941, line: 92, baseType: !104, size: 8, offset: 888)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3014, file: !2941, line: 93, baseType: !104, size: 8, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3014, file: !2941, line: 94, baseType: !104, size: 8, offset: 904)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3014, file: !2941, line: 95, baseType: !3031, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3033, line: 11, size: 128, elements: !3034)
!3033 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3034 = !{!3035, !3036}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3032, file: !3033, line: 12, baseType: !596, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3032, file: !3033, line: 13, baseType: !3037, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3039, line: 103, size: 1344, elements: !3040)
!3039 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3040 = !{!3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3069, !3070, !3071}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3038, file: !3039, line: 109, baseType: !60, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3038, file: !3039, line: 110, baseType: !60, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3038, file: !3039, line: 111, baseType: !60, size: 64, offset: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3038, file: !3039, line: 112, baseType: !60, size: 64, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3038, file: !3039, line: 113, baseType: !60, size: 64, offset: 256)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3038, file: !3039, line: 114, baseType: !60, size: 64, offset: 320)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3038, file: !3039, line: 117, baseType: !60, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3038, file: !3039, line: 118, baseType: !60, size: 64, offset: 448)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3038, file: !3039, line: 119, baseType: !60, size: 64, offset: 512)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3038, file: !3039, line: 120, baseType: !60, size: 64, offset: 576)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3038, file: !3039, line: 121, baseType: !60, size: 64, offset: 640)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3038, file: !3039, line: 122, baseType: !60, size: 64, offset: 704)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3038, file: !3039, line: 123, baseType: !60, size: 64, offset: 768)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3038, file: !3039, line: 124, baseType: !60, size: 64, offset: 832)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3038, file: !3039, line: 125, baseType: !60, size: 64, offset: 896)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3038, file: !3039, line: 139, baseType: !60, size: 64, offset: 960)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3038, file: !3039, line: 142, baseType: !60, size: 64, offset: 1024)
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !3039, line: 144, baseType: !3059, size: 64, offset: 1088)
!3059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3038, file: !3039, line: 144, size: 64, elements: !3060)
!3060 = !{!3061, !3062, !3063}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3059, file: !3039, line: 146, baseType: !114, size: 16)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3059, file: !3039, line: 148, baseType: !394, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3059, file: !3039, line: 150, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3039, line: 59, size: 64, elements: !3065)
!3065 = !{!3066, !3067, !3068}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3064, file: !3039, line: 61, baseType: !394, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3064, file: !3039, line: 63, baseType: !394, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3064, file: !3039, line: 65, baseType: !394, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3038, file: !3039, line: 153, baseType: !60, size: 64, offset: 1152)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3038, file: !3039, line: 154, baseType: !60, size: 64, offset: 1216)
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !3039, line: 156, baseType: !3072, size: 64, offset: 1280)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3038, file: !3039, line: 156, size: 64, elements: !3073)
!3073 = !{!3074, !3075, !3076}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3072, file: !3039, line: 158, baseType: !114, size: 16)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3072, file: !3039, line: 160, baseType: !394, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3072, file: !3039, line: 162, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3039, line: 69, size: 64, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3077, file: !3039, line: 71, baseType: !394, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3077, file: !3039, line: 73, baseType: !394, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3077, file: !3039, line: 75, baseType: !394, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3077, file: !3039, line: 77, baseType: !394, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3077, file: !3039, line: 80, baseType: !394, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3077, file: !3039, line: 83, baseType: !394, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3077, file: !3039, line: 86, baseType: !394, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3077, file: !3039, line: 88, baseType: !394, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3077, file: !3039, line: 93, baseType: !394, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3077, file: !3039, line: 100, baseType: !394, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3014, file: !2941, line: 96, baseType: !319, size: 32, offset: 1024)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2959, file: !2941, line: 352, baseType: !3091, size: 4608, align: 512)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2941, line: 333, size: 4608, align: 512, elements: !3092)
!3092 = !{!3093, !3094, !3101}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3091, file: !2941, line: 334, baseType: !2977, size: 4096, align: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3091, file: !2941, line: 335, baseType: !3095, size: 512, offset: 4096)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2941, line: 312, size: 512, elements: !3096)
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3095, file: !2941, line: 313, baseType: !394, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3095, file: !2941, line: 314, baseType: !394, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3095, file: !2941, line: 315, baseType: !3100, size: 384, offset: 128)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 384, elements: !1465)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3091, file: !2941, line: 336, baseType: !3102, offset: 4608)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, elements: !1706)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2959, file: !2941, line: 353, baseType: !3104, size: 32768)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 32768, elements: !2129)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2940, file: !2941, line: 484, baseType: !2946, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2940, file: !2941, line: 491, baseType: !3107, size: 128, offset: 256)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2941, line: 404, size: 128, elements: !3108)
!3108 = !{!3109, !3110, !3111}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3107, file: !2941, line: 424, baseType: !394, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3107, file: !2941, line: 432, baseType: !7, size: 32, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3107, file: !2941, line: 440, baseType: !7, size: 32, offset: 96)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2940, file: !2941, line: 498, baseType: !3107, size: 128, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2940, file: !2941, line: 508, baseType: !2947, size: 33280, align: 512, offset: 512)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !949, file: !950, line: 31, baseType: !3115, size: 64, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2878, line: 11, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !949, file: !950, line: 32, baseType: !7, size: 32, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !949, file: !950, line: 33, baseType: !948, size: 64, offset: 576)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !949, file: !950, line: 35, baseType: !3120, size: 64, offset: 640)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !3122, line: 4, size: 576, elements: !3123)
!3122 = !DIFile(filename: "./include/linux/fs_pin.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d07c4a418236e4e1036969d5e8bd56f6")
!3123 = !{!3124, !3125, !3126, !3127, !3128}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3121, file: !3122, line: 5, baseType: !75, size: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3121, file: !3122, line: 6, baseType: !43, size: 32, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !3121, file: !3122, line: 7, baseType: !932, size: 128, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !3121, file: !3122, line: 8, baseType: !932, size: 128, offset: 384)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3121, file: !3122, line: 9, baseType: !3129, size: 64, offset: 512)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3120}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !949, file: !950, line: 37, baseType: !1559, size: 64, offset: 704)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !949, file: !950, line: 38, baseType: !1680, size: 64, offset: 768)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !949, file: !950, line: 39, baseType: !43, size: 32, offset: 832)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !949, file: !950, line: 40, baseType: !1592, size: 192, offset: 896)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !949, file: !950, line: 42, baseType: !43, size: 32, offset: 1088)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !892, file: !178, line: 951, baseType: !135, size: 32, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !892, file: !178, line: 952, baseType: !329, size: 32, offset: 160)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !892, file: !178, line: 952, baseType: !329, size: 32, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !892, file: !178, line: 953, baseType: !43, size: 32, offset: 224)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !864, file: !178, line: 1012, baseType: !1387, size: 64, offset: 896)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !864, file: !178, line: 1013, baseType: !3143, size: 256, offset: 960)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !178, line: 970, size: 256, elements: !3144)
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3150}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3143, file: !178, line: 971, baseType: !60, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3143, file: !178, line: 972, baseType: !7, size: 32, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3143, file: !178, line: 973, baseType: !7, size: 32, offset: 96)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3143, file: !178, line: 974, baseType: !7, size: 32, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3143, file: !178, line: 975, baseType: !7, size: 32, offset: 160)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3143, file: !178, line: 976, baseType: !62, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !864, file: !178, line: 1014, baseType: !3152, size: 128, offset: 1216)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3153, line: 8, size: 128, elements: !3154)
!3153 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3154 = !{!3155, !3156}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3152, file: !3153, line: 9, baseType: !467, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3152, file: !3153, line: 10, baseType: !358, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !864, file: !178, line: 1015, baseType: !323, size: 64, offset: 1344)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !864, file: !178, line: 1016, baseType: !3159, size: 64, offset: 1408)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3161)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !178, line: 1914, size: 2112, elements: !3162)
!3162 = !{!3163, !3164, !3168, !3172, !3176, !3204, !3205, !3211, !3224, !3228, !3232, !3233, !3237, !3238, !3242, !3247, !3248, !3252, !3256, !3262, !3263, !3267, !3268, !3272, !3276, !3280, !3286, !3290, !3294, !3298, !3302, !3303, !3309}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3161, file: !178, line: 1915, baseType: !508, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3161, file: !178, line: 1916, baseType: !3165, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!62, !863, !62, !43}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3161, file: !178, line: 1917, baseType: !3169, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!593, !863, !462, !56, !61}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3161, file: !178, line: 1918, baseType: !3173, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!593, !863, !37, !56, !61}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3161, file: !178, line: 1919, baseType: !3177, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!593, !3180, !3202}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !178, line: 373, size: 384, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3189, !3190, !3191, !3192}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3181, file: !178, line: 374, baseType: !863, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3181, file: !178, line: 375, baseType: !62, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3181, file: !178, line: 376, baseType: !3186, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !3180, !596}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3181, file: !178, line: 377, baseType: !41, size: 64, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3181, file: !178, line: 378, baseType: !43, size: 32, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3181, file: !178, line: 379, baseType: !114, size: 16, offset: 288)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3181, file: !178, line: 380, baseType: !3193, size: 64, offset: 320)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3181, file: !178, line: 380, size: 64, elements: !3194)
!3194 = !{!3195, !3198}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3193, file: !178, line: 386, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !178, line: 386, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3193, file: !178, line: 395, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!593, !41}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !178, line: 69, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3161, file: !178, line: 1920, baseType: !3177, size: 64, offset: 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3161, file: !178, line: 1921, baseType: !3206, size: 64, offset: 384)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!43, !3180, !3209, !7}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !178, line: 53, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3161, file: !178, line: 1923, baseType: !3212, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!43, !863, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !178, line: 1858, size: 128, elements: !3217)
!3217 = !{!3218, !3223}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3216, file: !178, line: 1859, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !178, line: 1855, baseType: !3220)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!773, !3215, !37, !43, !62, !394, !7}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3216, file: !178, line: 1860, baseType: !62, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3161, file: !178, line: 1924, baseType: !3225, size: 64, offset: 512)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!2057, !863, !2059}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3161, file: !178, line: 1925, baseType: !3229, size: 64, offset: 576)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!596, !863, !7, !60}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3161, file: !178, line: 1926, baseType: !3229, size: 64, offset: 640)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3161, file: !178, line: 1927, baseType: !3234, size: 64, offset: 704)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!43, !863, !822}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3161, file: !178, line: 1928, baseType: !60, size: 64, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3161, file: !178, line: 1929, baseType: !3239, size: 64, offset: 832)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!43, !323, !863}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3161, file: !178, line: 1930, baseType: !3243, size: 64, offset: 896)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!43, !863, !3246}
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !178, line: 1061, baseType: !41)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3161, file: !178, line: 1931, baseType: !3239, size: 64, offset: 960)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3161, file: !178, line: 1932, baseType: !3249, size: 64, offset: 1024)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!43, !863, !62, !62, !43}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3161, file: !178, line: 1933, baseType: !3253, size: 64, offset: 1088)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!43, !43, !863, !43}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3161, file: !178, line: 1934, baseType: !3257, size: 64, offset: 1152)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!43, !863, !43, !3260}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !178, line: 1063, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3161, file: !178, line: 1935, baseType: !860, size: 64, offset: 1216)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3161, file: !178, line: 1936, baseType: !3264, size: 64, offset: 1280)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!43, !43}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3161, file: !178, line: 1937, baseType: !3257, size: 64, offset: 1344)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3161, file: !178, line: 1938, baseType: !3269, size: 64, offset: 1408)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!593, !2776, !863, !61, !56, !7}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3161, file: !178, line: 1939, baseType: !3273, size: 64, offset: 1472)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!593, !863, !61, !2776, !56, !7}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3161, file: !178, line: 1940, baseType: !3277, size: 64, offset: 1536)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !863}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3161, file: !178, line: 1941, baseType: !3281, size: 64, offset: 1600)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!43, !863, !43, !3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3161, file: !178, line: 1942, baseType: !3287, size: 64, offset: 1664)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!596, !863, !43, !62, !62}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3161, file: !178, line: 1944, baseType: !3291, size: 64, offset: 1728)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !1932, !863}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3161, file: !178, line: 1948, baseType: !3295, size: 64, offset: 1792)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!593, !863, !62, !863, !62, !56, !7}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3161, file: !178, line: 1950, baseType: !3299, size: 64, offset: 1856)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!62, !863, !62, !863, !62, !62, !7}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3161, file: !178, line: 1953, baseType: !3249, size: 64, offset: 1920)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3161, file: !178, line: 1954, baseType: !3304, size: 64, offset: 1984)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!43, !3307, !7}
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !178, line: 1911, flags: DIFlagFwdDecl)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3161, file: !178, line: 1955, baseType: !3310, size: 64, offset: 2048)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!43, !3307, !3209, !7}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !864, file: !178, line: 1018, baseType: !394, size: 64, offset: 1472)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !864, file: !178, line: 1020, baseType: !41, size: 64, offset: 1536)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !864, file: !178, line: 1023, baseType: !41, size: 64, offset: 1600)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !864, file: !178, line: 1027, baseType: !3317, size: 64, offset: 1664)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !864, file: !178, line: 1029, baseType: !631, size: 64, offset: 1728)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !864, file: !178, line: 1030, baseType: !3320, size: 32, offset: 1792)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3321, line: 8, baseType: !319)
!3321 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !864, file: !178, line: 1031, baseType: !3320, size: 32, offset: 1824)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !839, file: !144, line: 756, baseType: !60, size: 64, offset: 704)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !839, file: !144, line: 757, baseType: !60, size: 64, offset: 768)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !839, file: !144, line: 760, baseType: !60, size: 64, offset: 832)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !839, file: !144, line: 761, baseType: !60, size: 64, offset: 896)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !839, file: !144, line: 763, baseType: !60, size: 64, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !839, file: !144, line: 764, baseType: !3329, size: 64, offset: 1024)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !3331, line: 299, baseType: !3332)
!3331 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3331, line: 299, size: 64, elements: !3333)
!3333 = !{!3334}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3332, file: !3331, line: 299, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !3336, line: 18, baseType: !60)
!3336 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !839, file: !144, line: 773, baseType: !70, size: 32, offset: 1088)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !839, file: !144, line: 785, baseType: !70, size: 32, offset: 1120)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !839, file: !144, line: 795, baseType: !3340, size: 64, offset: 1152)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !144, line: 726, size: 128, elements: !3342)
!3342 = !{!3343, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3341, file: !144, line: 727, baseType: !394, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3341, file: !144, line: 728, baseType: !43, size: 32, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !839, file: !144, line: 801, baseType: !60, size: 64, offset: 1216)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !839, file: !144, line: 804, baseType: !647, size: 64, offset: 1280)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !839, file: !144, line: 806, baseType: !43, size: 32, offset: 1344)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !839, file: !144, line: 808, baseType: !80, size: 32, offset: 1376)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !839, file: !144, line: 823, baseType: !643, size: 320, offset: 1408)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !839, file: !144, line: 825, baseType: !118, size: 128, offset: 1728)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !839, file: !144, line: 845, baseType: !43, size: 32, offset: 1856)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !839, file: !144, line: 849, baseType: !60, size: 64, offset: 1920)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !839, file: !144, line: 850, baseType: !60, size: 64, offset: 1984)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !839, file: !144, line: 852, baseType: !60, size: 64, offset: 2048)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !839, file: !144, line: 853, baseType: !60, size: 64, offset: 2112)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !839, file: !144, line: 854, baseType: !649, size: 64, offset: 2176)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !839, file: !144, line: 855, baseType: !60, size: 64, offset: 2240)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !839, file: !144, line: 856, baseType: !60, size: 64, offset: 2304)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !839, file: !144, line: 857, baseType: !60, size: 64, offset: 2368)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !839, file: !144, line: 858, baseType: !60, size: 64, offset: 2432)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !839, file: !144, line: 865, baseType: !369, size: 32, offset: 2496)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !839, file: !144, line: 867, baseType: !80, size: 32, offset: 2528)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !839, file: !144, line: 869, baseType: !60, size: 64, offset: 2560)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !839, file: !144, line: 869, baseType: !60, size: 64, offset: 2624)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !839, file: !144, line: 869, baseType: !60, size: 64, offset: 2688)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !839, file: !144, line: 869, baseType: !60, size: 64, offset: 2752)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !839, file: !144, line: 870, baseType: !60, size: 64, offset: 2816)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !839, file: !144, line: 870, baseType: !60, size: 64, offset: 2880)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !839, file: !144, line: 870, baseType: !60, size: 64, offset: 2944)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !839, file: !144, line: 871, baseType: !60, size: 64, offset: 3008)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !839, file: !144, line: 871, baseType: !60, size: 64, offset: 3072)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !839, file: !144, line: 871, baseType: !60, size: 64, offset: 3136)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !839, file: !144, line: 871, baseType: !60, size: 64, offset: 3200)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !839, file: !144, line: 873, baseType: !3375, size: 3328, offset: 3264)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 3328, elements: !3376)
!3376 = !{!3377}
!3377 = !DISubrange(count: 52)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !839, file: !144, line: 875, baseType: !3379, size: 1280, offset: 6592)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1534, size: 1280, elements: !937)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !839, file: !144, line: 877, baseType: !3381, size: 64, offset: 7872)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !144, line: 877, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !839, file: !144, line: 880, baseType: !3384, size: 1088, offset: 7936)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3385, line: 72, baseType: !3386)
!3385 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3385, line: 23, size: 1088, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3395, !3396, !3397, !3398, !3423, !3424, !3425}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3386, file: !3385, line: 28, baseType: !394, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3386, file: !3385, line: 38, baseType: !649, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3386, file: !3385, line: 40, baseType: !60, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3386, file: !3385, line: 43, baseType: !643, size: 320, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3386, file: !3385, line: 44, baseType: !3393, size: 64, offset: 512)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3385, line: 44, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3386, file: !3385, line: 48, baseType: !60, size: 64, offset: 576)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3386, file: !3385, line: 59, baseType: !882, size: 256, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3386, file: !3385, line: 60, baseType: !41, size: 64, offset: 896)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3386, file: !3385, line: 61, baseType: !3399, size: 64, offset: 960)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3402, line: 13, size: 1216, elements: !3403)
!3402 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3401, file: !3402, line: 14, baseType: !41, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3401, file: !3402, line: 15, baseType: !60, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3401, file: !3402, line: 17, baseType: !60, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3401, file: !3402, line: 17, baseType: !60, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3401, file: !3402, line: 18, baseType: !60, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3401, file: !3402, line: 18, baseType: !60, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3401, file: !3402, line: 19, baseType: !321, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3401, file: !3402, line: 21, baseType: !596, size: 64, offset: 448)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3401, file: !3402, line: 23, baseType: !596, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3401, file: !3402, line: 24, baseType: !596, size: 64, offset: 576)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3401, file: !3402, line: 25, baseType: !596, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3401, file: !3402, line: 26, baseType: !596, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3401, file: !3402, line: 27, baseType: !596, size: 64, offset: 768)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3401, file: !3402, line: 28, baseType: !596, size: 64, offset: 832)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3401, file: !3402, line: 29, baseType: !596, size: 64, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3401, file: !3402, line: 30, baseType: !596, size: 64, offset: 960)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3401, file: !3402, line: 31, baseType: !596, size: 64, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3401, file: !3402, line: 32, baseType: !596, size: 64, offset: 1088)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3401, file: !3402, line: 33, baseType: !596, size: 64, offset: 1152)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3386, file: !3385, line: 63, baseType: !70, size: 32, offset: 1024)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3386, file: !3385, line: 69, baseType: !114, size: 16, offset: 1056)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3386, file: !3385, line: 70, baseType: !3426, size: 16, offset: 1072)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !105, line: 18, baseType: !3427)
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !1324)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !839, file: !144, line: 882, baseType: !60, size: 64, offset: 9024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !839, file: !144, line: 885, baseType: !80, size: 32, offset: 9088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !839, file: !144, line: 886, baseType: !3431, size: 64, offset: 9152)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !144, line: 732, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !839, file: !144, line: 901, baseType: !1559, size: 64, offset: 9216)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !839, file: !144, line: 904, baseType: !863, size: 64, offset: 9280)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !839, file: !144, line: 906, baseType: !3436, size: 64, offset: 9344)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !144, line: 906, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !839, file: !144, line: 930, baseType: !70, size: 32, offset: 9408)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !839, file: !144, line: 933, baseType: !70, size: 32, offset: 9440)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !839, file: !144, line: 935, baseType: !3441, size: 64, offset: 9472)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !129, line: 103, size: 64, elements: !3442)
!3442 = !{!3443}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3441, file: !129, line: 104, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !129, line: 101, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !839, file: !144, line: 940, baseType: !647, size: 64, offset: 9536)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !839, file: !144, line: 942, baseType: !1608, size: 256, offset: 9600)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !836, file: !144, line: 986, baseType: !3449, offset: 10240)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !1706)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !823, file: !144, line: 640, baseType: !3451, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !3331, line: 297, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !3331, line: 297, size: 64, elements: !3453)
!3453 = !{!3454}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3452, file: !3331, line: 297, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !3336, line: 19, baseType: !60)
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !144, line: 646, baseType: !3457, size: 64, offset: 256)
!3457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !144, line: 646, size: 64, elements: !3458)
!3458 = !{!3459, !3462}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3457, file: !144, line: 647, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3461)
!3461 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !144, line: 542, baseType: !60)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3457, file: !144, line: 648, baseType: !3461, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !823, file: !144, line: 666, baseType: !43, size: 32, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !823, file: !144, line: 667, baseType: !3465, size: 64, offset: 384)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !144, line: 579, size: 320, elements: !3467)
!3467 = !{!3468}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3466, file: !144, line: 580, baseType: !643, size: 320)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !823, file: !144, line: 670, baseType: !773, size: 8, offset: 448)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !823, file: !144, line: 681, baseType: !3471, size: 256, offset: 512)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !144, line: 678, size: 256, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3471, file: !144, line: 679, baseType: !675, size: 192, align: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3471, file: !144, line: 680, baseType: !60, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !823, file: !144, line: 689, baseType: !118, size: 128, offset: 768)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !823, file: !144, line: 691, baseType: !3477, size: 64, offset: 896)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !144, line: 691, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !823, file: !144, line: 694, baseType: !1980, size: 64, offset: 960)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !823, file: !144, line: 697, baseType: !60, size: 64, offset: 1024)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !823, file: !144, line: 699, baseType: !863, size: 64, offset: 1088)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !823, file: !144, line: 700, baseType: !41, size: 64, offset: 1152)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !823, file: !144, line: 711, baseType: !647, size: 64, offset: 1216)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !823, file: !144, line: 717, baseType: !2028, size: 64, offset: 1280)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !823, file: !144, line: 722, baseType: !3486, offset: 1344)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !144, line: 570, elements: !856)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !819, file: !816, line: 515, baseType: !286, size: 32, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !819, file: !816, line: 516, baseType: !60, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !819, file: !816, line: 517, baseType: !60, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !819, file: !816, line: 518, baseType: !60, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !816, line: 520, baseType: !143, size: 32, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !815, file: !816, line: 522, baseType: !3493, size: 64, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !3336, line: 22, baseType: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3336, line: 22, size: 64, elements: !3496)
!3496 = !{!3497}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3495, file: !3336, line: 22, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !3336, line: 15, baseType: !60)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !815, file: !816, line: 524, baseType: !3500, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !3331, line: 372, baseType: !3502)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3331, line: 372, size: 64, elements: !3503)
!3503 = !{!3504}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3502, file: !3331, line: 372, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !3336, line: 16, baseType: !60)
!3506 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 527, baseType: !3507, size: 64, offset: 512)
!3507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 527, size: 64, elements: !3508)
!3508 = !{!3509, !3515}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3507, file: !816, line: 528, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !3336, line: 21, baseType: !3511)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3336, line: 21, size: 64, elements: !3512)
!3512 = !{!3513}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3511, file: !3336, line: 21, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !3336, line: 14, baseType: !60)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3507, file: !816, line: 529, baseType: !3494, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !815, file: !816, line: 534, baseType: !692, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !815, file: !816, line: 535, baseType: !692, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !815, file: !816, line: 541, baseType: !3519, size: 64, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !815, file: !816, line: 545, baseType: !3521, size: 64, offset: 768)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !815, file: !816, line: 549, baseType: !3523, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !3331, line: 520, baseType: !692)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !803, file: !14, line: 100, baseType: !3525, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!43, !742, !60, !60, !43}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !743, file: !14, line: 134, baseType: !41, size: 64, offset: 960)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !743, file: !14, line: 135, baseType: !43, size: 32, offset: 1024)
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !14, line: 136, baseType: !3531, size: 128, offset: 1088)
!3531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !14, line: 136, size: 128, elements: !3532)
!3532 = !{!3533, !3539}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3531, file: !14, line: 137, baseType: !3534, size: 128)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3535, line: 6, size: 128, elements: !3536)
!3535 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3536 = !{!3537, !3538}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3534, file: !3535, line: 7, baseType: !394, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3534, file: !3535, line: 8, baseType: !394, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !14, line: 138, baseType: !3540)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !14, line: 138, elements: !3541)
!3541 = !{!3542, !3544}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3540, file: !14, line: 138, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3540, file: !14, line: 138, elements: !856)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3540, file: !14, line: 138, baseType: !3545)
!3545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3534, elements: !1706)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !739, file: !144, line: 147, baseType: !41, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !697, file: !144, line: 161, baseType: !777, size: 128, align: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !144, line: 164, baseType: !3549, size: 32, offset: 384)
!3549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !144, line: 164, size: 32, elements: !3550)
!3550 = !{!3551, !3552}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3549, file: !144, line: 169, baseType: !70, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3549, file: !144, line: 177, baseType: !7, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !693, file: !144, line: 181, baseType: !70, size: 32, offset: 416)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !160, line: 42, size: 384, elements: !3556)
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !3555, file: !160, line: 43, baseType: !596, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !3555, file: !160, line: 45, baseType: !596, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !3555, file: !160, line: 52, baseType: !62, size: 64, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !3555, file: !160, line: 53, baseType: !62, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !3555, file: !160, line: 55, baseType: !159, size: 32, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !3555, file: !160, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !3555, file: !160, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !3555, file: !160, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !3555, file: !160, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !3555, file: !160, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !3555, file: !160, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !3555, file: !160, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !3555, file: !160, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !3555, file: !160, line: 78, baseType: !3571, size: 64, offset: 320)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !160, line: 78, flags: DIFlagFwdDecl)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !686, file: !178, line: 406, baseType: !3575, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!43, !863, !3578}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !144, line: 293, size: 1536, elements: !3580)
!3580 = !{!3581, !3611, !3625}
!3581 = !DIDerivedType(tag: DW_TAG_member, scope: !3579, file: !144, line: 295, baseType: !3582, size: 512)
!3582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3579, file: !144, line: 295, size: 512, elements: !3583)
!3583 = !{!3584, !3610}
!3584 = !DIDerivedType(tag: DW_TAG_member, scope: !3582, file: !144, line: 296, baseType: !3585, size: 448)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3582, file: !144, line: 296, size: 448, elements: !3586)
!3586 = !{!3587, !3588, !3597, !3598, !3599, !3608, !3609}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3585, file: !144, line: 298, baseType: !60, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !3585, file: !144, line: 299, baseType: !3589, size: 128, offset: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3585, file: !144, line: 299, size: 128, elements: !3590)
!3590 = !{!3591, !3592}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3589, file: !144, line: 300, baseType: !118, size: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, scope: !3589, file: !144, line: 302, baseType: !3593, size: 128)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3589, file: !144, line: 302, size: 128, elements: !3594)
!3594 = !{!3595, !3596}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3593, file: !144, line: 303, baseType: !41, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3593, file: !144, line: 305, baseType: !7, size: 32, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3585, file: !144, line: 310, baseType: !631, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3585, file: !144, line: 311, baseType: !60, size: 64, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_member, scope: !3585, file: !144, line: 312, baseType: !3600, size: 64, offset: 320)
!3600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3585, file: !144, line: 312, size: 64, elements: !3601)
!3601 = !{!3602, !3603}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3600, file: !144, line: 313, baseType: !41, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3600, file: !144, line: 314, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !144, line: 257, baseType: !3605)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 255, size: 64, elements: !3606)
!3606 = !{!3607}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3605, file: !144, line: 256, baseType: !60, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3585, file: !144, line: 316, baseType: !70, size: 32, offset: 384)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3585, file: !144, line: 317, baseType: !70, size: 32, offset: 416)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3582, file: !144, line: 323, baseType: !693, size: 512, align: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !3579, file: !144, line: 325, baseType: !3612, size: 512, offset: 512)
!3612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3579, file: !144, line: 325, size: 512, elements: !3613)
!3613 = !{!3614, !3624}
!3614 = !DIDerivedType(tag: DW_TAG_member, scope: !3612, file: !144, line: 326, baseType: !3615, size: 320)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3612, file: !144, line: 326, size: 320, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3615, file: !144, line: 327, baseType: !60, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3615, file: !144, line: 328, baseType: !60, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3615, file: !144, line: 329, baseType: !60, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3615, file: !144, line: 331, baseType: !70, size: 32, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3615, file: !144, line: 332, baseType: !70, size: 32, offset: 224)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3615, file: !144, line: 333, baseType: !70, size: 32, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3615, file: !144, line: 335, baseType: !7, size: 32, offset: 288)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3612, file: !144, line: 339, baseType: !693, size: 512, align: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, scope: !3579, file: !144, line: 341, baseType: !3626, size: 512, offset: 1024)
!3626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3579, file: !144, line: 341, size: 512, elements: !3627)
!3627 = !{!3628, !3637, !3643}
!3628 = !DIDerivedType(tag: DW_TAG_member, scope: !3626, file: !144, line: 342, baseType: !3629, size: 384)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3626, file: !144, line: 342, size: 384, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3629, file: !144, line: 343, baseType: !60, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3629, file: !144, line: 344, baseType: !60, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3629, file: !144, line: 346, baseType: !41, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3629, file: !144, line: 347, baseType: !41, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3629, file: !144, line: 348, baseType: !41, size: 64, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3629, file: !144, line: 349, baseType: !41, size: 64, offset: 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, scope: !3626, file: !144, line: 352, baseType: !3638, size: 256)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3626, file: !144, line: 352, size: 256, elements: !3639)
!3639 = !{!3640, !3641, !3642}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3638, file: !144, line: 353, baseType: !60, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3638, file: !144, line: 354, baseType: !60, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3638, file: !144, line: 356, baseType: !118, size: 128, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3626, file: !144, line: 359, baseType: !693, size: 512, align: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !686, file: !178, line: 409, baseType: !3645, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!43, !631, !3554}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !686, file: !178, line: 412, baseType: !3649, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!773, !631, !3578}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !686, file: !178, line: 414, baseType: !3653, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !3656}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !178, line: 310, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !686, file: !178, line: 416, baseType: !3659, size: 64, offset: 320)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!43, !863, !631, !62, !7, !3662, !3285}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !686, file: !178, line: 419, baseType: !3664, size: 64, offset: 384)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!43, !863, !631, !62, !7, !7, !692, !41}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !686, file: !178, line: 424, baseType: !3668, size: 64, offset: 448)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!3671, !631, !3671}
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !46, line: 131, baseType: !394)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !686, file: !178, line: 425, baseType: !3673, size: 64, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !3578, !56, !56}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !686, file: !178, line: 426, baseType: !3677, size: 64, offset: 576)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!773, !3578, !286}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !686, file: !178, line: 427, baseType: !3681, size: 64, offset: 640)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{null, !3578}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !686, file: !178, line: 428, baseType: !3177, size: 64, offset: 704)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !686, file: !178, line: 433, baseType: !3686, size: 64, offset: 768)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!43, !631, !3578, !3578, !164}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !686, file: !178, line: 435, baseType: !3690, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!43, !3578}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !686, file: !178, line: 436, baseType: !3694, size: 64, offset: 896)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!773, !3578, !56, !56}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !686, file: !178, line: 438, baseType: !3698, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{null, !3578, !3701, !3701}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !686, file: !178, line: 439, baseType: !3703, size: 64, offset: 1024)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!43, !631, !692}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !686, file: !178, line: 442, baseType: !3707, size: 64, offset: 1088)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!43, !3710, !863, !3712}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !178, line: 66, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !686, file: !178, line: 444, baseType: !3277, size: 64, offset: 1152)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !686, file: !178, line: 445, baseType: !3715, size: 64, offset: 1216)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!43, !3180, !3202}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !178, line: 486, baseType: !60, size: 64, offset: 896)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !632, file: !178, line: 487, baseType: !643, size: 320, offset: 960)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !632, file: !178, line: 488, baseType: !3320, size: 32, offset: 1280)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !632, file: !178, line: 489, baseType: !80, size: 32, offset: 1312)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !632, file: !178, line: 490, baseType: !118, size: 128, offset: 1344)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !632, file: !178, line: 491, baseType: !41, size: 64, offset: 1472)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !622, file: !587, line: 180, baseType: !3725, size: 64, offset: 320)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!593, !863, !527, !621, !462, !62, !56}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !622, file: !587, line: 182, baseType: !3725, size: 64, offset: 384)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !622, file: !587, line: 184, baseType: !3730, size: 64, offset: 448)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!43, !863, !527, !621, !822}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !610, file: !587, line: 90, baseType: !3734, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !610, file: !587, line: 91, baseType: !3736, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !577, file: !522, line: 120, baseType: !3738, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!3741, !545}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3743)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !172, line: 39, size: 384, elements: !3744)
!3744 = !{!3745, !3746, !3750, !3754, !3760, !3764}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3743, file: !172, line: 40, baseType: !171, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3743, file: !172, line: 41, baseType: !3747, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!773}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3743, file: !172, line: 42, baseType: !3751, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!41}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3743, file: !172, line: 43, baseType: !3755, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!321, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !172, line: 19, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3743, file: !172, line: 44, baseType: !3761, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!321}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3743, file: !172, line: 45, baseType: !3765, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !41}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !577, file: !522, line: 121, baseType: !3769, size: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!321, !545}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !577, file: !522, line: 122, baseType: !3773, size: 64, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !545, !1661, !1662}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !521, file: !522, line: 70, baseType: !1887, size: 64, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !521, file: !522, line: 71, baseType: !3778, size: 32, offset: 448)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3779, line: 19, size: 32, elements: !3780)
!3779 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3780 = !{!3781}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3778, file: !3779, line: 20, baseType: !920, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !521, file: !522, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !521, file: !522, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !521, file: !522, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !521, file: !522, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !521, file: !522, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !518, file: !6, line: 47, baseType: !508, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !518, file: !6, line: 48, baseType: !527, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !518, file: !6, line: 49, baseType: !3790, size: 64, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !518, file: !6, line: 50, baseType: !1348, size: 64, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !509, file: !6, line: 418, baseType: !3794, size: 64, offset: 1408)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3796)
!3796 = !{!3797, !3798, !3803, !3807, !3811, !3815}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3795, file: !6, line: 54, baseType: !598, size: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3795, file: !6, line: 55, baseType: !3799, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!593, !3794, !3802, !462}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3795, file: !6, line: 57, baseType: !3804, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!593, !3794, !3802, !37, !56}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3795, file: !6, line: 59, baseType: !3808, size: 64, offset: 256)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !508, !37}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3795, file: !6, line: 60, baseType: !3812, size: 64, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!43, !508}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3795, file: !6, line: 61, baseType: !3816, size: 64, offset: 384)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !508}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !509, file: !6, line: 419, baseType: !37, size: 64, offset: 1472)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !509, file: !6, line: 420, baseType: !37, size: 64, offset: 1536)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !509, file: !6, line: 421, baseType: !527, size: 64, offset: 1600)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !509, file: !6, line: 424, baseType: !3823, size: 64, offset: 1664)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3825)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !509, file: !6, line: 425, baseType: !3827, size: 64, offset: 1728)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !509, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !509, file: !6, line: 435, baseType: !882, size: 256, offset: 1856)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !509, file: !6, line: 437, baseType: !3832, size: 64, offset: 2112)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3834, line: 69, size: 320, elements: !3835)
!3834 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3835 = !{!3836, !3837, !3838, !3855, !3857, !3861, !3862}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3833, file: !3834, line: 70, baseType: !37, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3833, file: !3834, line: 71, baseType: !508, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3833, file: !3834, line: 72, baseType: !3839, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3841)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3834, line: 47, size: 256, elements: !3842)
!3842 = !{!3843, !3844, !3850, !3854}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3841, file: !3834, line: 49, baseType: !7, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3841, file: !3834, line: 51, baseType: !3845, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!43, !37, !3848}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3833)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3841, file: !3834, line: 53, baseType: !3851, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!43, !462, !3848}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3841, file: !3834, line: 55, baseType: !3765, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3833, file: !3834, line: 73, baseType: !3856, size: 16, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3833, file: !3834, line: 74, baseType: !3858, size: 8, offset: 208)
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !105, line: 16, baseType: !3859)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !107, line: 20, baseType: !3860)
!3860 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3833, file: !3834, line: 75, baseType: !104, size: 8, offset: 216)
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !3833, file: !3834, line: 76, baseType: !3863, size: 64, offset: 256)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3833, file: !3834, line: 76, size: 64, elements: !3864)
!3864 = !{!3865, !3866, !3873}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3863, file: !3834, line: 77, baseType: !41, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3863, file: !3834, line: 78, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3869)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3834, line: 86, size: 128, elements: !3870)
!3870 = !{!3871, !3872}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3869, file: !3834, line: 87, baseType: !7, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3869, file: !3834, line: 88, baseType: !462, size: 64, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3863, file: !3834, line: 79, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3876)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3834, line: 92, size: 256, elements: !3877)
!3877 = !{!3878, !3879, !3880, !3882, !3883}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3876, file: !3834, line: 94, baseType: !7, size: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3876, file: !3834, line: 95, baseType: !7, size: 32, offset: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3876, file: !3834, line: 96, baseType: !3881, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3876, file: !3834, line: 97, baseType: !3839, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3876, file: !3834, line: 98, baseType: !41, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !509, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !509, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !509, file: !6, line: 442, baseType: !3823, size: 64, offset: 2240)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !509, file: !6, line: 443, baseType: !3827, size: 64, offset: 2304)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !509, file: !6, line: 444, baseType: !773, size: 8, offset: 2368)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !509, file: !6, line: 451, baseType: !773, size: 8, offset: 2376)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !509, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !509, file: !6, line: 455, baseType: !3892, size: 64, offset: 2432)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3894, line: 23, size: 96, elements: !3895)
!3894 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3895 = !{!3896, !3897, !3898}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3893, file: !3894, line: 24, baseType: !43, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3893, file: !3894, line: 24, baseType: !43, size: 32, offset: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3893, file: !3894, line: 24, baseType: !43, size: 32, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !509, file: !6, line: 458, baseType: !3900, size: 64, offset: 2496)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!43}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !509, file: !6, line: 460, baseType: !3904, size: 4032, align: 512, offset: 2560)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, size: 4032, elements: !3919)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3906)
!3906 = !{!3907, !3908, !3909}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3905, file: !6, line: 363, baseType: !41, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3905, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3905, file: !6, line: 367, baseType: !3910, size: 448, offset: 128)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3911)
!3911 = !{!3912, !3913}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3910, file: !6, line: 320, baseType: !508, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3910, file: !6, line: 321, baseType: !3914, size: 384, offset: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3915, line: 40, size: 384, elements: !3916)
!3915 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3916 = !{!3917}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3914, file: !3915, line: 41, baseType: !3918, size: 384, align: 64)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 384, align: 64, elements: !1819)
!3919 = !{!3920}
!3920 = !DISubrange(count: 7)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !509, file: !6, line: 463, baseType: !3922, size: 192, offset: 6592)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3923, line: 8, size: 192, elements: !3924)
!3923 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3924 = !{!3925, !3926, !3927}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3922, file: !3923, line: 10, baseType: !7, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3922, file: !3923, line: 11, baseType: !1350, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3922, file: !3923, line: 12, baseType: !3928, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3930, line: 59, size: 48, elements: !3931)
!3930 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3931 = !{!3932, !3933, !3934, !3935, !3936, !3937}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3929, file: !3930, line: 60, baseType: !3426, size: 16)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3929, file: !3930, line: 61, baseType: !3426, size: 16, offset: 16)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3929, file: !3930, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3929, file: !3930, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3929, file: !3930, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3929, file: !3930, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !509, file: !6, line: 465, baseType: !60, size: 64, offset: 6784)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !509, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !509, file: !6, line: 470, baseType: !118, size: 128, offset: 6912)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !509, file: !6, line: 471, baseType: !3942, size: 64, offset: 7040)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3944, line: 33, size: 96, elements: !3945)
!3944 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3945 = !{!3946, !3947, !3948, !3949}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3943, file: !3944, line: 37, baseType: !43, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3943, file: !3944, line: 43, baseType: !43, size: 32, offset: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3943, file: !3944, line: 45, baseType: !47, size: 16, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3943, file: !3944, line: 47, baseType: !47, size: 16, offset: 80)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !509, file: !6, line: 476, baseType: !3951, size: 64, offset: 7104)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3953)
!3953 = !{!3954, !3970, !3971, !3972}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3952, file: !6, line: 379, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3957, line: 204, baseType: !3958)
!3957 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3957, line: 197, size: 192, elements: !3959)
!3959 = !{!3960, !3962, !3963, !3964, !3966, !3968}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3958, file: !3957, line: 198, baseType: !3961, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3957, line: 21, baseType: !320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3958, file: !3957, line: 199, baseType: !108, size: 8, offset: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3958, file: !3957, line: 200, baseType: !108, size: 8, offset: 40)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3958, file: !3957, line: 201, baseType: !3965, size: 16, offset: 48)
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3957, line: 17, baseType: !115)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3958, file: !3957, line: 202, baseType: !3967, size: 64, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3957, line: 16, baseType: !395)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3958, file: !3957, line: 203, baseType: !3969, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3957, line: 22, baseType: !395)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3952, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3952, file: !6, line: 381, baseType: !462, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3952, file: !6, line: 382, baseType: !462, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !509, file: !6, line: 477, baseType: !3952, size: 256, offset: 7168)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !509, file: !6, line: 480, baseType: !3975, size: 64, offset: 7424)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !509, file: !6, line: 483, baseType: !3978, size: 64, offset: 7488)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !509, file: !6, line: 488, baseType: !462, size: 64, offset: 7552)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !509, file: !6, line: 492, baseType: !41, size: 64, offset: 7616)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !509, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !509, file: !6, line: 495, baseType: !41, size: 64, offset: 7744)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !509, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !509, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !509, file: !6, line: 500, baseType: !3987, size: 64, offset: 7872)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3989, line: 45, baseType: !3990)
!3989 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !509, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !509, file: !6, line: 504, baseType: !3993, size: 64, offset: 8000)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3996, line: 96, size: 192, elements: !3997)
!3996 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3997 = !{!3998, !3999, !4041, !4044}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3995, file: !3996, line: 97, baseType: !7, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3995, file: !3996, line: 98, baseType: !4000, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3996, line: 24, size: 3072, elements: !4002)
!4002 = !{!4003, !4005, !4006, !4007, !4008, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4038, !4039, !4040}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4001, file: !3996, line: 26, baseType: !4004, size: 128)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 128, elements: !1819)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4001, file: !3996, line: 27, baseType: !4004, size: 128, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4001, file: !3996, line: 28, baseType: !43, size: 32, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4001, file: !3996, line: 31, baseType: !80, size: 32, align: 512, offset: 512)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4001, file: !3996, line: 32, baseType: !4009, size: 960, offset: 576)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4010, line: 206, size: 960, elements: !4011)
!4010 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4011 = !{!4012, !4013, !4016, !4018, !4019, !4020}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4009, file: !4010, line: 207, baseType: !780, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4009, file: !4010, line: 208, baseType: !4014, size: 256, offset: 64)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4015, size: 256, elements: !937)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4009, file: !4010, line: 209, baseType: !4017, size: 256, offset: 320)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, elements: !937)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4009, file: !4010, line: 213, baseType: !596, size: 64, offset: 576)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4009, file: !4010, line: 215, baseType: !1696, size: 256, offset: 640)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4009, file: !4010, line: 216, baseType: !104, size: 8, offset: 896)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4001, file: !3996, line: 33, baseType: !60, size: 64, offset: 1536)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4001, file: !3996, line: 34, baseType: !60, size: 64, offset: 1600)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4001, file: !3996, line: 35, baseType: !773, size: 8, offset: 1664)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4001, file: !3996, line: 36, baseType: !2093, size: 320, offset: 1728)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4001, file: !3996, line: 37, baseType: !1608, size: 256, offset: 2048)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4001, file: !3996, line: 38, baseType: !777, size: 128, align: 64, offset: 2304)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4001, file: !3996, line: 39, baseType: !4028, size: 64, offset: 2432)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3996, line: 49, size: 768, elements: !4030)
!4030 = !{!4031, !4032, !4033, !4034, !4035, !4036, !4037}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4029, file: !3996, line: 50, baseType: !80, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4029, file: !3996, line: 51, baseType: !4017, size: 256, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4029, file: !3996, line: 53, baseType: !4017, size: 256, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4029, file: !3996, line: 54, baseType: !60, size: 64, offset: 576)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4029, file: !3996, line: 55, baseType: !4028, size: 64, offset: 640)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4029, file: !3996, line: 56, baseType: !43, size: 32, offset: 704)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4029, file: !3996, line: 57, baseType: !43, size: 32, offset: 736)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4001, file: !3996, line: 40, baseType: !60, size: 64, offset: 2496)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4001, file: !3996, line: 42, baseType: !43, size: 32, offset: 2560)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4001, file: !3996, line: 43, baseType: !3994, size: 64, offset: 2624)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3995, file: !3996, line: 99, baseType: !4042, offset: 128)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !4043, line: 211, elements: !856)
!4043 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3995, file: !3996, line: 100, baseType: !4045, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3996, line: 63, size: 3008, elements: !4047)
!4047 = !{!4048, !4049, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4077}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4046, file: !3996, line: 64, baseType: !4028, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4046, file: !3996, line: 65, baseType: !4050, size: 192, offset: 64)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4028, size: 192, elements: !562)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4046, file: !3996, line: 67, baseType: !43, size: 32, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4046, file: !3996, line: 68, baseType: !882, size: 256, offset: 320)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4046, file: !3996, line: 69, baseType: !80, size: 32, offset: 576)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4046, file: !3996, line: 70, baseType: !882, size: 256, offset: 640)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4046, file: !3996, line: 71, baseType: !60, size: 64, offset: 896)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4046, file: !3996, line: 72, baseType: !60, size: 64, offset: 960)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4046, file: !3996, line: 73, baseType: !60, size: 64, offset: 1024)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4046, file: !3996, line: 74, baseType: !60, size: 64, offset: 1088)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4046, file: !3996, line: 75, baseType: !60, size: 64, offset: 1152)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4046, file: !3996, line: 76, baseType: !60, size: 64, offset: 1216)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4046, file: !3996, line: 77, baseType: !60, size: 64, offset: 1280)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4046, file: !3996, line: 78, baseType: !60, size: 64, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4046, file: !3996, line: 79, baseType: !773, size: 8, offset: 1408)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4046, file: !3996, line: 80, baseType: !60, size: 64, offset: 1472)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4046, file: !3996, line: 81, baseType: !882, size: 256, offset: 1536)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4046, file: !3996, line: 82, baseType: !787, size: 256, offset: 1792)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4046, file: !3996, line: 84, baseType: !70, size: 32, offset: 2048)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4046, file: !3996, line: 87, baseType: !60, size: 64, offset: 2112)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4046, file: !3996, line: 88, baseType: !60, size: 64, offset: 2176)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4046, file: !3996, line: 89, baseType: !4071, size: 704, offset: 2240)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1609, line: 111, size: 704, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4071, file: !1609, line: 112, baseType: !1608, size: 256)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4071, file: !1609, line: 113, baseType: !2093, size: 320, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4071, file: !1609, line: 116, baseType: !2306, size: 64, offset: 576)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4071, file: !1609, line: 117, baseType: !43, size: 32, offset: 640)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4046, file: !3996, line: 90, baseType: !3994, size: 64, offset: 2944)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !509, file: !6, line: 515, baseType: !4079, size: 64, offset: 8064)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4081, line: 117, size: 128, elements: !4082)
!4081 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4082 = !{!4083, !4084, !4085}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4080, file: !4081, line: 118, baseType: !1310, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4080, file: !4081, line: 119, baseType: !1310, size: 32, offset: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4080, file: !4081, line: 120, baseType: !596, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !509, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !509, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !509, file: !6, line: 520, baseType: !4089, size: 64, offset: 8192)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !509, file: !6, line: 523, baseType: !4091, size: 64, offset: 8256)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !509, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !509, file: !6, line: 525, baseType: !4096, size: 64, offset: 8384)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !509, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !509, file: !6, line: 533, baseType: !41, size: 64, offset: 8512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !509, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !509, file: !6, line: 535, baseType: !4103, size: 64, offset: 8640)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !509, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !509, file: !6, line: 539, baseType: !43, size: 32, offset: 8736)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !509, file: !6, line: 540, baseType: !4107, size: 64, offset: 8768)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4109, line: 32, size: 64, elements: !4110)
!4109 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4110 = !{!4111, !4112}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4108, file: !4109, line: 33, baseType: !1310, size: 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4108, file: !4109, line: 34, baseType: !1310, size: 32, offset: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !509, file: !6, line: 563, baseType: !118, size: 128, offset: 8832)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !509, file: !6, line: 565, baseType: !118, size: 128, offset: 8960)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !509, file: !6, line: 568, baseType: !2227, size: 64, offset: 9088)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !509, file: !6, line: 570, baseType: !70, size: 32, offset: 9152)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !178, line: 2382, baseType: !484, size: 64, offset: 448)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !485, file: !178, line: 2383, baseType: !928, size: 64, offset: 512)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !485, file: !178, line: 2385, baseType: !4120, offset: 576)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !4043, line: 206, elements: !856)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !485, file: !178, line: 2386, baseType: !4120, offset: 576)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !485, file: !178, line: 2387, baseType: !4120, offset: 576)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !485, file: !178, line: 2388, baseType: !4124, offset: 576)
!4124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4120, elements: !562)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !485, file: !178, line: 2390, baseType: !4120, offset: 576)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !485, file: !178, line: 2391, baseType: !4120, offset: 576)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !485, file: !178, line: 2392, baseType: !4120, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !485, file: !178, line: 2393, baseType: !4120, offset: 576)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !474, file: !178, line: 1197, baseType: !4130, size: 64, offset: 384)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4132)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !178, line: 2057, size: 1664, elements: !4133)
!4133 = !{!4134, !4138, !4142, !4143, !4147, !4151, !4155, !4156, !4157, !4161, !4165, !4169, !4170, !4171, !4177, !4181, !4182, !4186, !4187, !4188, !4189, !4193, !4197, !4244, !4259, !4260}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !4132, file: !178, line: 2058, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!323, !473}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !4132, file: !178, line: 2059, baseType: !4139, size: 64, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{null, !323}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4132, file: !178, line: 2060, baseType: !4139, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !4132, file: !178, line: 2062, baseType: !4144, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{null, !323, !43}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !4132, file: !178, line: 2063, baseType: !4148, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!43, !323, !3554}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !4132, file: !178, line: 2064, baseType: !4152, size: 64, offset: 320)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!43, !323}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !4132, file: !178, line: 2065, baseType: !4139, size: 64, offset: 384)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !4132, file: !178, line: 2066, baseType: !504, size: 64, offset: 448)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !4132, file: !178, line: 2067, baseType: !4158, size: 64, offset: 512)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!43, !473, !43}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !4132, file: !178, line: 2068, baseType: !4162, size: 64, offset: 576)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!43, !473, !177}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !4132, file: !178, line: 2069, baseType: !4166, size: 64, offset: 640)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!43, !473}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !4132, file: !178, line: 2070, baseType: !4162, size: 64, offset: 704)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !4132, file: !178, line: 2071, baseType: !4166, size: 64, offset: 768)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !4132, file: !178, line: 2072, baseType: !4172, size: 64, offset: 832)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!43, !358, !4175}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !178, line: 62, flags: DIFlagFwdDecl)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !4132, file: !178, line: 2073, baseType: !4178, size: 64, offset: 896)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!43, !473, !1350, !462}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !4132, file: !178, line: 2074, baseType: !504, size: 64, offset: 960)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !4132, file: !178, line: 2076, baseType: !4183, size: 64, offset: 1024)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!43, !1932, !358}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !4132, file: !178, line: 2077, baseType: !4183, size: 64, offset: 1088)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !4132, file: !178, line: 2078, baseType: !4183, size: 64, offset: 1152)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !4132, file: !178, line: 2079, baseType: !4183, size: 64, offset: 1216)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !4132, file: !178, line: 2081, baseType: !4190, size: 64, offset: 1280)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!593, !473, !43, !462, !56, !62}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !4132, file: !178, line: 2082, baseType: !4194, size: 64, offset: 1344)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!593, !473, !43, !37, !56, !62}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !4132, file: !178, line: 2083, baseType: !4198, size: 64, offset: 1408)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!4201, !323}
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !183, line: 296, size: 1664, elements: !4204)
!4204 = !{!4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4229, !4230, !4231}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4203, file: !183, line: 297, baseType: !932, size: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4203, file: !183, line: 298, baseType: !118, size: 128, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4203, file: !183, line: 299, baseType: !118, size: 128, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4203, file: !183, line: 300, baseType: !118, size: 128, offset: 384)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4203, file: !183, line: 301, baseType: !882, size: 256, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4203, file: !183, line: 302, baseType: !80, size: 32, offset: 768)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4203, file: !183, line: 303, baseType: !70, size: 32, offset: 800)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4203, file: !183, line: 304, baseType: !473, size: 64, offset: 832)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4203, file: !183, line: 305, baseType: !4214, size: 64, offset: 896)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !183, line: 68, size: 64, elements: !4215)
!4215 = !{!4216, !4228}
!4216 = !DIDerivedType(tag: DW_TAG_member, scope: !4214, file: !183, line: 69, baseType: !4217, size: 32)
!4217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4214, file: !183, line: 69, size: 32, elements: !4218)
!4218 = !{!4219, !4220, !4221}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4217, file: !183, line: 70, baseType: !329, size: 32)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4217, file: !183, line: 71, baseType: !338, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4217, file: !183, line: 72, baseType: !4222, size: 32)
!4222 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4223, line: 24, baseType: !4224)
!4223 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4223, line: 22, size: 32, elements: !4225)
!4225 = !{!4226}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4224, file: !4223, line: 23, baseType: !4227, size: 32)
!4227 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4223, line: 20, baseType: !335)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4214, file: !183, line: 74, baseType: !182, size: 32, offset: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4203, file: !183, line: 306, baseType: !62, size: 64, offset: 960)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4203, file: !183, line: 307, baseType: !60, size: 64, offset: 1024)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4203, file: !183, line: 308, baseType: !4232, size: 576, offset: 1088)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !183, line: 205, size: 576, elements: !4233)
!4233 = !{!4234, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4232, file: !183, line: 206, baseType: !4235, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !183, line: 66, baseType: !64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4232, file: !183, line: 207, baseType: !4235, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4232, file: !183, line: 208, baseType: !4235, size: 64, offset: 128)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4232, file: !183, line: 209, baseType: !4235, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4232, file: !183, line: 210, baseType: !4235, size: 64, offset: 256)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4232, file: !183, line: 211, baseType: !4235, size: 64, offset: 320)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4232, file: !183, line: 212, baseType: !4235, size: 64, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4232, file: !183, line: 213, baseType: !1436, size: 64, offset: 448)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4232, file: !183, line: 214, baseType: !1436, size: 64, offset: 512)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !4132, file: !178, line: 2085, baseType: !4245, size: 64, offset: 1472)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!596, !473, !4248}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4250, line: 15, size: 256, elements: !4251)
!4250 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4251 = !{!4252, !4253, !4254, !4255, !4256}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4249, file: !4250, line: 16, baseType: !286, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4249, file: !4250, line: 19, baseType: !43, size: 32, offset: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4249, file: !4250, line: 26, baseType: !60, size: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4249, file: !4250, line: 33, baseType: !60, size: 64, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4249, file: !4250, line: 36, baseType: !4257, size: 64, offset: 192)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !144, line: 33, flags: DIFlagFwdDecl)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !4132, file: !178, line: 2087, baseType: !4245, size: 64, offset: 1536)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4132, file: !178, line: 2089, baseType: !504, size: 64, offset: 1600)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !474, file: !178, line: 1198, baseType: !4262, size: 64, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4264)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !183, line: 324, size: 704, elements: !4265)
!4265 = !{!4266, !4270, !4274, !4278, !4279, !4280, !4281, !4282, !4287, !4292, !4296}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4264, file: !183, line: 325, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!43, !4202}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4264, file: !183, line: 326, baseType: !4271, size: 64, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!4202, !473, !43}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4264, file: !183, line: 327, baseType: !4275, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{null, !4202}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4264, file: !183, line: 328, baseType: !4267, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4264, file: !183, line: 329, baseType: !4267, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4264, file: !183, line: 330, baseType: !4267, size: 64, offset: 320)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4264, file: !183, line: 331, baseType: !4158, size: 64, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4264, file: !183, line: 334, baseType: !4283, size: 64, offset: 448)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!4286, !323}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4264, file: !183, line: 335, baseType: !4288, size: 64, offset: 512)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!43, !323, !4291}
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4264, file: !183, line: 337, baseType: !4293, size: 64, offset: 576)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!43, !323, !4286}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4264, file: !183, line: 339, baseType: !4297, size: 64, offset: 640)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!43, !473, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !474, file: !178, line: 1199, baseType: !4302, size: 64, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !183, line: 430, size: 704, elements: !4305)
!4305 = !{!4306, !4312, !4313, !4317, !4318, !4319, !4334, !4357, !4361, !4362, !4385}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4304, file: !183, line: 431, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!43, !473, !43, !43, !4310}
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3152)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4304, file: !183, line: 432, baseType: !4158, size: 64, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4304, file: !183, line: 433, baseType: !4314, size: 64, offset: 128)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!43, !473, !7}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4304, file: !183, line: 434, baseType: !4314, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4304, file: !183, line: 435, baseType: !4158, size: 64, offset: 256)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4304, file: !183, line: 436, baseType: !4320, size: 64, offset: 320)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!43, !473, !43, !4323}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !183, line: 417, size: 256, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4324, file: !183, line: 418, baseType: !43, size: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4324, file: !183, line: 419, baseType: !7, size: 32, offset: 32)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4324, file: !183, line: 420, baseType: !7, size: 32, offset: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4324, file: !183, line: 422, baseType: !7, size: 32, offset: 96)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4324, file: !183, line: 423, baseType: !7, size: 32, offset: 128)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4324, file: !183, line: 424, baseType: !7, size: 32, offset: 160)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4324, file: !183, line: 425, baseType: !7, size: 32, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4324, file: !183, line: 426, baseType: !7, size: 32, offset: 224)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4304, file: !183, line: 437, baseType: !4335, size: 64, offset: 384)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!43, !473, !4214, !4338}
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !183, line: 345, size: 960, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4339, file: !183, line: 346, baseType: !43, size: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4339, file: !183, line: 347, baseType: !394, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4339, file: !183, line: 348, baseType: !394, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4339, file: !183, line: 349, baseType: !394, size: 64, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4339, file: !183, line: 350, baseType: !394, size: 64, offset: 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4339, file: !183, line: 351, baseType: !394, size: 64, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4339, file: !183, line: 352, baseType: !394, size: 64, offset: 384)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4339, file: !183, line: 353, baseType: !653, size: 64, offset: 448)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4339, file: !183, line: 355, baseType: !653, size: 64, offset: 512)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4339, file: !183, line: 356, baseType: !43, size: 32, offset: 576)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4339, file: !183, line: 357, baseType: !43, size: 32, offset: 608)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4339, file: !183, line: 358, baseType: !394, size: 64, offset: 640)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4339, file: !183, line: 359, baseType: !394, size: 64, offset: 704)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4339, file: !183, line: 360, baseType: !394, size: 64, offset: 768)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4339, file: !183, line: 361, baseType: !653, size: 64, offset: 832)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4339, file: !183, line: 362, baseType: !43, size: 32, offset: 896)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4304, file: !183, line: 438, baseType: !4358, size: 64, offset: 448)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!43, !473, !4300, !4338}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4304, file: !183, line: 440, baseType: !4335, size: 64, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4304, file: !183, line: 441, baseType: !4363, size: 64, offset: 576)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!43, !473, !4366}
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !183, line: 411, size: 1408, elements: !4368)
!4368 = !{!4369, !4370}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4367, file: !183, line: 412, baseType: !7, size: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4367, file: !183, line: 413, baseType: !4371, size: 1344, offset: 64)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4372, size: 1344, elements: !562)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !183, line: 397, size: 448, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4384}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4372, file: !183, line: 398, baseType: !7, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4372, file: !183, line: 399, baseType: !7, size: 32, offset: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4372, file: !183, line: 401, baseType: !7, size: 32, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4372, file: !183, line: 402, baseType: !7, size: 32, offset: 96)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4372, file: !183, line: 403, baseType: !7, size: 32, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4372, file: !183, line: 404, baseType: !7, size: 32, offset: 160)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4372, file: !183, line: 405, baseType: !7, size: 32, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4372, file: !183, line: 406, baseType: !396, size: 64, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4372, file: !183, line: 407, baseType: !4383, size: 64, offset: 320)
!4383 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !46, line: 132, baseType: !394)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4372, file: !183, line: 408, baseType: !4383, size: 64, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4304, file: !183, line: 442, baseType: !4314, size: 64, offset: 640)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !474, file: !178, line: 1200, baseType: !4387, size: 64, offset: 576)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4389)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !178, line: 54, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !474, file: !178, line: 1201, baseType: !60, size: 64, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !474, file: !178, line: 1202, baseType: !60, size: 64, offset: 704)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !474, file: !178, line: 1203, baseType: !60, size: 64, offset: 768)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !474, file: !178, line: 1204, baseType: !358, size: 64, offset: 832)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !474, file: !178, line: 1205, baseType: !643, size: 320, offset: 896)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !474, file: !178, line: 1206, baseType: !43, size: 32, offset: 1216)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !474, file: !178, line: 1207, baseType: !70, size: 32, offset: 1248)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !474, file: !178, line: 1209, baseType: !41, size: 64, offset: 1280)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !474, file: !178, line: 1211, baseType: !4399, size: 64, offset: 1344)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4402)
!4402 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !178, line: 1211, flags: DIFlagFwdDecl)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !474, file: !178, line: 1223, baseType: !4404, size: 64, offset: 1408)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !375, line: 34, size: 64, elements: !4405)
!4405 = !{!4406}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4404, file: !375, line: 35, baseType: !378, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !474, file: !178, line: 1224, baseType: !118, size: 128, offset: 1472)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !474, file: !178, line: 1225, baseType: !4409, size: 64, offset: 1600)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !4411, line: 40, size: 7424, elements: !4412)
!4411 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!4412 = !{!4413, !4414, !4415, !4416, !4419, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4446, !4447}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !4410, file: !4411, line: 41, baseType: !3671, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !4410, file: !4411, line: 42, baseType: !3671, size: 64, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !4410, file: !4411, line: 43, baseType: !2794, size: 64, offset: 128)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !4410, file: !4411, line: 44, baseType: !4417, size: 64, offset: 192)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2613, line: 74, flags: DIFlagFwdDecl)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !4410, file: !4411, line: 45, baseType: !4420, size: 64, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !4411, line: 45, flags: DIFlagFwdDecl)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !4410, file: !4411, line: 46, baseType: !60, size: 64, offset: 320)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !4410, file: !4411, line: 47, baseType: !773, size: 8, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !4410, file: !4411, line: 48, baseType: !104, size: 8, offset: 392)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !4410, file: !4411, line: 49, baseType: !773, size: 8, offset: 400)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !4410, file: !4411, line: 50, baseType: !773, size: 8, offset: 408)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !4410, file: !4411, line: 51, baseType: !478, size: 32, offset: 416)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !4410, file: !4411, line: 52, baseType: !70, size: 32, offset: 448)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !4410, file: !4411, line: 53, baseType: !80, size: 32, offset: 480)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !4410, file: !4411, line: 54, baseType: !323, size: 64, offset: 512)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !4410, file: !4411, line: 55, baseType: !41, size: 64, offset: 576)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !4410, file: !4411, line: 56, baseType: !41, size: 64, offset: 640)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !4410, file: !4411, line: 57, baseType: !4434, size: 64, offset: 704)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4436)
!4436 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !4411, line: 57, flags: DIFlagFwdDecl)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !4410, file: !4411, line: 58, baseType: !882, size: 256, offset: 768)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !4410, file: !4411, line: 60, baseType: !43, size: 32, offset: 1024)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !4410, file: !4411, line: 61, baseType: !43, size: 32, offset: 1056)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !4410, file: !4411, line: 62, baseType: !527, size: 64, offset: 1088)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !4410, file: !4411, line: 65, baseType: !882, size: 256, offset: 1152)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !4410, file: !4411, line: 66, baseType: !473, size: 64, offset: 1408)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !4410, file: !4411, line: 68, baseType: !4444, size: 64, offset: 1472)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !4411, line: 68, flags: DIFlagFwdDecl)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !4410, file: !4411, line: 72, baseType: !773, size: 8, offset: 1536)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !4410, file: !4411, line: 77, baseType: !4448, size: 5824, offset: 1600)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !195, line: 705, size: 5824, elements: !4449)
!4449 = !{!4450, !4451, !4453, !4456, !4457, !4510, !4580, !4581, !4582, !4583, !4584, !4591, !4683, !4696, !4706, !4710, !4712, !4713, !4714, !4718, !4725, !4726, !4729, !4732, !4736, !4739, !4740, !4741, !4742, !4743, !4744, !4774, !4775, !4776, !4779, !4782, !4791, !4792, !4793, !4794, !4795, !4796}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4448, file: !195, line: 706, baseType: !521, size: 512)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4448, file: !195, line: 707, baseType: !4452, size: 64, offset: 512)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4448, file: !195, line: 709, baseType: !4454, size: 64, offset: 576)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !195, line: 37, flags: DIFlagFwdDecl)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4448, file: !195, line: 711, baseType: !37, size: 64, offset: 640)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4448, file: !195, line: 712, baseType: !4458, size: 64, offset: 704)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4460)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !195, line: 89, size: 384, elements: !4461)
!4461 = !{!4462, !4463, !4464, !4470, !4475, !4479}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4460, file: !195, line: 90, baseType: !37, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4460, file: !195, line: 91, baseType: !607, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4460, file: !195, line: 92, baseType: !4465, size: 64, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!43, !4468, !557}
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4448)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4460, file: !195, line: 93, baseType: !4471, size: 64, offset: 192)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!462, !4468, !4474, !1661, !1662}
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4460, file: !195, line: 95, baseType: !4476, size: 64, offset: 256)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{null, !4452}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4460, file: !195, line: 97, baseType: !4480, size: 64, offset: 320)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4482)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !202, line: 286, size: 1472, elements: !4483)
!4483 = !{!4484, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4482, file: !202, line: 287, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!43, !4452}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4482, file: !202, line: 288, baseType: !4476, size: 64, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4482, file: !202, line: 289, baseType: !4485, size: 64, offset: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4482, file: !202, line: 290, baseType: !4485, size: 64, offset: 192)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4482, file: !202, line: 291, baseType: !4485, size: 64, offset: 256)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4482, file: !202, line: 292, baseType: !4485, size: 64, offset: 320)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4482, file: !202, line: 293, baseType: !4485, size: 64, offset: 384)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4482, file: !202, line: 294, baseType: !4485, size: 64, offset: 448)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4482, file: !202, line: 295, baseType: !4485, size: 64, offset: 512)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4482, file: !202, line: 296, baseType: !4485, size: 64, offset: 576)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4482, file: !202, line: 297, baseType: !4485, size: 64, offset: 640)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4482, file: !202, line: 298, baseType: !4485, size: 64, offset: 704)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4482, file: !202, line: 299, baseType: !4485, size: 64, offset: 768)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4482, file: !202, line: 300, baseType: !4485, size: 64, offset: 832)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4482, file: !202, line: 301, baseType: !4485, size: 64, offset: 896)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4482, file: !202, line: 302, baseType: !4485, size: 64, offset: 960)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4482, file: !202, line: 303, baseType: !4485, size: 64, offset: 1024)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4482, file: !202, line: 304, baseType: !4485, size: 64, offset: 1088)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4482, file: !202, line: 305, baseType: !4485, size: 64, offset: 1152)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4482, file: !202, line: 306, baseType: !4485, size: 64, offset: 1216)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4482, file: !202, line: 307, baseType: !4485, size: 64, offset: 1280)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4482, file: !202, line: 308, baseType: !4485, size: 64, offset: 1344)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4482, file: !202, line: 309, baseType: !4485, size: 64, offset: 1408)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4448, file: !195, line: 714, baseType: !4511, size: 64, offset: 768)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4513)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4514, line: 80, size: 1344, elements: !4515)
!4514 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4515 = !{!4516, !4517, !4518, !4519, !4520, !4521, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4579}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4513, file: !4514, line: 81, baseType: !37, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4513, file: !4514, line: 82, baseType: !37, size: 64, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4513, file: !4514, line: 83, baseType: !607, size: 64, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4513, file: !4514, line: 84, baseType: !607, size: 64, offset: 192)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4513, file: !4514, line: 85, baseType: !607, size: 64, offset: 256)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4513, file: !4514, line: 87, baseType: !4522, size: 64, offset: 320)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!43, !4452, !4525}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !189, line: 96, size: 1152, elements: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4533, !4534, !4538, !4542, !4543, !4544, !4545, !4546, !4554, !4555, !4556, !4557, !4558, !4559}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4526, file: !189, line: 97, baseType: !37, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4526, file: !189, line: 98, baseType: !4511, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4526, file: !189, line: 100, baseType: !508, size: 64, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4526, file: !189, line: 101, baseType: !37, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4526, file: !189, line: 103, baseType: !773, size: 8, offset: 256)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4526, file: !189, line: 104, baseType: !188, size: 32, offset: 288)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4526, file: !189, line: 106, baseType: !4535, size: 64, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4537)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !189, line: 106, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4526, file: !189, line: 107, baseType: !4539, size: 64, offset: 384)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4541)
!4541 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !189, line: 107, flags: DIFlagFwdDecl)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4526, file: !189, line: 109, baseType: !4485, size: 64, offset: 448)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4526, file: !189, line: 110, baseType: !4476, size: 64, offset: 512)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4526, file: !189, line: 111, baseType: !4485, size: 64, offset: 576)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4526, file: !189, line: 112, baseType: !4476, size: 64, offset: 640)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4526, file: !189, line: 113, baseType: !4547, size: 64, offset: 704)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!43, !4452, !4550}
!4550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !202, line: 60, baseType: !4551)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !202, line: 58, size: 32, elements: !4552)
!4552 = !{!4553}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4551, file: !202, line: 59, baseType: !43, size: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4526, file: !189, line: 114, baseType: !4485, size: 64, offset: 768)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4526, file: !189, line: 115, baseType: !607, size: 64, offset: 832)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4526, file: !189, line: 116, baseType: !607, size: 64, offset: 896)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4526, file: !189, line: 118, baseType: !4480, size: 64, offset: 960)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4526, file: !189, line: 119, baseType: !4476, size: 64, offset: 1024)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4526, file: !189, line: 121, baseType: !4560, size: 64, offset: 1088)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !189, line: 121, flags: DIFlagFwdDecl)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4513, file: !4514, line: 88, baseType: !4465, size: 64, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4513, file: !4514, line: 89, baseType: !4485, size: 64, offset: 448)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4513, file: !4514, line: 90, baseType: !4476, size: 64, offset: 512)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4513, file: !4514, line: 91, baseType: !4476, size: 64, offset: 576)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4513, file: !4514, line: 92, baseType: !4476, size: 64, offset: 640)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4513, file: !4514, line: 94, baseType: !4485, size: 64, offset: 704)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4513, file: !4514, line: 95, baseType: !4485, size: 64, offset: 768)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4513, file: !4514, line: 97, baseType: !4547, size: 64, offset: 832)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4513, file: !4514, line: 98, baseType: !4485, size: 64, offset: 896)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4513, file: !4514, line: 100, baseType: !4485, size: 64, offset: 960)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4513, file: !4514, line: 102, baseType: !4485, size: 64, offset: 1024)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4513, file: !4514, line: 103, baseType: !4476, size: 64, offset: 1088)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4513, file: !4514, line: 105, baseType: !4480, size: 64, offset: 1152)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4513, file: !4514, line: 107, baseType: !4576, size: 64, offset: 1216)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4578)
!4578 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4514, line: 107, flags: DIFlagFwdDecl)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4513, file: !4514, line: 109, baseType: !773, size: 8, offset: 1280)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4448, file: !195, line: 715, baseType: !4525, size: 64, offset: 832)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4448, file: !195, line: 717, baseType: !41, size: 64, offset: 896)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4448, file: !195, line: 719, baseType: !41, size: 64, offset: 960)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4448, file: !195, line: 721, baseType: !882, size: 256, offset: 1024)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4448, file: !195, line: 725, baseType: !4585, size: 448, offset: 1280)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !195, line: 517, size: 448, elements: !4586)
!4586 = !{!4587, !4588, !4589, !4590}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4585, file: !195, line: 518, baseType: !118, size: 128)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4585, file: !195, line: 519, baseType: !118, size: 128, offset: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4585, file: !195, line: 520, baseType: !118, size: 128, offset: 256)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4585, file: !195, line: 521, baseType: !194, size: 32, offset: 384)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4448, file: !195, line: 726, baseType: !4592, size: 2496, offset: 1728)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !202, line: 663, size: 2496, elements: !4593)
!4593 = !{!4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4676, !4680}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4592, file: !202, line: 664, baseType: !4550, size: 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4592, file: !202, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4592, file: !202, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4592, file: !202, line: 667, baseType: !773, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4592, file: !202, line: 668, baseType: !773, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4592, file: !202, line: 669, baseType: !773, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4592, file: !202, line: 670, baseType: !773, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4592, file: !202, line: 671, baseType: !773, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4592, file: !202, line: 672, baseType: !773, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4592, file: !202, line: 673, baseType: !773, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4592, file: !202, line: 674, baseType: !773, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4592, file: !202, line: 675, baseType: !319, size: 32, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4592, file: !202, line: 676, baseType: !80, size: 32, offset: 96)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4592, file: !202, line: 678, baseType: !118, size: 128, offset: 128)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4592, file: !202, line: 679, baseType: !787, size: 256, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4592, file: !202, line: 680, baseType: !4610, size: 64, offset: 512)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4612, line: 43, size: 1536, elements: !4613)
!4612 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4611, file: !4612, line: 44, baseType: !37, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4611, file: !4612, line: 45, baseType: !43, size: 32, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4611, file: !4612, line: 46, baseType: !118, size: 128, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4611, file: !4612, line: 47, baseType: !80, size: 32, offset: 256)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4611, file: !4612, line: 48, baseType: !4619, size: 64, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !202, line: 629, flags: DIFlagFwdDecl)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4611, file: !4612, line: 49, baseType: !2093, size: 320, offset: 384)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4611, file: !4612, line: 50, baseType: !60, size: 64, offset: 704)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4611, file: !4612, line: 51, baseType: !1082, size: 64, offset: 768)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4611, file: !4612, line: 52, baseType: !1082, size: 64, offset: 832)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4611, file: !4612, line: 53, baseType: !1082, size: 64, offset: 896)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4611, file: !4612, line: 54, baseType: !1082, size: 64, offset: 960)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4611, file: !4612, line: 55, baseType: !1082, size: 64, offset: 1024)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4611, file: !4612, line: 56, baseType: !60, size: 64, offset: 1088)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4611, file: !4612, line: 57, baseType: !60, size: 64, offset: 1152)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4611, file: !4612, line: 58, baseType: !60, size: 64, offset: 1216)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4611, file: !4612, line: 59, baseType: !60, size: 64, offset: 1280)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4611, file: !4612, line: 60, baseType: !60, size: 64, offset: 1344)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4611, file: !4612, line: 61, baseType: !4452, size: 64, offset: 1408)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4611, file: !4612, line: 62, baseType: !773, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4611, file: !4612, line: 63, baseType: !773, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4592, file: !202, line: 681, baseType: !773, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4592, file: !202, line: 682, baseType: !773, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4592, file: !202, line: 683, baseType: !773, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4592, file: !202, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4592, file: !202, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4592, file: !202, line: 690, baseType: !1074, size: 512, offset: 640)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4592, file: !202, line: 691, baseType: !394, size: 64, offset: 1152)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4592, file: !202, line: 692, baseType: !1608, size: 256, offset: 1216)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4592, file: !202, line: 693, baseType: !75, size: 192, offset: 1472)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4592, file: !202, line: 694, baseType: !4619, size: 64, offset: 1664)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4592, file: !202, line: 695, baseType: !70, size: 32, offset: 1728)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4592, file: !202, line: 696, baseType: !70, size: 32, offset: 1760)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4592, file: !202, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4592, file: !202, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4592, file: !202, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4592, file: !202, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4592, file: !202, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4592, file: !202, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4592, file: !202, line: 703, baseType: !773, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4592, file: !202, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4592, file: !202, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4592, file: !202, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4592, file: !202, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4592, file: !202, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4592, file: !202, line: 709, baseType: !7, size: 32, offset: 1824)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4592, file: !202, line: 710, baseType: !201, size: 32, offset: 1856)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4592, file: !202, line: 711, baseType: !209, size: 32, offset: 1888)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4592, file: !202, line: 712, baseType: !209, size: 32, offset: 1920)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4592, file: !202, line: 713, baseType: !43, size: 32, offset: 1952)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4592, file: !202, line: 714, baseType: !43, size: 32, offset: 1984)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4592, file: !202, line: 715, baseType: !394, size: 64, offset: 2048)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4592, file: !202, line: 716, baseType: !394, size: 64, offset: 2112)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4592, file: !202, line: 717, baseType: !394, size: 64, offset: 2176)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4592, file: !202, line: 718, baseType: !394, size: 64, offset: 2240)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4592, file: !202, line: 720, baseType: !4671, size: 64, offset: 2304)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !202, line: 632, size: 64, elements: !4673)
!4673 = !{!4674, !4675}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4672, file: !202, line: 633, baseType: !80, size: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4672, file: !202, line: 634, baseType: !7, size: 32, offset: 32)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4592, file: !202, line: 721, baseType: !4677, size: 64, offset: 2368)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !4452, !1310}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4592, file: !202, line: 722, baseType: !4681, size: 64, offset: 2432)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !202, line: 722, flags: DIFlagFwdDecl)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4448, file: !195, line: 727, baseType: !4684, size: 64, offset: 4224)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !202, line: 742, size: 1792, elements: !4686)
!4686 = !{!4687, !4688, !4689, !4693, !4694, !4695}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4685, file: !202, line: 743, baseType: !4482, size: 1472)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4685, file: !202, line: 744, baseType: !4485, size: 64, offset: 1472)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4685, file: !202, line: 745, baseType: !4690, size: 64, offset: 1536)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{null, !4452, !773}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4685, file: !202, line: 746, baseType: !4485, size: 64, offset: 1600)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4685, file: !202, line: 747, baseType: !4476, size: 64, offset: 1664)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4685, file: !202, line: 748, baseType: !4476, size: 64, offset: 1728)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4448, file: !195, line: 736, baseType: !4697, size: 128, offset: 4288)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !195, line: 529, size: 128, elements: !4698)
!4698 = !{!4699, !4703}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4697, file: !195, line: 531, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4702, line: 13, flags: DIFlagFwdDecl)
!4702 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4697, file: !195, line: 532, baseType: !4704, size: 64, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !195, line: 49, flags: DIFlagFwdDecl)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4448, file: !195, line: 738, baseType: !4707, size: 64, offset: 4416)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4709)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !195, line: 738, flags: DIFlagFwdDecl)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4448, file: !195, line: 740, baseType: !4711, size: 64, offset: 4480)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4448, file: !195, line: 741, baseType: !394, size: 64, offset: 4544)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4448, file: !195, line: 746, baseType: !394, size: 64, offset: 4608)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4448, file: !195, line: 747, baseType: !4715, size: 64, offset: 4672)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4717)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !195, line: 747, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4448, file: !195, line: 749, baseType: !4719, size: 64, offset: 4736)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !195, line: 428, size: 128, elements: !4721)
!4721 = !{!4722, !4723, !4724}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4720, file: !195, line: 433, baseType: !7, size: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4720, file: !195, line: 434, baseType: !7, size: 32, offset: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4720, file: !195, line: 435, baseType: !60, size: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4448, file: !195, line: 751, baseType: !118, size: 128, offset: 4800)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4448, file: !195, line: 762, baseType: !4727, size: 64, offset: 4928)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !195, line: 762, flags: DIFlagFwdDecl)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4448, file: !195, line: 770, baseType: !4730, offset: 4992)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4731, line: 5, elements: !856)
!4731 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4448, file: !195, line: 772, baseType: !4733, size: 64, offset: 4992)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4735, line: 18, flags: DIFlagFwdDecl)
!4735 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4448, file: !195, line: 773, baseType: !4737, size: 64, offset: 5056)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4514, line: 22, flags: DIFlagFwdDecl)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4448, file: !195, line: 776, baseType: !43, size: 32, offset: 5120)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4448, file: !195, line: 778, baseType: !478, size: 32, offset: 5152)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4448, file: !195, line: 779, baseType: !319, size: 32, offset: 5184)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4448, file: !195, line: 781, baseType: !80, size: 32, offset: 5216)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4448, file: !195, line: 782, baseType: !118, size: 128, offset: 5248)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4448, file: !195, line: 784, baseType: !4745, size: 64, offset: 5376)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4747)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4748, line: 52, size: 768, elements: !4749)
!4748 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4749 = !{!4750, !4751, !4752, !4753, !4754, !4758, !4762, !4763, !4764, !4765, !4769, !4773}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4747, file: !4748, line: 53, baseType: !37, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4747, file: !4748, line: 55, baseType: !607, size: 64, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4747, file: !4748, line: 56, baseType: !607, size: 64, offset: 128)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4747, file: !4748, line: 58, baseType: !4465, size: 64, offset: 192)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4747, file: !4748, line: 59, baseType: !4755, size: 64, offset: 256)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!462, !4468, !4474}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4747, file: !4748, line: 61, baseType: !4759, size: 64, offset: 320)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{null, !4745}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4747, file: !4748, line: 62, baseType: !4476, size: 64, offset: 384)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4747, file: !4748, line: 64, baseType: !4485, size: 64, offset: 448)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4747, file: !4748, line: 66, baseType: !3741, size: 64, offset: 512)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4747, file: !4748, line: 67, baseType: !4766, size: 64, offset: 576)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!321, !4468}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4747, file: !4748, line: 69, baseType: !4770, size: 64, offset: 640)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{null, !4468, !1661, !1662}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4747, file: !4748, line: 71, baseType: !4480, size: 64, offset: 704)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4448, file: !195, line: 785, baseType: !607, size: 64, offset: 5440)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4448, file: !195, line: 787, baseType: !4476, size: 64, offset: 5504)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4448, file: !195, line: 788, baseType: !4777, size: 64, offset: 5568)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !195, line: 46, flags: DIFlagFwdDecl)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4448, file: !195, line: 789, baseType: !4780, size: 64, offset: 5632)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !195, line: 48, flags: DIFlagFwdDecl)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4448, file: !195, line: 791, baseType: !4783, size: 64, offset: 5696)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !195, line: 597, size: 128, elements: !4785)
!4785 = !{!4786, !4787, !4788, !4789, !4790}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4784, file: !195, line: 598, baseType: !216, size: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4784, file: !195, line: 599, baseType: !225, size: 32, offset: 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4784, file: !195, line: 600, baseType: !230, size: 32, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4784, file: !195, line: 601, baseType: !773, size: 8, offset: 96)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4784, file: !195, line: 602, baseType: !773, size: 8, offset: 104)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4448, file: !195, line: 793, baseType: !235, size: 32, offset: 5760)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4448, file: !195, line: 795, baseType: !773, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4448, file: !195, line: 796, baseType: !773, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4448, file: !195, line: 797, baseType: !773, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4448, file: !195, line: 798, baseType: !773, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4448, file: !195, line: 799, baseType: !773, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !474, file: !178, line: 1226, baseType: !4798, size: 64, offset: 1664)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !178, line: 1226, flags: DIFlagFwdDecl)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !474, file: !178, line: 1227, baseType: !4801, size: 64, offset: 1728)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !242, line: 163, size: 6848, elements: !4803)
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4850, !4851, !4852, !4853, !4854, !4855, !4856}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4802, file: !242, line: 164, baseType: !394, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4802, file: !242, line: 165, baseType: !675, size: 192, align: 64, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4802, file: !242, line: 166, baseType: !118, size: 128, offset: 256)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4802, file: !242, line: 167, baseType: !60, size: 64, offset: 384)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4802, file: !242, line: 168, baseType: !60, size: 64, offset: 448)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4802, file: !242, line: 170, baseType: !3778, size: 32, offset: 512)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4802, file: !242, line: 171, baseType: !7, size: 32, offset: 544)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4802, file: !242, line: 172, baseType: !7, size: 32, offset: 576)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4802, file: !242, line: 173, baseType: !7, size: 32, offset: 608)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4802, file: !242, line: 173, baseType: !7, size: 32, offset: 640)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4802, file: !242, line: 179, baseType: !647, size: 64, offset: 704)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4802, file: !242, line: 184, baseType: !60, size: 64, offset: 768)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4802, file: !242, line: 186, baseType: !4817, size: 4672, offset: 832)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !242, line: 105, size: 4672, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4843, !4844, !4845, !4846, !4847, !4848, !4849}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4817, file: !242, line: 106, baseType: !4801, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4817, file: !242, line: 108, baseType: !60, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4817, file: !242, line: 109, baseType: !60, size: 64, offset: 128)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4817, file: !242, line: 111, baseType: !118, size: 128, offset: 192)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4817, file: !242, line: 112, baseType: !118, size: 128, offset: 320)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4817, file: !242, line: 113, baseType: !118, size: 128, offset: 448)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4817, file: !242, line: 114, baseType: !118, size: 128, offset: 576)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4817, file: !242, line: 115, baseType: !80, size: 32, offset: 704)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4817, file: !242, line: 117, baseType: !70, size: 32, offset: 736)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4817, file: !242, line: 118, baseType: !3379, size: 1280, offset: 768)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4817, file: !242, line: 120, baseType: !60, size: 64, offset: 2048)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4817, file: !242, line: 121, baseType: !60, size: 64, offset: 2112)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4817, file: !242, line: 122, baseType: !60, size: 64, offset: 2176)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4817, file: !242, line: 123, baseType: !60, size: 64, offset: 2240)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4817, file: !242, line: 124, baseType: !60, size: 64, offset: 2304)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4817, file: !242, line: 132, baseType: !60, size: 64, offset: 2368)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4817, file: !242, line: 133, baseType: !60, size: 64, offset: 2432)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4817, file: !242, line: 135, baseType: !4837, size: 384, offset: 2496)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4838, line: 76, size: 384, elements: !4839)
!4838 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4839 = !{!4840, !4841, !4842}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4837, file: !4838, line: 78, baseType: !1534, size: 320)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4837, file: !4838, line: 80, baseType: !7, size: 32, offset: 320)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4837, file: !4838, line: 81, baseType: !662, size: 32, offset: 352)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4817, file: !242, line: 136, baseType: !43, size: 32, offset: 2880)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4817, file: !242, line: 137, baseType: !241, size: 32, offset: 2912)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4817, file: !242, line: 139, baseType: !80, size: 32, offset: 2944)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4817, file: !242, line: 140, baseType: !118, size: 128, offset: 3008)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4817, file: !242, line: 141, baseType: !4071, size: 704, offset: 3136)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4817, file: !242, line: 142, baseType: !4071, size: 704, offset: 3840)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4817, file: !242, line: 144, baseType: !118, size: 128, offset: 4544)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4802, file: !242, line: 187, baseType: !118, size: 128, offset: 5504)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4802, file: !242, line: 193, baseType: !75, size: 192, offset: 5632)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4802, file: !242, line: 195, baseType: !4452, size: 64, offset: 5824)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4802, file: !242, line: 196, baseType: !2132, size: 512, offset: 5888)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4802, file: !242, line: 197, baseType: !4452, size: 64, offset: 6400)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4802, file: !242, line: 199, baseType: !2093, size: 320, offset: 6464)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4802, file: !242, line: 202, baseType: !358, size: 64, offset: 6784)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !474, file: !178, line: 1228, baseType: !4858, size: 64, offset: 1792)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !178, line: 1228, flags: DIFlagFwdDecl)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !474, file: !178, line: 1229, baseType: !932, size: 128, offset: 1856)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !474, file: !178, line: 1230, baseType: !7, size: 32, offset: 1984)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !474, file: !178, line: 1231, baseType: !4863, size: 2496, offset: 2048)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !183, line: 521, size: 2496, elements: !4864)
!4864 = !{!4865, !4866, !4867, !4869, !4901}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4863, file: !183, line: 522, baseType: !7, size: 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4863, file: !183, line: 523, baseType: !643, size: 320, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4863, file: !183, line: 524, baseType: !4868, size: 192, offset: 384)
!4868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 192, elements: !562)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4863, file: !183, line: 525, baseType: !4870, size: 1728, offset: 576)
!4870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4871, size: 1728, elements: !562)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !183, line: 222, size: 576, elements: !4872)
!4872 = !{!4873, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4871, file: !183, line: 223, baseType: !4874, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !183, line: 445, size: 256, elements: !4876)
!4876 = !{!4877, !4878, !4891, !4892}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4875, file: !183, line: 446, baseType: !43, size: 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4875, file: !183, line: 447, baseType: !4879, size: 64, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4881)
!4881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !183, line: 312, size: 512, elements: !4882)
!4882 = !{!4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4881, file: !183, line: 313, baseType: !4158, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4881, file: !183, line: 314, baseType: !4158, size: 64, offset: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4881, file: !183, line: 315, baseType: !4158, size: 64, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4881, file: !183, line: 316, baseType: !4158, size: 64, offset: 192)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4881, file: !183, line: 317, baseType: !4267, size: 64, offset: 256)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4881, file: !183, line: 318, baseType: !4267, size: 64, offset: 320)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4881, file: !183, line: 319, baseType: !4267, size: 64, offset: 384)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4881, file: !183, line: 320, baseType: !4297, size: 64, offset: 448)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4875, file: !183, line: 448, baseType: !508, size: 64, offset: 128)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4875, file: !183, line: 449, baseType: !4874, size: 64, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4871, file: !183, line: 224, baseType: !43, size: 32, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4871, file: !183, line: 226, baseType: !118, size: 128, offset: 128)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4871, file: !183, line: 227, baseType: !60, size: 64, offset: 256)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4871, file: !183, line: 228, baseType: !7, size: 32, offset: 320)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4871, file: !183, line: 229, baseType: !7, size: 32, offset: 352)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4871, file: !183, line: 230, baseType: !4235, size: 64, offset: 384)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4871, file: !183, line: 231, baseType: !4235, size: 64, offset: 448)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4871, file: !183, line: 232, baseType: !41, size: 64, offset: 512)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4863, file: !183, line: 526, baseType: !4902, size: 192, offset: 2304)
!4902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4879, size: 192, elements: !562)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !474, file: !178, line: 1233, baseType: !4904, size: 2368, offset: 4544)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !178, line: 1184, size: 2368, elements: !4905)
!4905 = !{!4906, !4907, !4908}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4904, file: !178, line: 1185, baseType: !47, size: 16)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4904, file: !178, line: 1186, baseType: !47, size: 16, offset: 16)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4904, file: !178, line: 1187, baseType: !4909, size: 2304, offset: 64)
!4909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4910, size: 2304, elements: !562)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4911, line: 12, size: 768, elements: !4912)
!4911 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4912 = !{!4913, !4921, !4922, !4927, !4928}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4910, file: !4911, line: 13, baseType: !4914, size: 384)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4915, line: 17, size: 384, elements: !4916)
!4915 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4916 = !{!4917, !4918, !4919, !4920}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4914, file: !4915, line: 18, baseType: !43, size: 32)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4914, file: !4915, line: 19, baseType: !43, size: 32, offset: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4914, file: !4915, line: 20, baseType: !75, size: 192, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4914, file: !4915, line: 22, baseType: !777, size: 128, align: 64, offset: 256)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4910, file: !4911, line: 14, baseType: !3881, size: 64, offset: 384)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4910, file: !4911, line: 15, baseType: !4923, size: 64, offset: 448)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4924, line: 16, size: 64, elements: !4925)
!4924 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4925 = !{!4926}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4923, file: !4924, line: 17, baseType: !962, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4910, file: !4911, line: 16, baseType: !75, size: 192, offset: 512)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4910, file: !4911, line: 17, baseType: !70, size: 32, offset: 704)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !474, file: !178, line: 1240, baseType: !41, size: 64, offset: 6912)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !474, file: !178, line: 1243, baseType: !319, size: 32, offset: 6976)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !474, file: !178, line: 1245, baseType: !1436, size: 64, offset: 7040)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !474, file: !178, line: 1246, baseType: !1436, size: 64, offset: 7104)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !474, file: !178, line: 1248, baseType: !320, size: 32, offset: 7168)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !474, file: !178, line: 1249, baseType: !1807, size: 64, offset: 7232)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !474, file: !178, line: 1252, baseType: !2474, size: 256, offset: 7296)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !474, file: !178, line: 1253, baseType: !4937, size: 128, offset: 7552)
!4937 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4938, line: 21, baseType: !4939)
!4938 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4938, line: 19, size: 128, elements: !4940)
!4940 = !{!4941}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4939, file: !4938, line: 20, baseType: !4942, size: 128)
!4942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !1718)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !474, file: !178, line: 1255, baseType: !7, size: 32, offset: 7680)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !474, file: !178, line: 1261, baseType: !882, size: 256, offset: 7744)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !474, file: !178, line: 1267, baseType: !37, size: 64, offset: 8000)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !474, file: !178, line: 1269, baseType: !419, size: 64, offset: 8064)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !474, file: !178, line: 1271, baseType: !4948, size: 448, offset: 8128)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4250, line: 63, size: 448, elements: !4949)
!4949 = !{!4950, !4955, !4956, !4957, !4958, !4959, !4960}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4948, file: !4250, line: 64, baseType: !4951, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!60, !4954, !4248}
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4948, file: !4250, line: 66, baseType: !4951, size: 64, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4948, file: !4250, line: 69, baseType: !596, size: 64, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4948, file: !4250, line: 70, baseType: !43, size: 32, offset: 192)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4948, file: !4250, line: 71, baseType: !7, size: 32, offset: 224)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4948, file: !4250, line: 74, baseType: !118, size: 128, offset: 256)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4948, file: !4250, line: 85, baseType: !4961, size: 64, offset: 384)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !474, file: !178, line: 1274, baseType: !647, size: 64, offset: 8576)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !474, file: !178, line: 1280, baseType: !647, size: 64, offset: 8640)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !474, file: !178, line: 1283, baseType: !43, size: 32, offset: 8704)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !474, file: !178, line: 1286, baseType: !3320, size: 32, offset: 8736)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !474, file: !178, line: 1289, baseType: !2306, size: 64, offset: 8768)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !474, file: !178, line: 1290, baseType: !928, size: 64, offset: 8832)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !474, file: !178, line: 1297, baseType: !1559, size: 64, offset: 8896)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !474, file: !178, line: 1304, baseType: !4970, size: 64, offset: 8960)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4971, line: 49, size: 64, elements: !4972)
!4971 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4972 = !{!4973}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4970, file: !4971, line: 50, baseType: !4974, size: 64)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4971, line: 41, size: 512, align: 512, elements: !4976)
!4976 = !{!4977, !4978, !4983}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4975, file: !4971, line: 43, baseType: !80, size: 32)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4975, file: !4971, line: 45, baseType: !4979, size: 192, offset: 64)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4971, line: 29, size: 192, elements: !4980)
!4980 = !{!4981, !4982}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4979, file: !4971, line: 30, baseType: !118, size: 128)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4979, file: !4971, line: 32, baseType: !596, size: 64, offset: 128)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4975, file: !4971, line: 46, baseType: !596, size: 64, offset: 256)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !474, file: !178, line: 1305, baseType: !4970, size: 64, offset: 9024)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !474, file: !178, line: 1306, baseType: !777, size: 128, align: 64, offset: 9088)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !474, file: !178, line: 1307, baseType: !1608, size: 256, offset: 9216)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !474, file: !178, line: 1309, baseType: !882, size: 256, offset: 9472)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !474, file: !178, line: 1314, baseType: !43, size: 32, offset: 9728)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !474, file: !178, line: 1317, baseType: !80, size: 32, align: 512, offset: 10240)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !474, file: !178, line: 1318, baseType: !118, size: 128, offset: 10304)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !474, file: !178, line: 1320, baseType: !80, size: 32, offset: 10432)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !474, file: !178, line: 1321, baseType: !118, size: 128, offset: 10496)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !468, file: !469, line: 73, baseType: !43, size: 32, offset: 128)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !468, file: !469, line: 74, baseType: !4995, size: 64, offset: 192)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1404, line: 42, flags: DIFlagFwdDecl)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !421, file: !360, line: 141, baseType: !4999, size: 64, offset: 704)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!43, !4310, !773}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !421, file: !360, line: 142, baseType: !5003, size: 64, offset: 768)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!358, !358, !5006}
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !359, file: !360, line: 96, baseType: !473, size: 64, offset: 832)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !359, file: !360, line: 97, baseType: !60, size: 64, offset: 896)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !359, file: !360, line: 98, baseType: !41, size: 64, offset: 960)
!5011 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !360, line: 100, baseType: !5012, size: 128, offset: 1024)
!5012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !360, line: 100, size: 128, elements: !5013)
!5013 = !{!5014, !5015}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5012, file: !360, line: 101, baseType: !118, size: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5012, file: !360, line: 102, baseType: !2068, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !359, file: !360, line: 104, baseType: !118, size: 128, offset: 1152)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !359, file: !360, line: 105, baseType: !118, size: 128, offset: 1280)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !359, file: !360, line: 113, baseType: !5019, size: 128, offset: 1408)
!5019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !360, line: 109, size: 128, elements: !5020)
!5020 = !{!5021, !5022, !5023}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5019, file: !360, line: 110, baseType: !932, size: 128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5019, file: !360, line: 111, baseType: !374, size: 128)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5019, file: !360, line: 112, baseType: !777, size: 128, align: 64)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !352, file: !178, line: 1968, baseType: !5025, size: 64, offset: 64)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!37, !358, !323, !5028}
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5030, line: 10, size: 128, elements: !5031)
!5030 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5031 = !{!5032, !5033}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5029, file: !5030, line: 11, baseType: !3765, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5029, file: !5030, line: 12, baseType: !41, size: 64, offset: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !352, file: !178, line: 1969, baseType: !5035, size: 64, offset: 128)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!43, !4995, !323, !43}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !352, file: !178, line: 1970, baseType: !5039, size: 64, offset: 192)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!346, !323, !43, !773}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !352, file: !178, line: 1972, baseType: !5043, size: 64, offset: 256)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!43, !358, !462, !43}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !352, file: !178, line: 1974, baseType: !5047, size: 64, offset: 320)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!43, !4995, !323, !358, !45, !773}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !352, file: !178, line: 1976, baseType: !5051, size: 64, offset: 384)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!43, !358, !323, !358}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !352, file: !178, line: 1977, baseType: !5055, size: 64, offset: 448)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!43, !323, !358}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !352, file: !178, line: 1978, baseType: !5059, size: 64, offset: 512)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!43, !4995, !323, !358, !37}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !352, file: !178, line: 1980, baseType: !5063, size: 64, offset: 576)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!43, !4995, !323, !358, !45}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !352, file: !178, line: 1982, baseType: !5055, size: 64, offset: 640)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !352, file: !178, line: 1983, baseType: !5068, size: 64, offset: 704)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!43, !4995, !323, !358, !45, !478}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !352, file: !178, line: 1985, baseType: !5072, size: 64, offset: 768)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!43, !4995, !323, !358, !323, !358, !7}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !352, file: !178, line: 1987, baseType: !5076, size: 64, offset: 832)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!43, !4995, !358, !5079}
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !178, line: 226, size: 640, elements: !5081)
!5081 = !{!5082, !5083, !5084, !5094, !5103, !5104, !5109, !5110, !5111}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5080, file: !178, line: 227, baseType: !7, size: 32)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5080, file: !178, line: 228, baseType: !45, size: 16, offset: 32)
!5084 = !DIDerivedType(tag: DW_TAG_member, scope: !5080, file: !178, line: 241, baseType: !5085, size: 32, offset: 64)
!5085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5080, file: !178, line: 241, size: 32, elements: !5086)
!5086 = !{!5087, !5088}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5085, file: !178, line: 242, baseType: !329, size: 32)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5085, file: !178, line: 243, baseType: !5089, size: 32)
!5089 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5090, line: 16, baseType: !5091)
!5090 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5090, line: 14, size: 32, elements: !5092)
!5092 = !{!5093}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5091, file: !5090, line: 15, baseType: !334, size: 32)
!5094 = !DIDerivedType(tag: DW_TAG_member, scope: !5080, file: !178, line: 245, baseType: !5095, size: 32, offset: 96)
!5095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5080, file: !178, line: 245, size: 32, elements: !5096)
!5096 = !{!5097, !5098}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5095, file: !178, line: 246, baseType: !338, size: 32)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5095, file: !178, line: 247, baseType: !5099, size: 32)
!5099 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5090, line: 20, baseType: !5100)
!5100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5090, line: 18, size: 32, elements: !5101)
!5101 = !{!5102}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5100, file: !5090, line: 19, baseType: !342, size: 32)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5080, file: !178, line: 249, baseType: !62, size: 64, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5080, file: !178, line: 250, baseType: !5105, size: 128, offset: 192)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1437, line: 13, size: 128, elements: !5106)
!5106 = !{!5107, !5108}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5105, file: !1437, line: 14, baseType: !1436, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5105, file: !1437, line: 15, baseType: !596, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5080, file: !178, line: 251, baseType: !5105, size: 128, offset: 320)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5080, file: !178, line: 252, baseType: !5105, size: 128, offset: 448)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5080, file: !178, line: 259, baseType: !863, size: 64, offset: 576)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !352, file: !178, line: 1988, baseType: !5113, size: 64, offset: 896)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!43, !4995, !4310, !5116, !319, !7}
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5118, line: 22, size: 1280, elements: !5119)
!5118 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5119 = !{!5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5117, file: !5118, line: 23, baseType: !319, size: 32)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5117, file: !5118, line: 24, baseType: !45, size: 16, offset: 32)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5117, file: !5118, line: 25, baseType: !7, size: 32, offset: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5117, file: !5118, line: 26, baseType: !1444, size: 32, offset: 96)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5117, file: !5118, line: 27, baseType: !394, size: 64, offset: 128)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5117, file: !5118, line: 28, baseType: !394, size: 64, offset: 192)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5117, file: !5118, line: 41, baseType: !394, size: 64, offset: 256)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5117, file: !5118, line: 42, baseType: !478, size: 32, offset: 320)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5117, file: !5118, line: 43, baseType: !478, size: 32, offset: 352)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5117, file: !5118, line: 44, baseType: !329, size: 32, offset: 384)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5117, file: !5118, line: 45, baseType: !338, size: 32, offset: 416)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5117, file: !5118, line: 46, baseType: !62, size: 64, offset: 448)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5117, file: !5118, line: 47, baseType: !5105, size: 128, offset: 512)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5117, file: !5118, line: 48, baseType: !5105, size: 128, offset: 640)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5117, file: !5118, line: 49, baseType: !5105, size: 128, offset: 768)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5117, file: !5118, line: 50, baseType: !5105, size: 128, offset: 896)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5117, file: !5118, line: 51, baseType: !394, size: 64, offset: 1024)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5117, file: !5118, line: 52, baseType: !394, size: 64, offset: 1088)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5117, file: !5118, line: 53, baseType: !319, size: 32, offset: 1152)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5117, file: !5118, line: 54, baseType: !319, size: 32, offset: 1184)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5117, file: !5118, line: 55, baseType: !394, size: 64, offset: 1216)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !352, file: !178, line: 1990, baseType: !5142, size: 64, offset: 960)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!593, !358, !462, !56}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !352, file: !178, line: 1991, baseType: !5146, size: 64, offset: 1024)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!43, !323, !5149, !394, !394}
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !178, line: 55, flags: DIFlagFwdDecl)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !352, file: !178, line: 1993, baseType: !5152, size: 64, offset: 1088)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!43, !323, !43}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !352, file: !178, line: 1994, baseType: !5156, size: 64, offset: 1152)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!43, !323, !358, !863, !7, !45}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !352, file: !178, line: 1997, baseType: !5160, size: 64, offset: 1216)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!43, !4995, !323, !863, !45}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !352, file: !178, line: 1999, baseType: !5164, size: 64, offset: 1280)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!346, !4995, !358, !43}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !352, file: !178, line: 2001, baseType: !5168, size: 64, offset: 1344)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!43, !4995, !358, !346, !43}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !352, file: !178, line: 2003, baseType: !5172, size: 64, offset: 1408)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{!43, !4995, !358, !5175}
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !178, line: 76, flags: DIFlagFwdDecl)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !352, file: !178, line: 2005, baseType: !5178, size: 64, offset: 1472)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!43, !358, !5175}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !352, file: !178, line: 2006, baseType: !5182, size: 64, offset: 1536)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!5185, !323}
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !178, line: 3192, size: 192, elements: !5187)
!5187 = !{!5188, !5189}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5186, file: !178, line: 3193, baseType: !636, size: 128)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5186, file: !178, line: 3194, baseType: !319, size: 32, offset: 128)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !324, file: !178, line: 655, baseType: !473, size: 64, offset: 448)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !324, file: !178, line: 656, baseType: !631, size: 64, offset: 512)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !324, file: !178, line: 659, baseType: !41, size: 64, offset: 576)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !324, file: !178, line: 663, baseType: !60, size: 64, offset: 640)
!5194 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !178, line: 671, baseType: !5195, size: 32, offset: 704)
!5195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !178, line: 671, size: 32, elements: !5196)
!5196 = !{!5197, !5199}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5195, file: !178, line: 672, baseType: !5198, size: 32)
!5198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5195, file: !178, line: 673, baseType: !7, size: 32)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !324, file: !178, line: 675, baseType: !478, size: 32, offset: 736)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !324, file: !178, line: 676, baseType: !62, size: 64, offset: 768)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !324, file: !178, line: 677, baseType: !5105, size: 128, offset: 832)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !324, file: !178, line: 678, baseType: !5105, size: 128, offset: 960)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !324, file: !178, line: 679, baseType: !5105, size: 128, offset: 1088)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !324, file: !178, line: 680, baseType: !80, size: 32, offset: 1216)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !324, file: !178, line: 681, baseType: !47, size: 16, offset: 1248)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !324, file: !178, line: 682, baseType: !104, size: 8, offset: 1264)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !324, file: !178, line: 683, baseType: !104, size: 8, offset: 1272)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !324, file: !178, line: 684, baseType: !4383, size: 64, offset: 1280)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !324, file: !178, line: 691, baseType: !60, size: 64, offset: 1344)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !324, file: !178, line: 692, baseType: !643, size: 320, offset: 1408)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !324, file: !178, line: 694, baseType: !60, size: 64, offset: 1728)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !324, file: !178, line: 695, baseType: !60, size: 64, offset: 1792)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !324, file: !178, line: 697, baseType: !932, size: 128, offset: 1856)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !324, file: !178, line: 698, baseType: !118, size: 128, offset: 1984)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !324, file: !178, line: 707, baseType: !118, size: 128, offset: 2112)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !324, file: !178, line: 708, baseType: !118, size: 128, offset: 2240)
!5218 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !178, line: 709, baseType: !5219, size: 128, offset: 2368)
!5219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !178, line: 709, size: 128, elements: !5220)
!5220 = !{!5221, !5222}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5219, file: !178, line: 710, baseType: !928, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5219, file: !178, line: 711, baseType: !777, size: 128, align: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !324, file: !178, line: 713, baseType: !649, size: 64, offset: 2496)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !324, file: !178, line: 714, baseType: !649, size: 64, offset: 2560)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !324, file: !178, line: 715, baseType: !70, size: 32, offset: 2624)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !324, file: !178, line: 716, baseType: !70, size: 32, offset: 2656)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !324, file: !178, line: 717, baseType: !70, size: 32, offset: 2688)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !324, file: !178, line: 719, baseType: !70, size: 32, offset: 2720)
!5229 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !178, line: 721, baseType: !5230, size: 64, offset: 2752)
!5230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !178, line: 721, size: 64, elements: !5231)
!5231 = !{!5232, !5233}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5230, file: !178, line: 722, baseType: !3159, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5230, file: !178, line: 723, baseType: !4139, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !324, file: !178, line: 725, baseType: !5235, size: 64, offset: 2816)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !178, line: 725, flags: DIFlagFwdDecl)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !324, file: !178, line: 726, baseType: !632, size: 1536, align: 64, offset: 2880)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !324, file: !178, line: 727, baseType: !118, size: 128, offset: 4416)
!5239 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !178, line: 728, baseType: !5240, size: 64, offset: 4544)
!5240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !178, line: 728, size: 64, elements: !5241)
!5241 = !{!5242, !5243, !5246, !5247}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5240, file: !178, line: 729, baseType: !2776, size: 64)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5240, file: !178, line: 730, baseType: !5244, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !178, line: 730, flags: DIFlagFwdDecl)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5240, file: !178, line: 731, baseType: !462, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5240, file: !178, line: 732, baseType: !7, size: 32)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !324, file: !178, line: 735, baseType: !320, size: 32, offset: 4608)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !324, file: !178, line: 738, baseType: !320, size: 32, offset: 4640)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !324, file: !178, line: 739, baseType: !1807, size: 64, offset: 4672)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !324, file: !178, line: 750, baseType: !41, size: 64, offset: 4736)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_iter_info", file: !259, line: 400, size: 448, elements: !5254)
!5254 = !{!5255, !5269, !5270, !5271}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "marks", scope: !5253, file: !259, line: 401, baseType: !5256, size: 320)
!5256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5257, size: 320, elements: !1577)
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark", file: !259, line: 502, size: 576, elements: !5259)
!5259 = !{!5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5258, file: !259, line: 504, baseType: !320, size: 32)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5258, file: !259, line: 507, baseType: !920, size: 32, offset: 32)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !5258, file: !259, line: 510, baseType: !307, size: 64, offset: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "g_list", scope: !5258, file: !259, line: 514, baseType: !118, size: 128, offset: 128)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5258, file: !259, line: 516, baseType: !80, size: 32, offset: 256)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "obj_list", scope: !5258, file: !259, line: 518, baseType: !932, size: 128, offset: 320)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5258, file: !259, line: 520, baseType: !1807, size: 64, offset: 448)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_mask", scope: !5258, file: !259, line: 522, baseType: !320, size: 32, offset: 512)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5258, file: !259, line: 533, baseType: !7, size: 32, offset: 544)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "current_group", scope: !5253, file: !259, line: 402, baseType: !307, size: 64, offset: 320)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "report_mask", scope: !5253, file: !259, line: 403, baseType: !7, size: 32, offset: 384)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5253, file: !259, line: 404, baseType: !43, size: 32, offset: 416)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "handle_inode_event", scope: !313, file: !259, line: 160, baseType: !5273, size: 64, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!43, !5257, !319, !323, !323, !439, !319}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "free_group_priv", scope: !313, file: !259, line: 163, baseType: !5277, size: 64, offset: 128)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{null, !307}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "freeing_mark", scope: !313, file: !259, line: 164, baseType: !5281, size: 64, offset: 192)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{null, !5257, !307}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "free_event", scope: !313, file: !259, line: 165, baseType: !5285, size: 64, offset: 256)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{null, !307, !5288}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_event", file: !259, line: 175, size: 128, elements: !5290)
!5290 = !{!5291}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5289, file: !259, line: 176, baseType: !118, size: 128)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "free_mark", scope: !313, file: !259, line: 167, baseType: !5293, size: 64, offset: 320)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5294, size: 64)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{null, !5257}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !308, file: !259, line: 196, baseType: !920, size: 32, offset: 64)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "notification_lock", scope: !308, file: !259, line: 199, baseType: !80, size: 32, offset: 96)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "notification_list", scope: !308, file: !259, line: 200, baseType: !118, size: 128, offset: 128)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "notification_waitq", scope: !308, file: !259, line: 201, baseType: !75, size: 192, offset: 256)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "q_len", scope: !308, file: !259, line: 202, baseType: !7, size: 32, offset: 448)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "max_events", scope: !308, file: !259, line: 203, baseType: !7, size: 32, offset: 480)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !308, file: !259, line: 211, baseType: !7, size: 32, offset: 512)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !308, file: !259, line: 212, baseType: !773, size: 8, offset: 544)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !259, line: 217, baseType: !43, size: 32, offset: 576)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "owner_flags", scope: !308, file: !259, line: 218, baseType: !7, size: 32, offset: 608)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "mark_mutex", scope: !308, file: !259, line: 221, baseType: !882, size: 256, offset: 640)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "user_waits", scope: !308, file: !259, line: 222, baseType: !70, size: 32, offset: 896)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "marks_list", scope: !308, file: !259, line: 224, baseType: !118, size: 128, offset: 960)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "fsn_fa", scope: !308, file: !259, line: 226, baseType: !5310, size: 64, offset: 1088)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !178, line: 1083, size: 384, elements: !5312)
!5312 = !{!5313, !5314, !5315, !5316, !5317, !5318}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !5311, file: !178, line: 1084, baseType: !895, size: 64)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5311, file: !178, line: 1085, baseType: !43, size: 32, offset: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !5311, file: !178, line: 1086, baseType: !43, size: 32, offset: 96)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !5311, file: !178, line: 1087, baseType: !5310, size: 64, offset: 128)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !5311, file: !178, line: 1088, baseType: !863, size: 64, offset: 192)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !5311, file: !178, line: 1089, baseType: !777, size: 128, align: 64, offset: 256)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_event", scope: !308, file: !259, line: 228, baseType: !5288, size: 64, offset: 1152)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !308, file: !259, line: 232, baseType: !4257, size: 64, offset: 1216)
!5321 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !259, line: 235, baseType: !5322, size: 320, offset: 1280)
!5322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !259, line: 235, size: 320, elements: !5323)
!5323 = !{!5324, !5325}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5322, file: !259, line: 236, baseType: !41, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_data", scope: !5322, file: !259, line: 242, baseType: !5326, size: 320)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inotify_group_private_data", file: !259, line: 238, size: 320, elements: !5327)
!5327 = !{!5328, !5329, !5330}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "idr_lock", scope: !5326, file: !259, line: 239, baseType: !80, size: 32)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !5326, file: !259, line: 240, baseType: !953, size: 192, offset: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !5326, file: !259, line: 241, baseType: !1680, size: 64, offset: 256)
!5331 = !{!5332, !5333, !5334, !5335}
!5332 = !DILocalVariable(name: "ops", arg: 1, scope: !304, file: !3, line: 115, type: !311)
!5333 = !DILocalVariable(name: "flags", arg: 2, scope: !304, file: !3, line: 116, type: !43)
!5334 = !DILocalVariable(name: "gfp", arg: 3, scope: !304, file: !3, line: 116, type: !286)
!5335 = !DILocalVariable(name: "group", scope: !304, file: !3, line: 119, type: !307)
!5336 = !DIGlobalVariableExpression(var: !5337, expr: !DIExpression())
!5337 = distinct !DIGlobalVariable(name: "__key", scope: !304, file: !3, line: 131, type: !4120, isLocal: true, isDefinition: true)
!5338 = !DIGlobalVariableExpression(var: !5339, expr: !DIExpression())
!5339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !5340, isLocal: true, isDefinition: true)
!5340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 216, elements: !5341)
!5341 = !{!5342}
!5342 = !DISubrange(count: 27)
!5343 = !DIGlobalVariableExpression(var: !5344, expr: !DIExpression())
!5344 = distinct !DIGlobalVariable(name: "__key", scope: !304, file: !3, line: 134, type: !4120, isLocal: true, isDefinition: true)
!5345 = !DIGlobalVariableExpression(var: !5346, expr: !DIExpression())
!5346 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !5347, isLocal: true, isDefinition: true)
!5347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 152, elements: !5348)
!5348 = !{!5349}
!5349 = !DISubrange(count: 19)
!5350 = !DIGlobalVariableExpression(var: !5351, expr: !DIExpression())
!5351 = distinct !DIGlobalVariable(scope: null, file: !276, line: 480, type: !5352, isLocal: true, isDefinition: true)
!5352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 168, elements: !5353)
!5353 = !{!5354}
!5354 = !DISubrange(count: 21)
!5355 = !{i32 7, !"Dwarf Version", i32 5}
!5356 = !{i32 2, !"Debug Info Version", i32 3}
!5357 = !{i32 1, !"wchar_size", i32 2}
!5358 = !{i32 8, !"cf-protection-branch", i32 1}
!5359 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5360 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5361 = !{i32 1, !"Code Model", i32 2}
!5362 = !{i32 1, !"override-stack-alignment", i32 8}
!5363 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5364 = distinct !DISubprogram(name: "fsnotify_group_stop_queueing", scope: !3, file: !3, line: 37, type: !5278, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5365)
!5365 = !{!5366}
!5366 = !DILocalVariable(name: "group", arg: 1, scope: !5364, file: !3, line: 37, type: !307)
!5367 = !DILocation(line: 37, column: 58, scope: !5364)
!5368 = !DILocation(line: 39, column: 13, scope: !5364)
!5369 = !DILocation(line: 39, column: 20, scope: !5364)
!5370 = !DILocation(line: 39, column: 2, scope: !5364)
!5371 = !DILocation(line: 40, column: 2, scope: !5364)
!5372 = !DILocation(line: 40, column: 9, scope: !5364)
!5373 = !DILocation(line: 40, column: 18, scope: !5364)
!5374 = !DILocation(line: 41, column: 15, scope: !5364)
!5375 = !DILocation(line: 41, column: 22, scope: !5364)
!5376 = !DILocation(line: 41, column: 2, scope: !5364)
!5377 = !DILocation(line: 42, column: 1, scope: !5364)
!5378 = distinct !DISubprogram(name: "spin_lock", scope: !5379, file: !5379, line: 349, type: !5380, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5382)
!5379 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5380 = !DISubroutineType(types: !5381)
!5381 = !{null, !3521}
!5382 = !{!5383}
!5383 = !DILocalVariable(name: "lock", arg: 1, scope: !5378, file: !5379, line: 349, type: !3521)
!5384 = !DILocation(line: 349, column: 51, scope: !5378)
!5385 = !DILocation(line: 351, column: 2, scope: !5378)
!5386 = !DILocation(line: 352, column: 1, scope: !5378)
!5387 = distinct !DISubprogram(name: "spin_unlock", scope: !5379, file: !5379, line: 389, type: !5380, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5388)
!5388 = !{!5389}
!5389 = !DILocalVariable(name: "lock", arg: 1, scope: !5387, file: !5379, line: 389, type: !3521)
!5390 = !DILocation(line: 389, column: 53, scope: !5387)
!5391 = !DILocation(line: 391, column: 2, scope: !5387)
!5392 = !DILocation(line: 392, column: 1, scope: !5387)
!5393 = distinct !DISubprogram(name: "fsnotify_destroy_group", scope: !3, file: !3, line: 50, type: !5278, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5394)
!5394 = !{!5395, !5396, !5410, !5411, !5415}
!5395 = !DILocalVariable(name: "group", arg: 1, scope: !5393, file: !3, line: 50, type: !307)
!5396 = !DILocalVariable(name: "__wq_entry", scope: !5397, file: !3, line: 68, type: !5399)
!5397 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 68, column: 2)
!5398 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 68, column: 2)
!5399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !76, line: 30, size: 320, elements: !5400)
!5400 = !{!5401, !5402, !5403, !5409}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5399, file: !76, line: 31, baseType: !7, size: 32)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5399, file: !76, line: 32, baseType: !41, size: 64, offset: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5399, file: !76, line: 33, baseType: !5404, size: 64, offset: 128)
!5404 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !76, line: 16, baseType: !5405)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!43, !5408, !7, !43, !41}
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5399, file: !76, line: 34, baseType: !118, size: 128, offset: 192)
!5410 = !DILocalVariable(name: "__ret", scope: !5397, file: !3, line: 68, type: !596)
!5411 = !DILocalVariable(name: "__int", scope: !5412, file: !3, line: 68, type: !596)
!5412 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 68, column: 2)
!5413 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 68, column: 2)
!5414 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 68, column: 2)
!5415 = !DILabel(scope: !5397, name: "__out", file: !3, line: 68)
!5416 = !DILocation(line: 50, column: 52, scope: !5393)
!5417 = !DILocation(line: 58, column: 31, scope: !5393)
!5418 = !DILocation(line: 58, column: 2, scope: !5393)
!5419 = !DILocation(line: 61, column: 32, scope: !5393)
!5420 = !DILocation(line: 61, column: 2, scope: !5393)
!5421 = !DILocation(line: 68, column: 2, scope: !5393)
!5422 = !DILocation(line: 68, column: 2, scope: !5398)
!5423 = !DILocation(line: 68, column: 2, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 68, column: 2)
!5425 = !DILocation(line: 68, column: 2, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 68, column: 2)
!5427 = !DILocation(line: 68, column: 2, scope: !5397)
!5428 = !DILocation(line: 68, column: 2, scope: !5412)
!5429 = !DILocation(line: 68, column: 2, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 68, column: 2)
!5431 = !DILocation(line: 68, column: 2, scope: !5413)
!5432 = distinct !{!5432, !5433, !5433, !5434}
!5433 = !DILocation(line: 68, column: 2, scope: !5414)
!5434 = !{!"llvm.loop.unroll.disable"}
!5435 = !DILocation(line: 76, column: 2, scope: !5393)
!5436 = !DILocation(line: 84, column: 24, scope: !5393)
!5437 = !DILocation(line: 84, column: 2, scope: !5393)
!5438 = !DILocation(line: 90, column: 6, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 90, column: 6)
!5440 = !DILocation(line: 90, column: 13, scope: !5439)
!5441 = !DILocation(line: 90, column: 6, scope: !5393)
!5442 = !DILocation(line: 91, column: 3, scope: !5439)
!5443 = !DILocation(line: 91, column: 10, scope: !5439)
!5444 = !DILocation(line: 91, column: 15, scope: !5439)
!5445 = !DILocation(line: 91, column: 26, scope: !5439)
!5446 = !DILocation(line: 91, column: 33, scope: !5439)
!5447 = !DILocation(line: 91, column: 40, scope: !5439)
!5448 = !DILocation(line: 93, column: 21, scope: !5393)
!5449 = !DILocation(line: 93, column: 2, scope: !5393)
!5450 = !DILocation(line: 94, column: 1, scope: !5393)
!5451 = !DISubprogram(name: "fsnotify_clear_marks_by_group", scope: !259, file: !259, line: 801, type: !5452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !307, !7}
!5454 = !DILocation(line: 112, column: 2, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !298, file: !299, line: 112, column: 2)
!5456 = !DILocation(line: 112, column: 2, scope: !298)
!5457 = !DILocation(line: 113, column: 1, scope: !298)
!5458 = distinct !DISubprogram(name: "atomic_read", scope: !5459, file: !5459, line: 30, type: !5460, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5464)
!5459 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!43, !5462}
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!5464 = !{!5465}
!5465 = !DILocalVariable(name: "v", arg: 1, scope: !5458, file: !5459, line: 30, type: !5462)
!5466 = !DILocation(line: 30, column: 29, scope: !5458)
!5467 = !DILocation(line: 32, column: 25, scope: !5458)
!5468 = !DILocation(line: 32, column: 2, scope: !5458)
!5469 = !DILocation(line: 33, column: 25, scope: !5458)
!5470 = !DILocation(line: 33, column: 9, scope: !5458)
!5471 = !DILocation(line: 33, column: 2, scope: !5458)
!5472 = !DISubprogram(name: "init_wait_entry", scope: !76, file: !76, line: 290, type: !5473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{null, !5408, !43}
!5475 = !DISubprogram(name: "prepare_to_wait_event", scope: !76, file: !76, line: 1199, type: !5476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!596, !5478, !5408, !43}
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!5479 = !DISubprogram(name: "schedule", scope: !964, file: !964, line: 303, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5480 = !DISubprogram(name: "finish_wait", scope: !76, file: !76, line: 1200, type: !5481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{null, !5478, !5408}
!5483 = !DISubprogram(name: "fsnotify_wait_marks_destroyed", scope: !259, file: !259, line: 799, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5484 = !DISubprogram(name: "fsnotify_flush_notify", scope: !5485, file: !5485, line: 46, type: !5278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5485 = !DIFile(filename: "fs/notify/fsnotify.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "81a29810ca662cf25b13a9fbefaf6740")
!5486 = distinct !DISubprogram(name: "fsnotify_put_group", scope: !3, file: !3, line: 107, type: !5278, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5487)
!5487 = !{!5488}
!5488 = !DILocalVariable(name: "group", arg: 1, scope: !5486, file: !3, line: 107, type: !307)
!5489 = !DILocation(line: 107, column: 48, scope: !5486)
!5490 = !DILocation(line: 109, column: 29, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 109, column: 6)
!5492 = !DILocation(line: 109, column: 36, scope: !5491)
!5493 = !DILocation(line: 109, column: 6, scope: !5491)
!5494 = !DILocation(line: 109, column: 6, scope: !5486)
!5495 = !DILocation(line: 110, column: 32, scope: !5491)
!5496 = !DILocation(line: 110, column: 3, scope: !5491)
!5497 = !DILocation(line: 111, column: 1, scope: !5486)
!5498 = distinct !DISubprogram(name: "fsnotify_get_group", scope: !3, file: !3, line: 99, type: !5278, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5499)
!5499 = !{!5500}
!5500 = !DILocalVariable(name: "group", arg: 1, scope: !5498, file: !3, line: 99, type: !307)
!5501 = !DILocation(line: 99, column: 48, scope: !5498)
!5502 = !DILocation(line: 101, column: 16, scope: !5498)
!5503 = !DILocation(line: 101, column: 23, scope: !5498)
!5504 = !DILocation(line: 101, column: 2, scope: !5498)
!5505 = !DILocation(line: 102, column: 1, scope: !5498)
!5506 = distinct !DISubprogram(name: "refcount_inc", scope: !268, file: !268, line: 265, type: !5507, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5510)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{null, !5509}
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!5510 = !{!5511}
!5511 = !DILocalVariable(name: "r", arg: 1, scope: !5506, file: !268, line: 265, type: !5509)
!5512 = !DILocation(line: 265, column: 45, scope: !5506)
!5513 = !DILocation(line: 267, column: 17, scope: !5506)
!5514 = !DILocation(line: 267, column: 2, scope: !5506)
!5515 = !DILocation(line: 268, column: 1, scope: !5506)
!5516 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !268, file: !268, line: 331, type: !5517, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5519)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!773, !5509}
!5519 = !{!5520}
!5520 = !DILocalVariable(name: "r", arg: 1, scope: !5516, file: !268, line: 331, type: !5509)
!5521 = !DILocation(line: 331, column: 67, scope: !5516)
!5522 = !DILocation(line: 333, column: 33, scope: !5516)
!5523 = !DILocation(line: 333, column: 9, scope: !5516)
!5524 = !DILocation(line: 333, column: 2, scope: !5516)
!5525 = distinct !DISubprogram(name: "fsnotify_final_destroy_group", scope: !3, file: !3, line: 22, type: !5278, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5526)
!5526 = !{!5527}
!5527 = !DILocalVariable(name: "group", arg: 1, scope: !5525, file: !3, line: 22, type: !307)
!5528 = !DILocation(line: 22, column: 65, scope: !5525)
!5529 = !DILocation(line: 24, column: 6, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 24, column: 6)
!5531 = !DILocation(line: 24, column: 13, scope: !5530)
!5532 = !DILocation(line: 24, column: 18, scope: !5530)
!5533 = !DILocation(line: 24, column: 6, scope: !5525)
!5534 = !DILocation(line: 25, column: 3, scope: !5530)
!5535 = !DILocation(line: 25, column: 10, scope: !5530)
!5536 = !DILocation(line: 25, column: 15, scope: !5530)
!5537 = !DILocation(line: 25, column: 31, scope: !5530)
!5538 = !DILocation(line: 27, column: 17, scope: !5525)
!5539 = !DILocation(line: 27, column: 24, scope: !5525)
!5540 = !DILocation(line: 27, column: 2, scope: !5525)
!5541 = !DILocation(line: 28, column: 17, scope: !5525)
!5542 = !DILocation(line: 28, column: 24, scope: !5525)
!5543 = !DILocation(line: 28, column: 2, scope: !5525)
!5544 = !DILocation(line: 30, column: 8, scope: !5525)
!5545 = !DILocation(line: 30, column: 2, scope: !5525)
!5546 = !DILocation(line: 31, column: 1, scope: !5525)
!5547 = distinct !DISubprogram(name: "fsnotify_alloc_group", scope: !3, file: !3, line: 156, type: !5548, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5550)
!5548 = !DISubroutineType(types: !5549)
!5549 = !{!307, !311, !43}
!5550 = !{!5551, !5552, !5553}
!5551 = !DILocalVariable(name: "ops", arg: 1, scope: !5547, file: !3, line: 156, type: !311)
!5552 = !DILocalVariable(name: "flags", arg: 2, scope: !5547, file: !3, line: 157, type: !43)
!5553 = !DILocalVariable(name: "gfp", scope: !5547, file: !3, line: 159, type: !286)
!5554 = !DILocation(line: 156, column: 72, scope: !5547)
!5555 = !DILocation(line: 157, column: 14, scope: !5547)
!5556 = !DILocation(line: 159, column: 2, scope: !5547)
!5557 = !DILocation(line: 159, column: 8, scope: !5547)
!5558 = !DILocation(line: 159, column: 15, scope: !5547)
!5559 = !DILocation(line: 159, column: 21, scope: !5547)
!5560 = !DILocation(line: 159, column: 14, scope: !5547)
!5561 = !DILocation(line: 162, column: 32, scope: !5547)
!5562 = !DILocation(line: 162, column: 37, scope: !5547)
!5563 = !DILocation(line: 162, column: 44, scope: !5547)
!5564 = !DILocation(line: 162, column: 9, scope: !5547)
!5565 = !DILocation(line: 163, column: 1, scope: !5547)
!5566 = !DILocation(line: 162, column: 2, scope: !5547)
!5567 = !DILocation(line: 115, column: 32, scope: !304)
!5568 = !DILocation(line: 116, column: 9, scope: !304)
!5569 = !DILocation(line: 116, column: 22, scope: !304)
!5570 = !DILocation(line: 119, column: 2, scope: !304)
!5571 = !DILocation(line: 119, column: 25, scope: !304)
!5572 = !DILocation(line: 121, column: 49, scope: !304)
!5573 = !DILocation(line: 121, column: 10, scope: !304)
!5574 = !DILocation(line: 121, column: 8, scope: !304)
!5575 = !DILocation(line: 122, column: 7, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !304, file: !3, line: 122, column: 6)
!5577 = !DILocation(line: 122, column: 6, scope: !304)
!5578 = !DILocation(line: 123, column: 10, scope: !5576)
!5579 = !DILocation(line: 123, column: 3, scope: !5576)
!5580 = !DILocation(line: 126, column: 16, scope: !304)
!5581 = !DILocation(line: 126, column: 23, scope: !304)
!5582 = !DILocation(line: 126, column: 2, scope: !304)
!5583 = !DILocation(line: 127, column: 14, scope: !304)
!5584 = !DILocation(line: 127, column: 21, scope: !304)
!5585 = !DILocation(line: 127, column: 2, scope: !304)
!5586 = !DILocation(line: 129, column: 2, scope: !304)
!5587 = !DILocation(line: 129, column: 2, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !304, file: !3, line: 129, column: 2)
!5589 = !DILocation(line: 130, column: 18, scope: !304)
!5590 = !DILocation(line: 130, column: 25, scope: !304)
!5591 = !DILocation(line: 130, column: 2, scope: !304)
!5592 = !DILocation(line: 131, column: 2, scope: !304)
!5593 = !DILocation(line: 131, column: 2, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !304, file: !3, line: 131, column: 2)
!5595 = !DILocation(line: 132, column: 2, scope: !304)
!5596 = !DILocation(line: 132, column: 9, scope: !304)
!5597 = !DILocation(line: 132, column: 20, scope: !304)
!5598 = !DILocation(line: 134, column: 2, scope: !304)
!5599 = !DILocation(line: 134, column: 2, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !304, file: !3, line: 134, column: 2)
!5601 = !DILocation(line: 135, column: 18, scope: !304)
!5602 = !DILocation(line: 135, column: 25, scope: !304)
!5603 = !DILocation(line: 135, column: 2, scope: !304)
!5604 = !DILocation(line: 137, column: 15, scope: !304)
!5605 = !DILocation(line: 137, column: 2, scope: !304)
!5606 = !DILocation(line: 137, column: 9, scope: !304)
!5607 = !DILocation(line: 137, column: 13, scope: !304)
!5608 = !DILocation(line: 138, column: 17, scope: !304)
!5609 = !DILocation(line: 138, column: 2, scope: !304)
!5610 = !DILocation(line: 138, column: 9, scope: !304)
!5611 = !DILocation(line: 138, column: 15, scope: !304)
!5612 = !DILocation(line: 147, column: 6, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !304, file: !3, line: 147, column: 6)
!5614 = !DILocation(line: 147, column: 12, scope: !5613)
!5615 = !DILocation(line: 147, column: 6, scope: !304)
!5616 = !DILocation(line: 148, column: 3, scope: !5613)
!5617 = !DILocation(line: 148, column: 3, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 148, column: 3)
!5619 = !DILocation(line: 150, column: 9, scope: !304)
!5620 = !DILocation(line: 150, column: 2, scope: !304)
!5621 = !DILocation(line: 151, column: 1, scope: !304)
!5622 = distinct !DISubprogram(name: "fsnotify_fasync", scope: !3, file: !3, line: 166, type: !3254, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5623)
!5623 = !{!5624, !5625, !5626, !5627}
!5624 = !DILocalVariable(name: "fd", arg: 1, scope: !5622, file: !3, line: 166, type: !43)
!5625 = !DILocalVariable(name: "file", arg: 2, scope: !5622, file: !3, line: 166, type: !863)
!5626 = !DILocalVariable(name: "on", arg: 3, scope: !5622, file: !3, line: 166, type: !43)
!5627 = !DILocalVariable(name: "group", scope: !5622, file: !3, line: 168, type: !307)
!5628 = !DILocation(line: 166, column: 25, scope: !5622)
!5629 = !DILocation(line: 166, column: 42, scope: !5622)
!5630 = !DILocation(line: 166, column: 52, scope: !5622)
!5631 = !DILocation(line: 168, column: 2, scope: !5622)
!5632 = !DILocation(line: 168, column: 25, scope: !5622)
!5633 = !DILocation(line: 168, column: 33, scope: !5622)
!5634 = !DILocation(line: 168, column: 39, scope: !5622)
!5635 = !DILocation(line: 170, column: 23, scope: !5622)
!5636 = !DILocation(line: 170, column: 27, scope: !5622)
!5637 = !DILocation(line: 170, column: 33, scope: !5622)
!5638 = !DILocation(line: 170, column: 38, scope: !5622)
!5639 = !DILocation(line: 170, column: 45, scope: !5622)
!5640 = !DILocation(line: 170, column: 9, scope: !5622)
!5641 = !DILocation(line: 170, column: 53, scope: !5622)
!5642 = !DILocation(line: 171, column: 1, scope: !5622)
!5643 = !DILocation(line: 170, column: 2, scope: !5622)
!5644 = !DISubprogram(name: "fasync_helper", scope: !178, file: !178, line: 1095, type: !5645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!43, !43, !863, !43, !5647}
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5648 = !DISubprogram(name: "_raw_spin_lock", scope: !5649, file: !5649, line: 22, type: !5650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5649 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5650 = !DISubroutineType(types: !5651)
!5651 = !{null, !5652}
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!5653 = !DISubprogram(name: "_raw_spin_unlock", scope: !5649, file: !5649, line: 39, type: !5650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5654 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5655, file: !5655, line: 66, type: !5656, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5661)
!5655 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5656 = !DISubroutineType(types: !5657)
!5657 = !{null, !5658, !56}
!5658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5659, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5660)
!5660 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5661 = !{!5662, !5663}
!5662 = !DILocalVariable(name: "v", arg: 1, scope: !5654, file: !5655, line: 66, type: !5658)
!5663 = !DILocalVariable(name: "size", arg: 2, scope: !5654, file: !5655, line: 66, type: !56)
!5664 = !DILocation(line: 66, column: 73, scope: !5654)
!5665 = !DILocation(line: 66, column: 83, scope: !5654)
!5666 = !DILocation(line: 68, column: 19, scope: !5654)
!5667 = !DILocation(line: 68, column: 22, scope: !5654)
!5668 = !DILocation(line: 68, column: 2, scope: !5654)
!5669 = !DILocation(line: 69, column: 2, scope: !5654)
!5670 = !DILocation(line: 70, column: 1, scope: !5654)
!5671 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5672, file: !5672, line: 442, type: !5460, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5673)
!5672 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5673 = !{!5674}
!5674 = !DILocalVariable(name: "v", arg: 1, scope: !5671, file: !5672, line: 442, type: !5462)
!5675 = !DILocation(line: 442, column: 33, scope: !5671)
!5676 = !DILocation(line: 444, column: 26, scope: !5671)
!5677 = !DILocation(line: 444, column: 9, scope: !5671)
!5678 = !DILocation(line: 444, column: 2, scope: !5671)
!5679 = distinct !DISubprogram(name: "kasan_check_read", scope: !5680, file: !5680, line: 40, type: !5681, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5683)
!5680 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!773, !5658, !7}
!5683 = !{!5684, !5685}
!5684 = !DILocalVariable(name: "p", arg: 1, scope: !5679, file: !5680, line: 40, type: !5658)
!5685 = !DILocalVariable(name: "size", arg: 2, scope: !5679, file: !5680, line: 40, type: !7)
!5686 = !DILocation(line: 40, column: 58, scope: !5679)
!5687 = !DILocation(line: 40, column: 74, scope: !5679)
!5688 = !DILocation(line: 42, column: 2, scope: !5679)
!5689 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5690, file: !5690, line: 229, type: !5691, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5693)
!5690 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5691 = !DISubroutineType(types: !5692)
!5692 = !{null, !5658, !56, !43}
!5693 = !{!5694, !5695, !5696}
!5694 = !DILocalVariable(name: "ptr", arg: 1, scope: !5689, file: !5690, line: 229, type: !5658)
!5695 = !DILocalVariable(name: "size", arg: 2, scope: !5689, file: !5690, line: 229, type: !56)
!5696 = !DILocalVariable(name: "type", arg: 3, scope: !5689, file: !5690, line: 230, type: !43)
!5697 = !DILocation(line: 229, column: 60, scope: !5689)
!5698 = !DILocation(line: 229, column: 72, scope: !5689)
!5699 = !DILocation(line: 230, column: 15, scope: !5689)
!5700 = !DILocation(line: 230, column: 23, scope: !5689)
!5701 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5702, file: !5702, line: 17, type: !5460, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5703)
!5702 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5703 = !{!5704}
!5704 = !DILocalVariable(name: "v", arg: 1, scope: !5701, file: !5702, line: 17, type: !5462)
!5705 = !DILocation(line: 17, column: 61, scope: !5701)
!5706 = !DILocation(line: 23, column: 9, scope: !5701)
!5707 = !DILocation(line: 23, column: 2, scope: !5701)
!5708 = distinct !DISubprogram(name: "__refcount_inc", scope: !268, file: !268, line: 248, type: !5709, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5711)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{null, !5509, !1350}
!5711 = !{!5712, !5713}
!5712 = !DILocalVariable(name: "r", arg: 1, scope: !5708, file: !268, line: 248, type: !5509)
!5713 = !DILocalVariable(name: "oldp", arg: 2, scope: !5708, file: !268, line: 248, type: !1350)
!5714 = !DILocation(line: 248, column: 47, scope: !5708)
!5715 = !DILocation(line: 248, column: 55, scope: !5708)
!5716 = !DILocation(line: 250, column: 20, scope: !5708)
!5717 = !DILocation(line: 250, column: 23, scope: !5708)
!5718 = !DILocation(line: 250, column: 2, scope: !5708)
!5719 = !DILocation(line: 251, column: 1, scope: !5708)
!5720 = distinct !DISubprogram(name: "__refcount_add", scope: !268, file: !268, line: 191, type: !5721, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5723)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{null, !43, !5509, !1350}
!5723 = !{!5724, !5725, !5726, !5727}
!5724 = !DILocalVariable(name: "i", arg: 1, scope: !5720, file: !268, line: 191, type: !43)
!5725 = !DILocalVariable(name: "r", arg: 2, scope: !5720, file: !268, line: 191, type: !5509)
!5726 = !DILocalVariable(name: "oldp", arg: 3, scope: !5720, file: !268, line: 191, type: !1350)
!5727 = !DILocalVariable(name: "old", scope: !5720, file: !268, line: 193, type: !43)
!5728 = !DILocation(line: 191, column: 39, scope: !5720)
!5729 = !DILocation(line: 191, column: 54, scope: !5720)
!5730 = !DILocation(line: 191, column: 62, scope: !5720)
!5731 = !DILocation(line: 193, column: 2, scope: !5720)
!5732 = !DILocation(line: 193, column: 6, scope: !5720)
!5733 = !DILocation(line: 193, column: 37, scope: !5720)
!5734 = !DILocation(line: 193, column: 41, scope: !5720)
!5735 = !DILocation(line: 193, column: 44, scope: !5720)
!5736 = !DILocation(line: 193, column: 12, scope: !5720)
!5737 = !DILocation(line: 195, column: 6, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5720, file: !268, line: 195, column: 6)
!5739 = !DILocation(line: 195, column: 6, scope: !5720)
!5740 = !DILocation(line: 196, column: 11, scope: !5738)
!5741 = !DILocation(line: 196, column: 4, scope: !5738)
!5742 = !DILocation(line: 196, column: 9, scope: !5738)
!5743 = !DILocation(line: 196, column: 3, scope: !5738)
!5744 = !DILocation(line: 198, column: 6, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5720, file: !268, line: 198, column: 6)
!5746 = !DILocation(line: 198, column: 6, scope: !5720)
!5747 = !DILocation(line: 199, column: 26, scope: !5745)
!5748 = !DILocation(line: 199, column: 3, scope: !5745)
!5749 = !DILocation(line: 200, column: 11, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5745, file: !268, line: 200, column: 11)
!5751 = !DILocation(line: 200, column: 11, scope: !5745)
!5752 = !DILocation(line: 201, column: 26, scope: !5750)
!5753 = !DILocation(line: 201, column: 3, scope: !5750)
!5754 = !DILocation(line: 202, column: 1, scope: !5720)
!5755 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5459, file: !5459, line: 250, type: !5756, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5759)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!43, !43, !5758}
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!5759 = !{!5760, !5761}
!5760 = !DILocalVariable(name: "i", arg: 1, scope: !5755, file: !5459, line: 250, type: !43)
!5761 = !DILocalVariable(name: "v", arg: 2, scope: !5755, file: !5459, line: 250, type: !5758)
!5762 = !DILocation(line: 250, column: 30, scope: !5755)
!5763 = !DILocation(line: 250, column: 43, scope: !5755)
!5764 = !DILocation(line: 252, column: 31, scope: !5755)
!5765 = !DILocation(line: 252, column: 2, scope: !5755)
!5766 = !DILocation(line: 253, column: 38, scope: !5755)
!5767 = !DILocation(line: 253, column: 41, scope: !5755)
!5768 = !DILocation(line: 253, column: 9, scope: !5755)
!5769 = !DILocation(line: 253, column: 2, scope: !5755)
!5770 = !DISubprogram(name: "refcount_warn_saturate", scope: !268, file: !268, line: 127, type: !5771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{null, !5509, !267}
!5773 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5655, file: !5655, line: 94, type: !5656, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5774)
!5774 = !{!5775, !5776}
!5775 = !DILocalVariable(name: "v", arg: 1, scope: !5773, file: !5655, line: 94, type: !5658)
!5776 = !DILocalVariable(name: "size", arg: 2, scope: !5773, file: !5655, line: 94, type: !56)
!5777 = !DILocation(line: 94, column: 79, scope: !5773)
!5778 = !DILocation(line: 94, column: 89, scope: !5773)
!5779 = !DILocation(line: 96, column: 20, scope: !5773)
!5780 = !DILocation(line: 96, column: 23, scope: !5773)
!5781 = !DILocation(line: 96, column: 2, scope: !5773)
!5782 = !DILocation(line: 97, column: 2, scope: !5773)
!5783 = !DILocation(line: 98, column: 1, scope: !5773)
!5784 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !5672, file: !5672, line: 731, type: !5756, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5785)
!5785 = !{!5786, !5787}
!5786 = !DILocalVariable(name: "i", arg: 1, scope: !5784, file: !5672, line: 731, type: !43)
!5787 = !DILocalVariable(name: "v", arg: 2, scope: !5784, file: !5672, line: 731, type: !5758)
!5788 = !DILocation(line: 731, column: 34, scope: !5784)
!5789 = !DILocation(line: 731, column: 47, scope: !5784)
!5790 = !DILocation(line: 736, column: 31, scope: !5784)
!5791 = !DILocation(line: 736, column: 34, scope: !5784)
!5792 = !DILocation(line: 736, column: 9, scope: !5784)
!5793 = !DILocation(line: 736, column: 2, scope: !5784)
!5794 = distinct !DISubprogram(name: "kasan_check_write", scope: !5680, file: !5680, line: 44, type: !5681, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5795)
!5795 = !{!5796, !5797}
!5796 = !DILocalVariable(name: "p", arg: 1, scope: !5794, file: !5680, line: 44, type: !5658)
!5797 = !DILocalVariable(name: "size", arg: 2, scope: !5794, file: !5680, line: 44, type: !7)
!5798 = !DILocation(line: 44, column: 59, scope: !5794)
!5799 = !DILocation(line: 44, column: 75, scope: !5794)
!5800 = !DILocation(line: 46, column: 2, scope: !5794)
!5801 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5702, file: !5702, line: 95, type: !5756, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5802)
!5802 = !{!5803, !5804, !5805}
!5803 = !DILocalVariable(name: "i", arg: 1, scope: !5801, file: !5702, line: 95, type: !43)
!5804 = !DILocalVariable(name: "v", arg: 2, scope: !5801, file: !5702, line: 95, type: !5758)
!5805 = !DILocalVariable(name: "__ret", scope: !5806, file: !5702, line: 97, type: !43)
!5806 = distinct !DILexicalBlock(scope: !5801, file: !5702, line: 97, column: 9)
!5807 = !DILocation(line: 95, column: 54, scope: !5801)
!5808 = !DILocation(line: 95, column: 67, scope: !5801)
!5809 = !DILocation(line: 97, column: 9, scope: !5806)
!5810 = !{i64 2148474417, i64 2148474456, i64 2148474477, i64 2148474514, i64 2148474537, i64 2148474546}
!5811 = !DILocation(line: 97, column: 9, scope: !5801)
!5812 = !DILocation(line: 97, column: 2, scope: !5801)
!5813 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !268, file: !268, line: 313, type: !5814, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5816)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!773, !5509, !1350}
!5816 = !{!5817, !5818}
!5817 = !DILocalVariable(name: "r", arg: 1, scope: !5813, file: !268, line: 313, type: !5509)
!5818 = !DILocalVariable(name: "oldp", arg: 2, scope: !5813, file: !268, line: 313, type: !1350)
!5819 = !DILocation(line: 313, column: 69, scope: !5813)
!5820 = !DILocation(line: 313, column: 77, scope: !5813)
!5821 = !DILocation(line: 315, column: 36, scope: !5813)
!5822 = !DILocation(line: 315, column: 39, scope: !5813)
!5823 = !DILocation(line: 315, column: 9, scope: !5813)
!5824 = !DILocation(line: 315, column: 2, scope: !5813)
!5825 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !268, file: !268, line: 270, type: !5826, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5828)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!773, !43, !5509, !1350}
!5828 = !{!5829, !5830, !5831, !5832}
!5829 = !DILocalVariable(name: "i", arg: 1, scope: !5825, file: !268, line: 270, type: !43)
!5830 = !DILocalVariable(name: "r", arg: 2, scope: !5825, file: !268, line: 270, type: !5509)
!5831 = !DILocalVariable(name: "oldp", arg: 3, scope: !5825, file: !268, line: 270, type: !1350)
!5832 = !DILocalVariable(name: "old", scope: !5825, file: !268, line: 272, type: !43)
!5833 = !DILocation(line: 270, column: 61, scope: !5825)
!5834 = !DILocation(line: 270, column: 76, scope: !5825)
!5835 = !DILocation(line: 270, column: 84, scope: !5825)
!5836 = !DILocation(line: 272, column: 2, scope: !5825)
!5837 = !DILocation(line: 272, column: 6, scope: !5825)
!5838 = !DILocation(line: 272, column: 37, scope: !5825)
!5839 = !DILocation(line: 272, column: 41, scope: !5825)
!5840 = !DILocation(line: 272, column: 44, scope: !5825)
!5841 = !DILocation(line: 272, column: 12, scope: !5825)
!5842 = !DILocation(line: 274, column: 6, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5825, file: !268, line: 274, column: 6)
!5844 = !DILocation(line: 274, column: 6, scope: !5825)
!5845 = !DILocation(line: 275, column: 11, scope: !5843)
!5846 = !DILocation(line: 275, column: 4, scope: !5843)
!5847 = !DILocation(line: 275, column: 9, scope: !5843)
!5848 = !DILocation(line: 275, column: 3, scope: !5843)
!5849 = !DILocation(line: 277, column: 6, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5825, file: !268, line: 277, column: 6)
!5851 = !DILocation(line: 277, column: 13, scope: !5850)
!5852 = !DILocation(line: 277, column: 10, scope: !5850)
!5853 = !DILocation(line: 277, column: 6, scope: !5825)
!5854 = !DILocation(line: 278, column: 3, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5850, file: !268, line: 277, column: 16)
!5856 = !DILocation(line: 278, column: 3, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5855, file: !268, line: 278, column: 3)
!5858 = !DILocation(line: 278, column: 3, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5857, file: !268, line: 278, column: 3)
!5860 = !DILocation(line: 278, column: 3, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5857, file: !268, line: 278, column: 3)
!5862 = !DILocation(line: 278, column: 3, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5861, file: !268, line: 278, column: 3)
!5864 = !{i64 2150226140}
!5865 = !DILocation(line: 279, column: 3, scope: !5855)
!5866 = !DILocation(line: 282, column: 6, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5825, file: !268, line: 282, column: 6)
!5868 = !DILocation(line: 282, column: 6, scope: !5825)
!5869 = !DILocation(line: 283, column: 26, scope: !5867)
!5870 = !DILocation(line: 283, column: 3, scope: !5867)
!5871 = !DILocation(line: 285, column: 2, scope: !5825)
!5872 = !DILocation(line: 286, column: 1, scope: !5825)
!5873 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5459, file: !5459, line: 397, type: !5756, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5874)
!5874 = !{!5875, !5876}
!5875 = !DILocalVariable(name: "i", arg: 1, scope: !5873, file: !5459, line: 397, type: !43)
!5876 = !DILocalVariable(name: "v", arg: 2, scope: !5873, file: !5459, line: 397, type: !5758)
!5877 = !DILocation(line: 397, column: 30, scope: !5873)
!5878 = !DILocation(line: 397, column: 43, scope: !5873)
!5879 = !DILocation(line: 399, column: 2, scope: !5873)
!5880 = !DILocation(line: 399, column: 2, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5873, file: !5459, line: 399, column: 2)
!5882 = !DILocation(line: 400, column: 31, scope: !5873)
!5883 = !DILocation(line: 400, column: 2, scope: !5873)
!5884 = !DILocation(line: 401, column: 38, scope: !5873)
!5885 = !DILocation(line: 401, column: 41, scope: !5873)
!5886 = !DILocation(line: 401, column: 9, scope: !5873)
!5887 = !DILocation(line: 401, column: 2, scope: !5873)
!5888 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5672, file: !5672, line: 928, type: !5756, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5889)
!5889 = !{!5890, !5891}
!5890 = !DILocalVariable(name: "i", arg: 1, scope: !5888, file: !5672, line: 928, type: !43)
!5891 = !DILocalVariable(name: "v", arg: 2, scope: !5888, file: !5672, line: 928, type: !5758)
!5892 = !DILocation(line: 928, column: 34, scope: !5888)
!5893 = !DILocation(line: 928, column: 47, scope: !5888)
!5894 = !DILocation(line: 936, column: 31, scope: !5888)
!5895 = !DILocation(line: 936, column: 34, scope: !5888)
!5896 = !DILocation(line: 936, column: 9, scope: !5888)
!5897 = !DILocation(line: 936, column: 2, scope: !5888)
!5898 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5702, file: !5702, line: 101, type: !5756, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5899)
!5899 = !{!5900, !5901, !5902}
!5900 = !DILocalVariable(name: "i", arg: 1, scope: !5898, file: !5702, line: 101, type: !43)
!5901 = !DILocalVariable(name: "v", arg: 2, scope: !5898, file: !5702, line: 101, type: !5758)
!5902 = !DILocalVariable(name: "__ret", scope: !5903, file: !5702, line: 103, type: !43)
!5903 = distinct !DILexicalBlock(scope: !5898, file: !5702, line: 103, column: 9)
!5904 = !DILocation(line: 101, column: 54, scope: !5898)
!5905 = !DILocation(line: 101, column: 67, scope: !5898)
!5906 = !DILocation(line: 103, column: 9, scope: !5903)
!5907 = !{i64 2148476602, i64 2148476641, i64 2148476662, i64 2148476699, i64 2148476722, i64 2148476731}
!5908 = !DILocation(line: 103, column: 9, scope: !5898)
!5909 = !DILocation(line: 103, column: 2, scope: !5898)
!5910 = distinct !DISubprogram(name: "mem_cgroup_put", scope: !5911, file: !5911, line: 1319, type: !5912, scopeLine: 1320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5911 = !DIFile(filename: "./include/linux/memcontrol.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "56e2fbaa204036cf198c2cab401df973")
!5912 = !DISubroutineType(types: !5913)
!5913 = !{null, !4257}
!5914 = !{!5915}
!5915 = !DILocalVariable(name: "memcg", arg: 1, scope: !5910, file: !5911, line: 1319, type: !4257)
!5916 = !DILocation(line: 1319, column: 54, scope: !5910)
!5917 = !DILocation(line: 1321, column: 1, scope: !5910)
!5918 = distinct !DISubprogram(name: "mutex_destroy", scope: !883, file: !883, line: 92, type: !5919, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5922)
!5919 = !DISubroutineType(types: !5920)
!5920 = !{null, !5921}
!5921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!5922 = !{!5923}
!5923 = !DILocalVariable(name: "lock", arg: 1, scope: !5918, file: !883, line: 92, type: !5921)
!5924 = !DILocation(line: 92, column: 48, scope: !5918)
!5925 = !DILocation(line: 92, column: 55, scope: !5918)
!5926 = !DISubprogram(name: "kfree", scope: !276, file: !276, line: 227, type: !5927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{null, !321}
!5929 = distinct !DISubprogram(name: "kzalloc", scope: !276, file: !276, line: 719, type: !5930, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5932)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!41, !56, !286}
!5932 = !{!5933, !5934}
!5933 = !DILocalVariable(name: "size", arg: 1, scope: !5929, file: !276, line: 719, type: !56)
!5934 = !DILocalVariable(name: "flags", arg: 2, scope: !5929, file: !276, line: 719, type: !286)
!5935 = !DILocation(line: 719, column: 52, scope: !5929)
!5936 = !DILocation(line: 719, column: 64, scope: !5929)
!5937 = !DILocation(line: 721, column: 17, scope: !5929)
!5938 = !DILocation(line: 721, column: 23, scope: !5929)
!5939 = !DILocation(line: 721, column: 29, scope: !5929)
!5940 = !DILocation(line: 721, column: 9, scope: !5929)
!5941 = !DILocation(line: 721, column: 2, scope: !5929)
!5942 = distinct !DISubprogram(name: "ERR_PTR", scope: !5943, file: !5943, line: 39, type: !5944, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5946)
!5943 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5944 = !DISubroutineType(types: !5945)
!5945 = !{!41, !596}
!5946 = !{!5947}
!5947 = !DILocalVariable(name: "error", arg: 1, scope: !5942, file: !5943, line: 39, type: !596)
!5948 = !DILocation(line: 39, column: 48, scope: !5942)
!5949 = !DILocation(line: 41, column: 18, scope: !5942)
!5950 = !DILocation(line: 41, column: 9, scope: !5942)
!5951 = !DILocation(line: 41, column: 2, scope: !5942)
!5952 = distinct !DISubprogram(name: "refcount_set", scope: !268, file: !268, line: 134, type: !5953, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5955)
!5953 = !DISubroutineType(types: !5954)
!5954 = !{null, !5509, !43}
!5955 = !{!5956, !5957}
!5956 = !DILocalVariable(name: "r", arg: 1, scope: !5952, file: !268, line: 134, type: !5509)
!5957 = !DILocalVariable(name: "n", arg: 2, scope: !5952, file: !268, line: 134, type: !43)
!5958 = !DILocation(line: 134, column: 45, scope: !5952)
!5959 = !DILocation(line: 134, column: 52, scope: !5952)
!5960 = !DILocation(line: 136, column: 14, scope: !5952)
!5961 = !DILocation(line: 136, column: 17, scope: !5952)
!5962 = !DILocation(line: 136, column: 23, scope: !5952)
!5963 = !DILocation(line: 136, column: 2, scope: !5952)
!5964 = !DILocation(line: 137, column: 1, scope: !5952)
!5965 = distinct !DISubprogram(name: "atomic_set", scope: !5459, file: !5459, line: 65, type: !5966, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{null, !5758, !43}
!5968 = !{!5969, !5970}
!5969 = !DILocalVariable(name: "v", arg: 1, scope: !5965, file: !5459, line: 65, type: !5758)
!5970 = !DILocalVariable(name: "i", arg: 2, scope: !5965, file: !5459, line: 65, type: !43)
!5971 = !DILocation(line: 65, column: 22, scope: !5965)
!5972 = !DILocation(line: 65, column: 29, scope: !5965)
!5973 = !DILocation(line: 67, column: 26, scope: !5965)
!5974 = !DILocation(line: 67, column: 2, scope: !5965)
!5975 = !DILocation(line: 68, column: 17, scope: !5965)
!5976 = !DILocation(line: 68, column: 20, scope: !5965)
!5977 = !DILocation(line: 68, column: 2, scope: !5965)
!5978 = !DILocation(line: 69, column: 1, scope: !5965)
!5979 = distinct !DISubprogram(name: "spinlock_check", scope: !5379, file: !5379, line: 324, type: !5980, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5982)
!5980 = !DISubroutineType(types: !5981)
!5981 = !{!5652, !3521}
!5982 = !{!5983}
!5983 = !DILocalVariable(name: "lock", arg: 1, scope: !5979, file: !5379, line: 324, type: !3521)
!5984 = !DILocation(line: 324, column: 67, scope: !5979)
!5985 = !DILocation(line: 326, column: 10, scope: !5979)
!5986 = !DILocation(line: 326, column: 16, scope: !5979)
!5987 = !DILocation(line: 326, column: 2, scope: !5979)
!5988 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5989, file: !5989, line: 35, type: !5990, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5992)
!5989 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5990 = !DISubroutineType(types: !5991)
!5991 = !{null, !121}
!5992 = !{!5993}
!5993 = !DILocalVariable(name: "list", arg: 1, scope: !5988, file: !5989, line: 35, type: !121)
!5994 = !DILocation(line: 35, column: 53, scope: !5988)
!5995 = !DILocation(line: 37, column: 2, scope: !5988)
!5996 = !DILocation(line: 37, column: 2, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5988, file: !5989, line: 37, column: 2)
!5998 = !DILocation(line: 37, column: 2, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5997, file: !5989, line: 37, column: 2)
!6000 = !DILocation(line: 37, column: 2, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5997, file: !5989, line: 37, column: 2)
!6002 = !DILocation(line: 38, column: 2, scope: !5988)
!6003 = !DILocation(line: 38, column: 2, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5988, file: !5989, line: 38, column: 2)
!6005 = !DILocation(line: 38, column: 2, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6004, file: !5989, line: 38, column: 2)
!6007 = !DILocation(line: 38, column: 2, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6004, file: !5989, line: 38, column: 2)
!6009 = !DILocation(line: 39, column: 1, scope: !5988)
!6010 = !DISubprogram(name: "__init_waitqueue_head", scope: !76, file: !76, line: 64, type: !6011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{null, !5478, !37, !6013}
!6013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!6014 = !DISubprogram(name: "__mutex_init", scope: !883, file: !883, line: 121, type: !6015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6015 = !DISubroutineType(types: !6016)
!6016 = !{null, !5921, !37, !6013}
!6017 = distinct !DISubprogram(name: "kmalloc", scope: !276, file: !276, line: 591, type: !5930, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6018)
!6018 = !{!6019, !6020, !6021}
!6019 = !DILocalVariable(name: "size", arg: 1, scope: !6017, file: !276, line: 591, type: !56)
!6020 = !DILocalVariable(name: "flags", arg: 2, scope: !6017, file: !276, line: 591, type: !286)
!6021 = !DILocalVariable(name: "index", scope: !6022, file: !276, line: 594, type: !7)
!6022 = distinct !DILexicalBlock(scope: !6023, file: !276, line: 593, column: 42)
!6023 = distinct !DILexicalBlock(scope: !6017, file: !276, line: 593, column: 6)
!6024 = !DILocation(line: 591, column: 61, scope: !6017)
!6025 = !DILocation(line: 591, column: 73, scope: !6017)
!6026 = !DILocation(line: 593, column: 27, scope: !6023)
!6027 = !DILocation(line: 593, column: 6, scope: !6023)
!6028 = !DILocation(line: 593, column: 33, scope: !6023)
!6029 = !DILocation(line: 593, column: 36, scope: !6023)
!6030 = !DILocation(line: 593, column: 6, scope: !6017)
!6031 = !DILocation(line: 594, column: 3, scope: !6022)
!6032 = !DILocation(line: 594, column: 16, scope: !6022)
!6033 = !DILocation(line: 596, column: 7, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6022, file: !276, line: 596, column: 7)
!6035 = !DILocation(line: 596, column: 12, scope: !6034)
!6036 = !DILocation(line: 596, column: 7, scope: !6022)
!6037 = !DILocation(line: 597, column: 25, scope: !6034)
!6038 = !DILocation(line: 597, column: 31, scope: !6034)
!6039 = !DILocation(line: 597, column: 11, scope: !6034)
!6040 = !DILocation(line: 597, column: 4, scope: !6034)
!6041 = !DILocation(line: 599, column: 11, scope: !6022)
!6042 = !DILocation(line: 599, column: 9, scope: !6022)
!6043 = !DILocation(line: 601, column: 33, scope: !6022)
!6044 = !DILocation(line: 601, column: 40, scope: !6022)
!6045 = !DILocation(line: 601, column: 20, scope: !6022)
!6046 = !DILocation(line: 601, column: 5, scope: !6022)
!6047 = !DILocation(line: 601, column: 51, scope: !6022)
!6048 = !DILocation(line: 602, column: 5, scope: !6022)
!6049 = !DILocation(line: 602, column: 12, scope: !6022)
!6050 = !DILocation(line: 600, column: 10, scope: !6022)
!6051 = !DILocation(line: 600, column: 3, scope: !6022)
!6052 = !DILocation(line: 603, column: 2, scope: !6023)
!6053 = !DILocation(line: 604, column: 19, scope: !6017)
!6054 = !DILocation(line: 604, column: 25, scope: !6017)
!6055 = !DILocation(line: 604, column: 9, scope: !6017)
!6056 = !DILocation(line: 604, column: 2, scope: !6017)
!6057 = !DILocation(line: 605, column: 1, scope: !6017)
!6058 = !DISubprogram(name: "kmalloc_large", scope: !276, file: !276, line: 531, type: !5930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6059 = distinct !DISubprogram(name: "__kmalloc_index", scope: !276, file: !276, line: 444, type: !6060, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6062)
!6060 = !DISubroutineType(types: !6061)
!6061 = !{!7, !56, !773}
!6062 = !{!6063, !6064}
!6063 = !DILocalVariable(name: "size", arg: 1, scope: !6059, file: !276, line: 444, type: !56)
!6064 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6059, file: !276, line: 445, type: !773)
!6065 = !DILocation(line: 444, column: 60, scope: !6059)
!6066 = !DILocation(line: 445, column: 16, scope: !6059)
!6067 = !DILocation(line: 447, column: 7, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 447, column: 6)
!6069 = !DILocation(line: 447, column: 6, scope: !6059)
!6070 = !DILocation(line: 448, column: 3, scope: !6068)
!6071 = !DILocation(line: 450, column: 6, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 450, column: 6)
!6073 = !DILocation(line: 450, column: 11, scope: !6072)
!6074 = !DILocation(line: 450, column: 6, scope: !6059)
!6075 = !DILocation(line: 451, column: 3, scope: !6072)
!6076 = !DILocation(line: 453, column: 32, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 453, column: 6)
!6078 = !DILocation(line: 453, column: 37, scope: !6077)
!6079 = !DILocation(line: 453, column: 42, scope: !6077)
!6080 = !DILocation(line: 453, column: 45, scope: !6077)
!6081 = !DILocation(line: 453, column: 50, scope: !6077)
!6082 = !DILocation(line: 453, column: 6, scope: !6059)
!6083 = !DILocation(line: 454, column: 3, scope: !6077)
!6084 = !DILocation(line: 455, column: 32, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 455, column: 6)
!6086 = !DILocation(line: 455, column: 37, scope: !6085)
!6087 = !DILocation(line: 455, column: 43, scope: !6085)
!6088 = !DILocation(line: 455, column: 46, scope: !6085)
!6089 = !DILocation(line: 455, column: 51, scope: !6085)
!6090 = !DILocation(line: 455, column: 6, scope: !6059)
!6091 = !DILocation(line: 456, column: 3, scope: !6085)
!6092 = !DILocation(line: 457, column: 6, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 457, column: 6)
!6094 = !DILocation(line: 457, column: 11, scope: !6093)
!6095 = !DILocation(line: 457, column: 6, scope: !6059)
!6096 = !DILocation(line: 457, column: 26, scope: !6093)
!6097 = !DILocation(line: 458, column: 6, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 458, column: 6)
!6099 = !DILocation(line: 458, column: 11, scope: !6098)
!6100 = !DILocation(line: 458, column: 6, scope: !6059)
!6101 = !DILocation(line: 458, column: 26, scope: !6098)
!6102 = !DILocation(line: 459, column: 6, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 459, column: 6)
!6104 = !DILocation(line: 459, column: 11, scope: !6103)
!6105 = !DILocation(line: 459, column: 6, scope: !6059)
!6106 = !DILocation(line: 459, column: 26, scope: !6103)
!6107 = !DILocation(line: 460, column: 6, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 460, column: 6)
!6109 = !DILocation(line: 460, column: 11, scope: !6108)
!6110 = !DILocation(line: 460, column: 6, scope: !6059)
!6111 = !DILocation(line: 460, column: 26, scope: !6108)
!6112 = !DILocation(line: 461, column: 6, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 461, column: 6)
!6114 = !DILocation(line: 461, column: 11, scope: !6113)
!6115 = !DILocation(line: 461, column: 6, scope: !6059)
!6116 = !DILocation(line: 461, column: 26, scope: !6113)
!6117 = !DILocation(line: 462, column: 6, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 462, column: 6)
!6119 = !DILocation(line: 462, column: 11, scope: !6118)
!6120 = !DILocation(line: 462, column: 6, scope: !6059)
!6121 = !DILocation(line: 462, column: 26, scope: !6118)
!6122 = !DILocation(line: 463, column: 6, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 463, column: 6)
!6124 = !DILocation(line: 463, column: 11, scope: !6123)
!6125 = !DILocation(line: 463, column: 6, scope: !6059)
!6126 = !DILocation(line: 463, column: 26, scope: !6123)
!6127 = !DILocation(line: 464, column: 6, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 464, column: 6)
!6129 = !DILocation(line: 464, column: 11, scope: !6128)
!6130 = !DILocation(line: 464, column: 6, scope: !6059)
!6131 = !DILocation(line: 464, column: 26, scope: !6128)
!6132 = !DILocation(line: 465, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 465, column: 6)
!6134 = !DILocation(line: 465, column: 11, scope: !6133)
!6135 = !DILocation(line: 465, column: 6, scope: !6059)
!6136 = !DILocation(line: 465, column: 26, scope: !6133)
!6137 = !DILocation(line: 466, column: 6, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 466, column: 6)
!6139 = !DILocation(line: 466, column: 11, scope: !6138)
!6140 = !DILocation(line: 466, column: 6, scope: !6059)
!6141 = !DILocation(line: 466, column: 26, scope: !6138)
!6142 = !DILocation(line: 467, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 467, column: 6)
!6144 = !DILocation(line: 467, column: 11, scope: !6143)
!6145 = !DILocation(line: 467, column: 6, scope: !6059)
!6146 = !DILocation(line: 467, column: 26, scope: !6143)
!6147 = !DILocation(line: 468, column: 6, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 468, column: 6)
!6149 = !DILocation(line: 468, column: 11, scope: !6148)
!6150 = !DILocation(line: 468, column: 6, scope: !6059)
!6151 = !DILocation(line: 468, column: 26, scope: !6148)
!6152 = !DILocation(line: 469, column: 6, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 469, column: 6)
!6154 = !DILocation(line: 469, column: 11, scope: !6153)
!6155 = !DILocation(line: 469, column: 6, scope: !6059)
!6156 = !DILocation(line: 469, column: 26, scope: !6153)
!6157 = !DILocation(line: 470, column: 6, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 470, column: 6)
!6159 = !DILocation(line: 470, column: 11, scope: !6158)
!6160 = !DILocation(line: 470, column: 6, scope: !6059)
!6161 = !DILocation(line: 470, column: 26, scope: !6158)
!6162 = !DILocation(line: 471, column: 6, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 471, column: 6)
!6164 = !DILocation(line: 471, column: 11, scope: !6163)
!6165 = !DILocation(line: 471, column: 6, scope: !6059)
!6166 = !DILocation(line: 471, column: 26, scope: !6163)
!6167 = !DILocation(line: 472, column: 6, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 472, column: 6)
!6169 = !DILocation(line: 472, column: 11, scope: !6168)
!6170 = !DILocation(line: 472, column: 6, scope: !6059)
!6171 = !DILocation(line: 472, column: 26, scope: !6168)
!6172 = !DILocation(line: 473, column: 6, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 473, column: 6)
!6174 = !DILocation(line: 473, column: 11, scope: !6173)
!6175 = !DILocation(line: 473, column: 6, scope: !6059)
!6176 = !DILocation(line: 473, column: 26, scope: !6173)
!6177 = !DILocation(line: 474, column: 6, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 474, column: 6)
!6179 = !DILocation(line: 474, column: 11, scope: !6178)
!6180 = !DILocation(line: 474, column: 6, scope: !6059)
!6181 = !DILocation(line: 474, column: 27, scope: !6178)
!6182 = !DILocation(line: 475, column: 6, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 475, column: 6)
!6184 = !DILocation(line: 475, column: 11, scope: !6183)
!6185 = !DILocation(line: 475, column: 6, scope: !6059)
!6186 = !DILocation(line: 475, column: 32, scope: !6183)
!6187 = !DILocation(line: 477, column: 50, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6059, file: !276, line: 477, column: 6)
!6189 = !{i8 0, i8 2}
!6190 = !DILocation(line: 477, column: 6, scope: !6059)
!6191 = !DILocation(line: 478, column: 3, scope: !6188)
!6192 = !DILocation(line: 478, column: 3, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6194, file: !276, line: 478, column: 3)
!6194 = distinct !DILexicalBlock(scope: !6188, file: !276, line: 478, column: 3)
!6195 = !{i32 -2143558177}
!6196 = !DILocation(line: 478, column: 3, scope: !6194)
!6197 = !DILocation(line: 480, column: 3, scope: !6188)
!6198 = !DILocation(line: 480, column: 3, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6188, file: !276, line: 480, column: 3)
!6200 = !DILocation(line: 480, column: 3, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6199, file: !276, line: 480, column: 3)
!6202 = !DILocation(line: 480, column: 3, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6199, file: !276, line: 480, column: 3)
!6204 = !{i64 2151409322, i64 2151409351, i64 2151409397, i64 2151409455, i64 2151409509, i64 2151409563, i64 2151409618, i64 2151409649}
!6205 = !DILocation(line: 483, column: 2, scope: !6059)
!6206 = !DILocation(line: 484, column: 1, scope: !6059)
!6207 = !DISubprogram(name: "kmalloc_trace", scope: !276, file: !276, line: 525, type: !6208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{!41, !3115, !286, !56}
!6210 = distinct !DISubprogram(name: "kmalloc_type", scope: !276, file: !276, line: 401, type: !6211, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6213)
!6211 = !DISubroutineType(types: !6212)
!6212 = !{!275, !286, !60}
!6213 = !{!6214, !6215}
!6214 = !DILocalVariable(name: "flags", arg: 1, scope: !6210, file: !276, line: 401, type: !286)
!6215 = !DILocalVariable(name: "caller", arg: 2, scope: !6210, file: !276, line: 401, type: !60)
!6216 = !DILocation(line: 401, column: 67, scope: !6210)
!6217 = !DILocation(line: 401, column: 88, scope: !6210)
!6218 = !DILocation(line: 407, column: 6, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6210, file: !276, line: 407, column: 6)
!6220 = !DILocation(line: 407, column: 6, scope: !6210)
!6221 = !DILocation(line: 413, column: 3, scope: !6219)
!6222 = !DILocation(line: 423, column: 38, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6210, file: !276, line: 423, column: 6)
!6224 = !DILocation(line: 423, column: 44, scope: !6223)
!6225 = !DILocation(line: 423, column: 6, scope: !6210)
!6226 = !DILocation(line: 424, column: 3, scope: !6223)
!6227 = !DILocation(line: 426, column: 3, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6210, file: !276, line: 425, column: 6)
!6229 = !DILocation(line: 429, column: 1, scope: !6210)
!6230 = !DISubprogram(name: "__kmalloc", scope: !276, file: !276, line: 488, type: !5930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6231 = !DISubprogram(name: "__compiletime_assert_117", scope: !276, file: !276, line: 478, type: !300, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6232 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5655, file: !5655, line: 80, type: !5656, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6233)
!6233 = !{!6234, !6235}
!6234 = !DILocalVariable(name: "v", arg: 1, scope: !6232, file: !5655, line: 80, type: !5658)
!6235 = !DILocalVariable(name: "size", arg: 2, scope: !6232, file: !5655, line: 80, type: !56)
!6236 = !DILocation(line: 80, column: 74, scope: !6232)
!6237 = !DILocation(line: 80, column: 84, scope: !6232)
!6238 = !DILocation(line: 82, column: 20, scope: !6232)
!6239 = !DILocation(line: 82, column: 23, scope: !6232)
!6240 = !DILocation(line: 82, column: 2, scope: !6232)
!6241 = !DILocation(line: 83, column: 2, scope: !6232)
!6242 = !DILocation(line: 84, column: 1, scope: !6232)
!6243 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5672, file: !5672, line: 488, type: !5966, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6244)
!6244 = !{!6245, !6246}
!6245 = !DILocalVariable(name: "v", arg: 1, scope: !6243, file: !5672, line: 488, type: !5758)
!6246 = !DILocalVariable(name: "i", arg: 2, scope: !6243, file: !5672, line: 488, type: !43)
!6247 = !DILocation(line: 488, column: 26, scope: !6243)
!6248 = !DILocation(line: 488, column: 33, scope: !6243)
!6249 = !DILocation(line: 490, column: 18, scope: !6243)
!6250 = !DILocation(line: 490, column: 21, scope: !6243)
!6251 = !DILocation(line: 490, column: 2, scope: !6243)
!6252 = !DILocation(line: 491, column: 1, scope: !6243)
!6253 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5702, file: !5702, line: 26, type: !5966, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6254)
!6254 = !{!6255, !6256}
!6255 = !DILocalVariable(name: "v", arg: 1, scope: !6253, file: !5702, line: 26, type: !5758)
!6256 = !DILocalVariable(name: "i", arg: 2, scope: !6253, file: !5702, line: 26, type: !43)
!6257 = !DILocation(line: 26, column: 55, scope: !6253)
!6258 = !DILocation(line: 26, column: 62, scope: !6253)
!6259 = !DILocation(line: 28, column: 2, scope: !6253)
!6260 = !DILocation(line: 28, column: 2, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6253, file: !5702, line: 28, column: 2)
!6262 = !DILocation(line: 29, column: 1, scope: !6253)
