; ModuleID = 'drivers/dma-buf/sync_file.c'
source_filename = "drivers/dma-buf/sync_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sync_file_create: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sync_file_create ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sync_file_get_fence: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad sync_file_get_fence ; .previous"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.sync_file = type { ptr, [32 x i8], %struct.list_head, %struct.wait_queue_head, i64, ptr, %struct.dma_fence_cb }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.13, i64, i64, i64, %struct.kref, i32 }
%union.anon.13 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.file = type { %union.anon.14, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.sync_merge_data = type { [32 x i8], i32, i32, i32, i32 }
%struct.dma_fence_unwrap = type { ptr, ptr, i32 }
%struct.sync_file_info = type { [32 x i8], i32, i32, i32, i32, i64 }
%struct.sync_fence_info = type { [32 x i8], [32 x i8], i32, i32, i64 }

@__UNIQUE_ID___addressable_sync_file_create253 = internal global ptr @sync_file_create, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_sync_file_get_fence254 = internal global ptr @sync_file_get_fence, section ".discard.addressable", align 8, !dbg !3311
@.str = private unnamed_addr constant [15 x i8] c"%s-%s%llu-%lld\00", align 1, !dbg !3313
@.str.1 = private unnamed_addr constant [10 x i8] c"sync_file\00", align 1, !dbg !3318
@sync_file_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sync_file_poll, ptr @sync_file_ioctl, ptr @compat_ptr_ioctl, ptr null, i64 0, ptr null, ptr null, ptr @sync_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !3338
@sync_file_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3323
@.str.2 = private unnamed_addr constant [15 x i8] c"&sync_file->wq\00", align 1, !dbg !3331
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3333
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !3340
@.str.5 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1, !dbg !3346
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_sync_file_create253, ptr @__UNIQUE_ID___addressable_sync_file_get_fence254], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @sync_file_create(ptr noundef %fence) #0 align 16 !dbg !3360 {
entry:
  %retval = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %sync_file = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3364, metadata !DIExpression()), !dbg !3366
  call void @llvm.lifetime.start.p0(i64 8, ptr %sync_file) #16, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %sync_file, metadata !3365, metadata !DIExpression()), !dbg !3368
  %call = call ptr @sync_file_alloc() #17, !dbg !3369
  store ptr %call, ptr %sync_file, align 8, !dbg !3370
  %0 = load ptr, ptr %sync_file, align 8, !dbg !3371
  %tobool = icmp ne ptr %0, null, !dbg !3371
  br i1 %tobool, label %if.end, label %if.then, !dbg !3373

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3374

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !3375
  %call1 = call ptr @dma_fence_get(ptr noundef %1) #17, !dbg !3376
  %2 = load ptr, ptr %sync_file, align 8, !dbg !3377
  %fence2 = getelementptr inbounds %struct.sync_file, ptr %2, i32 0, i32 5, !dbg !3378
  store ptr %call1, ptr %fence2, align 8, !dbg !3379
  %3 = load ptr, ptr %sync_file, align 8, !dbg !3380
  store ptr %3, ptr %retval, align 8, !dbg !3381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3381

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sync_file) #16, !dbg !3382
  %4 = load ptr, ptr %retval, align 8, !dbg !3382
  ret ptr %4, !dbg !3382
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sync_file_alloc() #0 align 16 !dbg !3325 {
entry:
  %retval = alloca ptr, align 8
  %sync_file = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sync_file) #16, !dbg !3383
  call void @llvm.dbg.declare(metadata ptr %sync_file, metadata !3329, metadata !DIExpression()), !dbg !3384
  %call = call noalias ptr @kzalloc(i64 noundef 120, i32 noundef 3264) #18, !dbg !3385
  store ptr %call, ptr %sync_file, align 8, !dbg !3386
  %0 = load ptr, ptr %sync_file, align 8, !dbg !3387
  %tobool = icmp ne ptr %0, null, !dbg !3387
  br i1 %tobool, label %if.end, label %if.then, !dbg !3389

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3390

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %sync_file, align 8, !dbg !3391
  %call1 = call ptr @anon_inode_getfile(ptr noundef @.str.1, ptr noundef @sync_file_fops, ptr noundef %1, i32 noundef 0) #17, !dbg !3392
  %2 = load ptr, ptr %sync_file, align 8, !dbg !3393
  %file = getelementptr inbounds %struct.sync_file, ptr %2, i32 0, i32 0, !dbg !3394
  store ptr %call1, ptr %file, align 8, !dbg !3395
  %3 = load ptr, ptr %sync_file, align 8, !dbg !3396
  %file2 = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 0, !dbg !3398
  %4 = load ptr, ptr %file2, align 8, !dbg !3398
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %4) #17, !dbg !3399
  br i1 %call3, label %if.then4, label %if.end5, !dbg !3400

if.then4:                                         ; preds = %if.end
  br label %err, !dbg !3401

if.end5:                                          ; preds = %if.end
  br label %do.body, !dbg !3402

do.body:                                          ; preds = %if.end5
  %5 = load ptr, ptr %sync_file, align 8, !dbg !3403
  %wq = getelementptr inbounds %struct.sync_file, ptr %5, i32 0, i32 3, !dbg !3403
  call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef @.str.2, ptr noundef @sync_file_alloc.__key) #17, !dbg !3403
  br label %do.cond, !dbg !3403

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3403

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %sync_file, align 8, !dbg !3405
  %cb = getelementptr inbounds %struct.sync_file, ptr %6, i32 0, i32 6, !dbg !3406
  %node = getelementptr inbounds %struct.dma_fence_cb, ptr %cb, i32 0, i32 0, !dbg !3407
  call void @INIT_LIST_HEAD(ptr noundef %node) #17, !dbg !3408
  %7 = load ptr, ptr %sync_file, align 8, !dbg !3409
  store ptr %7, ptr %retval, align 8, !dbg !3410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3410

err:                                              ; preds = %if.then4
  call void @llvm.dbg.label(metadata !3330), !dbg !3411
  %8 = load ptr, ptr %sync_file, align 8, !dbg !3412
  call void @kfree(ptr noundef %8) #17, !dbg !3413
  store ptr null, ptr %retval, align 8, !dbg !3414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3414

cleanup:                                          ; preds = %err, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sync_file) #16, !dbg !3415
  %9 = load ptr, ptr %retval, align 8, !dbg !3415
  ret ptr %9, !dbg !3415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #3 align 16 !dbg !3416 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !3420, metadata !DIExpression()), !dbg !3421
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !3422
  %tobool = icmp ne ptr %0, null, !dbg !3422
  br i1 %tobool, label %if.then, label %if.end, !dbg !3424

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !3425
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !3426
  call void @kref_get(ptr noundef %refcount) #17, !dbg !3427
  br label %if.end, !dbg !3427

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !3428
  ret ptr %2, !dbg !3429
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @sync_file_get_fence(i32 noundef %fd) #0 align 16 !dbg !3430 {
entry:
  %retval = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %sync_file = alloca ptr, align 8
  %fence = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !3434, metadata !DIExpression()), !dbg !3437
  call void @llvm.lifetime.start.p0(i64 8, ptr %sync_file) #16, !dbg !3438
  call void @llvm.dbg.declare(metadata ptr %sync_file, metadata !3435, metadata !DIExpression()), !dbg !3439
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #16, !dbg !3440
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !3436, metadata !DIExpression()), !dbg !3441
  %0 = load i32, ptr %fd.addr, align 4, !dbg !3442
  %call = call ptr @sync_file_fdget(i32 noundef %0) #17, !dbg !3443
  store ptr %call, ptr %sync_file, align 8, !dbg !3444
  %1 = load ptr, ptr %sync_file, align 8, !dbg !3445
  %tobool = icmp ne ptr %1, null, !dbg !3445
  br i1 %tobool, label %if.end, label %if.then, !dbg !3447

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3448

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sync_file, align 8, !dbg !3449
  %fence1 = getelementptr inbounds %struct.sync_file, ptr %2, i32 0, i32 5, !dbg !3450
  %3 = load ptr, ptr %fence1, align 8, !dbg !3450
  %call2 = call ptr @dma_fence_get(ptr noundef %3) #17, !dbg !3451
  store ptr %call2, ptr %fence, align 8, !dbg !3452
  %4 = load ptr, ptr %sync_file, align 8, !dbg !3453
  %file = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 0, !dbg !3454
  %5 = load ptr, ptr %file, align 8, !dbg !3454
  call void @fput(ptr noundef %5) #17, !dbg !3455
  %6 = load ptr, ptr %fence, align 8, !dbg !3456
  store ptr %6, ptr %retval, align 8, !dbg !3457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3457

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #16, !dbg !3458
  call void @llvm.lifetime.end.p0(i64 8, ptr %sync_file) #16, !dbg !3458
  %7 = load ptr, ptr %retval, align 8, !dbg !3458
  ret ptr %7, !dbg !3458
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sync_file_fdget(i32 noundef %fd) #0 align 16 !dbg !3459 {
entry:
  %retval = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !3463, metadata !DIExpression()), !dbg !3466
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #16, !dbg !3467
  call void @llvm.dbg.declare(metadata ptr %file, metadata !3464, metadata !DIExpression()), !dbg !3468
  %0 = load i32, ptr %fd.addr, align 4, !dbg !3469
  %call = call ptr @fget(i32 noundef %0) #17, !dbg !3470
  store ptr %call, ptr %file, align 8, !dbg !3468
  %1 = load ptr, ptr %file, align 8, !dbg !3471
  %tobool = icmp ne ptr %1, null, !dbg !3471
  br i1 %tobool, label %if.end, label %if.then, !dbg !3473

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3474

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file, align 8, !dbg !3475
  %f_op = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 12, !dbg !3477
  %3 = load ptr, ptr %f_op, align 8, !dbg !3477
  %cmp = icmp ne ptr %3, @sync_file_fops, !dbg !3478
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3479

if.then1:                                         ; preds = %if.end
  br label %err, !dbg !3480

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %file, align 8, !dbg !3481
  %private_data = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15, !dbg !3482
  %5 = load ptr, ptr %private_data, align 8, !dbg !3482
  store ptr %5, ptr %retval, align 8, !dbg !3483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3483

err:                                              ; preds = %if.then1
  call void @llvm.dbg.label(metadata !3465), !dbg !3484
  %6 = load ptr, ptr %file, align 8, !dbg !3485
  call void @fput(ptr noundef %6) #17, !dbg !3486
  store ptr null, ptr %retval, align 8, !dbg !3487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3487

cleanup:                                          ; preds = %err, %if.end2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #16, !dbg !3488
  %7 = load ptr, ptr %retval, align 8, !dbg !3488
  ret ptr %7, !dbg !3488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3489 dso_local void @fput(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @sync_file_get_name(ptr noundef %sync_file, ptr noundef %buf, i32 noundef %len) #0 align 16 !dbg !3491 {
entry:
  %sync_file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %fence = alloca ptr, align 8
  store ptr %sync_file, ptr %sync_file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sync_file.addr, metadata !3495, metadata !DIExpression()), !dbg !3501
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3496, metadata !DIExpression()), !dbg !3502
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3497, metadata !DIExpression()), !dbg !3503
  %0 = load ptr, ptr %sync_file.addr, align 8, !dbg !3504
  %user_name = getelementptr inbounds %struct.sync_file, ptr %0, i32 0, i32 1, !dbg !3505
  %arrayidx = getelementptr [32 x i8], ptr %user_name, i64 0, i64 0, !dbg !3504
  %1 = load i8, ptr %arrayidx, align 8, !dbg !3504
  %tobool = icmp ne i8 %1, 0, !dbg !3504
  br i1 %tobool, label %if.then, label %if.else, !dbg !3506

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !3507
  %3 = load ptr, ptr %sync_file.addr, align 8, !dbg !3509
  %user_name1 = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 1, !dbg !3510
  %arraydecay = getelementptr inbounds [32 x i8], ptr %user_name1, i64 0, i64 0, !dbg !3509
  %4 = load i32, ptr %len.addr, align 4, !dbg !3511
  %conv = sext i32 %4 to i64, !dbg !3511
  %call = call i64 @strscpy(ptr noundef %2, ptr noundef %arraydecay, i64 noundef %conv) #17, !dbg !3512
  br label %if.end, !dbg !3513

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #16, !dbg !3514
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !3498, metadata !DIExpression()), !dbg !3515
  %5 = load ptr, ptr %sync_file.addr, align 8, !dbg !3516
  %fence2 = getelementptr inbounds %struct.sync_file, ptr %5, i32 0, i32 5, !dbg !3517
  %6 = load ptr, ptr %fence2, align 8, !dbg !3517
  store ptr %6, ptr %fence, align 8, !dbg !3515
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !3518
  %8 = load i32, ptr %len.addr, align 4, !dbg !3519
  %conv3 = sext i32 %8 to i64, !dbg !3519
  %9 = load ptr, ptr %fence, align 8, !dbg !3520
  %ops = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 1, !dbg !3521
  %10 = load ptr, ptr %ops, align 8, !dbg !3521
  %get_driver_name = getelementptr inbounds %struct.dma_fence_ops, ptr %10, i32 0, i32 1, !dbg !3522
  %11 = load ptr, ptr %get_driver_name, align 8, !dbg !3522
  %12 = load ptr, ptr %fence, align 8, !dbg !3523
  %call4 = call ptr %11(ptr noundef %12) #17, !dbg !3520
  %13 = load ptr, ptr %fence, align 8, !dbg !3524
  %ops5 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1, !dbg !3525
  %14 = load ptr, ptr %ops5, align 8, !dbg !3525
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, ptr %14, i32 0, i32 2, !dbg !3526
  %15 = load ptr, ptr %get_timeline_name, align 8, !dbg !3526
  %16 = load ptr, ptr %fence, align 8, !dbg !3527
  %call6 = call ptr %15(ptr noundef %16) #17, !dbg !3524
  %17 = load ptr, ptr %fence, align 8, !dbg !3528
  %context = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 3, !dbg !3529
  %18 = load i64, ptr %context, align 8, !dbg !3529
  %19 = load ptr, ptr %fence, align 8, !dbg !3530
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %19, i32 0, i32 4, !dbg !3531
  %20 = load i64, ptr %seqno, align 8, !dbg !3531
  %call7 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %7, i64 noundef %conv3, ptr noundef @.str, ptr noundef %call4, ptr noundef %call6, i64 noundef %18, i64 noundef %20) #17, !dbg !3532
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #16, !dbg !3533
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !3534
  ret ptr %21, !dbg !3535
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3536 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3540 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !3544 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3548, metadata !DIExpression()), !dbg !3550
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3549, metadata !DIExpression()), !dbg !3551
  %0 = load i64, ptr %size.addr, align 8, !dbg !3552
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3553
  %or = or i32 %1, 256, !dbg !3554
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !3555
  ret ptr %call, !dbg !3556
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3557 dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !3561 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3568, metadata !DIExpression()), !dbg !3569
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3570
  %1 = ptrtoint ptr %0 to i64, !dbg !3570
  %2 = inttoptr i64 %1 to ptr, !dbg !3570
  %3 = ptrtoint ptr %2 to i64, !dbg !3570
  %cmp = icmp uge i64 %3, -4095, !dbg !3570
  %lnot = xor i1 %cmp, true, !dbg !3570
  %lnot1 = xor i1 %lnot, true, !dbg !3570
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3570
  %conv = sext i32 %lnot.ext to i64, !dbg !3570
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3570
  %tobool = icmp ne i64 %expval, 0, !dbg !3570
  ret i1 %tobool, !dbg !3571
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3572 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !3577 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3582, metadata !DIExpression()), !dbg !3583
  br label %do.body, !dbg !3584

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3585

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3587

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3585

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3589
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3589
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3589
  store volatile ptr %0, ptr %next, align 8, !dbg !3589
  br label %do.end3, !dbg !3589

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3585

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3591

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3592

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3594

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3592

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3596
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3596
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3596
  store volatile ptr %2, ptr %prev, align 8, !dbg !3596
  br label %do.end9, !dbg !3596

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3592

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3598
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3599 dso_local void @kfree(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !3602 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3604, metadata !DIExpression()), !dbg !3609
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3605, metadata !DIExpression()), !dbg !3610
  %0 = load i64, ptr %size.addr, align 8, !dbg !3611
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3612
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3613

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3614
  %tobool = icmp ne i64 %2, 0, !dbg !3614
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3615

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !3616
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3606, metadata !DIExpression()), !dbg !3617
  %3 = load i64, ptr %size.addr, align 8, !dbg !3618
  %cmp = icmp ugt i64 %3, 8192, !dbg !3620
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3621

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3622
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3623
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !3624
  store ptr %call, ptr %retval, align 8, !dbg !3625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3625

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3626
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !3626
  store i32 %call2, ptr %index, align 4, !dbg !3627
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3628
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3629
  %9 = ptrtoint ptr %8 to i64, !dbg !3629
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !3630
  %idxprom = zext i32 %call3 to i64, !dbg !3631
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3631
  %10 = load i32, ptr %index, align 4, !dbg !3632
  %idxprom4 = zext i32 %10 to i64, !dbg !3631
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3631
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3631
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3633
  %13 = load i64, ptr %size.addr, align 8, !dbg !3634
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !3635
  store ptr %call6, ptr %retval, align 8, !dbg !3636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3636

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !3637
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3638
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3639
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !3640
  store ptr %call8, ptr %retval, align 8, !dbg !3641
  br label %return, !dbg !3641

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3642
  ret ptr %16, !dbg !3642
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3643 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !3644 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3648, metadata !DIExpression()), !dbg !3650
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3649, metadata !DIExpression()), !dbg !3651
  %0 = load i64, ptr %size.addr, align 8, !dbg !3652
  %tobool = icmp ne i64 %0, 0, !dbg !3652
  br i1 %tobool, label %if.end, label %if.then, !dbg !3654

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3655
  br label %return, !dbg !3655

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3656
  %cmp = icmp ule i64 %1, 8, !dbg !3658
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3659

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3660
  br label %return, !dbg !3660

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3661
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3663
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3664

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3665
  %cmp4 = icmp ule i64 %3, 96, !dbg !3666
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3667

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3668
  br label %return, !dbg !3668

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3669
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3671
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3672

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3673
  %cmp9 = icmp ule i64 %5, 192, !dbg !3674
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3675

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3676
  br label %return, !dbg !3676

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3677
  %cmp12 = icmp ule i64 %6, 8, !dbg !3679
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3680

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3681
  br label %return, !dbg !3681

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3682
  %cmp15 = icmp ule i64 %7, 16, !dbg !3684
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3685

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3686
  br label %return, !dbg !3686

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3687
  %cmp18 = icmp ule i64 %8, 32, !dbg !3689
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3690

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3691
  br label %return, !dbg !3691

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3692
  %cmp21 = icmp ule i64 %9, 64, !dbg !3694
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3695

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3696
  br label %return, !dbg !3696

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3697
  %cmp24 = icmp ule i64 %10, 128, !dbg !3699
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3700

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3701
  br label %return, !dbg !3701

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3702
  %cmp27 = icmp ule i64 %11, 256, !dbg !3704
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3705

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3706
  br label %return, !dbg !3706

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3707
  %cmp30 = icmp ule i64 %12, 512, !dbg !3709
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3710

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3711
  br label %return, !dbg !3711

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3712
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3714
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3715

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3716
  br label %return, !dbg !3716

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3717
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3719
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3720

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3721
  br label %return, !dbg !3721

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3722
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3724
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3725

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3726
  br label %return, !dbg !3726

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3727
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3729
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3730

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3731
  br label %return, !dbg !3731

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3732
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3734
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3735

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3736
  br label %return, !dbg !3736

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3737
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3739
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3740

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3741
  br label %return, !dbg !3741

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3742
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3744
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3745

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3746
  br label %return, !dbg !3746

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3747
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3749
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3750

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3751
  br label %return, !dbg !3751

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3752
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3754
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3755

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3756
  br label %return, !dbg !3756

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3757
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3759
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3760

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3761
  br label %return, !dbg !3761

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3762
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3764
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3765

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3766
  br label %return, !dbg !3766

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3767
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3769
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3770

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3771
  br label %return, !dbg !3771

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3772, !range !3774, !noundef !815
  %tobool69 = trunc i8 %25 to i1, !dbg !3772
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3775

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3776

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !3777, !srcloc !3780
  unreachable, !dbg !3777

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3781

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3782

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3783

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3785

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3783

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #16, !dbg !3787, !srcloc !3789
  br label %do.end75, !dbg !3787

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3783

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3790
  br label %return, !dbg !3790

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3791
  ret i32 %26, !dbg !3791
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3792 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !3798 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3802, metadata !DIExpression()), !dbg !3804
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3803, metadata !DIExpression()), !dbg !3805
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3806
  %and = and i32 %0, 17, !dbg !3806
  %cmp = icmp eq i32 %and, 0, !dbg !3806
  %lnot = xor i1 %cmp, true, !dbg !3806
  %lnot1 = xor i1 %lnot, true, !dbg !3806
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3806
  %conv = sext i32 %lnot.ext to i64, !dbg !3806
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3806
  %tobool = icmp ne i64 %expval, 0, !dbg !3806
  br i1 %tobool, label %if.then, label %if.end, !dbg !3808

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3809
  br label %return, !dbg !3809

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3810
  %and2 = and i32 %1, 1, !dbg !3812
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3812
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3813

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3814
  br label %return, !dbg !3814

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3815
  br label %return, !dbg !3815

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3817
  ret i32 %2, !dbg !3817
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3818 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3819 dso_local void @__compiletime_assert_245() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sync_file_poll(ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !3820 {
entry:
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %sync_file = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3826, metadata !DIExpression()), !dbg !3829
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.lifetime.start.p0(i64 8, ptr %sync_file) #16, !dbg !3831
  call void @llvm.dbg.declare(metadata ptr %sync_file, metadata !3828, metadata !DIExpression()), !dbg !3832
  %0 = load ptr, ptr %file.addr, align 8, !dbg !3833
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !3834
  %1 = load ptr, ptr %private_data, align 8, !dbg !3834
  store ptr %1, ptr %sync_file, align 8, !dbg !3832
  %2 = load ptr, ptr %file.addr, align 8, !dbg !3835
  %3 = load ptr, ptr %sync_file, align 8, !dbg !3836
  %wq = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 3, !dbg !3837
  %4 = load ptr, ptr %wait.addr, align 8, !dbg !3838
  call void @poll_wait(ptr noundef %2, ptr noundef %wq, ptr noundef %4) #17, !dbg !3839
  %5 = load ptr, ptr %sync_file, align 8, !dbg !3840
  %cb = getelementptr inbounds %struct.sync_file, ptr %5, i32 0, i32 6, !dbg !3842
  %node = getelementptr inbounds %struct.dma_fence_cb, ptr %cb, i32 0, i32 0, !dbg !3843
  %call = call i32 @list_empty(ptr noundef %node) #17, !dbg !3844
  %tobool = icmp ne i32 %call, 0, !dbg !3844
  br i1 %tobool, label %land.lhs.true, label %if.end7, !dbg !3845

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %sync_file, align 8, !dbg !3846
  %flags = getelementptr inbounds %struct.sync_file, ptr %6, i32 0, i32 4, !dbg !3847
  %call1 = call zeroext i1 @test_and_set_bit(i64 noundef 0, ptr noundef %flags) #17, !dbg !3848
  br i1 %call1, label %if.end7, label %if.then, !dbg !3849

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %sync_file, align 8, !dbg !3850
  %fence = getelementptr inbounds %struct.sync_file, ptr %7, i32 0, i32 5, !dbg !3853
  %8 = load ptr, ptr %fence, align 8, !dbg !3853
  %9 = load ptr, ptr %sync_file, align 8, !dbg !3854
  %cb2 = getelementptr inbounds %struct.sync_file, ptr %9, i32 0, i32 6, !dbg !3855
  %call3 = call i32 @dma_fence_add_callback(ptr noundef %8, ptr noundef %cb2, ptr noundef @fence_check_cb_func) #17, !dbg !3856
  %cmp = icmp slt i32 %call3, 0, !dbg !3857
  br i1 %cmp, label %if.then4, label %if.end, !dbg !3858

if.then4:                                         ; preds = %if.then
  %10 = load ptr, ptr %sync_file, align 8, !dbg !3859
  %wq5 = getelementptr inbounds %struct.sync_file, ptr %10, i32 0, i32 3, !dbg !3859
  %call6 = call i32 @__wake_up(ptr noundef %wq5, i32 noundef 3, i32 noundef 0, ptr noundef null) #17, !dbg !3859
  br label %if.end, !dbg !3859

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end7, !dbg !3860

if.end7:                                          ; preds = %if.end, %land.lhs.true, %entry
  %11 = load ptr, ptr %sync_file, align 8, !dbg !3861
  %fence8 = getelementptr inbounds %struct.sync_file, ptr %11, i32 0, i32 5, !dbg !3862
  %12 = load ptr, ptr %fence8, align 8, !dbg !3862
  %call9 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %12) #17, !dbg !3863
  %13 = zext i1 %call9 to i64, !dbg !3863
  %cond = select i1 %call9, i32 1, i32 0, !dbg !3863
  call void @llvm.lifetime.end.p0(i64 8, ptr %sync_file) #16, !dbg !3864
  ret i32 %cond, !dbg !3865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sync_file_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !3866 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %sync_file = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3868, metadata !DIExpression()), !dbg !3872
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !3869, metadata !DIExpression()), !dbg !3873
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !3870, metadata !DIExpression()), !dbg !3874
  call void @llvm.lifetime.start.p0(i64 8, ptr %sync_file) #16, !dbg !3875
  call void @llvm.dbg.declare(metadata ptr %sync_file, metadata !3871, metadata !DIExpression()), !dbg !3876
  %0 = load ptr, ptr %file.addr, align 8, !dbg !3877
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !3878
  %1 = load ptr, ptr %private_data, align 8, !dbg !3878
  store ptr %1, ptr %sync_file, align 8, !dbg !3876
  %2 = load i32, ptr %cmd.addr, align 4, !dbg !3879
  switch i32 %2, label %sw.default [
    i32 -1070580221, label %sw.bb
    i32 -1070055932, label %sw.bb1
  ], !dbg !3880

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %sync_file, align 8, !dbg !3881
  %4 = load i64, ptr %arg.addr, align 8, !dbg !3883
  %call = call i64 @sync_file_ioctl_merge(ptr noundef %3, i64 noundef %4) #17, !dbg !3884
  store i64 %call, ptr %retval, align 8, !dbg !3885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3885

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %sync_file, align 8, !dbg !3886
  %6 = load i64, ptr %arg.addr, align 8, !dbg !3887
  %call2 = call i64 @sync_file_ioctl_fence_info(ptr noundef %5, i64 noundef %6) #17, !dbg !3888
  store i64 %call2, ptr %retval, align 8, !dbg !3889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3889

sw.default:                                       ; preds = %entry
  store i64 -25, ptr %retval, align 8, !dbg !3890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3890

cleanup:                                          ; preds = %sw.default, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %sync_file) #16, !dbg !3891
  %7 = load i64, ptr %retval, align 8, !dbg !3891
  ret i64 %7, !dbg !3891
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @compat_ptr_ioctl(ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sync_file_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !3892 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %sync_file = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3894, metadata !DIExpression()), !dbg !3897
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3895, metadata !DIExpression()), !dbg !3898
  call void @llvm.lifetime.start.p0(i64 8, ptr %sync_file) #16, !dbg !3899
  call void @llvm.dbg.declare(metadata ptr %sync_file, metadata !3896, metadata !DIExpression()), !dbg !3900
  %0 = load ptr, ptr %file.addr, align 8, !dbg !3901
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !3902
  %1 = load ptr, ptr %private_data, align 8, !dbg !3902
  store ptr %1, ptr %sync_file, align 8, !dbg !3900
  %2 = load ptr, ptr %sync_file, align 8, !dbg !3903
  %flags = getelementptr inbounds %struct.sync_file, ptr %2, i32 0, i32 4, !dbg !3903
  %3 = ptrtoint ptr %flags to i64, !dbg !3903
  %cmp = icmp ne i64 %3, 0, !dbg !3903
  %conv = zext i1 %cmp to i32, !dbg !3903
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !3903
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !3903

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %sync_file, align 8, !dbg !3903
  %flags1 = getelementptr inbounds %struct.sync_file, ptr %5, i32 0, i32 4, !dbg !3903
  %6 = ptrtoint ptr %flags1 to i64, !dbg !3903
  %cmp2 = icmp ne i64 %6, 0, !dbg !3903
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !3903

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %sync_file, align 8, !dbg !3903
  %flags5 = getelementptr inbounds %struct.sync_file, ptr %7, i32 0, i32 4, !dbg !3903
  %8 = load i64, ptr %flags5, align 8, !dbg !3903
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3903
  br i1 %9, label %cond.true, label %cond.false, !dbg !3905

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load ptr, ptr %sync_file, align 8, !dbg !3903
  %flags6 = getelementptr inbounds %struct.sync_file, ptr %10, i32 0, i32 4, !dbg !3903
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #17, !dbg !3903
  br i1 %call, label %if.then, label %if.end, !dbg !3903

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %11 = load ptr, ptr %sync_file, align 8, !dbg !3903
  %flags8 = getelementptr inbounds %struct.sync_file, ptr %11, i32 0, i32 4, !dbg !3903
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #17, !dbg !3903
  br i1 %call9, label %if.then, label %if.end, !dbg !3905

if.then:                                          ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %sync_file, align 8, !dbg !3906
  %fence = getelementptr inbounds %struct.sync_file, ptr %12, i32 0, i32 5, !dbg !3907
  %13 = load ptr, ptr %fence, align 8, !dbg !3907
  %14 = load ptr, ptr %sync_file, align 8, !dbg !3908
  %cb = getelementptr inbounds %struct.sync_file, ptr %14, i32 0, i32 6, !dbg !3909
  %call11 = call zeroext i1 @dma_fence_remove_callback(ptr noundef %13, ptr noundef %cb) #17, !dbg !3910
  br label %if.end, !dbg !3910

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %15 = load ptr, ptr %sync_file, align 8, !dbg !3911
  %fence12 = getelementptr inbounds %struct.sync_file, ptr %15, i32 0, i32 5, !dbg !3912
  %16 = load ptr, ptr %fence12, align 8, !dbg !3912
  call void @dma_fence_put(ptr noundef %16) #17, !dbg !3913
  %17 = load ptr, ptr %sync_file, align 8, !dbg !3914
  call void @kfree(ptr noundef %17) #17, !dbg !3915
  call void @llvm.lifetime.end.p0(i64 8, ptr %sync_file) #16, !dbg !3916
  ret i32 0, !dbg !3917
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #3 align 16 !dbg !3918 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !3922, metadata !DIExpression()), !dbg !3925
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !3923, metadata !DIExpression()), !dbg !3926
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3924, metadata !DIExpression()), !dbg !3927
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3928
  %tobool = icmp ne ptr %0, null, !dbg !3928
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3930

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !3931
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !3932
  %2 = load ptr, ptr %_qproc, align 8, !dbg !3932
  %tobool1 = icmp ne ptr %2, null, !dbg !3931
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !3933

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !3934
  %tobool3 = icmp ne ptr %3, null, !dbg !3934
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3935

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !3936
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !3938
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !3938
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !3939
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !3940
  %8 = load ptr, ptr %p.addr, align 8, !dbg !3941
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #17, !dbg !3936
  br label %do.body, !dbg !3942

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !3943

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !3945

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3943, !srcloc !3947
  br label %do.end6, !dbg !3943

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !3948

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !3949
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !3950 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3956, metadata !DIExpression()), !dbg !3957
  br label %do.body, !dbg !3958

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3960

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3958
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3958
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3958
  store ptr %1, ptr %tmp, align 8, !dbg !3960
  %2 = load ptr, ptr %tmp, align 8, !dbg !3958
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3962
  %cmp = icmp eq ptr %2, %3, !dbg !3963
  %conv = zext i1 %cmp to i32, !dbg !3963
  ret i32 %conv, !dbg !3964
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !3965 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3972, metadata !DIExpression()), !dbg !3974
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3973, metadata !DIExpression()), !dbg !3975
  br label %do.body, !dbg !3976

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3977

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3979
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3980
  %div = sdiv i64 %1, 64, !dbg !3980
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3981
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !3982
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3983
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3984
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !3985
  ret i1 %call, !dbg !3986
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3987 dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fence_check_cb_func(ptr noundef %f, ptr noundef %cb) #0 align 16 !dbg !3990 {
entry:
  %f.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %sync_file = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !3992, metadata !DIExpression()), !dbg !3997
  store ptr %cb, ptr %cb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !3993, metadata !DIExpression()), !dbg !3998
  call void @llvm.lifetime.start.p0(i64 8, ptr %sync_file) #16, !dbg !3999
  call void @llvm.dbg.declare(metadata ptr %sync_file, metadata !3994, metadata !DIExpression()), !dbg !4000
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4001
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3995, metadata !DIExpression()), !dbg !4001
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !4001
  store ptr %0, ptr %__mptr, align 8, !dbg !4001
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4001
  %add.ptr = getelementptr i8, ptr %1, i64 -96, !dbg !4001
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4001
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4002
  %2 = load ptr, ptr %tmp, align 8, !dbg !4001
  store ptr %2, ptr %sync_file, align 8, !dbg !4003
  %3 = load ptr, ptr %sync_file, align 8, !dbg !4004
  %wq = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 3, !dbg !4004
  %call = call i32 @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #17, !dbg !4004
  call void @llvm.lifetime.end.p0(i64 8, ptr %sync_file) #16, !dbg !4005
  ret void, !dbg !4005
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4006 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_signaled(ptr noundef %fence) #3 align 16 !dbg !4009 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4011, metadata !DIExpression()), !dbg !4012
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4013
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !4013
  %1 = ptrtoint ptr %flags to i64, !dbg !4013
  %cmp = icmp ne i64 %1, 0, !dbg !4013
  %conv = zext i1 %cmp to i32, !dbg !4013
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4013
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !4013

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !4013
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !4013
  %4 = ptrtoint ptr %flags1 to i64, !dbg !4013
  %cmp2 = icmp ne i64 %4, 0, !dbg !4013
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !4013

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !4013
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !4013
  %6 = load i64, ptr %flags5, align 8, !dbg !4013
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4013
  br i1 %7, label %cond.true, label %cond.false, !dbg !4015

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !4013
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !4013
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #17, !dbg !4013
  br i1 %call, label %if.then, label %if.end, !dbg !4013

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !4013
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !4013
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #17, !dbg !4013
  br i1 %call9, label %if.then, label %if.end, !dbg !4015

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !4016
  br label %return, !dbg !4016

if.end:                                           ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %fence.addr, align 8, !dbg !4017
  %ops = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 1, !dbg !4019
  %11 = load ptr, ptr %ops, align 8, !dbg !4019
  %signaled = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 4, !dbg !4020
  %12 = load ptr, ptr %signaled, align 8, !dbg !4020
  %tobool = icmp ne ptr %12, null, !dbg !4017
  br i1 %tobool, label %land.lhs.true11, label %if.end18, !dbg !4021

land.lhs.true11:                                  ; preds = %if.end
  %13 = load ptr, ptr %fence.addr, align 8, !dbg !4022
  %ops12 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1, !dbg !4023
  %14 = load ptr, ptr %ops12, align 8, !dbg !4023
  %signaled13 = getelementptr inbounds %struct.dma_fence_ops, ptr %14, i32 0, i32 4, !dbg !4024
  %15 = load ptr, ptr %signaled13, align 8, !dbg !4024
  %16 = load ptr, ptr %fence.addr, align 8, !dbg !4025
  %call14 = call zeroext i1 %15(ptr noundef %16) #17, !dbg !4022
  br i1 %call14, label %if.then16, label %if.end18, !dbg !4026

if.then16:                                        ; preds = %land.lhs.true11
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !4027
  %call17 = call i32 @dma_fence_signal(ptr noundef %17) #17, !dbg !4029
  store i1 true, ptr %retval, align 1, !dbg !4030
  br label %return, !dbg !4030

if.end18:                                         ; preds = %land.lhs.true11, %if.end
  store i1 false, ptr %retval, align 1, !dbg !4031
  br label %return, !dbg !4031

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !4032
  ret i1 %18, !dbg !4032
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !4033 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4041, metadata !DIExpression()), !dbg !4043
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4042, metadata !DIExpression()), !dbg !4044
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4045
  %1 = load i64, ptr %size.addr, align 8, !dbg !4046
  %conv = trunc i64 %1 to i32, !dbg !4046
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !4047
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4048
  %3 = load i64, ptr %size.addr, align 8, !dbg !4048
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !4048
  ret void, !dbg !4049
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !4050 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4053, metadata !DIExpression()), !dbg !4057
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4054, metadata !DIExpression()), !dbg !4058
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !4059
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4055, metadata !DIExpression()), !dbg !4059
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4059
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4059
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #16, !dbg !4059, !srcloc !4060
  %3 = icmp ult i8 %2, 2, !dbg !4059
  call void @llvm.assume(i1 %3), !dbg !4059
  store i8 %2, ptr %c, align 1, !dbg !4059
  %4 = load i8, ptr %c, align 1, !dbg !4059, !range !3774, !noundef !815
  %tobool = trunc i8 %4 to i1, !dbg !4059
  %frombool = zext i1 %tobool to i8, !dbg !4059
  store i8 %frombool, ptr %tmp, align 1, !dbg !4059
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !4061
  %5 = load i8, ptr %tmp, align 1, !dbg !4059, !range !3774, !noundef !815
  %tobool1 = trunc i8 %5 to i1, !dbg !4059
  ret i1 %tobool1, !dbg !4062
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4063 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4068, metadata !DIExpression()), !dbg !4070
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4069, metadata !DIExpression()), !dbg !4071
  ret i1 true, !dbg !4072
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4073 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4078, metadata !DIExpression()), !dbg !4081
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4079, metadata !DIExpression()), !dbg !4082
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4080, metadata !DIExpression()), !dbg !4083
  ret void, !dbg !4084
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !4085 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4092, metadata !DIExpression()), !dbg !4097
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4093, metadata !DIExpression()), !dbg !4098
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4099
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4094, metadata !DIExpression()), !dbg !4100
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4101
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4102
  %div = udiv i64 %1, 64, !dbg !4102
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4103
  store ptr %add.ptr, ptr %p, align 8, !dbg !4100
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !4104
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4095, metadata !DIExpression()), !dbg !4105
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4106
  %rem = urem i64 %2, 64, !dbg !4106
  %shl = shl i64 1, %rem, !dbg !4106
  store i64 %shl, ptr %mask, align 8, !dbg !4105
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !4107
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4096, metadata !DIExpression()), !dbg !4108
  %3 = load ptr, ptr %p, align 8, !dbg !4109
  %4 = load i64, ptr %3, align 8, !dbg !4110
  store i64 %4, ptr %val, align 8, !dbg !4108
  %5 = load i64, ptr %val, align 8, !dbg !4111
  %6 = load i64, ptr %mask, align 8, !dbg !4112
  %and = and i64 %5, %6, !dbg !4113
  %tobool = icmp ne i64 %and, 0, !dbg !4114
  %lnot = xor i1 %tobool, true, !dbg !4114
  %lnot1 = xor i1 %lnot, true, !dbg !4115
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !4116
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !4116
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4116
  ret i1 %lnot1, !dbg !4117
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !4118 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4121, metadata !DIExpression()), !dbg !4123
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4122, metadata !DIExpression()), !dbg !4124
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4125
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4126
  %div = udiv i64 %1, 64, !dbg !4126
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4127
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !4128
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4129
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4130
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !4131
  ret i1 %call, !dbg !4132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4133 dso_local i32 @dma_fence_signal(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !4136 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4138, metadata !DIExpression()), !dbg !4140
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4139, metadata !DIExpression()), !dbg !4141
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4142
  %1 = load i64, ptr %size.addr, align 8, !dbg !4143
  %conv = trunc i64 %1 to i32, !dbg !4143
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !4144
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4145
  %3 = load i64, ptr %size.addr, align 8, !dbg !4145
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !4145
  ret void, !dbg !4146
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !4147 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4149, metadata !DIExpression()), !dbg !4151
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4150, metadata !DIExpression()), !dbg !4152
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4153
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4154
  br i1 %1, label %cond.true, label %cond.false, !dbg !4154

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4155
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4156
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !4157
  %conv = zext i1 %call to i32, !dbg !4157
  br label %cond.end, !dbg !4154

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4158
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4159
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !4160
  %conv2 = zext i1 %call1 to i32, !dbg !4160
  br label %cond.end, !dbg !4154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4154
  %tobool = icmp ne i32 %cond, 0, !dbg !4154
  ret i1 %tobool, !dbg !4161
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4162 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4164, metadata !DIExpression()), !dbg !4166
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4165, metadata !DIExpression()), !dbg !4167
  ret i1 true, !dbg !4168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !4169 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4173, metadata !DIExpression()), !dbg !4175
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4174, metadata !DIExpression()), !dbg !4176
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4177
  %and = and i64 %0, 63, !dbg !4178
  %shl = shl i64 1, %and, !dbg !4179
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4180
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4181
  %shr = ashr i64 %2, 6, !dbg !4182
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4180
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4180
  %and1 = and i64 %shl, %3, !dbg !4183
  %cmp = icmp ne i64 %and1, 0, !dbg !4184
  ret i1 %cmp, !dbg !4185
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !4186 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4188, metadata !DIExpression()), !dbg !4191
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4189, metadata !DIExpression()), !dbg !4192
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !4193
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4190, metadata !DIExpression()), !dbg !4194
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4195
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4196
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !4197, !srcloc !4198
  %3 = icmp ult i8 %2, 2, !dbg !4197
  call void @llvm.assume(i1 %3), !dbg !4197
  store i8 %2, ptr %oldbit, align 1, !dbg !4197
  %4 = load i8, ptr %oldbit, align 1, !dbg !4199, !range !3774, !noundef !815
  %tobool = trunc i8 %4 to i1, !dbg !4199
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !4200
  ret i1 %tobool, !dbg !4201
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sync_file_ioctl_merge(ptr noundef %sync_file, i64 noundef %arg) #0 align 16 !dbg !4202 {
entry:
  %retval = alloca i64, align 8
  %sync_file.addr = alloca ptr, align 8
  %arg.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %err = alloca i32, align 4
  %fence2 = alloca ptr, align 8
  %fence3 = alloca ptr, align 8
  %data = alloca %struct.sync_merge_data, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sync_file, ptr %sync_file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sync_file.addr, metadata !4206, metadata !DIExpression()), !dbg !4224
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4207, metadata !DIExpression()), !dbg !4225
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #16, !dbg !4226
  call void @llvm.dbg.declare(metadata ptr %fd, metadata !4208, metadata !DIExpression()), !dbg !4227
  %call = call i32 @get_unused_fd_flags(i32 noundef 524288) #17, !dbg !4228
  store i32 %call, ptr %fd, align 4, !dbg !4227
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4229
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4209, metadata !DIExpression()), !dbg !4230
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence2) #16, !dbg !4231
  call void @llvm.dbg.declare(metadata ptr %fence2, metadata !4210, metadata !DIExpression()), !dbg !4232
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence3) #16, !dbg !4231
  call void @llvm.dbg.declare(metadata ptr %fence3, metadata !4211, metadata !DIExpression()), !dbg !4233
  call void @llvm.lifetime.start.p0(i64 48, ptr %data) #16, !dbg !4234
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4212, metadata !DIExpression()), !dbg !4235
  %0 = load i32, ptr %fd, align 4, !dbg !4236
  %cmp = icmp slt i32 %0, 0, !dbg !4238
  br i1 %cmp, label %if.then, label %if.end, !dbg !4239

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %fd, align 4, !dbg !4240
  %conv = sext i32 %1 to i64, !dbg !4240
  store i64 %conv, ptr %retval, align 8, !dbg !4241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4241

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %arg.addr, align 8, !dbg !4242
  %3 = inttoptr i64 %2 to ptr, !dbg !4244
  %call1 = call i64 @copy_from_user(ptr noundef %data, ptr noundef %3, i64 noundef 48) #17, !dbg !4245
  %tobool = icmp ne i64 %call1, 0, !dbg !4245
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !4246

if.then2:                                         ; preds = %if.end
  store i32 -14, ptr %err, align 4, !dbg !4247
  br label %err_put_fd, !dbg !4249

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.sync_merge_data, ptr %data, i32 0, i32 3, !dbg !4250
  %4 = load i32, ptr %flags, align 4, !dbg !4250
  %tobool4 = icmp ne i32 %4, 0, !dbg !4252
  br i1 %tobool4, label %if.then6, label %lor.lhs.false, !dbg !4253

lor.lhs.false:                                    ; preds = %if.end3
  %pad = getelementptr inbounds %struct.sync_merge_data, ptr %data, i32 0, i32 4, !dbg !4254
  %5 = load i32, ptr %pad, align 4, !dbg !4254
  %tobool5 = icmp ne i32 %5, 0, !dbg !4255
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4256

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  store i32 -22, ptr %err, align 4, !dbg !4257
  br label %err_put_fd, !dbg !4259

if.end7:                                          ; preds = %lor.lhs.false
  %fd2 = getelementptr inbounds %struct.sync_merge_data, ptr %data, i32 0, i32 1, !dbg !4260
  %6 = load i32, ptr %fd2, align 4, !dbg !4260
  %call8 = call ptr @sync_file_fdget(i32 noundef %6) #17, !dbg !4261
  store ptr %call8, ptr %fence2, align 8, !dbg !4262
  %7 = load ptr, ptr %fence2, align 8, !dbg !4263
  %tobool9 = icmp ne ptr %7, null, !dbg !4263
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4265

if.then10:                                        ; preds = %if.end7
  store i32 -2, ptr %err, align 4, !dbg !4266
  br label %err_put_fd, !dbg !4268

if.end11:                                         ; preds = %if.end7
  %name = getelementptr inbounds %struct.sync_merge_data, ptr %data, i32 0, i32 0, !dbg !4269
  %arrayidx = getelementptr [32 x i8], ptr %name, i64 0, i64 31, !dbg !4270
  store i8 0, ptr %arrayidx, align 1, !dbg !4271
  %name12 = getelementptr inbounds %struct.sync_merge_data, ptr %data, i32 0, i32 0, !dbg !4272
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name12, i64 0, i64 0, !dbg !4273
  %8 = load ptr, ptr %sync_file.addr, align 8, !dbg !4274
  %9 = load ptr, ptr %fence2, align 8, !dbg !4275
  %call13 = call ptr @sync_file_merge(ptr noundef %arraydecay, ptr noundef %8, ptr noundef %9) #17, !dbg !4276
  store ptr %call13, ptr %fence3, align 8, !dbg !4277
  %10 = load ptr, ptr %fence3, align 8, !dbg !4278
  %tobool14 = icmp ne ptr %10, null, !dbg !4278
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !4280

if.then15:                                        ; preds = %if.end11
  store i32 -12, ptr %err, align 4, !dbg !4281
  br label %err_put_fence2, !dbg !4283

if.end16:                                         ; preds = %if.end11
  %11 = load i32, ptr %fd, align 4, !dbg !4284
  %fence = getelementptr inbounds %struct.sync_merge_data, ptr %data, i32 0, i32 2, !dbg !4285
  store i32 %11, ptr %fence, align 4, !dbg !4286
  %12 = load i64, ptr %arg.addr, align 8, !dbg !4287
  %13 = inttoptr i64 %12 to ptr, !dbg !4289
  %call17 = call i64 @copy_to_user(ptr noundef %13, ptr noundef %data, i64 noundef 48) #17, !dbg !4290
  %tobool18 = icmp ne i64 %call17, 0, !dbg !4290
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4291

if.then19:                                        ; preds = %if.end16
  store i32 -14, ptr %err, align 4, !dbg !4292
  br label %err_put_fence3, !dbg !4294

if.end20:                                         ; preds = %if.end16
  %14 = load i32, ptr %fd, align 4, !dbg !4295
  %15 = load ptr, ptr %fence3, align 8, !dbg !4296
  %file = getelementptr inbounds %struct.sync_file, ptr %15, i32 0, i32 0, !dbg !4297
  %16 = load ptr, ptr %file, align 8, !dbg !4297
  call void @fd_install(i32 noundef %14, ptr noundef %16) #17, !dbg !4298
  %17 = load ptr, ptr %fence2, align 8, !dbg !4299
  %file21 = getelementptr inbounds %struct.sync_file, ptr %17, i32 0, i32 0, !dbg !4300
  %18 = load ptr, ptr %file21, align 8, !dbg !4300
  call void @fput(ptr noundef %18) #17, !dbg !4301
  store i64 0, ptr %retval, align 8, !dbg !4302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4302

err_put_fence3:                                   ; preds = %if.then19
  call void @llvm.dbg.label(metadata !4221), !dbg !4303
  %19 = load ptr, ptr %fence3, align 8, !dbg !4304
  %file22 = getelementptr inbounds %struct.sync_file, ptr %19, i32 0, i32 0, !dbg !4305
  %20 = load ptr, ptr %file22, align 8, !dbg !4305
  call void @fput(ptr noundef %20) #17, !dbg !4306
  br label %err_put_fence2, !dbg !4306

err_put_fence2:                                   ; preds = %err_put_fence3, %if.then15
  call void @llvm.dbg.label(metadata !4222), !dbg !4307
  %21 = load ptr, ptr %fence2, align 8, !dbg !4308
  %file23 = getelementptr inbounds %struct.sync_file, ptr %21, i32 0, i32 0, !dbg !4309
  %22 = load ptr, ptr %file23, align 8, !dbg !4309
  call void @fput(ptr noundef %22) #17, !dbg !4310
  br label %err_put_fd, !dbg !4310

err_put_fd:                                       ; preds = %err_put_fence2, %if.then10, %if.then6, %if.then2
  call void @llvm.dbg.label(metadata !4223), !dbg !4311
  %23 = load i32, ptr %fd, align 4, !dbg !4312
  call void @put_unused_fd(i32 noundef %23) #17, !dbg !4313
  %24 = load i32, ptr %err, align 4, !dbg !4314
  %conv24 = sext i32 %24 to i64, !dbg !4314
  store i64 %conv24, ptr %retval, align 8, !dbg !4315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4315

cleanup:                                          ; preds = %err_put_fd, %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %data) #16, !dbg !4316
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence3) #16, !dbg !4316
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence2) #16, !dbg !4316
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4316
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #16, !dbg !4316
  %25 = load i64, ptr %retval, align 8, !dbg !4316
  ret i64 %25, !dbg !4316
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sync_file_ioctl_fence_info(ptr noundef %sync_file, i64 noundef %arg) #0 align 16 !dbg !4317 {
entry:
  %retval = alloca i64, align 8
  %sync_file.addr = alloca ptr, align 8
  %arg.addr = alloca i64, align 8
  %fence_info = alloca ptr, align 8
  %iter = alloca %struct.dma_fence_unwrap, align 8
  %info = alloca %struct.sync_file_info, align 8
  %num_fences = alloca i32, align 4
  %fence = alloca ptr, align 8
  %ret = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %status30 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp43 = alloca ptr, align 8
  store ptr %sync_file, ptr %sync_file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sync_file.addr, metadata !4319, metadata !DIExpression()), !dbg !4361
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4320, metadata !DIExpression()), !dbg !4362
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence_info) #16, !dbg !4363
  call void @llvm.dbg.declare(metadata ptr %fence_info, metadata !4321, metadata !DIExpression()), !dbg !4364
  store ptr null, ptr %fence_info, align 8, !dbg !4364
  call void @llvm.lifetime.start.p0(i64 24, ptr %iter) #16, !dbg !4365
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !4330, metadata !DIExpression()), !dbg !4366
  call void @llvm.lifetime.start.p0(i64 56, ptr %info) #16, !dbg !4367
  call void @llvm.dbg.declare(metadata ptr %info, metadata !4337, metadata !DIExpression()), !dbg !4368
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_fences) #16, !dbg !4369
  call void @llvm.dbg.declare(metadata ptr %num_fences, metadata !4346, metadata !DIExpression()), !dbg !4370
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #16, !dbg !4371
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !4347, metadata !DIExpression()), !dbg !4372
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4373
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4348, metadata !DIExpression()), !dbg !4374
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #16, !dbg !4375
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4349, metadata !DIExpression()), !dbg !4376
  %0 = load i64, ptr %arg.addr, align 8, !dbg !4377
  %1 = inttoptr i64 %0 to ptr, !dbg !4379
  %call = call i64 @copy_from_user(ptr noundef %info, ptr noundef %1, i64 noundef 56) #17, !dbg !4380
  %tobool = icmp ne i64 %call, 0, !dbg !4380
  br i1 %tobool, label %if.then, label %if.end, !dbg !4381

if.then:                                          ; preds = %entry
  store i64 -14, ptr %retval, align 8, !dbg !4382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4382

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 2, !dbg !4383
  %2 = load i32, ptr %flags, align 4, !dbg !4383
  %tobool1 = icmp ne i32 %2, 0, !dbg !4385
  br i1 %tobool1, label %if.then3, label %lor.lhs.false, !dbg !4386

lor.lhs.false:                                    ; preds = %if.end
  %pad = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 4, !dbg !4387
  %3 = load i32, ptr %pad, align 4, !dbg !4387
  %tobool2 = icmp ne i32 %3, 0, !dbg !4388
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4389

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i64 -22, ptr %retval, align 8, !dbg !4390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4390

if.end4:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %num_fences, align 4, !dbg !4391
  %4 = load ptr, ptr %sync_file.addr, align 8, !dbg !4392
  %fence5 = getelementptr inbounds %struct.sync_file, ptr %4, i32 0, i32 5, !dbg !4392
  %5 = load ptr, ptr %fence5, align 8, !dbg !4392
  %call6 = call ptr @dma_fence_unwrap_first(ptr noundef %5, ptr noundef %iter) #17, !dbg !4392
  store ptr %call6, ptr %fence, align 8, !dbg !4392
  br label %for.cond, !dbg !4392

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load ptr, ptr %fence, align 8, !dbg !4394
  %tobool7 = icmp ne ptr %6, null, !dbg !4392
  br i1 %tobool7, label %for.body, label %for.end, !dbg !4392

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %num_fences, align 4, !dbg !4396
  %inc = add i32 %7, 1, !dbg !4396
  store i32 %inc, ptr %num_fences, align 4, !dbg !4396
  br label %for.inc, !dbg !4396

for.inc:                                          ; preds = %for.body
  %call8 = call ptr @dma_fence_unwrap_next(ptr noundef %iter) #17, !dbg !4394
  store ptr %call8, ptr %fence, align 8, !dbg !4394
  br label %for.cond, !dbg !4394, !llvm.loop !4397

for.end:                                          ; preds = %for.cond
  %num_fences9 = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 3, !dbg !4401
  %8 = load i32, ptr %num_fences9, align 8, !dbg !4401
  %tobool10 = icmp ne i32 %8, 0, !dbg !4403
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !4404

if.then11:                                        ; preds = %for.end
  %9 = load ptr, ptr %sync_file.addr, align 8, !dbg !4405
  %fence12 = getelementptr inbounds %struct.sync_file, ptr %9, i32 0, i32 5, !dbg !4407
  %10 = load ptr, ptr %fence12, align 8, !dbg !4407
  %call13 = call i32 @dma_fence_get_status(ptr noundef %10) #17, !dbg !4408
  %status = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 1, !dbg !4409
  store i32 %call13, ptr %status, align 8, !dbg !4410
  br label %no_fences, !dbg !4411

if.else:                                          ; preds = %for.end
  %status14 = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 1, !dbg !4412
  store i32 1, ptr %status14, align 8, !dbg !4414
  br label %if.end15

if.end15:                                         ; preds = %if.else
  %num_fences16 = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 3, !dbg !4415
  %11 = load i32, ptr %num_fences16, align 8, !dbg !4415
  %12 = load i32, ptr %num_fences, align 4, !dbg !4417
  %cmp = icmp ult i32 %11, %12, !dbg !4418
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !4419

if.then17:                                        ; preds = %if.end15
  store i64 -22, ptr %retval, align 8, !dbg !4420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4420

if.end18:                                         ; preds = %if.end15
  %13 = load i32, ptr %num_fences, align 4, !dbg !4421
  %conv = zext i32 %13 to i64, !dbg !4421
  %mul = mul i64 %conv, 80, !dbg !4422
  %conv19 = trunc i64 %mul to i32, !dbg !4421
  store i32 %conv19, ptr %size, align 4, !dbg !4423
  %14 = load i32, ptr %size, align 4, !dbg !4424
  %conv20 = zext i32 %14 to i64, !dbg !4424
  %call21 = call noalias ptr @kzalloc(i64 noundef %conv20, i32 noundef 3264) #18, !dbg !4425
  store ptr %call21, ptr %fence_info, align 8, !dbg !4426
  %15 = load ptr, ptr %fence_info, align 8, !dbg !4427
  %tobool22 = icmp ne ptr %15, null, !dbg !4427
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !4429

if.then23:                                        ; preds = %if.end18
  store i64 -12, ptr %retval, align 8, !dbg !4430
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4430

if.end24:                                         ; preds = %if.end18
  store i32 0, ptr %num_fences, align 4, !dbg !4431
  %16 = load ptr, ptr %sync_file.addr, align 8, !dbg !4432
  %fence25 = getelementptr inbounds %struct.sync_file, ptr %16, i32 0, i32 5, !dbg !4432
  %17 = load ptr, ptr %fence25, align 8, !dbg !4432
  %call26 = call ptr @dma_fence_unwrap_first(ptr noundef %17, ptr noundef %iter) #17, !dbg !4432
  store ptr %call26, ptr %fence, align 8, !dbg !4432
  br label %for.cond27, !dbg !4432

for.cond27:                                       ; preds = %for.inc38, %if.end24
  %18 = load ptr, ptr %fence, align 8, !dbg !4433
  %tobool28 = icmp ne ptr %18, null, !dbg !4432
  br i1 %tobool28, label %for.body29, label %for.end40, !dbg !4432

for.body29:                                       ; preds = %for.cond27
  call void @llvm.lifetime.start.p0(i64 4, ptr %status30) #16, !dbg !4434
  call void @llvm.dbg.declare(metadata ptr %status30, metadata !4350, metadata !DIExpression()), !dbg !4435
  %19 = load ptr, ptr %fence, align 8, !dbg !4436
  %20 = load ptr, ptr %fence_info, align 8, !dbg !4437
  %21 = load i32, ptr %num_fences, align 4, !dbg !4438
  %inc31 = add i32 %21, 1, !dbg !4438
  store i32 %inc31, ptr %num_fences, align 4, !dbg !4438
  %idxprom = zext i32 %21 to i64, !dbg !4437
  %arrayidx = getelementptr %struct.sync_fence_info, ptr %20, i64 %idxprom, !dbg !4437
  %call32 = call i32 @sync_fill_fence_info(ptr noundef %19, ptr noundef %arrayidx) #17, !dbg !4439
  store i32 %call32, ptr %status30, align 4, !dbg !4440
  %status33 = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 1, !dbg !4441
  %22 = load i32, ptr %status33, align 8, !dbg !4441
  %cmp34 = icmp sle i32 %22, 0, !dbg !4442
  br i1 %cmp34, label %cond.true, label %cond.false, !dbg !4443

cond.true:                                        ; preds = %for.body29
  %status36 = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 1, !dbg !4444
  %23 = load i32, ptr %status36, align 8, !dbg !4444
  br label %cond.end, !dbg !4443

cond.false:                                       ; preds = %for.body29
  %24 = load i32, ptr %status30, align 4, !dbg !4445
  br label %cond.end, !dbg !4443

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !4443
  %status37 = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 1, !dbg !4446
  store i32 %cond, ptr %status37, align 8, !dbg !4447
  call void @llvm.lifetime.end.p0(i64 4, ptr %status30) #16, !dbg !4448
  br label %for.inc38, !dbg !4449

for.inc38:                                        ; preds = %cond.end
  %call39 = call ptr @dma_fence_unwrap_next(ptr noundef %iter) #17, !dbg !4433
  store ptr %call39, ptr %fence, align 8, !dbg !4433
  br label %for.cond27, !dbg !4433, !llvm.loop !4450

for.end40:                                        ; preds = %for.cond27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4452
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4354, metadata !DIExpression()), !dbg !4452
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4452
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4358, metadata !DIExpression()), !dbg !4452
  %cmp41 = icmp eq ptr %__dummy, %__dummy2, !dbg !4452
  %conv42 = zext i1 %cmp41 to i32, !dbg !4452
  store i32 1, ptr %tmp, align 4, !dbg !4452
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4453
  %25 = load i32, ptr %tmp, align 4, !dbg !4452
  %sync_fence_info = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 5, !dbg !4453
  %26 = load i64, ptr %sync_fence_info, align 8, !dbg !4453
  %27 = inttoptr i64 %26 to ptr, !dbg !4453
  store ptr %27, ptr %tmp43, align 8, !dbg !4453
  %28 = load ptr, ptr %tmp43, align 8, !dbg !4453
  %29 = load ptr, ptr %fence_info, align 8, !dbg !4454
  %30 = load i32, ptr %size, align 4, !dbg !4455
  %conv44 = zext i32 %30 to i64, !dbg !4455
  %call45 = call i64 @copy_to_user(ptr noundef %28, ptr noundef %29, i64 noundef %conv44) #17, !dbg !4456
  %tobool46 = icmp ne i64 %call45, 0, !dbg !4456
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !4457

if.then47:                                        ; preds = %for.end40
  store i32 -14, ptr %ret, align 4, !dbg !4458
  br label %out, !dbg !4460

if.end48:                                         ; preds = %for.end40
  br label %no_fences, !dbg !4461

no_fences:                                        ; preds = %if.end48, %if.then11
  call void @llvm.dbg.label(metadata !4359), !dbg !4462
  %31 = load ptr, ptr %sync_file.addr, align 8, !dbg !4463
  %name = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 0, !dbg !4464
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !4465
  %call49 = call ptr @sync_file_get_name(ptr noundef %31, ptr noundef %arraydecay, i32 noundef 32) #17, !dbg !4466
  %32 = load i32, ptr %num_fences, align 4, !dbg !4467
  %num_fences50 = getelementptr inbounds %struct.sync_file_info, ptr %info, i32 0, i32 3, !dbg !4468
  store i32 %32, ptr %num_fences50, align 8, !dbg !4469
  %33 = load i64, ptr %arg.addr, align 8, !dbg !4470
  %34 = inttoptr i64 %33 to ptr, !dbg !4472
  %call51 = call i64 @copy_to_user(ptr noundef %34, ptr noundef %info, i64 noundef 56) #17, !dbg !4473
  %tobool52 = icmp ne i64 %call51, 0, !dbg !4473
  br i1 %tobool52, label %if.then53, label %if.else54, !dbg !4474

if.then53:                                        ; preds = %no_fences
  store i32 -14, ptr %ret, align 4, !dbg !4475
  br label %if.end55, !dbg !4476

if.else54:                                        ; preds = %no_fences
  store i32 0, ptr %ret, align 4, !dbg !4477
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  br label %out, !dbg !4478

out:                                              ; preds = %if.end55, %if.then47
  call void @llvm.dbg.label(metadata !4360), !dbg !4479
  %35 = load ptr, ptr %fence_info, align 8, !dbg !4480
  call void @kfree(ptr noundef %35) #17, !dbg !4481
  %36 = load i32, ptr %ret, align 4, !dbg !4482
  %conv56 = sext i32 %36 to i64, !dbg !4482
  store i64 %conv56, ptr %retval, align 8, !dbg !4483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4483

cleanup:                                          ; preds = %out, %if.then23, %if.then17, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #16, !dbg !4484
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4484
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #16, !dbg !4484
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_fences) #16, !dbg !4484
  call void @llvm.lifetime.end.p0(i64 56, ptr %info) #16, !dbg !4484
  call void @llvm.lifetime.end.p0(i64 24, ptr %iter) #16, !dbg !4484
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence_info) #16, !dbg !4484
  %37 = load i64, ptr %retval, align 8, !dbg !4484
  ret i64 %37, !dbg !4484
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4485 dso_local i32 @get_unused_fd_flags(i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #9 align 16 !dbg !4488 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4493, metadata !DIExpression()), !dbg !4496
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4494, metadata !DIExpression()), !dbg !4497
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4495, metadata !DIExpression()), !dbg !4498
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4499
  %1 = load i64, ptr %n.addr, align 8, !dbg !4501
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #17, !dbg !4502
  br i1 %call, label %if.then, label %if.end, !dbg !4503

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4504
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4505
  %4 = load i64, ptr %n.addr, align 8, !dbg !4506
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !4507
  store i64 %call1, ptr %n.addr, align 8, !dbg !4508
  br label %if.end, !dbg !4509

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4510
  ret i64 %5, !dbg !4511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sync_file_merge(ptr noundef %name, ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !4512 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %sync_file = alloca ptr, align 8
  %fence = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__f = alloca [2 x ptr], align 16
  %__c = alloca [2 x %struct.dma_fence_unwrap], align 16
  %tmp = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4516, metadata !DIExpression()), !dbg !4526
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4517, metadata !DIExpression()), !dbg !4527
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4518, metadata !DIExpression()), !dbg !4528
  call void @llvm.lifetime.start.p0(i64 8, ptr %sync_file) #16, !dbg !4529
  call void @llvm.dbg.declare(metadata ptr %sync_file, metadata !4519, metadata !DIExpression()), !dbg !4530
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #16, !dbg !4531
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !4520, metadata !DIExpression()), !dbg !4532
  %call = call ptr @sync_file_alloc() #17, !dbg !4533
  store ptr %call, ptr %sync_file, align 8, !dbg !4534
  %0 = load ptr, ptr %sync_file, align 8, !dbg !4535
  %tobool = icmp ne ptr %0, null, !dbg !4535
  br i1 %tobool, label %if.end, label %if.then, !dbg !4537

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4538

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %__f) #16, !dbg !4539
  call void @llvm.dbg.declare(metadata ptr %__f, metadata !4521, metadata !DIExpression()), !dbg !4539
  %arrayinit.begin = getelementptr inbounds [2 x ptr], ptr %__f, i64 0, i64 0, !dbg !4539
  %1 = load ptr, ptr %a.addr, align 8, !dbg !4539
  %fence1 = getelementptr inbounds %struct.sync_file, ptr %1, i32 0, i32 5, !dbg !4539
  %2 = load ptr, ptr %fence1, align 8, !dbg !4539
  store ptr %2, ptr %arrayinit.begin, align 8, !dbg !4539
  %arrayinit.element = getelementptr inbounds ptr, ptr %arrayinit.begin, i64 1, !dbg !4539
  %3 = load ptr, ptr %b.addr, align 8, !dbg !4539
  %fence2 = getelementptr inbounds %struct.sync_file, ptr %3, i32 0, i32 5, !dbg !4539
  %4 = load ptr, ptr %fence2, align 8, !dbg !4539
  store ptr %4, ptr %arrayinit.element, align 8, !dbg !4539
  call void @llvm.lifetime.start.p0(i64 48, ptr %__c) #16, !dbg !4539
  call void @llvm.dbg.declare(metadata ptr %__c, metadata !4524, metadata !DIExpression()), !dbg !4539
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %__f, i64 0, i64 0, !dbg !4539
  %arraydecay3 = getelementptr inbounds [2 x %struct.dma_fence_unwrap], ptr %__c, i64 0, i64 0, !dbg !4539
  %call4 = call ptr @__dma_fence_unwrap_merge(i32 noundef 2, ptr noundef %arraydecay, ptr noundef %arraydecay3) #17, !dbg !4539
  store ptr %call4, ptr %tmp, align 8, !dbg !4539
  call void @llvm.lifetime.end.p0(i64 48, ptr %__c) #16, !dbg !4540
  call void @llvm.lifetime.end.p0(i64 16, ptr %__f) #16, !dbg !4540
  %5 = load ptr, ptr %tmp, align 8, !dbg !4539
  store ptr %5, ptr %fence, align 8, !dbg !4541
  %6 = load ptr, ptr %fence, align 8, !dbg !4542
  %tobool5 = icmp ne ptr %6, null, !dbg !4542
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4544

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %sync_file, align 8, !dbg !4545
  %file = getelementptr inbounds %struct.sync_file, ptr %7, i32 0, i32 0, !dbg !4547
  %8 = load ptr, ptr %file, align 8, !dbg !4547
  call void @fput(ptr noundef %8) #17, !dbg !4548
  store ptr null, ptr %retval, align 8, !dbg !4549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4549

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %fence, align 8, !dbg !4550
  %10 = load ptr, ptr %sync_file, align 8, !dbg !4551
  %fence8 = getelementptr inbounds %struct.sync_file, ptr %10, i32 0, i32 5, !dbg !4552
  store ptr %9, ptr %fence8, align 8, !dbg !4553
  %11 = load ptr, ptr %sync_file, align 8, !dbg !4554
  %user_name = getelementptr inbounds %struct.sync_file, ptr %11, i32 0, i32 1, !dbg !4555
  %arraydecay9 = getelementptr inbounds [32 x i8], ptr %user_name, i64 0, i64 0, !dbg !4554
  %12 = load ptr, ptr %name.addr, align 8, !dbg !4556
  %call10 = call i64 @strscpy(ptr noundef %arraydecay9, ptr noundef %12, i64 noundef 32) #17, !dbg !4557
  %13 = load ptr, ptr %sync_file, align 8, !dbg !4558
  store ptr %13, ptr %retval, align 8, !dbg !4559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4559

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #16, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 8, ptr %sync_file) #16, !dbg !4560
  %14 = load ptr, ptr %retval, align 8, !dbg !4560
  ret ptr %14, !dbg !4560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #9 align 16 !dbg !4561 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4563, metadata !DIExpression()), !dbg !4566
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4564, metadata !DIExpression()), !dbg !4567
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4565, metadata !DIExpression()), !dbg !4568
  %0 = load ptr, ptr %from.addr, align 8, !dbg !4569
  %1 = load i64, ptr %n.addr, align 8, !dbg !4571
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #17, !dbg !4572
  br i1 %call, label %if.then, label %if.end, !dbg !4573

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4574
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4575
  %4 = load i64, ptr %n.addr, align 8, !dbg !4576
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !4577
  store i64 %call1, ptr %n.addr, align 8, !dbg !4578
  br label %if.end, !dbg !4579

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4580
  ret i64 %5, !dbg !4581
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4582 dso_local void @fd_install(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4585 dso_local void @put_unused_fd(i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #9 align 16 !dbg !4588 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4592, metadata !DIExpression()), !dbg !4602
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4593, metadata !DIExpression()), !dbg !4603
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !4594, metadata !DIExpression()), !dbg !4604
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !4605
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4595, metadata !DIExpression()), !dbg !4606
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4607
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !4608
  %conv = trunc i64 %1 to i32, !dbg !4608
  store i32 %conv, ptr %sz, align 4, !dbg !4606
  %2 = load i32, ptr %sz, align 4, !dbg !4609
  %cmp = icmp sge i32 %2, 0, !dbg !4609
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4609

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !4609
  %conv2 = sext i32 %3 to i64, !dbg !4609
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !4609
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !4609
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4611
  %lnot = xor i1 %5, true, !dbg !4609
  %lnot5 = xor i1 %lnot, true, !dbg !4609
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4609
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4609
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4609
  %tobool = icmp ne i64 %expval, 0, !dbg !4609
  br i1 %tobool, label %if.then, label %if.end12, !dbg !4612

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !4613
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4616
  br i1 %7, label %if.else, label %if.then7, !dbg !4617

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !4618
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !4619
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #17, !dbg !4620
  br label %if.end11, !dbg !4620

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !4621, !range !3774, !noundef !815
  %tobool8 = trunc i8 %10 to i1, !dbg !4621
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4623

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #17, !dbg !4624, !srcloc !4625
  br label %if.end, !dbg !4624

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #17, !dbg !4626, !srcloc !4627
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !4628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4628

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4629
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4596, metadata !DIExpression()), !dbg !4629
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !4629
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !4629
  %lnot15 = xor i1 %cmp13, true, !dbg !4629
  %lnot17 = xor i1 %lnot15, true, !dbg !4629
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4629
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !4629
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4630
  %tobool19 = icmp ne i32 %12, 0, !dbg !4630
  %lnot20 = xor i1 %tobool19, true, !dbg !4630
  %lnot22 = xor i1 %lnot20, true, !dbg !4630
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4630
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4630
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4630
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !4630
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !4629

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !4630

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4631
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4599, metadata !DIExpression()), !dbg !4631
  store i32 2307, ptr %__flags, align 4, !dbg !4631
  br label %do.body28, !dbg !4631

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !4632

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !4632

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !4631

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !4634
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 249, i32 %13, i64 12) #16, !dbg !4634, !srcloc !4636
  br label %do.cond30, !dbg !4634

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4634

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4631

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !4637

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4637

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4630
  br label %do.cond35, !dbg !4631

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4631

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !4631

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4629
  %tobool38 = icmp ne i32 %14, 0, !dbg !4629
  %lnot39 = xor i1 %tobool38, true, !dbg !4629
  %lnot41 = xor i1 %lnot39, true, !dbg !4629
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4629
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4629
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4629
  store i64 %expval44, ptr %tmp, align 8, !dbg !4630
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4639
  %15 = load i64, ptr %tmp, align 8, !dbg !4629
  %tobool45 = icmp ne i64 %15, 0, !dbg !4639
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4640

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !4641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4641

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4642
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !4643
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !4644, !range !3774, !noundef !815
  %tobool48 = trunc i8 %18 to i1, !dbg !4644
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #17, !dbg !4645
  store i1 true, ptr %retval, align 1, !dbg !4646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4646

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !4647
  %19 = load i1, ptr %retval, align 1, !dbg !4647
  ret i1 %19, !dbg !4647
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4648 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !4649 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4653, metadata !DIExpression()), !dbg !4655
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4654, metadata !DIExpression()), !dbg !4656
  %0 = load i32, ptr %size.addr, align 4, !dbg !4657
  %1 = load i64, ptr %count.addr, align 8, !dbg !4659
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #17, !dbg !4660
  ret void, !dbg !4661
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4662 dso_local void @__bad_copy_from() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4663 dso_local void @__bad_copy_to() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !4664 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4668, metadata !DIExpression()), !dbg !4671
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4669, metadata !DIExpression()), !dbg !4672
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4670, metadata !DIExpression()), !dbg !4673
  ret void, !dbg !4674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4675 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4676 dso_local ptr @__dma_fence_unwrap_merge(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4681 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4682 dso_local ptr @dma_fence_unwrap_first(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4685 dso_local ptr @dma_fence_unwrap_next(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4688 dso_local i32 @dma_fence_get_status(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sync_fill_fence_info(ptr noundef %fence, ptr noundef %info) #0 align 16 !dbg !4689 {
entry:
  %fence.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4693, metadata !DIExpression()), !dbg !4695
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4694, metadata !DIExpression()), !dbg !4696
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4697
  %obj_name = getelementptr inbounds %struct.sync_fence_info, ptr %0, i32 0, i32 0, !dbg !4698
  %arraydecay = getelementptr inbounds [32 x i8], ptr %obj_name, i64 0, i64 0, !dbg !4697
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !4699
  %ops = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 1, !dbg !4700
  %2 = load ptr, ptr %ops, align 8, !dbg !4700
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, ptr %2, i32 0, i32 2, !dbg !4701
  %3 = load ptr, ptr %get_timeline_name, align 8, !dbg !4701
  %4 = load ptr, ptr %fence.addr, align 8, !dbg !4702
  %call = call ptr %3(ptr noundef %4) #17, !dbg !4699
  %call1 = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %call, i64 noundef 32) #17, !dbg !4703
  %5 = load ptr, ptr %info.addr, align 8, !dbg !4704
  %driver_name = getelementptr inbounds %struct.sync_fence_info, ptr %5, i32 0, i32 1, !dbg !4705
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %driver_name, i64 0, i64 0, !dbg !4704
  %6 = load ptr, ptr %fence.addr, align 8, !dbg !4706
  %ops3 = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 1, !dbg !4707
  %7 = load ptr, ptr %ops3, align 8, !dbg !4707
  %get_driver_name = getelementptr inbounds %struct.dma_fence_ops, ptr %7, i32 0, i32 1, !dbg !4708
  %8 = load ptr, ptr %get_driver_name, align 8, !dbg !4708
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !4709
  %call4 = call ptr %8(ptr noundef %9) #17, !dbg !4706
  %call5 = call i64 @strscpy(ptr noundef %arraydecay2, ptr noundef %call4, i64 noundef 32) #17, !dbg !4710
  %10 = load ptr, ptr %fence.addr, align 8, !dbg !4711
  %call6 = call i32 @dma_fence_get_status(ptr noundef %10) #17, !dbg !4712
  %11 = load ptr, ptr %info.addr, align 8, !dbg !4713
  %status = getelementptr inbounds %struct.sync_fence_info, ptr %11, i32 0, i32 2, !dbg !4714
  store i32 %call6, ptr %status, align 8, !dbg !4715
  %12 = load ptr, ptr %fence.addr, align 8, !dbg !4716
  %call7 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %12) #17, !dbg !4717
  br i1 %call7, label %cond.true, label %cond.false, !dbg !4717

cond.true:                                        ; preds = %entry
  %13 = load ptr, ptr %fence.addr, align 8, !dbg !4718
  %call8 = call i64 @dma_fence_timestamp(ptr noundef %13) #17, !dbg !4719
  %call9 = call i64 @ktime_to_ns(i64 noundef %call8) #17, !dbg !4720
  br label %cond.end, !dbg !4717

cond.false:                                       ; preds = %entry
  %call10 = call i64 @ktime_set(i64 noundef 0, i64 noundef 0) #17, !dbg !4721
  br label %cond.end, !dbg !4717

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call9, %cond.true ], [ %call10, %cond.false ], !dbg !4717
  %14 = load ptr, ptr %info.addr, align 8, !dbg !4722
  %timestamp_ns = getelementptr inbounds %struct.sync_fence_info, ptr %14, i32 0, i32 4, !dbg !4723
  store i64 %cond, ptr %timestamp_ns, align 8, !dbg !4724
  %15 = load ptr, ptr %info.addr, align 8, !dbg !4725
  %status11 = getelementptr inbounds %struct.sync_fence_info, ptr %15, i32 0, i32 2, !dbg !4726
  %16 = load i32, ptr %status11, align 8, !dbg !4726
  ret i32 %16, !dbg !4727
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_ns(i64 noundef %kt) #3 align 16 !dbg !4728 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !4733, metadata !DIExpression()), !dbg !4734
  %0 = load i64, ptr %kt.addr, align 8, !dbg !4735
  ret i64 %0, !dbg !4736
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dma_fence_timestamp(ptr noundef %fence) #3 align 16 !dbg !4737 {
entry:
  %retval = alloca i64, align 8
  %fence.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4741, metadata !DIExpression()), !dbg !4748
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4749
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4742, metadata !DIExpression()), !dbg !4749
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4749
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !4749
  %1 = ptrtoint ptr %flags to i64, !dbg !4749
  %cmp = icmp ne i64 %1, 0, !dbg !4749
  %conv = zext i1 %cmp to i32, !dbg !4749
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4749
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !4749

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !4749
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !4749
  %4 = ptrtoint ptr %flags1 to i64, !dbg !4749
  %cmp2 = icmp ne i64 %4, 0, !dbg !4749
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !4749

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !4749
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !4749
  %6 = load i64, ptr %flags5, align 8, !dbg !4749
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4749
  br i1 %7, label %cond.true, label %cond.false, !dbg !4749

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !4749
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !4749
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #17, !dbg !4749
  %conv7 = zext i1 %call to i32, !dbg !4749
  br label %cond.end, !dbg !4749

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !4749
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !4749
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #17, !dbg !4749
  %conv10 = zext i1 %call9 to i32, !dbg !4749
  br label %cond.end, !dbg !4749

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !4749
  %tobool = icmp ne i32 %cond, 0, !dbg !4749
  %lnot = xor i1 %tobool, true, !dbg !4749
  %lnot11 = xor i1 %lnot, true, !dbg !4749
  %lnot12 = xor i1 %lnot11, true, !dbg !4749
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !4749
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4749
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !4750
  %tobool13 = icmp ne i32 %10, 0, !dbg !4750
  %lnot14 = xor i1 %tobool13, true, !dbg !4750
  %lnot16 = xor i1 %lnot14, true, !dbg !4750
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !4750
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !4750
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !4750
  %tobool19 = icmp ne i64 %expval, 0, !dbg !4750
  br i1 %tobool19, label %if.then, label %if.end, !dbg !4749

if.then:                                          ; preds = %cond.end
  br label %do.body, !dbg !4750

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4751
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4745, metadata !DIExpression()), !dbg !4751
  store i32 2305, ptr %__flags, align 4, !dbg !4751
  br label %do.body20, !dbg !4751

do.body20:                                        ; preds = %do.body
  br label %do.cond, !dbg !4752

do.cond:                                          ; preds = %do.body20
  br label %do.end, !dbg !4752

do.end:                                           ; preds = %do.cond
  br label %do.body21, !dbg !4751

do.body21:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !4754
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 596, i32 %11, i64 12) #16, !dbg !4754, !srcloc !4756
  br label %do.cond22, !dbg !4754

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !4754

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !4751

do.body24:                                        ; preds = %do.end23
  br label %do.cond25, !dbg !4757

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4757

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4750
  br label %do.cond27, !dbg !4751

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !4751

do.end28:                                         ; preds = %do.cond27
  br label %if.end, !dbg !4751

if.end:                                           ; preds = %do.end28, %cond.end
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4749
  %tobool29 = icmp ne i32 %12, 0, !dbg !4749
  %lnot30 = xor i1 %tobool29, true, !dbg !4749
  %lnot32 = xor i1 %lnot30, true, !dbg !4749
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !4749
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !4749
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !4749
  store i64 %expval35, ptr %tmp, align 8, !dbg !4750
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4759
  %13 = load i64, ptr %tmp, align 8, !dbg !4749
  %tobool36 = icmp ne i64 %13, 0, !dbg !4759
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !4760

if.then37:                                        ; preds = %if.end
  %call38 = call i64 @ktime_get() #17, !dbg !4761
  store i64 %call38, ptr %retval, align 8, !dbg !4762
  br label %return, !dbg !4762

if.end39:                                         ; preds = %if.end
  br label %while.cond, !dbg !4763

while.cond:                                       ; preds = %while.body, %if.end39
  %14 = load ptr, ptr %fence.addr, align 8, !dbg !4764
  %flags40 = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 5, !dbg !4764
  %15 = ptrtoint ptr %flags40 to i64, !dbg !4764
  %cmp41 = icmp ne i64 %15, 0, !dbg !4764
  %conv42 = zext i1 %cmp41 to i32, !dbg !4764
  %16 = call i1 @llvm.is.constant.i32(i32 %conv42), !dbg !4764
  br i1 %16, label %land.lhs.true43, label %cond.false53, !dbg !4764

land.lhs.true43:                                  ; preds = %while.cond
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !4764
  %flags44 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 5, !dbg !4764
  %18 = ptrtoint ptr %flags44 to i64, !dbg !4764
  %cmp45 = icmp ne i64 %18, 0, !dbg !4764
  br i1 %cmp45, label %land.lhs.true47, label %cond.false53, !dbg !4764

land.lhs.true47:                                  ; preds = %land.lhs.true43
  %19 = load ptr, ptr %fence.addr, align 8, !dbg !4764
  %flags48 = getelementptr inbounds %struct.dma_fence, ptr %19, i32 0, i32 5, !dbg !4764
  %20 = load i64, ptr %flags48, align 8, !dbg !4764
  %21 = call i1 @llvm.is.constant.i64(i64 %20), !dbg !4764
  br i1 %21, label %cond.true49, label %cond.false53, !dbg !4764

cond.true49:                                      ; preds = %land.lhs.true47
  %22 = load ptr, ptr %fence.addr, align 8, !dbg !4764
  %flags50 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 5, !dbg !4764
  %call51 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags50) #17, !dbg !4764
  %conv52 = zext i1 %call51 to i32, !dbg !4764
  br label %cond.end57, !dbg !4764

cond.false53:                                     ; preds = %land.lhs.true47, %land.lhs.true43, %while.cond
  %23 = load ptr, ptr %fence.addr, align 8, !dbg !4764
  %flags54 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 5, !dbg !4764
  %call55 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags54) #17, !dbg !4764
  %conv56 = zext i1 %call55 to i32, !dbg !4764
  br label %cond.end57, !dbg !4764

cond.end57:                                       ; preds = %cond.false53, %cond.true49
  %cond58 = phi i32 [ %conv52, %cond.true49 ], [ %conv56, %cond.false53 ], !dbg !4764
  %tobool59 = icmp ne i32 %cond58, 0, !dbg !4765
  %lnot60 = xor i1 %tobool59, true, !dbg !4765
  br i1 %lnot60, label %while.body, label %while.end, !dbg !4763

while.body:                                       ; preds = %cond.end57
  call void @cpu_relax() #17, !dbg !4766
  br label %while.cond, !dbg !4763, !llvm.loop !4767

while.end:                                        ; preds = %cond.end57
  %24 = load ptr, ptr %fence.addr, align 8, !dbg !4769
  %25 = getelementptr inbounds %struct.dma_fence, ptr %24, i32 0, i32 2, !dbg !4770
  %26 = load i64, ptr %25, align 8, !dbg !4770
  store i64 %26, ptr %retval, align 8, !dbg !4771
  br label %return, !dbg !4771

return:                                           ; preds = %while.end, %if.then37
  %27 = load i64, ptr %retval, align 8, !dbg !4772
  ret i64 %27, !dbg !4772
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) #3 align 16 !dbg !4773 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, ptr %secs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secs.addr, metadata !4778, metadata !DIExpression()), !dbg !4780
  store i64 %nsecs, ptr %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsecs.addr, metadata !4779, metadata !DIExpression()), !dbg !4781
  %0 = load i64, ptr %secs.addr, align 8, !dbg !4782
  %cmp = icmp sge i64 %0, 9223372036, !dbg !4782
  %lnot = xor i1 %cmp, true, !dbg !4782
  %lnot1 = xor i1 %lnot, true, !dbg !4782
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4782
  %conv = sext i32 %lnot.ext to i64, !dbg !4782
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4782
  %tobool = icmp ne i64 %expval, 0, !dbg !4782
  br i1 %tobool, label %if.then, label %if.end, !dbg !4784

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %retval, align 8, !dbg !4785
  br label %return, !dbg !4785

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %secs.addr, align 8, !dbg !4786
  %mul = mul i64 %1, 1000000000, !dbg !4787
  %2 = load i64, ptr %nsecs.addr, align 8, !dbg !4788
  %add = add i64 %mul, %2, !dbg !4789
  store i64 %add, ptr %retval, align 8, !dbg !4790
  br label %return, !dbg !4790

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !4791
  ret i64 %3, !dbg !4791
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4792 dso_local i64 @ktime_get() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #9 align 16 !dbg !4794 {
entry:
  call void @rep_nop() #17, !dbg !4796
  ret void, !dbg !4797
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #9 align 16 !dbg !4798 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4799, !srcloc !4800
  ret void, !dbg !4801
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4802 dso_local zeroext i1 @dma_fence_remove_callback(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #3 align 16 !dbg !4805 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4809
  %tobool = icmp ne ptr %0, null, !dbg !4809
  br i1 %tobool, label %if.then, label %if.end, !dbg !4811

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !4812
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !4813
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #17, !dbg !4814
  br label %if.end, !dbg !4814

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4815
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #3 align 16 !dbg !4816 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !4824, metadata !DIExpression()), !dbg !4826
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !4825, metadata !DIExpression()), !dbg !4827
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !4828
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !4830
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #17, !dbg !4831
  br i1 %call, label %if.then, label %if.end, !dbg !4832

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !4833
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !4835
  call void %1(ptr noundef %2) #17, !dbg !4833
  store i32 1, ptr %retval, align 4, !dbg !4836
  br label %return, !dbg !4836

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4837
  br label %return, !dbg !4837

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !4838
  ret i32 %3, !dbg !4838
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !4839 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4846
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #17, !dbg !4847
  ret i1 %call, !dbg !4848
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4849 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4853, metadata !DIExpression()), !dbg !4855
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4854, metadata !DIExpression()), !dbg !4856
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4857
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4858
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !4859
  ret i1 %call, !dbg !4860
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4861 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4865, metadata !DIExpression()), !dbg !4869
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4866, metadata !DIExpression()), !dbg !4870
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4867, metadata !DIExpression()), !dbg !4871
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !4872
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4868, metadata !DIExpression()), !dbg !4873
  %0 = load i32, ptr %i.addr, align 4, !dbg !4874
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4875
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4876
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #17, !dbg !4877
  store i32 %call, ptr %old, align 4, !dbg !4873
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4878
  %tobool = icmp ne ptr %2, null, !dbg !4878
  br i1 %tobool, label %if.then, label %if.end, !dbg !4880

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4881
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4882
  store i32 %3, ptr %4, align 4, !dbg !4883
  br label %if.end, !dbg !4884

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4885
  %6 = load i32, ptr %i.addr, align 4, !dbg !4887
  %cmp = icmp eq i32 %5, %6, !dbg !4888
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !4889

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !4890

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !4892

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !4894

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4894

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4892

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4896

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !4898

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4898

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4896, !srcloc !4900
  br label %do.cond7, !dbg !4896

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !4896

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !4892

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4892

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !4901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4901

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4902
  %cmp12 = icmp slt i32 %7, 0, !dbg !4902
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !4902

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !4902
  %9 = load i32, ptr %i.addr, align 4, !dbg !4902
  %sub = sub i32 %8, %9, !dbg !4902
  %cmp13 = icmp slt i32 %sub, 0, !dbg !4902
  br label %lor.end, !dbg !4902

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !4902
  %lnot14 = xor i1 %lnot, true, !dbg !4902
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4902
  %conv = sext i32 %lnot.ext to i64, !dbg !4902
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4902
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4902
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4904

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4905
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #17, !dbg !4906
  br label %if.end17, !dbg !4906

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !4907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4907

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !4908
  %12 = load i1, ptr %retval, align 1, !dbg !4908
  ret i1 %12, !dbg !4908
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !4909 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4915, metadata !DIExpression()), !dbg !4917
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4916, metadata !DIExpression()), !dbg !4918
  br label %do.body, !dbg !4919

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4920

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4922
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !4923
  %1 = load i32, ptr %i.addr, align 4, !dbg !4924
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4925
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #17, !dbg !4926
  ret i32 %call, !dbg !4927
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4928 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !4931 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4934, metadata !DIExpression()), !dbg !4936
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4935, metadata !DIExpression()), !dbg !4937
  %0 = load i32, ptr %i.addr, align 4, !dbg !4938
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4939
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #17, !dbg !4940
  ret i32 %call, !dbg !4941
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !4942 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4945, metadata !DIExpression()), !dbg !4949
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4946, metadata !DIExpression()), !dbg !4950
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !4951
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4947, metadata !DIExpression()), !dbg !4951
  %0 = load i32, ptr %i.addr, align 4, !dbg !4951
  %sub = sub i32 0, %0, !dbg !4951
  store i32 %sub, ptr %__ret, align 4, !dbg !4951
  %1 = load i32, ptr %__ret, align 4, !dbg !4951
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4951
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4951
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !4951, !srcloc !4952
  store i32 %3, ptr %__ret, align 4, !dbg !4951
  %4 = load i32, ptr %__ret, align 4, !dbg !4951
  store i32 %4, ptr %tmp, align 4, !dbg !4951
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !4953
  %5 = load i32, ptr %tmp, align 4, !dbg !4951
  ret i32 %5, !dbg !4954
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #3 align 16 !dbg !4955 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !4959
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !4960
  call void @refcount_inc(ptr noundef %refcount) #17, !dbg !4961
  ret void, !dbg !4962
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !4963 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4969
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #17, !dbg !4970
  ret void, !dbg !4971
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4972 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4976, metadata !DIExpression()), !dbg !4978
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4977, metadata !DIExpression()), !dbg !4979
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4980
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4981
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !4982
  ret void, !dbg !4983
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4984 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4988, metadata !DIExpression()), !dbg !4992
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4989, metadata !DIExpression()), !dbg !4993
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4990, metadata !DIExpression()), !dbg !4994
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !4995
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4991, metadata !DIExpression()), !dbg !4996
  %0 = load i32, ptr %i.addr, align 4, !dbg !4997
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4998
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4999
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #17, !dbg !5000
  store i32 %call, ptr %old, align 4, !dbg !4996
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5001
  %tobool = icmp ne ptr %2, null, !dbg !5001
  br i1 %tobool, label %if.then, label %if.end, !dbg !5003

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5004
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5005
  store i32 %3, ptr %4, align 4, !dbg !5006
  br label %if.end, !dbg !5007

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5008
  %tobool1 = icmp ne i32 %5, 0, !dbg !5008
  %lnot = xor i1 %tobool1, true, !dbg !5008
  %lnot2 = xor i1 %lnot, true, !dbg !5008
  %lnot3 = xor i1 %lnot2, true, !dbg !5008
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5008
  %conv = sext i32 %lnot.ext to i64, !dbg !5008
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5008
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5008
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5010

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5011
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #17, !dbg !5012
  br label %if.end18, !dbg !5012

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5013
  %cmp = icmp slt i32 %7, 0, !dbg !5013
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5013

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5013
  %9 = load i32, ptr %i.addr, align 4, !dbg !5013
  %add = add i32 %8, %9, !dbg !5013
  %cmp7 = icmp slt i32 %add, 0, !dbg !5013
  br label %lor.end, !dbg !5013

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5013
  %lnot11 = xor i1 %lnot9, true, !dbg !5013
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5013
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5013
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5013
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5013
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5015

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5016
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #17, !dbg !5017
  br label %if.end17, !dbg !5017

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !5018
  ret void, !dbg !5018
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5019 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5021, metadata !DIExpression()), !dbg !5023
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5022, metadata !DIExpression()), !dbg !5024
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5025
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5026
  %1 = load i32, ptr %i.addr, align 4, !dbg !5027
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5028
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #17, !dbg !5029
  ret i32 %call, !dbg !5030
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5031 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5033, metadata !DIExpression()), !dbg !5035
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5034, metadata !DIExpression()), !dbg !5036
  %0 = load i32, ptr %i.addr, align 4, !dbg !5037
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5038
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #17, !dbg !5039
  ret i32 %call, !dbg !5040
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #9 align 16 !dbg !5041 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5043, metadata !DIExpression()), !dbg !5047
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5044, metadata !DIExpression()), !dbg !5048
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !5049
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5045, metadata !DIExpression()), !dbg !5049
  %0 = load i32, ptr %i.addr, align 4, !dbg !5049
  store i32 %0, ptr %__ret, align 4, !dbg !5049
  %1 = load i32, ptr %__ret, align 4, !dbg !5049
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5049
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5049
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !5049, !srcloc !5050
  store i32 %3, ptr %__ret, align 4, !dbg !5049
  %4 = load i32, ptr %__ret, align 4, !dbg !5049
  store i32 %4, ptr %tmp, align 4, !dbg !5049
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !5051
  %5 = load i32, ptr %tmp, align 4, !dbg !5049
  ret i32 %5, !dbg !5052
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5053 dso_local ptr @fget(i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!llvm.ident = !{!3359}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sync_file_create253", scope: !2, file: !3, line: 77, type: !81, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/dma-buf/.sync_file.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/dma-buf/sync_file\22 -D KBUILD_BASENAME=\22sync_file\22 -D KBUILD_MODNAME=\22sync_file\22 -D __KBUILD_MODNAME=kmod_sync_file -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/dma-buf/sync_file.ll drivers/dma-buf/sync_file.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !80, globals: !3310, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma-buf/sync_file.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705587e0dffbe2767781631eb2550b3b")
!4 = !{!5, !14, !19, !25, !30, !36, !43, !50, !55, !65, !72}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !15, line: 2052, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!18 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !20, line: 54, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "USRQUOTA", value: 0)
!23 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!24 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !37, line: 15, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!40 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!41 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0)
!54 = !DIEnumerator(name: "true", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !56, line: 364, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!57 = !{!58, !59, !60, !61, !62, !63, !64}
!58 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!59 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!60 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!61 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!62 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!63 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!64 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !66, line: 98, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0)
!69 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1)
!70 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2)
!71 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !73, line: 119, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!76 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!77 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!78 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!79 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!80 = !{!81, !82, !84, !85, !87, !95, !3305, !3306, !3308, !147, !175, !304, !3309}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !83, line: 154, baseType: !7)
!83 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !86, line: 59, baseType: !7)
!86 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !83, line: 190, size: 128, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !83, line: 191, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !83, line: 191, baseType: !90, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sync_file", file: !97, line: 35, size: 960, elements: !98)
!97 = !DIFile(filename: "./include/linux/sync_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8be2e5f0561d25d9cabb614bb3f2545f")
!98 = !{!99, !3237, !3238, !3239, !3240, !3241, !3295}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !96, file: !97, line: 36, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !15, line: 994, size: 1856, align: 64, elements: !102)
!102 = !{!103, !122, !166, !168, !178, !191, !195, !196, !276, !503, !512, !3227, !3228, !3229, !3230, !3231, !3232, !3234, !3235, !3236}
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !15, line: 995, baseType: !104, size: 128)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !15, line: 995, size: 128, elements: !105)
!105 = !{!106, !112, !121}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !104, file: !15, line: 996, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !108, line: 60, size: 64, elements: !109)
!108 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !108, line: 61, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !104, file: !15, line: 997, baseType: !113, size: 128, align: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !83, line: 232, size: 128, align: 64, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !83, line: 233, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !113, file: !83, line: 234, baseType: !118, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !116}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !104, file: !15, line: 998, baseType: !7, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !101, file: !15, line: 1005, baseType: !123, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !124, line: 29, baseType: !125)
!124 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !124, line: 17, size: 32, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !124, line: 18, baseType: !128, size: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !124, line: 18, size: 32, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !128, file: !124, line: 19, baseType: !131, size: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !132, line: 14, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !131, file: !132, line: 15, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !136, line: 44, baseType: !137)
!136 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !136, line: 14, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !136, line: 15, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !136, line: 15, size: 32, elements: !141)
!141 = !{!142, !148, !158}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !140, file: !136, line: 16, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !83, line: 174, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 172, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !144, file: !83, line: 173, baseType: !147, size: 32)
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !136, line: 24, baseType: !149, size: 16)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !136, line: 24, size: 16, elements: !150)
!150 = !{!151, !157}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !149, file: !136, line: 25, baseType: !152, size: 8)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !153, line: 17, baseType: !154)
!153 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !155, line: 21, baseType: !156)
!155 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!156 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !149, file: !136, line: 26, baseType: !152, size: 8, offset: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !136, line: 28, baseType: !159, size: 32)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !136, line: 28, size: 32, elements: !160)
!160 = !{!161, !165}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !159, file: !136, line: 29, baseType: !162, size: 16)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !153, line: 19, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !155, line: 24, baseType: !164)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !159, file: !136, line: 30, baseType: !162, size: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !101, file: !15, line: 1006, baseType: !167, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !83, line: 156, baseType: !7)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !101, file: !15, line: 1007, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !170, line: 13, baseType: !171)
!170 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !83, line: 181, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 179, size: 64, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !172, file: !83, line: 180, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !153, line: 22, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !155, line: 30, baseType: !177)
!177 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !101, file: !15, line: 1008, baseType: !179, size: 256, offset: 256)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !180, line: 66, size: 256, elements: !181)
!180 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!181 = !{!182, !183, !185, !190}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !179, file: !180, line: 67, baseType: !169, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !179, file: !180, line: 68, baseType: !184, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !132, line: 23, baseType: !131)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !179, file: !180, line: 70, baseType: !186, size: 32, offset: 96)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !187, line: 15, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !186, file: !187, line: 20, baseType: !143, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !179, file: !180, line: 72, baseType: !91, size: 128, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !101, file: !15, line: 1009, baseType: !192, size: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !83, line: 52, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !194, line: 88, baseType: !177)
!194 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !101, file: !15, line: 1010, baseType: !7, size: 32, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !101, file: !15, line: 1011, baseType: !197, size: 256, offset: 640)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !15, line: 948, size: 256, elements: !198)
!198 = !{!199, !222, !265, !266, !274, !275}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !197, file: !15, line: 949, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !201, line: 34, baseType: !202)
!201 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 25, size: 64, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !202, file: !201, line: 26, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !206, line: 27, baseType: !207)
!206 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !206, line: 13, size: 64, elements: !208)
!208 = !{!209, !221}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !206, line: 14, baseType: !210, size: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !206, line: 14, size: 32, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !210, file: !206, line: 15, baseType: !143, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !206, line: 16, baseType: !214, size: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !206, line: 16, size: 32, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !214, file: !206, line: 18, baseType: !152, size: 8)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !214, file: !206, line: 19, baseType: !218, size: 24, offset: 8)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 24, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 3)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !207, file: !206, line: 26, baseType: !135, size: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !197, file: !15, line: 950, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !225)
!225 = !{!226, !231, !232, !233, !246, !247, !254, !255}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !224, file: !6, line: 61, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !73, line: 113, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !73, line: 111, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !228, file: !73, line: 112, baseType: !143, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !224, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !224, file: !6, line: 63, baseType: !123, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !224, file: !6, line: 65, baseType: !234, size: 256, offset: 128)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !244)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !83, line: 194, size: 64, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !235, file: !83, line: 195, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !83, line: 198, size: 128, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !83, line: 199, baseType: !238, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !239, file: !83, line: 199, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!244 = !{!245}
!245 = !DISubrange(count: 4)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !224, file: !6, line: 66, baseType: !235, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !224, file: !6, line: 68, baseType: !248, size: 192, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !249, line: 41, baseType: !250)
!249 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !249, line: 37, size: 192, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !250, file: !249, line: 38, baseType: !123, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !250, file: !249, line: 39, baseType: !91, size: 128, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !224, file: !6, line: 69, baseType: !113, size: 128, align: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !224, file: !6, line: 70, baseType: !256, offset: 768)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, elements: !263)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !257, file: !6, line: 55, baseType: !147, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !257, file: !6, line: 56, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!263 = !{!264}
!264 = !DISubrange(count: -1)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !197, file: !15, line: 951, baseType: !5, size: 32, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !197, file: !15, line: 952, baseType: !267, size: 32, offset: 160)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !268, line: 23, baseType: !269)
!268 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 21, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !269, file: !268, line: 22, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !83, line: 37, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !194, line: 49, baseType: !7)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !197, file: !15, line: 952, baseType: !267, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !197, file: !15, line: 953, baseType: !147, size: 32, offset: 224)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !101, file: !15, line: 1012, baseType: !277, size: 64, offset: 896)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !280, line: 110, size: 1472, elements: !281)
!280 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!281 = !{!282, !283, !284, !291, !292, !293, !294, !295, !296, !297, !298, !307, !308, !309, !310, !311, !312, !448, !449, !450, !451, !452, !483, !486, !490, !498}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !279, file: !280, line: 111, baseType: !169, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !279, file: !280, line: 112, baseType: !267, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !279, file: !280, line: 113, baseType: !285, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !268, line: 28, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 26, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !286, file: !268, line: 27, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !83, line: 38, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !194, line: 50, baseType: !7)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !279, file: !280, line: 114, baseType: !267, size: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !279, file: !280, line: 115, baseType: !285, size: 32, offset: 160)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !279, file: !280, line: 116, baseType: !267, size: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !279, file: !280, line: 117, baseType: !285, size: 32, offset: 224)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !279, file: !280, line: 118, baseType: !267, size: 32, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !279, file: !280, line: 119, baseType: !285, size: 32, offset: 288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !279, file: !280, line: 120, baseType: !7, size: 32, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !279, file: !280, line: 121, baseType: !299, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !300, line: 24, baseType: !301)
!300 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 24, size: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !301, file: !300, line: 24, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !153, line: 23, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !155, line: 31, baseType: !306)
!306 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !279, file: !280, line: 122, baseType: !299, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !279, file: !280, line: 123, baseType: !299, size: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !279, file: !280, line: 124, baseType: !299, size: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !279, file: !280, line: 125, baseType: !299, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !279, file: !280, line: 127, baseType: !156, size: 8, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !279, file: !280, line: 129, baseType: !313, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !315, line: 195, size: 1728, elements: !316)
!315 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!316 = !{!317, !318, !323, !335, !344, !347, !348, !355, !356, !357, !358, !363, !364, !365, !367, !368, !412, !433}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !314, file: !315, line: 196, baseType: !227, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !314, file: !315, line: 197, baseType: !319, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !315, line: 28, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !83, line: 104, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !153, line: 20, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !155, line: 26, baseType: !147)
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !315, line: 198, baseType: !324, size: 192, offset: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !315, line: 198, size: 192, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !324, file: !315, line: 199, baseType: !91, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !324, file: !315, line: 200, baseType: !328, size: 192, align: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !329, line: 5, size: 192, align: 64, elements: !330)
!329 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!330 = !{!331, !332, !334}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !328, file: !329, line: 6, baseType: !84, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !328, file: !329, line: 7, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !328, file: !329, line: 8, baseType: !333, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !314, file: !315, line: 205, baseType: !336, size: 320, offset: 256)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !337, line: 48, size: 320, elements: !338)
!337 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!338 = !{!339, !340, !341, !342, !343}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !336, file: !337, line: 49, baseType: !169, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !336, file: !337, line: 55, baseType: !169, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !336, file: !337, line: 57, baseType: !186, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !336, file: !337, line: 59, baseType: !184, size: 32, offset: 160)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !336, file: !337, line: 60, baseType: !91, size: 128, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !314, file: !315, line: 206, baseType: !345, size: 64, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !315, line: 206, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !314, file: !315, line: 207, baseType: !81, size: 64, offset: 640)
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !315, line: 208, baseType: !349, size: 64, offset: 704)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !315, line: 208, size: 64, elements: !350)
!350 = !{!351, !354}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !349, file: !315, line: 209, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !353, line: 8, baseType: !176)
!353 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!354 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !349, file: !315, line: 210, baseType: !352, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !314, file: !315, line: 212, baseType: !352, size: 64, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !314, file: !315, line: 213, baseType: !267, size: 32, offset: 832)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !314, file: !315, line: 214, baseType: !285, size: 32, offset: 864)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !314, file: !315, line: 215, baseType: !359, size: 32, offset: 896)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !315, line: 31, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !83, line: 110, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !153, line: 21, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !155, line: 27, baseType: !7)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !314, file: !315, line: 216, baseType: !164, size: 16, offset: 928)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !314, file: !315, line: 217, baseType: !164, size: 16, offset: 944)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !315, line: 221, baseType: !366, size: 16, offset: 960)
!366 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !315, line: 228, baseType: !84, size: 64, offset: 1024)
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !315, line: 245, baseType: !369, size: 320, offset: 1088)
!369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !315, line: 245, size: 320, elements: !370)
!370 = !{!371, !403}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !369, file: !315, line: 246, baseType: !372, size: 320)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !315, line: 114, size: 320, elements: !373)
!373 = !{!374, !375, !388, !391, !400}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !372, file: !315, line: 116, baseType: !84, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !315, line: 117, baseType: !376, size: 64, offset: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !315, line: 117, size: 64, elements: !377)
!377 = !{!378, !387}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !315, line: 118, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !315, line: 118, size: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !379, file: !315, line: 120, baseType: !162, size: 16)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !379, file: !315, line: 121, baseType: !383, size: 48, offset: 16)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 48, elements: !385)
!384 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!385 = !{!386}
!386 = !DISubrange(count: 6)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !376, file: !315, line: 127, baseType: !84, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !315, line: 129, baseType: !389, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !315, line: 102, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !372, file: !315, line: 130, baseType: !392, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !315, line: 108, size: 192, elements: !394)
!394 = !{!395, !396, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !393, file: !315, line: 109, baseType: !113, size: 128, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !393, file: !315, line: 110, baseType: !227, size: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !393, file: !315, line: 111, baseType: !398, size: 8, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !83, line: 35, baseType: !399)
!399 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !372, file: !315, line: 131, baseType: !401, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !315, line: 247, baseType: !404, size: 320)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !315, line: 247, size: 320, elements: !405)
!405 = !{!406, !407, !408, !409, !410}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !404, file: !315, line: 248, baseType: !84, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !404, file: !315, line: 249, baseType: !84, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !404, file: !315, line: 250, baseType: !389, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !404, file: !315, line: 251, baseType: !392, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !404, file: !315, line: 252, baseType: !411, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !315, line: 260, baseType: !413, size: 256, offset: 1408)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !315, line: 260, size: 256, elements: !414)
!414 = !{!415, !421}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !413, file: !315, line: 261, baseType: !416, size: 256)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !315, line: 134, size: 256, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !416, file: !315, line: 135, baseType: !81, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !416, file: !315, line: 136, baseType: !420, size: 256)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !244)
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !315, line: 262, baseType: !422, size: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !315, line: 262, size: 256, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !422, file: !315, line: 264, baseType: !91, size: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !422, file: !315, line: 265, baseType: !426, size: 128, offset: 128)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !427, line: 22, size: 128, elements: !428)
!427 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!428 = !{!429, !432}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !426, file: !427, line: 23, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !427, line: 23, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !426, file: !427, line: 24, baseType: !84, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !314, file: !315, line: 280, baseType: !434, size: 64, offset: 1664)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !315, line: 176, size: 192, elements: !436)
!436 = !{!437, !446, !447}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !435, file: !315, line: 177, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !315, line: 171, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!147, !313, !442, !444, !313}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !435, file: !315, line: 178, baseType: !313, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !435, file: !315, line: 179, baseType: !389, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !279, file: !280, line: 130, baseType: !313, size: 64, offset: 832)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !279, file: !280, line: 131, baseType: !313, size: 64, offset: 896)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !279, file: !280, line: 132, baseType: !313, size: 64, offset: 960)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !279, file: !280, line: 135, baseType: !81, size: 64, offset: 1024)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !279, file: !280, line: 137, baseType: !453, size: 64, offset: 1088)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !455, line: 14, size: 1088, elements: !456)
!455 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!456 = !{!457, !458, !467, !468, !469, !470, !471, !472}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !454, file: !455, line: 15, baseType: !227, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !454, file: !455, line: 17, baseType: !459, size: 320, offset: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !460, line: 22, size: 320, elements: !461)
!460 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!461 = !{!462, !463, !464, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !459, file: !460, line: 23, baseType: !184, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !459, file: !460, line: 24, baseType: !175, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !459, file: !460, line: 26, baseType: !91, size: 128, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !459, file: !460, line: 28, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !454, file: !455, line: 19, baseType: !84, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !454, file: !455, line: 20, baseType: !169, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !454, file: !455, line: 23, baseType: !239, size: 128, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !454, file: !455, line: 24, baseType: !267, size: 32, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !454, file: !455, line: 29, baseType: !169, size: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !454, file: !455, line: 36, baseType: !473, size: 320, offset: 768)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !474, line: 15, size: 320, elements: !475)
!474 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!475 = !{!476, !477, !478, !479, !480, !481, !482}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !473, file: !474, line: 16, baseType: !184, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !473, file: !474, line: 18, baseType: !147, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !473, file: !474, line: 19, baseType: !147, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !473, file: !474, line: 20, baseType: !147, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !473, file: !474, line: 21, baseType: !147, size: 32, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !473, file: !474, line: 22, baseType: !84, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !474, line: 23, baseType: !84, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !279, file: !280, line: 138, baseType: !484, size: 64, offset: 1152)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !268, line: 18, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !279, file: !280, line: 139, baseType: !487, size: 64, offset: 1216)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !489, line: 16, flags: DIFlagFwdDecl)
!489 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!490 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !279, file: !280, line: 140, baseType: !491, size: 64, offset: 1280)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !280, line: 25, size: 64, elements: !493)
!493 = !{!494, !495, !496}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !492, file: !280, line: 26, baseType: !143, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !492, file: !280, line: 27, baseType: !147, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !492, file: !280, line: 28, baseType: !497, offset: 64)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, elements: !263)
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !280, line: 142, baseType: !499, size: 128, offset: 1344)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !279, file: !280, line: 142, size: 128, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !499, file: !280, line: 143, baseType: !147, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !499, file: !280, line: 144, baseType: !113, size: 128, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !101, file: !15, line: 1013, baseType: !504, size: 256, offset: 960)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !15, line: 970, size: 256, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !504, file: !15, line: 971, baseType: !84, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !15, line: 972, baseType: !7, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !504, file: !15, line: 973, baseType: !7, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !504, file: !15, line: 974, baseType: !7, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !504, file: !15, line: 975, baseType: !7, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !504, file: !15, line: 976, baseType: !192, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !101, file: !15, line: 1014, baseType: !513, size: 128, offset: 1216)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !514, line: 8, size: 128, elements: !515)
!514 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!515 = !{!516, !3226}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !513, file: !514, line: 9, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !519, line: 70, size: 256, elements: !520)
!519 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!520 = !{!521, !3223, !3224, !3225}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !518, file: !519, line: 71, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !524, line: 82, size: 1536, elements: !525)
!524 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!525 = !{!526, !527, !537, !545, !546, !561, !3191, !3193, !3206, !3207, !3208, !3209, !3210, !3215, !3216, !3217}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !523, file: !524, line: 84, baseType: !7, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !523, file: !524, line: 85, baseType: !528, size: 32, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !529, line: 275, baseType: !530)
!529 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !529, line: 275, size: 32, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !530, file: !529, line: 275, baseType: !533, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !529, line: 69, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !529, line: 64, size: 32, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !534, file: !529, line: 65, baseType: !7, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !523, file: !524, line: 86, baseType: !538, size: 128, offset: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !539, line: 38, size: 128, elements: !540)
!539 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!540 = !{!541, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !539, line: 39, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !538, file: !539, line: 39, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !523, file: !524, line: 87, baseType: !522, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !523, file: !524, line: 88, baseType: !547, size: 128, offset: 256)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !524, line: 49, size: 128, elements: !548)
!548 = !{!549, !558}
!549 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !524, line: 50, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !524, line: 50, size: 64, elements: !551)
!551 = !{!552, !557}
!552 = !DIDerivedType(tag: DW_TAG_member, scope: !550, file: !524, line: 51, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !550, file: !524, line: 51, size: 64, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !553, file: !524, line: 52, baseType: !361, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !553, file: !524, line: 52, baseType: !361, size: 32, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !550, file: !524, line: 54, baseType: !304, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !547, file: !524, line: 56, baseType: !559, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !523, file: !524, line: 89, baseType: !562, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !15, line: 641, size: 4800, elements: !564)
!564 = !{!565, !567, !568, !569, !570, !571, !572, !575, !576, !773, !2942, !2943, !2944, !2945, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !3173, !3176, !3177, !3178, !3187, !3188, !3189, !3190}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !563, file: !15, line: 642, baseType: !566, size: 16)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !83, line: 24, baseType: !164)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !563, file: !15, line: 643, baseType: !164, size: 16, offset: 16)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !563, file: !15, line: 644, baseType: !267, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !563, file: !15, line: 645, baseType: !91, size: 128, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !563, file: !15, line: 646, baseType: !285, size: 32, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !563, file: !15, line: 647, baseType: !7, size: 32, offset: 224)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !563, file: !15, line: 650, baseType: !573, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !15, line: 607, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !563, file: !15, line: 651, baseType: !573, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !563, file: !15, line: 654, baseType: !577, size: 64, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !15, line: 1966, size: 2048, align: 512, elements: !580)
!580 = !{!581, !585, !598, !604, !608, !612, !616, !620, !624, !628, !632, !633, !639, !643, !681, !712, !722, !728, !732, !736, !740, !744, !748, !754, !758}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !579, file: !15, line: 1967, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!522, !562, !522, !7}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !579, file: !15, line: 1968, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!401, !522, !562, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !591, line: 10, size: 128, elements: !592)
!591 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!592 = !{!593, !597}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !590, file: !591, line: 11, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !81}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !590, file: !591, line: 12, baseType: !81, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !579, file: !15, line: 1969, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!147, !602, !562, !147}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !300, line: 42, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !579, file: !15, line: 1970, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!573, !562, !147, !398}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !579, file: !15, line: 1972, baseType: !609, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!147, !522, !411, !147}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !579, file: !15, line: 1974, baseType: !613, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!147, !602, !562, !522, !566, !398}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !579, file: !15, line: 1976, baseType: !617, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!147, !522, !562, !522}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !579, file: !15, line: 1977, baseType: !621, size: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!147, !562, !522}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !579, file: !15, line: 1978, baseType: !625, size: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!147, !602, !562, !522, !401}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !579, file: !15, line: 1980, baseType: !629, size: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!147, !602, !562, !522, !566}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !579, file: !15, line: 1982, baseType: !621, size: 64, offset: 640)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !579, file: !15, line: 1983, baseType: !634, size: 64, offset: 704)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!147, !602, !562, !522, !566, !637}
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !83, line: 21, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !83, line: 18, baseType: !361)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !579, file: !15, line: 1985, baseType: !640, size: 64, offset: 768)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!147, !602, !562, !522, !562, !522, !7}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !579, file: !15, line: 1987, baseType: !644, size: 64, offset: 832)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!147, !602, !522, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !15, line: 226, size: 640, elements: !649)
!649 = !{!650, !651, !652, !662, !671, !672, !678, !679, !680}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !648, file: !15, line: 227, baseType: !7, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !648, file: !15, line: 228, baseType: !566, size: 16, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !15, line: 241, baseType: !653, size: 32, offset: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !15, line: 241, size: 32, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !653, file: !15, line: 242, baseType: !267, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !653, file: !15, line: 243, baseType: !657, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !658, line: 16, baseType: !659)
!658 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 14, size: 32, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !659, file: !658, line: 15, baseType: !272, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !15, line: 245, baseType: !663, size: 32, offset: 96)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !15, line: 245, size: 32, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !663, file: !15, line: 246, baseType: !285, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !663, file: !15, line: 247, baseType: !667, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !658, line: 20, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 18, size: 32, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !668, file: !658, line: 19, baseType: !289, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !648, file: !15, line: 249, baseType: !192, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !648, file: !15, line: 250, baseType: !673, size: 128, offset: 192)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !353, line: 13, size: 128, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !673, file: !353, line: 14, baseType: !352, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !673, file: !353, line: 15, baseType: !677, size: 64, offset: 64)
!677 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !648, file: !15, line: 251, baseType: !673, size: 128, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !648, file: !15, line: 252, baseType: !673, size: 128, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !648, file: !15, line: 259, baseType: !100, size: 64, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !579, file: !15, line: 1988, baseType: !682, size: 64, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!147, !602, !685, !687, !361, !7}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !689, line: 22, size: 1280, elements: !690)
!689 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !688, file: !689, line: 23, baseType: !361, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !688, file: !689, line: 24, baseType: !566, size: 16, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !688, file: !689, line: 25, baseType: !7, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !688, file: !689, line: 26, baseType: !360, size: 32, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !688, file: !689, line: 27, baseType: !304, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !688, file: !689, line: 28, baseType: !304, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !688, file: !689, line: 41, baseType: !304, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !688, file: !689, line: 42, baseType: !637, size: 32, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !688, file: !689, line: 43, baseType: !637, size: 32, offset: 352)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !688, file: !689, line: 44, baseType: !267, size: 32, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !688, file: !689, line: 45, baseType: !285, size: 32, offset: 416)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !688, file: !689, line: 46, baseType: !192, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !688, file: !689, line: 47, baseType: !673, size: 128, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !688, file: !689, line: 48, baseType: !673, size: 128, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !688, file: !689, line: 49, baseType: !673, size: 128, offset: 768)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !688, file: !689, line: 50, baseType: !673, size: 128, offset: 896)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !688, file: !689, line: 51, baseType: !304, size: 64, offset: 1024)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !688, file: !689, line: 52, baseType: !304, size: 64, offset: 1088)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !688, file: !689, line: 53, baseType: !361, size: 32, offset: 1152)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !688, file: !689, line: 54, baseType: !361, size: 32, offset: 1184)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !688, file: !689, line: 55, baseType: !304, size: 64, offset: 1216)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !579, file: !15, line: 1990, baseType: !713, size: 64, offset: 960)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!716, !522, !411, !719}
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !83, line: 66, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !194, line: 73, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !194, line: 15, baseType: !677)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 61, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !194, line: 72, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !194, line: 16, baseType: !84)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !579, file: !15, line: 1991, baseType: !723, size: 64, offset: 1024)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!147, !562, !726, !304, !304}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !15, line: 55, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !579, file: !15, line: 1993, baseType: !729, size: 64, offset: 1088)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!147, !562, !147}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !579, file: !15, line: 1994, baseType: !733, size: 64, offset: 1152)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!147, !562, !522, !100, !7, !566}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !579, file: !15, line: 1997, baseType: !737, size: 64, offset: 1216)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!147, !602, !562, !100, !566}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !579, file: !15, line: 1999, baseType: !741, size: 64, offset: 1280)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!573, !602, !522, !147}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !579, file: !15, line: 2001, baseType: !745, size: 64, offset: 1344)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!147, !602, !522, !573, !147}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !579, file: !15, line: 2003, baseType: !749, size: 64, offset: 1408)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!147, !602, !522, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !15, line: 76, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !579, file: !15, line: 2005, baseType: !755, size: 64, offset: 1472)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!147, !522, !752}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !579, file: !15, line: 2006, baseType: !759, size: 64, offset: 1536)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!762, !562}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !15, line: 3192, size: 192, elements: !764)
!764 = !{!765, !772}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !763, file: !15, line: 3193, baseType: !766, size: 128)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !767, line: 296, size: 128, elements: !768)
!767 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !766, file: !767, line: 297, baseType: !123, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !766, file: !767, line: 299, baseType: !82, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !766, file: !767, line: 300, baseType: !81, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !763, file: !15, line: 3194, baseType: !361, size: 32, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !563, file: !15, line: 655, baseType: !774, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !15, line: 1190, size: 10752, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !824, !962, !1002, !1085, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1102, !1106, !1107, !1110, !1113, !1116, !1119, !1120, !1121, !1162, !2815, !2816, !2817, !2818, !2819, !2820, !2823, !2825, !2832, !2833, !2834, !2835, !2894, !2909, !2910, !2911, !2912, !2913, !2916, !2917, !2918, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !775, file: !15, line: 1191, baseType: !91, size: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !775, file: !15, line: 1192, baseType: !637, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !775, file: !15, line: 1193, baseType: !156, size: 8, offset: 160)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !775, file: !15, line: 1194, baseType: !84, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !775, file: !15, line: 1195, baseType: !192, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !775, file: !15, line: 1196, baseType: !783, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !15, line: 2366, size: 576, elements: !785)
!785 = !{!786, !787, !788, !794, !798, !802, !806, !810, !811, !812, !816, !817, !818, !820, !821, !822, !823}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !784, file: !15, line: 2367, baseType: !401, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !784, file: !15, line: 2368, baseType: !147, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !784, file: !15, line: 2376, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!147, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !519, line: 21, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !784, file: !15, line: 2377, baseType: !795, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !797)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !15, line: 75, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !784, file: !15, line: 2378, baseType: !799, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!522, !783, !147, !401, !81}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !784, file: !15, line: 2380, baseType: !803, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !774}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !784, file: !15, line: 2381, baseType: !807, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !809, line: 103, flags: DIFlagFwdDecl)
!809 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !784, file: !15, line: 2382, baseType: !783, size: 64, offset: 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !784, file: !15, line: 2383, baseType: !235, size: 64, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !784, file: !15, line: 2385, baseType: !813, offset: 576)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !814, line: 206, elements: !815)
!814 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!815 = !{}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !784, file: !15, line: 2386, baseType: !813, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !784, file: !15, line: 2387, baseType: !813, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !784, file: !15, line: 2388, baseType: !819, offset: 576)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, elements: !219)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !784, file: !15, line: 2390, baseType: !813, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !784, file: !15, line: 2391, baseType: !813, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !784, file: !15, line: 2392, baseType: !813, offset: 576)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !784, file: !15, line: 2393, baseType: !813, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !775, file: !15, line: 1197, baseType: !825, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !15, line: 2057, size: 1664, elements: !828)
!828 = !{!829, !833, !837, !838, !842, !848, !852, !853, !854, !858, !862, !866, !867, !868, !874, !879, !880, !887, !888, !889, !890, !894, !898, !945, !960, !961}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !827, file: !15, line: 2058, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!562, !774}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !827, file: !15, line: 2059, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !562}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !827, file: !15, line: 2060, baseType: !834, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !827, file: !15, line: 2062, baseType: !839, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !562, !147}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !827, file: !15, line: 2063, baseType: !843, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!147, !562, !846}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !15, line: 309, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !827, file: !15, line: 2064, baseType: !849, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!147, !562}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !827, file: !15, line: 2065, baseType: !834, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !827, file: !15, line: 2066, baseType: !803, size: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !827, file: !15, line: 2067, baseType: !855, size: 64, offset: 512)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!147, !774, !147}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !827, file: !15, line: 2068, baseType: !859, size: 64, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!147, !774, !14}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !827, file: !15, line: 2069, baseType: !863, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!147, !774}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !827, file: !15, line: 2070, baseType: !859, size: 64, offset: 704)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !827, file: !15, line: 2071, baseType: !863, size: 64, offset: 768)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !827, file: !15, line: 2072, baseType: !869, size: 64, offset: 832)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!147, !522, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !15, line: 62, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !827, file: !15, line: 2073, baseType: !875, size: 64, offset: 896)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!147, !774, !878, !411}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !827, file: !15, line: 2074, baseType: !803, size: 64, offset: 960)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !827, file: !15, line: 2076, baseType: !881, size: 64, offset: 1024)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!147, !884, !522}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !886, line: 66, flags: DIFlagFwdDecl)
!886 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!887 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !827, file: !15, line: 2077, baseType: !881, size: 64, offset: 1088)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !827, file: !15, line: 2078, baseType: !881, size: 64, offset: 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !827, file: !15, line: 2079, baseType: !881, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !827, file: !15, line: 2081, baseType: !891, size: 64, offset: 1280)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!716, !774, !147, !411, !719, !192}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !827, file: !15, line: 2082, baseType: !895, size: 64, offset: 1344)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!716, !774, !147, !401, !719, !192}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !827, file: !15, line: 2083, baseType: !899, size: 64, offset: 1408)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!902, !562}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !20, line: 296, size: 1664, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911, !912, !913, !914, !930, !931, !932}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !904, file: !20, line: 297, baseType: !239, size: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !904, file: !20, line: 298, baseType: !91, size: 128, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !904, file: !20, line: 299, baseType: !91, size: 128, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !904, file: !20, line: 300, baseType: !91, size: 128, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !904, file: !20, line: 301, baseType: !179, size: 256, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !904, file: !20, line: 302, baseType: !123, size: 32, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !904, file: !20, line: 303, baseType: !143, size: 32, offset: 800)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !904, file: !20, line: 304, baseType: !774, size: 64, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !904, file: !20, line: 305, baseType: !915, size: 64, offset: 896)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !20, line: 68, size: 64, elements: !916)
!916 = !{!917, !929}
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !20, line: 69, baseType: !918, size: 32)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !20, line: 69, size: 32, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !918, file: !20, line: 70, baseType: !267, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !918, file: !20, line: 71, baseType: !285, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !918, file: !20, line: 72, baseType: !923, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !924, line: 24, baseType: !925)
!924 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !924, line: 22, size: 32, elements: !926)
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !925, file: !924, line: 23, baseType: !928, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !924, line: 20, baseType: !273)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !915, file: !20, line: 74, baseType: !19, size: 32, offset: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !904, file: !20, line: 306, baseType: !192, size: 64, offset: 960)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !904, file: !20, line: 307, baseType: !84, size: 64, offset: 1024)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !904, file: !20, line: 308, baseType: !933, size: 576, offset: 1088)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !20, line: 205, size: 576, elements: !934)
!934 = !{!935, !937, !938, !939, !940, !941, !942, !943, !944}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !933, file: !20, line: 206, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !20, line: 66, baseType: !177)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !933, file: !20, line: 207, baseType: !936, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !933, file: !20, line: 208, baseType: !936, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !933, file: !20, line: 209, baseType: !936, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !933, file: !20, line: 210, baseType: !936, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !933, file: !20, line: 211, baseType: !936, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !933, file: !20, line: 212, baseType: !936, size: 64, offset: 384)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !933, file: !20, line: 213, baseType: !352, size: 64, offset: 448)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !933, file: !20, line: 214, baseType: !352, size: 64, offset: 512)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !827, file: !15, line: 2085, baseType: !946, size: 64, offset: 1472)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!677, !774, !949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !951, line: 15, size: 256, elements: !952)
!951 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!952 = !{!953, !954, !955, !956, !957}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !950, file: !951, line: 16, baseType: !82, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !950, file: !951, line: 19, baseType: !147, size: 32, offset: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !950, file: !951, line: 26, baseType: !84, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !950, file: !951, line: 33, baseType: !84, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !950, file: !951, line: 36, baseType: !958, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !951, line: 36, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !827, file: !15, line: 2087, baseType: !946, size: 64, offset: 1536)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !827, file: !15, line: 2089, baseType: !803, size: 64, offset: 1600)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !775, file: !15, line: 1198, baseType: !963, size: 64, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !20, line: 324, size: 704, elements: !966)
!966 = !{!967, !971, !975, !979, !980, !981, !982, !983, !988, !993, !997}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !965, file: !20, line: 325, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!147, !903}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !965, file: !20, line: 326, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!903, !774, !147}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !965, file: !20, line: 327, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !903}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !965, file: !20, line: 328, baseType: !968, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !965, file: !20, line: 329, baseType: !968, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !965, file: !20, line: 330, baseType: !968, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !965, file: !20, line: 331, baseType: !855, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !965, file: !20, line: 334, baseType: !984, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!987, !562}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !965, file: !20, line: 335, baseType: !989, size: 64, offset: 512)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!147, !562, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !965, file: !20, line: 337, baseType: !994, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!147, !562, !987}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !965, file: !20, line: 339, baseType: !998, size: 64, offset: 640)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!147, !774, !1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !775, file: !15, line: 1199, baseType: !1003, size: 64, offset: 512)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !20, line: 430, size: 704, elements: !1006)
!1006 = !{!1007, !1011, !1012, !1016, !1017, !1018, !1033, !1056, !1060, !1061, !1084}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1005, file: !20, line: 431, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!147, !774, !147, !147, !685}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1005, file: !20, line: 432, baseType: !855, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1005, file: !20, line: 433, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!147, !774, !7}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1005, file: !20, line: 434, baseType: !1013, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1005, file: !20, line: 435, baseType: !855, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1005, file: !20, line: 436, baseType: !1019, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!147, !774, !147, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !20, line: 417, size: 256, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1023, file: !20, line: 418, baseType: !147, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1023, file: !20, line: 419, baseType: !7, size: 32, offset: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1023, file: !20, line: 420, baseType: !7, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1023, file: !20, line: 422, baseType: !7, size: 32, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1023, file: !20, line: 423, baseType: !7, size: 32, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1023, file: !20, line: 424, baseType: !7, size: 32, offset: 160)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1023, file: !20, line: 425, baseType: !7, size: 32, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1023, file: !20, line: 426, baseType: !7, size: 32, offset: 224)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1005, file: !20, line: 437, baseType: !1034, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!147, !774, !915, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !20, line: 345, size: 960, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1038, file: !20, line: 346, baseType: !147, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1038, file: !20, line: 347, baseType: !304, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1038, file: !20, line: 348, baseType: !304, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1038, file: !20, line: 349, baseType: !304, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1038, file: !20, line: 350, baseType: !304, size: 64, offset: 256)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1038, file: !20, line: 351, baseType: !304, size: 64, offset: 320)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1038, file: !20, line: 352, baseType: !304, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1038, file: !20, line: 353, baseType: !175, size: 64, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1038, file: !20, line: 355, baseType: !175, size: 64, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1038, file: !20, line: 356, baseType: !147, size: 32, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1038, file: !20, line: 357, baseType: !147, size: 32, offset: 608)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1038, file: !20, line: 358, baseType: !304, size: 64, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1038, file: !20, line: 359, baseType: !304, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1038, file: !20, line: 360, baseType: !304, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1038, file: !20, line: 361, baseType: !175, size: 64, offset: 832)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1038, file: !20, line: 362, baseType: !147, size: 32, offset: 896)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1005, file: !20, line: 438, baseType: !1057, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!147, !774, !1001, !1037}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1005, file: !20, line: 440, baseType: !1034, size: 64, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1005, file: !20, line: 441, baseType: !1062, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!147, !774, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !20, line: 411, size: 1408, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1066, file: !20, line: 412, baseType: !7, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1066, file: !20, line: 413, baseType: !1070, size: 1344, offset: 64)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 1344, elements: !219)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !20, line: 397, size: 448, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1083}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1071, file: !20, line: 398, baseType: !7, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1071, file: !20, line: 399, baseType: !7, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1071, file: !20, line: 401, baseType: !7, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1071, file: !20, line: 402, baseType: !7, size: 32, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1071, file: !20, line: 403, baseType: !7, size: 32, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1071, file: !20, line: 404, baseType: !7, size: 32, offset: 160)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1071, file: !20, line: 405, baseType: !7, size: 32, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1071, file: !20, line: 406, baseType: !306, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1071, file: !20, line: 407, baseType: !1082, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !83, line: 132, baseType: !304)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1071, file: !20, line: 408, baseType: !1082, size: 64, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1005, file: !20, line: 442, baseType: !1013, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !775, file: !15, line: 1200, baseType: !1086, size: 64, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1088)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !15, line: 54, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !775, file: !15, line: 1201, baseType: !84, size: 64, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !775, file: !15, line: 1202, baseType: !84, size: 64, offset: 704)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !775, file: !15, line: 1203, baseType: !84, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !775, file: !15, line: 1204, baseType: !522, size: 64, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !775, file: !15, line: 1205, baseType: !336, size: 320, offset: 896)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !775, file: !15, line: 1206, baseType: !147, size: 32, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !775, file: !15, line: 1207, baseType: !143, size: 32, offset: 1248)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !775, file: !15, line: 1209, baseType: !81, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !775, file: !15, line: 1211, baseType: !1098, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !15, line: 1211, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !775, file: !15, line: 1223, baseType: !1103, size: 64, offset: 1408)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !539, line: 34, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1103, file: !539, line: 35, baseType: !542, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !775, file: !15, line: 1224, baseType: !91, size: 128, offset: 1472)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !775, file: !15, line: 1225, baseType: !1108, size: 64, offset: 1600)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !15, line: 1225, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !775, file: !15, line: 1226, baseType: !1111, size: 64, offset: 1664)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !15, line: 1226, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !775, file: !15, line: 1227, baseType: !1114, size: 64, offset: 1728)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !15, line: 50, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !775, file: !15, line: 1228, baseType: !1117, size: 64, offset: 1792)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !15, line: 1228, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !775, file: !15, line: 1229, baseType: !239, size: 128, offset: 1856)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !775, file: !15, line: 1230, baseType: !7, size: 32, offset: 1984)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !775, file: !15, line: 1231, baseType: !1122, size: 2496, offset: 2048)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !20, line: 521, size: 2496, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1128, !1160}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1122, file: !20, line: 522, baseType: !7, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1122, file: !20, line: 523, baseType: !336, size: 320, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1122, file: !20, line: 524, baseType: !1127, size: 192, offset: 384)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 192, elements: !219)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1122, file: !20, line: 525, baseType: !1129, size: 1728, offset: 576)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 1728, elements: !219)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !20, line: 222, size: 576, elements: !1131)
!1131 = !{!1132, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1130, file: !20, line: 223, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !20, line: 445, size: 256, elements: !1135)
!1135 = !{!1136, !1137, !1150, !1151}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1134, file: !20, line: 446, baseType: !147, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1134, file: !20, line: 447, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !20, line: 312, size: 512, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1140, file: !20, line: 313, baseType: !855, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1140, file: !20, line: 314, baseType: !855, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1140, file: !20, line: 315, baseType: !855, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1140, file: !20, line: 316, baseType: !855, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1140, file: !20, line: 317, baseType: !968, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1140, file: !20, line: 318, baseType: !968, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1140, file: !20, line: 319, baseType: !968, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1140, file: !20, line: 320, baseType: !998, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1134, file: !20, line: 448, baseType: !807, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1134, file: !20, line: 449, baseType: !1133, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1130, file: !20, line: 224, baseType: !147, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1130, file: !20, line: 226, baseType: !91, size: 128, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1130, file: !20, line: 227, baseType: !84, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1130, file: !20, line: 228, baseType: !7, size: 32, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1130, file: !20, line: 229, baseType: !7, size: 32, offset: 352)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1130, file: !20, line: 230, baseType: !936, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1130, file: !20, line: 231, baseType: !936, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1130, file: !20, line: 232, baseType: !81, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1122, file: !20, line: 526, baseType: !1161, size: 192, offset: 2304)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 192, elements: !219)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !775, file: !15, line: 1233, baseType: !1163, size: 2368, offset: 4544)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !15, line: 1184, size: 2368, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1163, file: !15, line: 1185, baseType: !164, size: 16)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1163, file: !15, line: 1186, baseType: !164, size: 16, offset: 16)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1163, file: !15, line: 1187, baseType: !1168, size: 2304, offset: 64)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, size: 2304, elements: !219)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1170, line: 12, size: 768, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1171 = !{!1172, !1180, !1182, !2813, !2814}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1169, file: !1170, line: 13, baseType: !1173, size: 384)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1174, line: 17, size: 384, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1175 = !{!1176, !1177, !1178, !1179}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1173, file: !1174, line: 18, baseType: !147, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1173, file: !1174, line: 19, baseType: !147, size: 32, offset: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1173, file: !1174, line: 20, baseType: !248, size: 192, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1173, file: !1174, line: 22, baseType: !113, size: 128, align: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1169, file: !1170, line: 14, baseType: !1181, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1169, file: !1170, line: 15, baseType: !1183, size: 64, offset: 448)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1184, line: 16, size: 64, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1183, file: !1184, line: 17, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !886, line: 746, size: 58368, elements: !1189)
!1189 = !{!1190, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1270, !1281, !1376, !1380, !1383, !1414, !1415, !1416, !1417, !1428, !1430, !1431, !1432, !1433, !1434, !1435, !1446, !1447, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1464, !1465, !1472, !1473, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1703, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1718, !1719, !1720, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1762, !1768, !1769, !1770, !1771, !1772, !1776, !1779, !1786, !1791, !1794, !1797, !1800, !1803, !1943, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1985, !1986, !1987, !1996, !2004, !2005, !2006, !2007, !2008, !2013, !2014, !2015, !2018, !2019, !2022, !2025, !2028, !2036, !2039, !2040, !2126, !2127, !2128, !2129, !2130, !2136, !2137, !2138, !2139, !2142, !2143, !2146, !2149, !2150, !2153, !2154, !2155, !2158, !2159, !2160, !2163, !2164, !2165, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2197, !2200, !2469, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2481, !2553, !2555, !2556, !2557, !2558, !2559, !2571, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2588, !2589, !2590}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1188, file: !886, line: 752, baseType: !1191, size: 192)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1192, line: 56, size: 192, elements: !1193)
!1192 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1193 = !{!1194, !1195, !1196, !1197}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1192, line: 57, baseType: !84, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1191, file: !1192, line: 58, baseType: !84, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1191, file: !1192, line: 59, baseType: !361, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1191, file: !1192, line: 61, baseType: !361, size: 32, offset: 160)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1188, file: !886, line: 754, baseType: !7, size: 32, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1188, file: !886, line: 767, baseType: !81, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1188, file: !886, line: 768, baseType: !227, size: 32, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !886, line: 770, baseType: !7, size: 32, offset: 352)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1188, file: !886, line: 771, baseType: !7, size: 32, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1188, file: !886, line: 774, baseType: !147, size: 32, offset: 416)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1188, file: !886, line: 775, baseType: !1205, size: 128, offset: 448)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1206, line: 58, size: 128, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1207 = !{!1208, !1209, !1214, !1215}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1205, file: !1206, line: 59, baseType: !107, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1206, line: 60, baseType: !1210, size: 32, offset: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1206, line: 60, size: 32, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1210, file: !1206, line: 61, baseType: !7, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1210, file: !1206, line: 62, baseType: !143, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1205, file: !1206, line: 65, baseType: !162, size: 16, offset: 96)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1205, file: !1206, line: 65, baseType: !162, size: 16, offset: 112)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1188, file: !886, line: 776, baseType: !7, size: 32, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1188, file: !886, line: 777, baseType: !84, size: 64, offset: 640)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1188, file: !886, line: 778, baseType: !1187, size: 64, offset: 704)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1188, file: !886, line: 787, baseType: !147, size: 32, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1188, file: !886, line: 788, baseType: !147, size: 32, offset: 800)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1188, file: !886, line: 790, baseType: !147, size: 32, offset: 832)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1188, file: !886, line: 792, baseType: !147, size: 32, offset: 864)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1188, file: !886, line: 793, baseType: !147, size: 32, offset: 896)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1188, file: !886, line: 794, baseType: !147, size: 32, offset: 928)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1188, file: !886, line: 795, baseType: !7, size: 32, offset: 960)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1188, file: !886, line: 797, baseType: !1227, size: 2048, offset: 1024)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !886, line: 551, size: 2048, elements: !1228)
!1228 = !{!1229, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1249, !1252, !1253, !1254}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1227, file: !886, line: 553, baseType: !1230, size: 128)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !886, line: 411, size: 128, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1230, file: !886, line: 412, baseType: !84, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1230, file: !886, line: 413, baseType: !361, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1227, file: !886, line: 554, baseType: !328, size: 192, align: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1227, file: !886, line: 555, baseType: !304, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1227, file: !886, line: 556, baseType: !304, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1227, file: !886, line: 558, baseType: !91, size: 128, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1227, file: !886, line: 559, baseType: !7, size: 32, offset: 576)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1227, file: !886, line: 561, baseType: !304, size: 64, offset: 640)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1227, file: !886, line: 562, baseType: !304, size: 64, offset: 704)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1227, file: !886, line: 563, baseType: !304, size: 64, offset: 768)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1227, file: !886, line: 564, baseType: !304, size: 64, offset: 832)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1227, file: !886, line: 565, baseType: !175, size: 64, offset: 896)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1227, file: !886, line: 566, baseType: !304, size: 64, offset: 960)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1227, file: !886, line: 568, baseType: !304, size: 64, offset: 1024)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1227, file: !886, line: 571, baseType: !147, size: 32, offset: 1088)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1227, file: !886, line: 572, baseType: !1248, size: 64, offset: 1152)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1227, file: !886, line: 574, baseType: !1250, size: 64, offset: 1216)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !886, line: 49, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1227, file: !886, line: 576, baseType: !1250, size: 64, offset: 1280)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1227, file: !886, line: 578, baseType: !84, size: 64, offset: 1344)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1227, file: !886, line: 588, baseType: !1255, size: 512, align: 512, offset: 1536)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !886, line: 497, size: 512, align: 512, elements: !1256)
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1255, file: !886, line: 498, baseType: !304, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1255, file: !886, line: 499, baseType: !304, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1255, file: !886, line: 500, baseType: !304, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1255, file: !886, line: 501, baseType: !361, size: 32, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1255, file: !886, line: 502, baseType: !361, size: 32, offset: 224)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1255, file: !886, line: 503, baseType: !84, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1255, file: !886, line: 504, baseType: !84, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1255, file: !886, line: 505, baseType: !84, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1255, file: !886, line: 506, baseType: !1266, size: 64, align: 64, offset: 448)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !886, line: 445, size: 64, align: 64, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1266, file: !886, line: 446, baseType: !7, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1266, file: !886, line: 447, baseType: !7, size: 32, offset: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1188, file: !886, line: 798, baseType: !1271, size: 384, offset: 3072)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !886, line: 592, size: 384, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1271, file: !886, line: 593, baseType: !91, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1271, file: !886, line: 594, baseType: !84, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1271, file: !886, line: 595, baseType: !84, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1271, file: !886, line: 596, baseType: !7, size: 32, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1271, file: !886, line: 597, baseType: !164, size: 16, offset: 288)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1271, file: !886, line: 598, baseType: !164, size: 16, offset: 304)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1271, file: !886, line: 600, baseType: !1280, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1188, file: !886, line: 799, baseType: !1282, size: 1792, offset: 3456)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !886, line: 610, size: 1792, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1373, !1374}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1282, file: !886, line: 611, baseType: !328, size: 192, align: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1282, file: !886, line: 618, baseType: !304, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1282, file: !886, line: 619, baseType: !304, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1282, file: !886, line: 620, baseType: !304, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1282, file: !886, line: 621, baseType: !304, size: 64, offset: 384)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1282, file: !886, line: 622, baseType: !304, size: 64, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1282, file: !886, line: 629, baseType: !175, size: 64, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1282, file: !886, line: 630, baseType: !304, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1282, file: !886, line: 631, baseType: !7, size: 32, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1282, file: !886, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1282, file: !886, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1282, file: !886, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1282, file: !886, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1282, file: !886, line: 662, baseType: !1298, size: 512, offset: 704)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1299)
!1299 = !{!1300, !1308, !1309, !1314, !1369, !1370, !1371, !1372}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1298, file: !26, line: 119, baseType: !1301, size: 256)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1302, line: 9, size: 256, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1301, file: !1302, line: 10, baseType: !328, size: 192, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1301, file: !1302, line: 11, baseType: !1306, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1307, line: 29, baseType: !175)
!1307 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1298, file: !26, line: 120, baseType: !1306, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1298, file: !26, line: 121, baseType: !1310, size: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!25, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1298, file: !26, line: 122, baseType: !1315, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1317)
!1317 = !{!1318, !1343, !1344, !1347, !1352, !1353, !1364, !1368}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1316, file: !26, line: 160, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 215, size: 4608, align: 512, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1320, file: !26, line: 216, baseType: !184, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1320, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1320, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1320, file: !26, line: 219, baseType: !7, size: 32, offset: 96)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1320, file: !26, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1320, file: !26, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1320, file: !26, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1320, file: !26, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1320, file: !26, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1320, file: !26, line: 226, baseType: !7, size: 32, offset: 160)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1320, file: !26, line: 227, baseType: !164, size: 16, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1320, file: !26, line: 228, baseType: !164, size: 16, offset: 208)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1320, file: !26, line: 229, baseType: !7, size: 32, offset: 224)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1320, file: !26, line: 235, baseType: !1306, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1320, file: !26, line: 236, baseType: !1313, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1320, file: !26, line: 237, baseType: !1306, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1320, file: !26, line: 238, baseType: !1313, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1320, file: !26, line: 239, baseType: !1340, size: 4096, align: 512, offset: 512)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 4096, align: 512, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 8)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1316, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1316, file: !26, line: 162, baseType: !1345, size: 32, offset: 96)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !83, line: 32, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !194, line: 96, baseType: !147)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1316, file: !26, line: 163, baseType: !1348, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !529, line: 274, baseType: !1349)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !529, line: 274, size: 32, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1349, file: !529, line: 274, baseType: !533, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1316, file: !26, line: 164, baseType: !1313, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1316, file: !26, line: 165, baseType: !1354, size: 128, offset: 256)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1302, line: 14, size: 128, elements: !1355)
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1354, file: !1302, line: 15, baseType: !1357, size: 128)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !329, line: 26, size: 128, elements: !1358)
!1358 = !{!1359, !1363}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1357, file: !329, line: 27, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !329, line: 12, size: 64, elements: !1361)
!1361 = !{!1362}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1360, file: !329, line: 13, baseType: !333, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1357, file: !329, line: 28, baseType: !333, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1316, file: !26, line: 166, baseType: !1365, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1306}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1316, file: !26, line: 167, baseType: !1306, size: 64, offset: 448)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1298, file: !26, line: 123, baseType: !152, size: 8, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1298, file: !26, line: 124, baseType: !152, size: 8, offset: 456)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1298, file: !26, line: 125, baseType: !152, size: 8, offset: 464)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1298, file: !26, line: 126, baseType: !152, size: 8, offset: 472)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1282, file: !886, line: 671, baseType: !1298, size: 512, offset: 1216)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1282, file: !886, line: 679, baseType: !1375, size: 64, offset: 1728)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1188, file: !886, line: 800, baseType: !1377, size: 64, offset: 5248)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !886, line: 800, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1188, file: !886, line: 809, baseType: !1381, size: 64, offset: 5312)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !886, line: 70, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1188, file: !886, line: 825, baseType: !1384, size: 2048, align: 512, offset: 5632)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !886, line: 509, size: 2048, align: 512, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1384, file: !886, line: 511, baseType: !304, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1384, file: !886, line: 512, baseType: !304, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1384, file: !886, line: 513, baseType: !304, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1384, file: !886, line: 514, baseType: !304, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1384, file: !886, line: 515, baseType: !304, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1384, file: !886, line: 516, baseType: !304, size: 64, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1384, file: !886, line: 518, baseType: !304, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1384, file: !886, line: 519, baseType: !304, size: 64, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1384, file: !886, line: 520, baseType: !175, size: 64, offset: 512)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1384, file: !886, line: 522, baseType: !304, size: 64, offset: 576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1384, file: !886, line: 523, baseType: !304, size: 64, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1384, file: !886, line: 524, baseType: !175, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1384, file: !886, line: 526, baseType: !175, size: 64, offset: 768)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1384, file: !886, line: 527, baseType: !304, size: 64, offset: 832)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1384, file: !886, line: 529, baseType: !304, size: 64, offset: 896)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1384, file: !886, line: 530, baseType: !304, size: 64, offset: 960)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1384, file: !886, line: 531, baseType: !304, size: 64, offset: 1024)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1384, file: !886, line: 532, baseType: !304, size: 64, offset: 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1384, file: !886, line: 533, baseType: !304, size: 64, offset: 1152)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1384, file: !886, line: 535, baseType: !304, size: 64, offset: 1216)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1384, file: !886, line: 536, baseType: !304, size: 64, offset: 1280)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1384, file: !886, line: 537, baseType: !304, size: 64, offset: 1344)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1384, file: !886, line: 538, baseType: !304, size: 64, offset: 1408)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1384, file: !886, line: 539, baseType: !304, size: 64, offset: 1472)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1384, file: !886, line: 540, baseType: !304, size: 64, offset: 1536)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1384, file: !886, line: 541, baseType: !304, size: 64, offset: 1600)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1384, file: !886, line: 542, baseType: !304, size: 64, offset: 1664)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1384, file: !886, line: 543, baseType: !304, size: 64, offset: 1728)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1188, file: !886, line: 833, baseType: !7, size: 32, offset: 7680)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1188, file: !886, line: 836, baseType: !7, size: 32, offset: 7712)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1188, file: !886, line: 837, baseType: !147, size: 32, offset: 7744)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1188, file: !886, line: 838, baseType: !1418, size: 64, offset: 7808)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1421, line: 19, baseType: !1422)
!1421 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1421, line: 19, size: 64, elements: !1423)
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1422, file: !1421, line: 19, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 64, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 1)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1188, file: !886, line: 839, baseType: !1429, size: 64, offset: 7872)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1188, file: !886, line: 840, baseType: !1420, size: 64, offset: 7936)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1188, file: !886, line: 841, baseType: !81, size: 64, offset: 8000)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1188, file: !886, line: 843, baseType: !164, size: 16, offset: 8064)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1188, file: !886, line: 845, baseType: !164, size: 16, offset: 8080)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1188, file: !886, line: 848, baseType: !147, size: 32, offset: 8096)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1188, file: !886, line: 849, baseType: !1436, size: 32, offset: 8128)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !886, line: 718, size: 32, elements: !1437)
!1437 = !{!1438, !1445}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1436, file: !886, line: 724, baseType: !1439, size: 32)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1436, file: !886, line: 719, size: 32, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1439, file: !886, line: 720, baseType: !152, size: 8)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1439, file: !886, line: 721, baseType: !152, size: 8, offset: 8)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1439, file: !886, line: 722, baseType: !152, size: 8, offset: 16)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1439, file: !886, line: 723, baseType: !152, size: 8, offset: 24)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1436, file: !886, line: 725, baseType: !361, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1188, file: !886, line: 850, baseType: !91, size: 128, offset: 8192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1188, file: !886, line: 851, baseType: !1448, size: 64, offset: 8320)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !886, line: 60, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1188, file: !886, line: 855, baseType: !84, size: 64, offset: 8384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1188, file: !886, line: 856, baseType: !152, size: 8, offset: 8448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1188, file: !886, line: 857, baseType: !152, size: 8, offset: 8456)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1188, file: !886, line: 858, baseType: !147, size: 32, offset: 8480)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1188, file: !886, line: 859, baseType: !91, size: 128, offset: 8512)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1188, file: !886, line: 860, baseType: !147, size: 32, offset: 8640)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1188, file: !886, line: 861, baseType: !91, size: 128, offset: 8704)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1188, file: !886, line: 873, baseType: !1458, size: 256, offset: 8832)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !886, line: 376, size: 256, elements: !1459)
!1459 = !{!1460, !1461, !1462, !1463}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1458, file: !886, line: 381, baseType: !84, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1458, file: !886, line: 384, baseType: !306, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1458, file: !886, line: 389, baseType: !306, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1458, file: !886, line: 392, baseType: !306, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1188, file: !886, line: 875, baseType: !91, size: 128, offset: 9088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1188, file: !886, line: 877, baseType: !1466, size: 320, offset: 9216)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1467, line: 86, size: 320, elements: !1468)
!1467 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1466, file: !1467, line: 87, baseType: !147, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1466, file: !1467, line: 88, baseType: !91, size: 128, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1466, file: !1467, line: 89, baseType: !91, size: 128, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1188, file: !886, line: 878, baseType: !328, size: 192, align: 64, offset: 9536)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1188, file: !886, line: 881, baseType: !1474, size: 64, offset: 9728)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1476, line: 733, size: 10240, elements: !1477)
!1476 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1477 = !{!1478, !1617}
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1475, file: !1476, line: 734, baseType: !1479, size: 10240)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1475, file: !1476, line: 734, size: 10240, elements: !1480)
!1480 = !{!1481, !1485, !1498, !1502, !1503, !1504, !1505, !1506, !1507, !1516, !1517, !1518, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1557, !1559, !1562, !1586, !1587, !1588, !1591, !1592, !1593, !1596, !1597, !1598, !1604, !1605}
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !1476, line: 739, baseType: !1482, size: 512, align: 512)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1479, file: !1476, line: 739, size: 512, align: 512, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1482, file: !1476, line: 747, baseType: !143, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1479, file: !1476, line: 750, baseType: !1486, size: 128, offset: 512)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1487, line: 218, size: 128, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1488 = !{!1489, !1496, !1497}
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1487, line: 219, baseType: !1490, size: 32)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1486, file: !1487, line: 219, size: 32, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1490, file: !1487, line: 220, baseType: !123, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1490, file: !1487, line: 221, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1487, line: 197, baseType: !1495)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1487, line: 197, elements: !815)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1486, file: !1487, line: 223, baseType: !7, size: 32, offset: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1486, file: !1487, line: 224, baseType: !81, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1479, file: !1476, line: 752, baseType: !1499, size: 64, offset: 640)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!84, !100, !84, !84, !84, !84}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1479, file: !1476, line: 756, baseType: !84, size: 64, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1479, file: !1476, line: 757, baseType: !84, size: 64, offset: 768)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1479, file: !1476, line: 760, baseType: !84, size: 64, offset: 832)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1479, file: !1476, line: 761, baseType: !84, size: 64, offset: 896)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1479, file: !1476, line: 763, baseType: !84, size: 64, offset: 960)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1479, file: !1476, line: 764, baseType: !1508, size: 64, offset: 1024)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1510, line: 299, baseType: !1511)
!1510 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1510, line: 299, size: 64, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1511, file: !1510, line: 299, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1515, line: 18, baseType: !84)
!1515 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1479, file: !1476, line: 773, baseType: !143, size: 32, offset: 1088)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1479, file: !1476, line: 785, baseType: !143, size: 32, offset: 1120)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1479, file: !1476, line: 795, baseType: !1519, size: 64, offset: 1152)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1476, line: 726, size: 128, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1520, file: !1476, line: 727, baseType: !304, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1520, file: !1476, line: 728, baseType: !147, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1479, file: !1476, line: 801, baseType: !84, size: 64, offset: 1216)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1479, file: !1476, line: 804, baseType: !169, size: 64, offset: 1280)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1479, file: !1476, line: 806, baseType: !147, size: 32, offset: 1344)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1479, file: !1476, line: 808, baseType: !123, size: 32, offset: 1376)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1479, file: !1476, line: 823, baseType: !336, size: 320, offset: 1408)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1479, file: !1476, line: 825, baseType: !91, size: 128, offset: 1728)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1479, file: !1476, line: 845, baseType: !147, size: 32, offset: 1856)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1479, file: !1476, line: 849, baseType: !84, size: 64, offset: 1920)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1479, file: !1476, line: 850, baseType: !84, size: 64, offset: 1984)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1479, file: !1476, line: 852, baseType: !84, size: 64, offset: 2048)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1479, file: !1476, line: 853, baseType: !84, size: 64, offset: 2112)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1479, file: !1476, line: 854, baseType: !171, size: 64, offset: 2176)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1479, file: !1476, line: 855, baseType: !84, size: 64, offset: 2240)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1479, file: !1476, line: 856, baseType: !84, size: 64, offset: 2304)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1479, file: !1476, line: 857, baseType: !84, size: 64, offset: 2368)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1479, file: !1476, line: 858, baseType: !84, size: 64, offset: 2432)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1479, file: !1476, line: 865, baseType: !533, size: 32, offset: 2496)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1479, file: !1476, line: 867, baseType: !123, size: 32, offset: 2528)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1479, file: !1476, line: 869, baseType: !84, size: 64, offset: 2560)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1479, file: !1476, line: 869, baseType: !84, size: 64, offset: 2624)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1479, file: !1476, line: 869, baseType: !84, size: 64, offset: 2688)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1479, file: !1476, line: 869, baseType: !84, size: 64, offset: 2752)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1479, file: !1476, line: 870, baseType: !84, size: 64, offset: 2816)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1479, file: !1476, line: 870, baseType: !84, size: 64, offset: 2880)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1479, file: !1476, line: 870, baseType: !84, size: 64, offset: 2944)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1479, file: !1476, line: 871, baseType: !84, size: 64, offset: 3008)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1479, file: !1476, line: 871, baseType: !84, size: 64, offset: 3072)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1479, file: !1476, line: 871, baseType: !84, size: 64, offset: 3136)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1479, file: !1476, line: 871, baseType: !84, size: 64, offset: 3200)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1479, file: !1476, line: 873, baseType: !1554, size: 3328, offset: 3264)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 3328, elements: !1555)
!1555 = !{!1556}
!1556 = !DISubrange(count: 52)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1479, file: !1476, line: 875, baseType: !1558, size: 1280, offset: 6592)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 1280, elements: !244)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1479, file: !1476, line: 877, baseType: !1560, size: 64, offset: 7872)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1476, line: 877, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1479, file: !1476, line: 880, baseType: !1563, size: 1088, offset: 7936)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1564, line: 72, baseType: !1565)
!1564 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1564, line: 23, size: 1088, elements: !1566)
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1574, !1575, !1576, !1577, !1581, !1582, !1583}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1565, file: !1564, line: 28, baseType: !304, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1565, file: !1564, line: 38, baseType: !171, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1565, file: !1564, line: 40, baseType: !84, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1565, file: !1564, line: 43, baseType: !336, size: 320, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1565, file: !1564, line: 44, baseType: !1572, size: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1564, line: 44, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1565, file: !1564, line: 48, baseType: !84, size: 64, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1565, file: !1564, line: 59, baseType: !179, size: 256, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1565, file: !1564, line: 60, baseType: !81, size: 64, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1565, file: !1564, line: 61, baseType: !1578, size: 64, offset: 960)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1580)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1564, line: 61, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1565, file: !1564, line: 63, baseType: !143, size: 32, offset: 1024)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1565, file: !1564, line: 69, baseType: !162, size: 16, offset: 1056)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1565, file: !1564, line: 70, baseType: !1584, size: 16, offset: 1072)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !153, line: 18, baseType: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !155, line: 23, baseType: !366)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1479, file: !1476, line: 882, baseType: !84, size: 64, offset: 9024)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1479, file: !1476, line: 885, baseType: !123, size: 32, offset: 9088)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1479, file: !1476, line: 886, baseType: !1589, size: 64, offset: 9152)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1476, line: 732, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1479, file: !1476, line: 901, baseType: !484, size: 64, offset: 9216)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1479, file: !1476, line: 904, baseType: !100, size: 64, offset: 9280)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1479, file: !1476, line: 906, baseType: !1594, size: 64, offset: 9344)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1476, line: 906, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1479, file: !1476, line: 930, baseType: !143, size: 32, offset: 9408)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1479, file: !1476, line: 933, baseType: !143, size: 32, offset: 9440)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1479, file: !1476, line: 935, baseType: !1599, size: 64, offset: 9472)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1599, file: !44, line: 104, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1479, file: !1476, line: 940, baseType: !169, size: 64, offset: 9536)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1479, file: !1476, line: 942, baseType: !1606, size: 256, offset: 9600)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1607, line: 98, size: 256, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1608 = !{!1609, !1610, !1611}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1606, file: !1607, line: 99, baseType: !169, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1606, file: !1607, line: 100, baseType: !91, size: 128, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1606, file: !1607, line: 101, baseType: !1612, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1607, line: 21, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1475, file: !1476, line: 986, baseType: !1618, offset: 10240)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, elements: !263)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1188, file: !886, line: 882, baseType: !1474, size: 64, offset: 9792)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1188, file: !886, line: 884, baseType: !147, size: 32, offset: 9856)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1188, file: !886, line: 885, baseType: !147, size: 32, offset: 9888)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1188, file: !886, line: 886, baseType: !147, size: 32, offset: 9920)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1188, file: !886, line: 888, baseType: !147, size: 32, offset: 9952)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1188, file: !886, line: 890, baseType: !84, size: 64, offset: 9984)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1188, file: !886, line: 893, baseType: !7, size: 32, offset: 10048)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1188, file: !886, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1188, file: !886, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1188, file: !886, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1188, file: !886, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1188, file: !886, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1188, file: !886, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1188, file: !886, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1188, file: !886, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1188, file: !886, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1188, file: !886, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1188, file: !886, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1188, file: !886, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1188, file: !886, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1188, file: !886, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1188, file: !886, line: 969, baseType: !84, size: 64, offset: 10176)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1188, file: !886, line: 971, baseType: !1642, size: 448, offset: 10240)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 448, elements: !1643)
!1643 = !{!1644, !1645, !1650}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1642, file: !31, line: 26, baseType: !84, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1642, file: !31, line: 27, baseType: !1646, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!677, !1649}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !31, line: 28, baseType: !1651, size: 320, offset: 128)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1642, file: !31, line: 28, size: 320, elements: !1652)
!1652 = !{!1653, !1663, !1688}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1651, file: !31, line: 37, baseType: !1654, size: 320)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !31, line: 30, size: 320, elements: !1655)
!1655 = !{!1656, !1658, !1659, !1660, !1661, !1662}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1654, file: !31, line: 31, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1654, file: !31, line: 32, baseType: !361, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1654, file: !31, line: 33, baseType: !361, size: 32, offset: 96)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1654, file: !31, line: 34, baseType: !361, size: 32, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1654, file: !31, line: 35, baseType: !304, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1654, file: !31, line: 36, baseType: !1657, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1651, file: !31, line: 47, baseType: !1664, size: 192)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !31, line: 39, size: 192, elements: !1665)
!1665 = !{!1666, !1667, !1668, !1687}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1664, file: !31, line: 40, baseType: !1345, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1664, file: !31, line: 41, baseType: !30, size: 32, offset: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1664, file: !31, line: 42, baseType: !1669, size: 64, offset: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1664, file: !31, line: 42, size: 64, elements: !1670)
!1670 = !{!1671, !1679}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1669, file: !31, line: 43, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1674, line: 7, size: 128, elements: !1675)
!1674 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1675 = !{!1676, !1678}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1673, file: !1674, line: 8, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !194, line: 93, baseType: !177)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1673, file: !1674, line: 9, baseType: !177, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1669, file: !31, line: 44, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1682, line: 7, size: 64, elements: !1683)
!1682 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1683 = !{!1684, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1681, file: !1682, line: 8, baseType: !1685, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1682, line: 5, baseType: !321)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1681, file: !1682, line: 9, baseType: !321, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1664, file: !31, line: 46, baseType: !304, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1651, file: !31, line: 55, baseType: !1689, size: 256)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !31, line: 49, size: 256, elements: !1690)
!1690 = !{!1691, !1699, !1700, !1701, !1702}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1689, file: !31, line: 50, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1694, line: 36, size: 64, elements: !1695)
!1694 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1695 = !{!1696, !1697, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1693, file: !1694, line: 37, baseType: !147, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1693, file: !1694, line: 38, baseType: !366, size: 16, offset: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1693, file: !1694, line: 39, baseType: !366, size: 16, offset: 48)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1689, file: !31, line: 51, baseType: !147, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1689, file: !31, line: 52, baseType: !147, size: 32, offset: 96)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1689, file: !31, line: 53, baseType: !84, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1689, file: !31, line: 54, baseType: !84, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1188, file: !886, line: 973, baseType: !1704, size: 32, offset: 10688)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !83, line: 27, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !194, line: 28, baseType: !147)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1188, file: !886, line: 974, baseType: !1704, size: 32, offset: 10720)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1188, file: !886, line: 978, baseType: !84, size: 64, offset: 10752)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1188, file: !886, line: 987, baseType: !1187, size: 64, offset: 10816)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1188, file: !886, line: 990, baseType: !1187, size: 64, offset: 10880)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1188, file: !886, line: 995, baseType: !91, size: 128, offset: 10944)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1188, file: !886, line: 996, baseType: !91, size: 128, offset: 11072)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1188, file: !886, line: 997, baseType: !1187, size: 64, offset: 11200)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1188, file: !886, line: 1005, baseType: !91, size: 128, offset: 11264)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1188, file: !886, line: 1006, baseType: !91, size: 128, offset: 11392)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1188, file: !886, line: 1009, baseType: !223, size: 64, offset: 11520)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1188, file: !886, line: 1010, baseType: !1717, size: 512, offset: 11584)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 512, elements: !244)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1188, file: !886, line: 1011, baseType: !91, size: 128, offset: 12096)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1188, file: !886, line: 1012, baseType: !91, size: 128, offset: 12224)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1188, file: !886, line: 1014, baseType: !1721, size: 64, offset: 12352)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1723, line: 26, size: 256, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1722, file: !1723, line: 27, baseType: !7, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1722, file: !1723, line: 28, baseType: !1727, size: 192, offset: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1728, line: 43, size: 192, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1727, file: !1728, line: 44, baseType: !184, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1727, file: !1728, line: 45, baseType: !91, size: 128, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1188, file: !886, line: 1017, baseType: !878, size: 64, offset: 12416)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1188, file: !886, line: 1020, baseType: !878, size: 64, offset: 12480)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1188, file: !886, line: 1023, baseType: !81, size: 64, offset: 12544)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1188, file: !886, line: 1025, baseType: !304, size: 64, offset: 12608)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1188, file: !886, line: 1026, baseType: !304, size: 64, offset: 12672)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1188, file: !886, line: 1031, baseType: !304, size: 64, offset: 12736)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1188, file: !886, line: 1032, baseType: !1739, size: 192, offset: 12800)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !886, line: 324, size: 192, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1739, file: !886, line: 326, baseType: !304, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1739, file: !886, line: 327, baseType: !304, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1739, file: !886, line: 328, baseType: !184, size: 32, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1188, file: !886, line: 1041, baseType: !84, size: 64, offset: 12992)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1188, file: !886, line: 1042, baseType: !84, size: 64, offset: 13056)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1188, file: !886, line: 1045, baseType: !304, size: 64, offset: 13120)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1188, file: !886, line: 1048, baseType: !304, size: 64, offset: 13184)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1188, file: !886, line: 1051, baseType: !84, size: 64, offset: 13248)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1188, file: !886, line: 1052, baseType: !84, size: 64, offset: 13312)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1188, file: !886, line: 1055, baseType: !1751, size: 640, offset: 13376)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1752, line: 132, size: 640, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1753 = !{!1754, !1760, !1761}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1751, file: !1752, line: 133, baseType: !1755, size: 576)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1756, size: 576, elements: !219)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1752, line: 117, size: 192, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1756, file: !1752, line: 118, baseType: !304, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1756, file: !1752, line: 119, baseType: !1354, size: 128, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1751, file: !1752, line: 134, baseType: !7, size: 32, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1751, file: !1752, line: 135, baseType: !7, size: 32, offset: 608)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1188, file: !886, line: 1058, baseType: !1763, size: 448, offset: 14016)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1752, line: 144, size: 448, elements: !1764)
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1763, file: !1752, line: 145, baseType: !113, size: 128, align: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1763, file: !1752, line: 146, baseType: !179, size: 256, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1763, file: !1752, line: 147, baseType: !7, size: 32, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1188, file: !886, line: 1064, baseType: !277, size: 64, offset: 14464)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1188, file: !886, line: 1067, baseType: !277, size: 64, offset: 14528)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1188, file: !886, line: 1070, baseType: !277, size: 64, offset: 14592)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1188, file: !886, line: 1074, baseType: !313, size: 64, offset: 14656)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1188, file: !886, line: 1084, baseType: !1773, size: 128, offset: 14720)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 128, elements: !1774)
!1774 = !{!1775}
!1775 = !DISubrange(count: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1188, file: !886, line: 1086, baseType: !1777, size: 64, offset: 14848)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !886, line: 55, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1188, file: !886, line: 1089, baseType: !1780, size: 64, offset: 14912)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1781, line: 12, size: 64, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1780, file: !1781, line: 13, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1781, line: 8, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1188, file: !886, line: 1090, baseType: !1787, size: 128, offset: 14976)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1788, line: 13, size: 128, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1787, file: !1788, line: 14, baseType: !91, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1188, file: !886, line: 1097, baseType: !1792, size: 64, offset: 15104)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !886, line: 50, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1188, file: !886, line: 1100, baseType: !1795, size: 64, offset: 15168)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !886, line: 1100, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1188, file: !886, line: 1103, baseType: !1798, size: 64, offset: 15232)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !886, line: 53, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1188, file: !886, line: 1107, baseType: !1801, size: 64, offset: 15296)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !886, line: 56, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1188, file: !886, line: 1110, baseType: !1804, size: 64, offset: 15360)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1806, line: 93, size: 8768, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1857, !1866, !1867, !1869, !1870, !1871, !1874, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1912, !1913, !1920, !1930, !1933, !1934, !1937, !1938, !1939, !1940, !1941, !1942}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1805, file: !1806, line: 94, baseType: !227, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1805, file: !1806, line: 95, baseType: !143, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1805, file: !1806, line: 96, baseType: !147, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1805, file: !1806, line: 97, baseType: !147, size: 32, offset: 96)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1805, file: !1806, line: 98, baseType: !91, size: 128, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1805, file: !1806, line: 100, baseType: !248, size: 192, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1805, file: !1806, line: 103, baseType: !1187, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1805, file: !1806, line: 106, baseType: !1816, size: 192, offset: 512)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !489, line: 32, size: 192, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1816, file: !489, line: 33, baseType: !91, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1816, file: !489, line: 34, baseType: !1820, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1821, line: 25, baseType: !1822)
!1821 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1821, line: 23, size: 64, elements: !1823)
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1822, file: !1821, line: 24, baseType: !1425, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1805, file: !1806, line: 109, baseType: !235, size: 64, offset: 704)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1805, file: !1806, line: 112, baseType: !147, size: 32, offset: 768)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1805, file: !1806, line: 114, baseType: !147, size: 32, offset: 800)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1805, file: !1806, line: 115, baseType: !1187, size: 64, offset: 832)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1805, file: !1806, line: 118, baseType: !147, size: 32, offset: 896)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1805, file: !1806, line: 119, baseType: !7, size: 32, offset: 928)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1805, file: !1806, line: 121, baseType: !1832, size: 64, offset: 960)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1806, line: 80, size: 448, elements: !1834)
!1834 = !{!1835, !1836, !1842}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1833, file: !1806, line: 81, baseType: !143, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1833, file: !1806, line: 82, baseType: !1837, size: 128, offset: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1806, line: 75, size: 128, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1837, file: !1806, line: 76, baseType: !1187, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1837, file: !1806, line: 77, baseType: !1841, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1833, file: !1806, line: 83, baseType: !1722, size: 256, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1805, file: !1806, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1805, file: !1806, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1805, file: !1806, line: 138, baseType: !7, size: 32, offset: 1056)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1805, file: !1806, line: 139, baseType: !91, size: 128, offset: 1088)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1805, file: !1806, line: 142, baseType: !1298, size: 512, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1805, file: !1806, line: 143, baseType: !1306, size: 64, offset: 1728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1805, file: !1806, line: 150, baseType: !1850, size: 256, offset: 1792)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1851, size: 256, elements: !1855)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1806, line: 38, size: 128, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1851, file: !1806, line: 39, baseType: !304, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1851, file: !1806, line: 40, baseType: !304, size: 64, offset: 64)
!1855 = !{!1856}
!1856 = !DISubrange(count: 2)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1805, file: !1806, line: 156, baseType: !1858, size: 192, offset: 2048)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1806, line: 66, size: 192, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1858, file: !1806, line: 67, baseType: !1861, size: 192)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1806, line: 47, size: 192, elements: !1862)
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1861, file: !1806, line: 48, baseType: !171, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1861, file: !1806, line: 49, baseType: !171, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1861, file: !1806, line: 50, baseType: !171, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1805, file: !1806, line: 160, baseType: !1751, size: 640, offset: 2240)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1805, file: !1806, line: 163, baseType: !1868, size: 256, offset: 2880)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !244)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1805, file: !1806, line: 169, baseType: !223, size: 64, offset: 3136)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1805, file: !1806, line: 172, baseType: !147, size: 32, offset: 3200)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1805, file: !1806, line: 174, baseType: !1872, size: 64, offset: 3264)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1806, line: 174, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1805, file: !1806, line: 185, baseType: !1875, size: 64, offset: 3328)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !529, line: 860, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 853, size: 64, elements: !1877)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1876, file: !529, line: 858, baseType: !528, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1876, file: !529, line: 859, baseType: !123, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1805, file: !1806, line: 186, baseType: !304, size: 64, offset: 3392)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1805, file: !1806, line: 186, baseType: !304, size: 64, offset: 3456)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1805, file: !1806, line: 186, baseType: !304, size: 64, offset: 3520)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1805, file: !1806, line: 186, baseType: !304, size: 64, offset: 3584)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1805, file: !1806, line: 187, baseType: !304, size: 64, offset: 3648)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1805, file: !1806, line: 188, baseType: !304, size: 64, offset: 3712)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1805, file: !1806, line: 189, baseType: !1739, size: 192, offset: 3776)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1805, file: !1806, line: 190, baseType: !84, size: 64, offset: 3968)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1805, file: !1806, line: 190, baseType: !84, size: 64, offset: 4032)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1805, file: !1806, line: 190, baseType: !84, size: 64, offset: 4096)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1805, file: !1806, line: 190, baseType: !84, size: 64, offset: 4160)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1805, file: !1806, line: 191, baseType: !84, size: 64, offset: 4224)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1805, file: !1806, line: 191, baseType: !84, size: 64, offset: 4288)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1805, file: !1806, line: 191, baseType: !84, size: 64, offset: 4352)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1805, file: !1806, line: 191, baseType: !84, size: 64, offset: 4416)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1805, file: !1806, line: 192, baseType: !84, size: 64, offset: 4480)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1805, file: !1806, line: 192, baseType: !84, size: 64, offset: 4544)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1805, file: !1806, line: 192, baseType: !84, size: 64, offset: 4608)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1805, file: !1806, line: 192, baseType: !84, size: 64, offset: 4672)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1805, file: !1806, line: 193, baseType: !84, size: 64, offset: 4736)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1805, file: !1806, line: 193, baseType: !84, size: 64, offset: 4800)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1805, file: !1806, line: 194, baseType: !1902, size: 448, offset: 4864)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1903, line: 12, size: 448, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910, !1911}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1902, file: !1903, line: 15, baseType: !304, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1902, file: !1903, line: 17, baseType: !304, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1902, file: !1903, line: 19, baseType: !304, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1902, file: !1903, line: 21, baseType: !304, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1902, file: !1903, line: 29, baseType: !304, size: 64, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1902, file: !1903, line: 35, baseType: !304, size: 64, offset: 320)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1902, file: !1903, line: 44, baseType: !304, size: 64, offset: 384)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1805, file: !1806, line: 202, baseType: !306, size: 64, offset: 5312)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1805, file: !1806, line: 213, baseType: !1914, size: 2048, offset: 5376)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1915, size: 2048, elements: !1774)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1916, line: 43, size: 128, elements: !1917)
!1916 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1915, file: !1916, line: 44, baseType: !721, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1915, file: !1916, line: 45, baseType: !721, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1805, file: !1806, line: 216, baseType: !1921, size: 448, offset: 7424)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1806, line: 30, size: 448, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928, !1929}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1921, file: !1806, line: 31, baseType: !147, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1921, file: !1806, line: 32, baseType: !677, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1921, file: !1806, line: 33, baseType: !84, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1921, file: !1806, line: 34, baseType: !304, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1921, file: !1806, line: 34, baseType: !304, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1921, file: !1806, line: 35, baseType: !84, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1921, file: !1806, line: 35, baseType: !84, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1805, file: !1806, line: 219, baseType: !1931, size: 64, offset: 7872)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1806, line: 219, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1805, file: !1806, line: 222, baseType: !7, size: 32, offset: 7936)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1805, file: !1806, line: 223, baseType: !1935, size: 64, offset: 8000)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1806, line: 223, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1805, file: !1806, line: 230, baseType: !398, size: 8, offset: 8064)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1805, file: !1806, line: 231, baseType: !366, size: 16, offset: 8080)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1805, file: !1806, line: 232, baseType: !366, size: 16, offset: 8096)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1805, file: !1806, line: 234, baseType: !1474, size: 64, offset: 8128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1805, file: !1806, line: 237, baseType: !179, size: 256, offset: 8192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1805, file: !1806, line: 243, baseType: !336, size: 320, offset: 8448)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1188, file: !886, line: 1111, baseType: !1944, size: 64, offset: 15424)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1806, line: 20, size: 16640, elements: !1946)
!1946 = !{!1947, !1948, !1949, !1950}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1945, file: !1806, line: 21, baseType: !123, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1945, file: !1806, line: 22, baseType: !227, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1945, file: !1806, line: 23, baseType: !248, size: 192, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1945, file: !1806, line: 24, baseType: !1951, size: 16384, offset: 256)
!1951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1952, size: 16384, elements: !1972)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !489, line: 51, size: 256, elements: !1953)
!1953 = !{!1954}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1952, file: !489, line: 52, baseType: !1955, size: 256)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !489, line: 37, size: 256, elements: !1956)
!1956 = !{!1957, !1964, !1965, !1971}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1955, file: !489, line: 39, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1959, line: 83, baseType: !1960)
!1959 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1959, line: 82, baseType: !1962)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !147}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1955, file: !489, line: 40, baseType: !84, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1955, file: !489, line: 46, baseType: !1966, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1959, line: 86, baseType: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1959, line: 85, baseType: !1969)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1955, file: !489, line: 48, baseType: !1820, size: 64, offset: 192)
!1972 = !{!1973}
!1973 = !DISubrange(count: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1188, file: !886, line: 1112, baseType: !1820, size: 64, offset: 15488)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1188, file: !886, line: 1113, baseType: !1820, size: 64, offset: 15552)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1188, file: !886, line: 1115, baseType: !1820, size: 64, offset: 15616)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1188, file: !886, line: 1116, baseType: !1816, size: 192, offset: 15680)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1188, file: !886, line: 1117, baseType: !84, size: 64, offset: 15872)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1188, file: !886, line: 1118, baseType: !719, size: 64, offset: 15936)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1188, file: !886, line: 1119, baseType: !7, size: 32, offset: 16000)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1188, file: !886, line: 1121, baseType: !116, size: 64, offset: 16064)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1188, file: !886, line: 1125, baseType: !1983, size: 64, offset: 16128)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !886, line: 43, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1188, file: !886, line: 1127, baseType: !267, size: 32, offset: 16192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1188, file: !886, line: 1128, baseType: !7, size: 32, offset: 16224)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1188, file: !886, line: 1130, baseType: !1988, size: 128, offset: 16256)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1989, line: 37, size: 128, elements: !1990)
!1989 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1990 = !{!1991, !1992, !1993}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1988, file: !1989, line: 38, baseType: !147, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1988, file: !1989, line: 39, baseType: !143, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1988, file: !1989, line: 40, baseType: !1994, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1989, line: 24, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1188, file: !886, line: 1131, baseType: !1997, size: 256, offset: 16384)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1998, line: 12, size: 256, elements: !1999)
!1998 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1999 = !{!2000, !2001, !2002, !2003}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1997, file: !1998, line: 13, baseType: !411, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1997, file: !1998, line: 14, baseType: !84, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1997, file: !1998, line: 15, baseType: !84, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1997, file: !1998, line: 16, baseType: !398, size: 8, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1188, file: !886, line: 1134, baseType: !304, size: 64, offset: 16640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1188, file: !886, line: 1135, baseType: !304, size: 64, offset: 16704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1188, file: !886, line: 1138, baseType: !123, size: 32, offset: 16768)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1188, file: !886, line: 1141, baseType: !184, size: 32, offset: 16800)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1188, file: !886, line: 1143, baseType: !2009, size: 64, offset: 16832)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !886, line: 735, size: 64, elements: !2010)
!2010 = !{!2011}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2009, file: !886, line: 736, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1188, file: !886, line: 1147, baseType: !1357, size: 128, offset: 16896)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1188, file: !886, line: 1149, baseType: !1187, size: 64, offset: 17024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1188, file: !886, line: 1151, baseType: !2016, size: 64, offset: 17088)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !886, line: 1151, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1188, file: !886, line: 1188, baseType: !81, size: 64, offset: 17152)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1188, file: !886, line: 1191, baseType: !2020, size: 64, offset: 17216)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !886, line: 44, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1188, file: !886, line: 1194, baseType: !2023, size: 64, offset: 17280)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !886, line: 45, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1188, file: !886, line: 1197, baseType: !2026, size: 64, offset: 17344)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !886, line: 61, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1188, file: !886, line: 1199, baseType: !2029, size: 64, offset: 17408)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2031, line: 99, size: 128, elements: !2032)
!2031 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2030, file: !2031, line: 100, baseType: !169, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2030, file: !2031, line: 101, baseType: !143, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2030, file: !2031, line: 103, baseType: !164, size: 16, offset: 96)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1188, file: !886, line: 1202, baseType: !2037, size: 64, offset: 17472)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !886, line: 48, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1188, file: !886, line: 1205, baseType: !84, size: 64, offset: 17536)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1188, file: !886, line: 1206, baseType: !2041, size: 64, offset: 17600)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !489, line: 14, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !489, line: 12, size: 384, elements: !2044)
!2044 = !{!2045}
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2043, file: !489, line: 13, baseType: !2046, size: 384)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !489, line: 13, size: 384, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2046, file: !489, line: 13, baseType: !147, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2046, file: !489, line: 13, baseType: !147, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2046, file: !489, line: 13, baseType: !147, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2046, file: !489, line: 13, baseType: !2052, size: 256, offset: 128)
!2052 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2053, line: 37, size: 256, elements: !2054)
!2053 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2054 = !{!2055, !2060, !2073, !2079, !2088, !2115, !2120}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2052, file: !2053, line: 42, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2053, line: 39, size: 64, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2056, file: !2053, line: 40, baseType: !1705, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2056, file: !2053, line: 41, baseType: !273, size: 32, offset: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2052, file: !2053, line: 50, baseType: !2061, size: 192)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2053, line: 45, size: 192, elements: !2062)
!2062 = !{!2063, !2065, !2066, !2072}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2061, file: !2053, line: 46, baseType: !2064, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !194, line: 95, baseType: !147)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2061, file: !2053, line: 47, baseType: !147, size: 32, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2061, file: !2053, line: 48, baseType: !2067, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2053, line: 11, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2053, line: 8, size: 64, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2068, file: !2053, line: 9, baseType: !147, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2068, file: !2053, line: 10, baseType: !81, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2061, file: !2053, line: 49, baseType: !147, size: 32, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2052, file: !2053, line: 57, baseType: !2074, size: 128)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2053, line: 53, size: 128, elements: !2075)
!2075 = !{!2076, !2077, !2078}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2074, file: !2053, line: 54, baseType: !1705, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2074, file: !2053, line: 55, baseType: !273, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2074, file: !2053, line: 56, baseType: !2067, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2052, file: !2053, line: 66, baseType: !2080, size: 256)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2053, line: 60, size: 256, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2087}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2080, file: !2053, line: 61, baseType: !1705, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2080, file: !2053, line: 62, baseType: !273, size: 32, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2080, file: !2053, line: 63, baseType: !147, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2080, file: !2053, line: 64, baseType: !2086, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !194, line: 94, baseType: !718)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2080, file: !2053, line: 65, baseType: !2086, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2052, file: !2053, line: 105, baseType: !2089, size: 256)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2053, line: 69, size: 256, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2089, file: !2053, line: 70, baseType: !81, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2089, file: !2053, line: 79, baseType: !2093, size: 192, offset: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2089, file: !2053, line: 79, size: 192, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2104, !2109}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2093, file: !2053, line: 81, baseType: !147, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2093, file: !2053, line: 86, baseType: !366, size: 16)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2093, file: !2053, line: 92, baseType: !2098, size: 192)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2053, line: 88, size: 192, elements: !2099)
!2099 = !{!2100, !2102, !2103}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2098, file: !2053, line: 89, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 64, elements: !1341)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2098, file: !2053, line: 90, baseType: !81, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2098, file: !2053, line: 91, baseType: !81, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2093, file: !2053, line: 97, baseType: !2105, size: 96)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2053, line: 94, size: 96, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2105, file: !2053, line: 95, baseType: !2101, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2105, file: !2053, line: 96, baseType: !362, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2093, file: !2053, line: 103, baseType: !2110, size: 128)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2093, file: !2053, line: 99, size: 128, elements: !2111)
!2111 = !{!2112, !2113, !2114}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2110, file: !2053, line: 100, baseType: !84, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2110, file: !2053, line: 101, baseType: !362, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2110, file: !2053, line: 102, baseType: !362, size: 32, offset: 96)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2052, file: !2053, line: 111, baseType: !2116, size: 128)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2053, line: 108, size: 128, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2116, file: !2053, line: 109, baseType: !677, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2116, file: !2053, line: 110, baseType: !147, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2052, file: !2053, line: 118, baseType: !2121, size: 128)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2053, line: 114, size: 128, elements: !2122)
!2122 = !{!2123, !2124, !2125}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2121, file: !2053, line: 115, baseType: !81, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2121, file: !2053, line: 116, baseType: !147, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2121, file: !2053, line: 117, baseType: !7, size: 32, offset: 96)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1188, file: !886, line: 1208, baseType: !1902, size: 448, offset: 17664)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1188, file: !886, line: 1215, baseType: !304, size: 64, offset: 18112)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1188, file: !886, line: 1217, baseType: !304, size: 64, offset: 18176)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1188, file: !886, line: 1219, baseType: !304, size: 64, offset: 18240)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1188, file: !886, line: 1223, baseType: !2131, size: 64, offset: 18304)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2132, line: 99, baseType: !2133)
!2132 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2132, line: 99, size: 64, elements: !2134)
!2134 = !{!2135}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2133, file: !2132, line: 99, baseType: !1425, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1188, file: !886, line: 1225, baseType: !528, size: 32, offset: 18368)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1188, file: !886, line: 1226, baseType: !147, size: 32, offset: 18400)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1188, file: !886, line: 1227, baseType: !147, size: 32, offset: 18432)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1188, file: !886, line: 1231, baseType: !2140, size: 64, offset: 18496)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !886, line: 1231, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1188, file: !886, line: 1233, baseType: !91, size: 128, offset: 18560)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1188, file: !886, line: 1240, baseType: !2144, size: 64, offset: 18688)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !886, line: 62, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1188, file: !886, line: 1242, baseType: !2147, size: 64, offset: 18752)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !886, line: 1242, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1188, file: !886, line: 1244, baseType: !91, size: 128, offset: 18816)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1188, file: !886, line: 1245, baseType: !2151, size: 64, offset: 18944)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !886, line: 51, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1188, file: !886, line: 1246, baseType: !179, size: 256, offset: 19008)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1188, file: !886, line: 1247, baseType: !7, size: 32, offset: 19264)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1188, file: !886, line: 1250, baseType: !2156, size: 64, offset: 19328)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !886, line: 57, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1188, file: !886, line: 1251, baseType: !179, size: 256, offset: 19392)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1188, file: !886, line: 1252, baseType: !91, size: 128, offset: 19648)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1188, file: !886, line: 1259, baseType: !2161, size: 64, offset: 19776)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1476, line: 717, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1188, file: !886, line: 1260, baseType: !366, size: 16, offset: 19840)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1188, file: !886, line: 1261, baseType: !366, size: 16, offset: 19856)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1188, file: !886, line: 1314, baseType: !2166, size: 64, offset: 19904)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2168, line: 62, size: 256, align: 256, elements: !2169)
!2168 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175, !2176}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2167, file: !2168, line: 75, baseType: !362, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2167, file: !2168, line: 90, baseType: !362, size: 32, offset: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2167, file: !2168, line: 112, baseType: !305, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2167, file: !2168, line: 132, baseType: !362, size: 32, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2167, file: !2168, line: 140, baseType: !362, size: 32, offset: 160)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2167, file: !2168, line: 149, baseType: !362, size: 32, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2167, file: !2168, line: 154, baseType: !2177, offset: 224)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, elements: !263)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1188, file: !886, line: 1315, baseType: !361, size: 32, offset: 19968)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1188, file: !886, line: 1316, baseType: !361, size: 32, offset: 20000)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1188, file: !886, line: 1321, baseType: !84, size: 64, offset: 20032)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1188, file: !886, line: 1325, baseType: !147, size: 32, offset: 20096)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1188, file: !886, line: 1326, baseType: !147, size: 32, offset: 20128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1188, file: !886, line: 1327, baseType: !147, size: 32, offset: 20160)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1188, file: !886, line: 1328, baseType: !147, size: 32, offset: 20192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1188, file: !886, line: 1329, baseType: !113, size: 128, align: 64, offset: 20224)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1188, file: !886, line: 1332, baseType: !2187, size: 128, offset: 20352)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2188, line: 51, size: 128, elements: !2189)
!2188 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2189 = !{!2190, !2195, !2196}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2187, file: !2188, line: 60, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2192, line: 7, size: 64, elements: !2193)
!2192 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2193 = !{!2194}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2191, file: !2192, line: 12, baseType: !1422, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2187, file: !2188, line: 63, baseType: !398, size: 8, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2187, file: !2188, line: 70, baseType: !398, size: 8, offset: 72)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1188, file: !886, line: 1335, baseType: !2198, size: 64, offset: 20480)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !886, line: 59, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1188, file: !886, line: 1337, baseType: !2201, size: 128, offset: 20544)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2188, line: 39, size: 128, elements: !2202)
!2202 = !{!2203, !2467, !2468}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2201, file: !2188, line: 40, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1476, line: 74, size: 512, align: 128, elements: !2206)
!2206 = !{!2207, !2208, !2461, !2466}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2205, file: !1476, line: 75, baseType: !84, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !1476, line: 83, baseType: !2209, size: 320, offset: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !1476, line: 83, size: 320, elements: !2210)
!2210 = !{!2211, !2435, !2449, !2453, !2460}
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !1476, line: 84, baseType: !2212, size: 320)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !1476, line: 84, size: 320, elements: !2213)
!2213 = !{!2214, !2225, !2429, !2434}
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !1476, line: 90, baseType: !2215, size: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !1476, line: 90, size: 128, elements: !2216)
!2216 = !{!2217, !2218, !2223, !2224}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2215, file: !1476, line: 91, baseType: !91, size: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !1476, line: 94, baseType: !2219, size: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !1476, line: 94, size: 128, elements: !2220)
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2219, file: !1476, line: 96, baseType: !81, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2219, file: !1476, line: 98, baseType: !7, size: 32, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2215, file: !1476, line: 102, baseType: !91, size: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2215, file: !1476, line: 103, baseType: !91, size: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2212, file: !1476, line: 106, baseType: !2226, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !15, line: 472, size: 1536, align: 64, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2421, !2422, !2423, !2426, !2427, !2428}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2227, file: !15, line: 473, baseType: !562, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2227, file: !15, line: 474, baseType: !766, size: 128, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2227, file: !15, line: 475, baseType: !336, size: 320, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2227, file: !15, line: 476, baseType: !82, size: 32, offset: 512)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2227, file: !15, line: 477, baseType: !143, size: 32, offset: 544)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2227, file: !15, line: 482, baseType: !1357, size: 128, offset: 576)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2227, file: !15, line: 483, baseType: !84, size: 64, offset: 704)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2227, file: !15, line: 484, baseType: !84, size: 64, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2227, file: !15, line: 485, baseType: !2238, size: 64, offset: 832)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2240)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !15, line: 404, size: 1280, elements: !2241)
!2241 = !{!2242, !2246, !2316, !2320, !2324, !2330, !2336, !2340, !2345, !2349, !2353, !2357, !2385, !2389, !2393, !2397, !2402, !2406, !2413, !2417}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2240, file: !15, line: 405, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!147, !2204, !846}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2240, file: !15, line: 406, baseType: !2247, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!147, !100, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1476, line: 293, size: 1536, elements: !2252)
!2252 = !{!2253, !2283, !2297}
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !1476, line: 295, baseType: !2254, size: 512)
!2254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !1476, line: 295, size: 512, elements: !2255)
!2255 = !{!2256, !2282}
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2254, file: !1476, line: 296, baseType: !2257, size: 448)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2254, file: !1476, line: 296, size: 448, elements: !2258)
!2258 = !{!2259, !2260, !2269, !2270, !2271, !2280, !2281}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !1476, line: 298, baseType: !84, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2257, file: !1476, line: 299, baseType: !2261, size: 128, offset: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2257, file: !1476, line: 299, size: 128, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2261, file: !1476, line: 300, baseType: !91, size: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !1476, line: 302, baseType: !2265, size: 128)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2261, file: !1476, line: 302, size: 128, elements: !2266)
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2265, file: !1476, line: 303, baseType: !81, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2265, file: !1476, line: 305, baseType: !7, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2257, file: !1476, line: 310, baseType: !2226, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2257, file: !1476, line: 311, baseType: !84, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !2257, file: !1476, line: 312, baseType: !2272, size: 64, offset: 320)
!2272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2257, file: !1476, line: 312, size: 64, elements: !2273)
!2273 = !{!2274, !2275}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2272, file: !1476, line: 313, baseType: !81, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2272, file: !1476, line: 314, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1476, line: 257, baseType: !2277)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1476, line: 255, size: 64, elements: !2278)
!2278 = !{!2279}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2277, file: !1476, line: 256, baseType: !84, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2257, file: !1476, line: 316, baseType: !143, size: 32, offset: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2257, file: !1476, line: 317, baseType: !143, size: 32, offset: 416)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2254, file: !1476, line: 323, baseType: !2205, size: 512, align: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !1476, line: 325, baseType: !2284, size: 512, offset: 512)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !1476, line: 325, size: 512, elements: !2285)
!2285 = !{!2286, !2296}
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !1476, line: 326, baseType: !2287, size: 320)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2284, file: !1476, line: 326, size: 320, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2287, file: !1476, line: 327, baseType: !84, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2287, file: !1476, line: 328, baseType: !84, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2287, file: !1476, line: 329, baseType: !84, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2287, file: !1476, line: 331, baseType: !143, size: 32, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2287, file: !1476, line: 332, baseType: !143, size: 32, offset: 224)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2287, file: !1476, line: 333, baseType: !143, size: 32, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2287, file: !1476, line: 335, baseType: !7, size: 32, offset: 288)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2284, file: !1476, line: 339, baseType: !2205, size: 512, align: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !1476, line: 341, baseType: !2298, size: 512, offset: 1024)
!2298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !1476, line: 341, size: 512, elements: !2299)
!2299 = !{!2300, !2309, !2315}
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !1476, line: 342, baseType: !2301, size: 384)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2298, file: !1476, line: 342, size: 384, elements: !2302)
!2302 = !{!2303, !2304, !2305, !2306, !2307, !2308}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2301, file: !1476, line: 343, baseType: !84, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2301, file: !1476, line: 344, baseType: !84, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2301, file: !1476, line: 346, baseType: !81, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2301, file: !1476, line: 347, baseType: !81, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2301, file: !1476, line: 348, baseType: !81, size: 64, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2301, file: !1476, line: 349, baseType: !81, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !1476, line: 352, baseType: !2310, size: 256)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2298, file: !1476, line: 352, size: 256, elements: !2311)
!2311 = !{!2312, !2313, !2314}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2310, file: !1476, line: 353, baseType: !84, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2310, file: !1476, line: 354, baseType: !84, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2310, file: !1476, line: 356, baseType: !91, size: 128, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2298, file: !1476, line: 359, baseType: !2205, size: 512, align: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2240, file: !15, line: 409, baseType: !2317, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!147, !2226, !846}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2240, file: !15, line: 412, baseType: !2321, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!398, !2226, !2250}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2240, file: !15, line: 414, baseType: !2325, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !15, line: 310, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2240, file: !15, line: 416, baseType: !2331, size: 64, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!147, !100, !2226, !192, !7, !2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2240, file: !15, line: 419, baseType: !2337, size: 64, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!147, !100, !2226, !192, !7, !7, !2204, !81}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2240, file: !15, line: 424, baseType: !2341, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!2344, !2226, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !83, line: 131, baseType: !304)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2240, file: !15, line: 425, baseType: !2346, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{null, !2250, !719, !719}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2240, file: !15, line: 426, baseType: !2350, size: 64, offset: 576)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!398, !2250, !82}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2240, file: !15, line: 427, baseType: !2354, size: 64, offset: 640)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2250}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2240, file: !15, line: 428, baseType: !2358, size: 64, offset: 704)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!716, !2361, !2383}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !15, line: 373, size: 384, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2370, !2371, !2372, !2373}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2362, file: !15, line: 374, baseType: !100, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2362, file: !15, line: 375, baseType: !192, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2362, file: !15, line: 376, baseType: !2367, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2361, !677}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2362, file: !15, line: 377, baseType: !81, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2362, file: !15, line: 378, baseType: !147, size: 32, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2362, file: !15, line: 379, baseType: !162, size: 16, offset: 288)
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2362, file: !15, line: 380, baseType: !2374, size: 64, offset: 320)
!2374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2362, file: !15, line: 380, size: 64, elements: !2375)
!2375 = !{!2376, !2379}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2374, file: !15, line: 386, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !15, line: 386, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2374, file: !15, line: 395, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!716, !81}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !15, line: 69, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2240, file: !15, line: 433, baseType: !2386, size: 64, offset: 768)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!147, !2226, !2250, !2250, !36}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2240, file: !15, line: 435, baseType: !2390, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!147, !2250}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2240, file: !15, line: 436, baseType: !2394, size: 64, offset: 896)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!398, !2250, !719, !719}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2240, file: !15, line: 438, baseType: !2398, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !2250, !2401, !2401}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2240, file: !15, line: 439, baseType: !2403, size: 64, offset: 1024)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!147, !2226, !2204}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2240, file: !15, line: 442, baseType: !2407, size: 64, offset: 1088)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!147, !2410, !100, !2412}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !15, line: 66, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2240, file: !15, line: 444, baseType: !2414, size: 64, offset: 1152)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !100}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2240, file: !15, line: 445, baseType: !2418, size: 64, offset: 1216)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!147, !2361, !2383}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2227, file: !15, line: 486, baseType: !84, size: 64, offset: 896)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2227, file: !15, line: 487, baseType: !336, size: 320, offset: 960)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2227, file: !15, line: 488, baseType: !2424, size: 32, offset: 1280)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2425, line: 8, baseType: !361)
!2425 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2227, file: !15, line: 489, baseType: !123, size: 32, offset: 1312)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2227, file: !15, line: 490, baseType: !91, size: 128, offset: 1344)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2227, file: !15, line: 491, baseType: !81, size: 64, offset: 1472)
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !1476, line: 107, baseType: !2430, size: 64, offset: 192)
!2430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !1476, line: 107, size: 64, elements: !2431)
!2431 = !{!2432, !2433}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2430, file: !1476, line: 108, baseType: !84, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2430, file: !1476, line: 109, baseType: !84, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2212, file: !1476, line: 117, baseType: !84, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !1476, line: 119, baseType: !2436, size: 320)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !1476, line: 119, size: 320, elements: !2437)
!2437 = !{!2438, !2439, !2442, !2443, !2444}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2436, file: !1476, line: 124, baseType: !84, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2436, file: !1476, line: 125, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1476, line: 125, flags: DIFlagFwdDecl)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2436, file: !1476, line: 126, baseType: !84, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2436, file: !1476, line: 127, baseType: !84, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, scope: !2436, file: !1476, line: 128, baseType: !2445, size: 64, offset: 256)
!2445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2436, file: !1476, line: 128, size: 64, elements: !2446)
!2446 = !{!2447, !2448}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2445, file: !1476, line: 133, baseType: !84, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2445, file: !1476, line: 138, baseType: !169, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !1476, line: 141, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !1476, line: 141, size: 64, elements: !2451)
!2451 = !{!2452}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2450, file: !1476, line: 142, baseType: !84, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !1476, line: 144, baseType: !2454, size: 128)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !1476, line: 144, size: 128, elements: !2455)
!2455 = !{!2456, !2459}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2454, file: !1476, line: 146, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1476, line: 146, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2454, file: !1476, line: 147, baseType: !81, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2209, file: !1476, line: 161, baseType: !113, size: 128, align: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !1476, line: 164, baseType: !2462, size: 32, offset: 384)
!2462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !1476, line: 164, size: 32, elements: !2463)
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2462, file: !1476, line: 169, baseType: !143, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2462, file: !1476, line: 177, baseType: !7, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2205, file: !1476, line: 181, baseType: !143, size: 32, offset: 416)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2201, file: !2188, line: 42, baseType: !362, size: 32, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2201, file: !2188, line: 43, baseType: !362, size: 32, offset: 96)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1188, file: !886, line: 1340, baseType: !2470, size: 64, offset: 20672)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !886, line: 69, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1188, file: !886, line: 1351, baseType: !147, size: 32, offset: 20736)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1188, file: !886, line: 1352, baseType: !147, size: 32, offset: 20768)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1188, file: !886, line: 1354, baseType: !84, size: 64, offset: 20800)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1188, file: !886, line: 1364, baseType: !304, size: 64, offset: 20864)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1188, file: !886, line: 1365, baseType: !304, size: 64, offset: 20928)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1188, file: !886, line: 1412, baseType: !84, size: 64, offset: 20992)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1188, file: !886, line: 1453, baseType: !2479, size: 64, offset: 21056)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !886, line: 1453, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1188, file: !886, line: 1457, baseType: !2482, size: 64, offset: 21120)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2484)
!2484 = !{!2485, !2486, !2505, !2508, !2509, !2542, !2552}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2483, file: !44, line: 62, baseType: !43, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, scope: !2483, file: !44, line: 64, baseType: !2487, size: 192, offset: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2483, file: !44, line: 64, size: 192, elements: !2488)
!2488 = !{!2489, !2500}
!2489 = !DIDerivedType(tag: DW_TAG_member, scope: !2487, file: !44, line: 65, baseType: !2490, size: 192)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2487, file: !44, line: 65, size: 192, elements: !2491)
!2491 = !{!2492, !2499}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2490, file: !44, line: 66, baseType: !2493, size: 128)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2494, line: 50, size: 128, elements: !2495)
!2494 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2495 = !{!2496, !2497, !2498}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2493, file: !2494, line: 52, baseType: !84, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2493, file: !2494, line: 54, baseType: !7, size: 32, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2493, file: !2494, line: 55, baseType: !7, size: 32, offset: 96)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2490, file: !44, line: 67, baseType: !84, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, scope: !2487, file: !44, line: 70, baseType: !2501, size: 192)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2487, file: !44, line: 70, size: 192, elements: !2502)
!2502 = !{!2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2501, file: !44, line: 71, baseType: !113, size: 128, align: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2501, file: !44, line: 72, baseType: !84, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2483, file: !44, line: 76, baseType: !2506, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2483, file: !44, line: 77, baseType: !84, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2483, file: !44, line: 79, baseType: !2510, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2494, line: 25, size: 256, elements: !2512)
!2512 = !{!2513, !2519, !2523}
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2494, line: 26, baseType: !2514, size: 128)
!2514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !2494, line: 26, size: 128, elements: !2515)
!2515 = !{!2516, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2514, file: !2494, line: 27, baseType: !2517, size: 128)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !1774)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2514, file: !2494, line: 28, baseType: !2517, size: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2511, file: !2494, line: 31, baseType: !2520, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2522)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2494, line: 23, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2494, line: 33, baseType: !2524, size: 64, offset: 192)
!2524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !2494, line: 33, size: 64, elements: !2525)
!2525 = !{!2526, !2532, !2537}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2524, file: !2494, line: 38, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2524, file: !2494, line: 34, size: 64, elements: !2528)
!2528 = !{!2529, !2530, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2527, file: !2494, line: 35, baseType: !321, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2527, file: !2494, line: 36, baseType: !152, size: 8, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2527, file: !2494, line: 37, baseType: !152, size: 8, offset: 40)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2524, file: !2494, line: 42, baseType: !2533, size: 16)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2524, file: !2494, line: 39, size: 16, elements: !2534)
!2534 = !{!2535, !2536}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2533, file: !2494, line: 40, baseType: !152, size: 8)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2533, file: !2494, line: 41, baseType: !152, size: 8, offset: 8)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2524, file: !2494, line: 46, baseType: !2538, size: 16)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2524, file: !2494, line: 43, size: 16, elements: !2539)
!2539 = !{!2540, !2541}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2538, file: !2494, line: 44, baseType: !152, size: 8)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2538, file: !2494, line: 45, baseType: !152, size: 8, offset: 8)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2483, file: !44, line: 81, baseType: !2543, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2551}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2544, file: !44, line: 86, baseType: !2506, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2544, file: !44, line: 87, baseType: !84, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2544, file: !44, line: 88, baseType: !84, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2544, file: !44, line: 89, baseType: !84, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2544, file: !44, line: 90, baseType: !398, size: 8, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2544, file: !44, line: 92, baseType: !2543, size: 64, offset: 320)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2483, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1188, file: !886, line: 1463, baseType: !2554, offset: 21184)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !886, line: 739, elements: !815)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1188, file: !886, line: 1470, baseType: !113, size: 128, align: 64, offset: 21184)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1188, file: !886, line: 1471, baseType: !227, size: 32, offset: 21312)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1188, file: !886, line: 1472, baseType: !147, size: 32, offset: 21344)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1188, file: !886, line: 1474, baseType: !1187, size: 64, offset: 21376)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1188, file: !886, line: 1475, baseType: !2560, size: 320, offset: 21440)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2561, line: 11, size: 320, elements: !2562)
!2561 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2562 = !{!2563, !2564, !2565, !2570}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2560, file: !2561, line: 16, baseType: !239, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2560, file: !2561, line: 17, baseType: !84, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2560, file: !2561, line: 18, baseType: !2566, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{null, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2560, file: !2561, line: 19, baseType: !361, size: 32, offset: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1188, file: !886, line: 1478, baseType: !2572, size: 64, offset: 21760)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !886, line: 1478, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1188, file: !886, line: 1482, baseType: !227, size: 32, offset: 21824)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1188, file: !886, line: 1489, baseType: !81, size: 64, offset: 21888)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1188, file: !886, line: 1504, baseType: !81, size: 64, offset: 21952)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1188, file: !886, line: 1505, baseType: !305, size: 64, offset: 22016)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1188, file: !886, line: 1506, baseType: !304, size: 64, offset: 22080)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1188, file: !886, line: 1507, baseType: !305, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1188, file: !886, line: 1508, baseType: !305, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1188, file: !886, line: 1509, baseType: !305, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1188, file: !886, line: 1510, baseType: !113, size: 128, align: 64, offset: 22208)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1188, file: !886, line: 1511, baseType: !147, size: 32, offset: 22336)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1188, file: !886, line: 1515, baseType: !2585, size: 64, offset: 22400)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !108, line: 56, size: 64, elements: !2586)
!2586 = !{!2587}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2585, file: !108, line: 57, baseType: !111, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1188, file: !886, line: 1518, baseType: !2585, size: 64, offset: 22464)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1188, file: !886, line: 1528, baseType: !113, size: 128, align: 64, offset: 22528)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1188, file: !886, line: 1552, baseType: !2591, size: 35328, offset: 23040)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2592, line: 430, size: 35328, elements: !2593)
!2592 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2593 = !{!2594, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2623, !2624, !2625, !2626, !2627, !2628, !2631, !2632, !2633, !2634}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2591, file: !2592, line: 432, baseType: !2595, size: 192)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2596, size: 192, elements: !219)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2597, line: 16, size: 64, elements: !2598)
!2597 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2596, file: !2597, line: 17, baseType: !162, size: 16)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2596, file: !2597, line: 18, baseType: !162, size: 16, offset: 16)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2596, file: !2597, line: 19, baseType: !162, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2596, file: !2597, line: 19, baseType: !162, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2596, file: !2597, line: 19, baseType: !162, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2596, file: !2597, line: 19, baseType: !162, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2596, file: !2597, line: 19, baseType: !162, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2596, file: !2597, line: 20, baseType: !162, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2596, file: !2597, line: 20, baseType: !162, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2596, file: !2597, line: 20, baseType: !162, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2596, file: !2597, line: 20, baseType: !162, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2596, file: !2597, line: 20, baseType: !162, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2596, file: !2597, line: 20, baseType: !162, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2591, file: !2592, line: 436, baseType: !84, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2591, file: !2592, line: 440, baseType: !164, size: 16, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2591, file: !2592, line: 441, baseType: !164, size: 16, offset: 272)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2591, file: !2592, line: 442, baseType: !164, size: 16, offset: 288)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2591, file: !2592, line: 443, baseType: !164, size: 16, offset: 304)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2591, file: !2592, line: 447, baseType: !84, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2591, file: !2592, line: 448, baseType: !84, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2591, file: !2592, line: 459, baseType: !2620, size: 256, offset: 448)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2621, size: 256, elements: !244)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2592, line: 428, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2591, file: !2592, line: 461, baseType: !84, size: 64, offset: 704)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2591, file: !2592, line: 463, baseType: !84, size: 64, offset: 768)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2591, file: !2592, line: 465, baseType: !84, size: 64, offset: 832)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2591, file: !2592, line: 466, baseType: !84, size: 64, offset: 896)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2591, file: !2592, line: 467, baseType: !84, size: 64, offset: 960)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2591, file: !2592, line: 473, baseType: !2629, size: 64, offset: 1024)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2592, line: 10, flags: DIFlagFwdDecl)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2591, file: !2592, line: 480, baseType: !84, size: 64, offset: 1088)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2591, file: !2592, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2591, file: !2592, line: 491, baseType: !361, size: 32, offset: 1184)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2591, file: !2592, line: 501, baseType: !2635, size: 33792, offset: 1536)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2636, line: 448, size: 33792, elements: !2637)
!2636 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2637 = !{!2638, !2639, !2640, !2804, !2805, !2811, !2812}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2635, file: !2636, line: 461, baseType: !7, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2635, file: !2636, line: 468, baseType: !84, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2635, file: !2636, line: 476, baseType: !2641, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2636, line: 356, size: 33280, align: 512, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2642, file: !2636, line: 358, baseType: !7, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2642, file: !2636, line: 361, baseType: !7, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2642, file: !2636, line: 364, baseType: !304, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2642, file: !2636, line: 367, baseType: !304, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2642, file: !2636, line: 370, baseType: !304, size: 64, offset: 192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2642, file: !2636, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2642, file: !2636, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2642, file: !2636, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2642, file: !2636, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2642, file: !2636, line: 397, baseType: !2654, size: 32768, offset: 512)
!2654 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2636, line: 348, size: 32768, elements: !2655)
!2655 = !{!2656, !2671, !2710, !2787, !2800}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2654, file: !2636, line: 349, baseType: !2657, size: 896)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2636, line: 12, size: 896, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2670}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2657, file: !2636, line: 13, baseType: !361, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2657, file: !2636, line: 14, baseType: !361, size: 32, offset: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2657, file: !2636, line: 15, baseType: !361, size: 32, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2657, file: !2636, line: 16, baseType: !361, size: 32, offset: 96)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2657, file: !2636, line: 17, baseType: !361, size: 32, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2657, file: !2636, line: 18, baseType: !361, size: 32, offset: 160)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2657, file: !2636, line: 19, baseType: !361, size: 32, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2657, file: !2636, line: 22, baseType: !2667, size: 640, offset: 224)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 640, elements: !2668)
!2668 = !{!2669}
!2669 = !DISubrange(count: 20)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2657, file: !2636, line: 25, baseType: !361, size: 32, offset: 864)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2654, file: !2636, line: 350, baseType: !2672, size: 4096, align: 128)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2636, line: 34, size: 4096, align: 128, elements: !2673)
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2693, !2694, !2695, !2699, !2701, !2705}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2672, file: !2636, line: 35, baseType: !162, size: 16)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2672, file: !2636, line: 36, baseType: !162, size: 16, offset: 16)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2672, file: !2636, line: 37, baseType: !162, size: 16, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2672, file: !2636, line: 38, baseType: !162, size: 16, offset: 48)
!2678 = !DIDerivedType(tag: DW_TAG_member, scope: !2672, file: !2636, line: 39, baseType: !2679, size: 128, offset: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2672, file: !2636, line: 39, size: 128, elements: !2680)
!2680 = !{!2681, !2686}
!2681 = !DIDerivedType(tag: DW_TAG_member, scope: !2679, file: !2636, line: 40, baseType: !2682, size: 128)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2679, file: !2636, line: 40, size: 128, elements: !2683)
!2683 = !{!2684, !2685}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2682, file: !2636, line: 41, baseType: !304, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2682, file: !2636, line: 42, baseType: !304, size: 64, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2679, file: !2636, line: 44, baseType: !2687, size: 128)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2679, file: !2636, line: 44, size: 128, elements: !2688)
!2688 = !{!2689, !2690, !2691, !2692}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2687, file: !2636, line: 45, baseType: !361, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2687, file: !2636, line: 46, baseType: !361, size: 32, offset: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2687, file: !2636, line: 47, baseType: !361, size: 32, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2687, file: !2636, line: 48, baseType: !361, size: 32, offset: 96)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2672, file: !2636, line: 51, baseType: !361, size: 32, offset: 192)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2672, file: !2636, line: 52, baseType: !361, size: 32, offset: 224)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2672, file: !2636, line: 55, baseType: !2696, size: 1024, offset: 256)
!2696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 1024, elements: !2697)
!2697 = !{!2698}
!2698 = !DISubrange(count: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2672, file: !2636, line: 58, baseType: !2700, size: 2048, offset: 1280)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 2048, elements: !1972)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2672, file: !2636, line: 60, baseType: !2702, size: 384, offset: 3328)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 384, elements: !2703)
!2703 = !{!2704}
!2704 = !DISubrange(count: 12)
!2705 = !DIDerivedType(tag: DW_TAG_member, scope: !2672, file: !2636, line: 62, baseType: !2706, size: 384, offset: 3712)
!2706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2672, file: !2636, line: 62, size: 384, elements: !2707)
!2707 = !{!2708, !2709}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2706, file: !2636, line: 63, baseType: !2702, size: 384)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2706, file: !2636, line: 64, baseType: !2702, size: 384)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2654, file: !2636, line: 351, baseType: !2711, size: 1088)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2636, line: 79, size: 1088, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2786}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2711, file: !2636, line: 80, baseType: !361, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2711, file: !2636, line: 81, baseType: !361, size: 32, offset: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2711, file: !2636, line: 82, baseType: !361, size: 32, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2711, file: !2636, line: 83, baseType: !361, size: 32, offset: 96)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2711, file: !2636, line: 84, baseType: !361, size: 32, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2711, file: !2636, line: 85, baseType: !361, size: 32, offset: 160)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2711, file: !2636, line: 86, baseType: !361, size: 32, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2711, file: !2636, line: 88, baseType: !2667, size: 640, offset: 224)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2711, file: !2636, line: 89, baseType: !152, size: 8, offset: 864)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2711, file: !2636, line: 90, baseType: !152, size: 8, offset: 872)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2711, file: !2636, line: 91, baseType: !152, size: 8, offset: 880)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2711, file: !2636, line: 92, baseType: !152, size: 8, offset: 888)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2711, file: !2636, line: 93, baseType: !152, size: 8, offset: 896)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2711, file: !2636, line: 94, baseType: !152, size: 8, offset: 904)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2711, file: !2636, line: 95, baseType: !2728, size: 64, offset: 960)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2730, line: 11, size: 128, elements: !2731)
!2730 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2729, file: !2730, line: 12, baseType: !677, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2729, file: !2730, line: 13, baseType: !2734, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2736, line: 103, size: 1344, elements: !2737)
!2736 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2766, !2767, !2768}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2735, file: !2736, line: 109, baseType: !84, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2735, file: !2736, line: 110, baseType: !84, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2735, file: !2736, line: 111, baseType: !84, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2735, file: !2736, line: 112, baseType: !84, size: 64, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2735, file: !2736, line: 113, baseType: !84, size: 64, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2735, file: !2736, line: 114, baseType: !84, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2735, file: !2736, line: 117, baseType: !84, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2735, file: !2736, line: 118, baseType: !84, size: 64, offset: 448)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2735, file: !2736, line: 119, baseType: !84, size: 64, offset: 512)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2735, file: !2736, line: 120, baseType: !84, size: 64, offset: 576)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2735, file: !2736, line: 121, baseType: !84, size: 64, offset: 640)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2735, file: !2736, line: 122, baseType: !84, size: 64, offset: 704)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2735, file: !2736, line: 123, baseType: !84, size: 64, offset: 768)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2735, file: !2736, line: 124, baseType: !84, size: 64, offset: 832)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2735, file: !2736, line: 125, baseType: !84, size: 64, offset: 896)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2735, file: !2736, line: 139, baseType: !84, size: 64, offset: 960)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2735, file: !2736, line: 142, baseType: !84, size: 64, offset: 1024)
!2755 = !DIDerivedType(tag: DW_TAG_member, scope: !2735, file: !2736, line: 144, baseType: !2756, size: 64, offset: 1088)
!2756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2735, file: !2736, line: 144, size: 64, elements: !2757)
!2757 = !{!2758, !2759, !2760}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2756, file: !2736, line: 146, baseType: !162, size: 16)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2756, file: !2736, line: 148, baseType: !304, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2756, file: !2736, line: 150, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2736, line: 59, size: 64, elements: !2762)
!2762 = !{!2763, !2764, !2765}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2761, file: !2736, line: 61, baseType: !304, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2761, file: !2736, line: 63, baseType: !304, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2761, file: !2736, line: 65, baseType: !304, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2735, file: !2736, line: 153, baseType: !84, size: 64, offset: 1152)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2735, file: !2736, line: 154, baseType: !84, size: 64, offset: 1216)
!2768 = !DIDerivedType(tag: DW_TAG_member, scope: !2735, file: !2736, line: 156, baseType: !2769, size: 64, offset: 1280)
!2769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2735, file: !2736, line: 156, size: 64, elements: !2770)
!2770 = !{!2771, !2772, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2769, file: !2736, line: 158, baseType: !162, size: 16)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2769, file: !2736, line: 160, baseType: !304, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2769, file: !2736, line: 162, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2736, line: 69, size: 64, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2774, file: !2736, line: 71, baseType: !304, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2774, file: !2736, line: 73, baseType: !304, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2774, file: !2736, line: 75, baseType: !304, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2774, file: !2736, line: 77, baseType: !304, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2774, file: !2736, line: 80, baseType: !304, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2774, file: !2736, line: 83, baseType: !304, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2774, file: !2736, line: 86, baseType: !304, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2774, file: !2736, line: 88, baseType: !304, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2774, file: !2736, line: 93, baseType: !304, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2774, file: !2736, line: 100, baseType: !304, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2711, file: !2636, line: 96, baseType: !361, size: 32, offset: 1024)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2654, file: !2636, line: 352, baseType: !2788, size: 4608, align: 512)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2636, line: 333, size: 4608, align: 512, elements: !2789)
!2789 = !{!2790, !2791, !2798}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2788, file: !2636, line: 334, baseType: !2672, size: 4096, align: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2788, file: !2636, line: 335, baseType: !2792, size: 512, offset: 4096)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2636, line: 312, size: 512, elements: !2793)
!2793 = !{!2794, !2795, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2792, file: !2636, line: 313, baseType: !304, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2792, file: !2636, line: 314, baseType: !304, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2792, file: !2636, line: 315, baseType: !2797, size: 384, offset: 128)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 384, elements: !385)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2788, file: !2636, line: 336, baseType: !2799, offset: 4608)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, elements: !263)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2654, file: !2636, line: 353, baseType: !2801, size: 32768)
!2801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 32768, elements: !2802)
!2802 = !{!2803}
!2803 = !DISubrange(count: 4096)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2635, file: !2636, line: 484, baseType: !2641, size: 64, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2635, file: !2636, line: 491, baseType: !2806, size: 128, offset: 256)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2636, line: 404, size: 128, elements: !2807)
!2807 = !{!2808, !2809, !2810}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2806, file: !2636, line: 424, baseType: !304, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2806, file: !2636, line: 432, baseType: !7, size: 32, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2806, file: !2636, line: 440, baseType: !7, size: 32, offset: 96)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2635, file: !2636, line: 498, baseType: !2806, size: 128, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2635, file: !2636, line: 508, baseType: !2642, size: 33280, align: 512, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1169, file: !1170, line: 16, baseType: !248, size: 192, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1169, file: !1170, line: 17, baseType: !143, size: 32, offset: 704)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !775, file: !15, line: 1240, baseType: !81, size: 64, offset: 6912)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !775, file: !15, line: 1243, baseType: !361, size: 32, offset: 6976)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !775, file: !15, line: 1245, baseType: !352, size: 64, offset: 7040)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !775, file: !15, line: 1246, baseType: !352, size: 64, offset: 7104)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !775, file: !15, line: 1248, baseType: !362, size: 32, offset: 7168)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !775, file: !15, line: 1249, baseType: !2821, size: 64, offset: 7232)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !15, line: 634, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !775, file: !15, line: 1252, baseType: !2824, size: 256, offset: 7296)
!2824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !2697)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !775, file: !15, line: 1253, baseType: !2826, size: 128, offset: 7552)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2827, line: 21, baseType: !2828)
!2827 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2827, line: 19, size: 128, elements: !2829)
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2828, file: !2827, line: 20, baseType: !2831, size: 128)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !1774)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !775, file: !15, line: 1255, baseType: !7, size: 32, offset: 7680)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !775, file: !15, line: 1261, baseType: !179, size: 256, offset: 7744)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !775, file: !15, line: 1267, baseType: !401, size: 64, offset: 8000)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !775, file: !15, line: 1269, baseType: !2836, size: 64, offset: 8064)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2838)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !524, line: 128, size: 1024, align: 512, elements: !2839)
!2839 = !{!2840, !2844, !2845, !2852, !2858, !2862, !2866, !2870, !2871, !2875, !2879, !2884, !2888}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2838, file: !524, line: 129, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!147, !522, !7}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2838, file: !524, line: 130, baseType: !2841, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2838, file: !524, line: 131, baseType: !2846, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!147, !2849, !2851}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2838, file: !524, line: 132, baseType: !2853, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!147, !2849, !7, !401, !2856}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2838, file: !524, line: 134, baseType: !2859, size: 64, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!147, !2849}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2838, file: !524, line: 135, baseType: !2863, size: 64, offset: 320)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!147, !522}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2838, file: !524, line: 136, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{null, !522}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2838, file: !524, line: 137, baseType: !2867, size: 64, offset: 448)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2838, file: !524, line: 138, baseType: !2872, size: 64, offset: 512)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !522, !562}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2838, file: !524, line: 139, baseType: !2876, size: 64, offset: 576)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!411, !522, !411, !147}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2838, file: !524, line: 140, baseType: !2880, size: 64, offset: 640)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!517, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2838, file: !524, line: 141, baseType: !2885, size: 64, offset: 704)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!147, !685, !398}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2838, file: !524, line: 142, baseType: !2889, size: 64, offset: 768)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!522, !522, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !775, file: !15, line: 1271, baseType: !2895, size: 448, offset: 8128)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !951, line: 63, size: 448, elements: !2896)
!2896 = !{!2897, !2902, !2903, !2904, !2905, !2906, !2907}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2895, file: !951, line: 64, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!84, !2901, !949}
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2895, file: !951, line: 66, baseType: !2898, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2895, file: !951, line: 69, baseType: !677, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2895, file: !951, line: 70, baseType: !147, size: 32, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2895, file: !951, line: 71, baseType: !7, size: 32, offset: 224)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2895, file: !951, line: 74, baseType: !91, size: 128, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2895, file: !951, line: 85, baseType: !2908, size: 64, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !775, file: !15, line: 1274, baseType: !169, size: 64, offset: 8576)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !775, file: !15, line: 1280, baseType: !169, size: 64, offset: 8640)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !775, file: !15, line: 1283, baseType: !147, size: 32, offset: 8704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !775, file: !15, line: 1286, baseType: !2424, size: 32, offset: 8736)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !775, file: !15, line: 1289, baseType: !2914, size: 64, offset: 8768)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1607, line: 18, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !775, file: !15, line: 1290, baseType: !235, size: 64, offset: 8832)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !775, file: !15, line: 1297, baseType: !484, size: 64, offset: 8896)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !775, file: !15, line: 1304, baseType: !2919, size: 64, offset: 8960)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2920, line: 49, size: 64, elements: !2921)
!2920 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2921 = !{!2922}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2919, file: !2920, line: 50, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2920, line: 41, size: 512, align: 512, elements: !2925)
!2925 = !{!2926, !2927, !2932}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2924, file: !2920, line: 43, baseType: !123, size: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2924, file: !2920, line: 45, baseType: !2928, size: 192, offset: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2920, line: 29, size: 192, elements: !2929)
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2928, file: !2920, line: 30, baseType: !91, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2928, file: !2920, line: 32, baseType: !677, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2924, file: !2920, line: 46, baseType: !677, size: 64, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !775, file: !15, line: 1305, baseType: !2919, size: 64, offset: 9024)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !775, file: !15, line: 1306, baseType: !113, size: 128, align: 64, offset: 9088)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !775, file: !15, line: 1307, baseType: !1606, size: 256, offset: 9216)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !775, file: !15, line: 1309, baseType: !179, size: 256, offset: 9472)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !775, file: !15, line: 1314, baseType: !147, size: 32, offset: 9728)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !775, file: !15, line: 1317, baseType: !123, size: 32, align: 512, offset: 10240)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !775, file: !15, line: 1318, baseType: !91, size: 128, offset: 10304)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !775, file: !15, line: 1320, baseType: !123, size: 32, offset: 10432)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !775, file: !15, line: 1321, baseType: !91, size: 128, offset: 10496)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !563, file: !15, line: 656, baseType: !2226, size: 64, offset: 512)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !563, file: !15, line: 659, baseType: !81, size: 64, offset: 576)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !563, file: !15, line: 663, baseType: !84, size: 64, offset: 640)
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !15, line: 671, baseType: !2946, size: 32, offset: 704)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !15, line: 671, size: 32, elements: !2947)
!2947 = !{!2948, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2946, file: !15, line: 672, baseType: !2949, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2946, file: !15, line: 673, baseType: !7, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !563, file: !15, line: 675, baseType: !637, size: 32, offset: 736)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !563, file: !15, line: 676, baseType: !192, size: 64, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !563, file: !15, line: 677, baseType: !673, size: 128, offset: 832)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !563, file: !15, line: 678, baseType: !673, size: 128, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !563, file: !15, line: 679, baseType: !673, size: 128, offset: 1088)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !563, file: !15, line: 680, baseType: !123, size: 32, offset: 1216)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !563, file: !15, line: 681, baseType: !164, size: 16, offset: 1248)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !563, file: !15, line: 682, baseType: !152, size: 8, offset: 1264)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !563, file: !15, line: 683, baseType: !152, size: 8, offset: 1272)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !563, file: !15, line: 684, baseType: !1082, size: 64, offset: 1280)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !563, file: !15, line: 691, baseType: !84, size: 64, offset: 1344)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !563, file: !15, line: 692, baseType: !336, size: 320, offset: 1408)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !563, file: !15, line: 694, baseType: !84, size: 64, offset: 1728)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !563, file: !15, line: 695, baseType: !84, size: 64, offset: 1792)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !563, file: !15, line: 697, baseType: !239, size: 128, offset: 1856)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !563, file: !15, line: 698, baseType: !91, size: 128, offset: 1984)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !563, file: !15, line: 707, baseType: !91, size: 128, offset: 2112)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !563, file: !15, line: 708, baseType: !91, size: 128, offset: 2240)
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !15, line: 709, baseType: !2970, size: 128, offset: 2368)
!2970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !15, line: 709, size: 128, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2970, file: !15, line: 710, baseType: !235, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2970, file: !15, line: 711, baseType: !113, size: 128, align: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !563, file: !15, line: 713, baseType: !171, size: 64, offset: 2496)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !563, file: !15, line: 714, baseType: !171, size: 64, offset: 2560)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !563, file: !15, line: 715, baseType: !143, size: 32, offset: 2624)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !563, file: !15, line: 716, baseType: !143, size: 32, offset: 2656)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !563, file: !15, line: 717, baseType: !143, size: 32, offset: 2688)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !563, file: !15, line: 719, baseType: !143, size: 32, offset: 2720)
!2980 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !15, line: 721, baseType: !2981, size: 64, offset: 2752)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !15, line: 721, size: 64, elements: !2982)
!2982 = !{!2983, !3172}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2981, file: !15, line: 722, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2986)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !15, line: 1914, size: 2112, elements: !2987)
!2987 = !{!2988, !2989, !2993, !2998, !3002, !3003, !3004, !3010, !3023, !3038, !3042, !3043, !3100, !3101, !3105, !3110, !3111, !3115, !3119, !3125, !3126, !3130, !3131, !3135, !3139, !3140, !3145, !3149, !3153, !3157, !3161, !3162, !3168}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2986, file: !15, line: 1915, baseType: !807, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2986, file: !15, line: 1916, baseType: !2990, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!192, !100, !192, !147}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2986, file: !15, line: 1917, baseType: !2994, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!716, !100, !411, !719, !2997}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2986, file: !15, line: 1918, baseType: !2999, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!716, !100, !401, !719, !2997}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2986, file: !15, line: 1919, baseType: !2358, size: 64, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2986, file: !15, line: 1920, baseType: !2358, size: 64, offset: 320)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2986, file: !15, line: 1921, baseType: !3005, size: 64, offset: 384)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!147, !2361, !3008, !7}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !15, line: 53, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2986, file: !15, line: 1923, baseType: !3011, size: 64, offset: 448)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!147, !100, !3014}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !15, line: 1858, size: 128, elements: !3016)
!3016 = !{!3017, !3022}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3015, file: !15, line: 1859, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !15, line: 1855, baseType: !3019)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!398, !3014, !401, !147, !192, !304, !7}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3015, file: !15, line: 1860, baseType: !192, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2986, file: !15, line: 1924, baseType: !3024, size: 64, offset: 512)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!85, !100, !3027}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3029, line: 37, size: 128, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!3030 = !{!3031, !3037}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3028, file: !3029, line: 38, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3029, line: 31, baseType: !3033)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !100, !3036, !3027}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3028, file: !3029, line: 39, baseType: !85, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2986, file: !15, line: 1925, baseType: !3039, size: 64, offset: 576)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!677, !100, !7, !84}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2986, file: !15, line: 1926, baseType: !3039, size: 64, offset: 640)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2986, file: !15, line: 1927, baseType: !3044, size: 64, offset: 704)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!147, !100, !3047}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1476, line: 625, size: 1344, elements: !3049)
!3049 = !{!3050, !3059, !3060, !3066, !3073, !3074, !3079, !3080, !3085, !3086, !3089, !3093, !3094, !3095, !3096, !3097, !3098}
!3050 = !DIDerivedType(tag: DW_TAG_member, scope: !3048, file: !1476, line: 628, baseType: !3051, size: 128)
!3051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3048, file: !1476, line: 628, size: 128, elements: !3052)
!3052 = !{!3053, !3058}
!3053 = !DIDerivedType(tag: DW_TAG_member, scope: !3051, file: !1476, line: 629, baseType: !3054, size: 128)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3051, file: !1476, line: 629, size: 128, elements: !3055)
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3054, file: !1476, line: 631, baseType: !84, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3054, file: !1476, line: 632, baseType: !84, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3051, file: !1476, line: 635, baseType: !113, size: 128, align: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3048, file: !1476, line: 639, baseType: !1474, size: 64, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3048, file: !1476, line: 640, baseType: !3061, size: 64, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1510, line: 297, baseType: !3062)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1510, line: 297, size: 64, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3062, file: !1510, line: 297, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1515, line: 19, baseType: !84)
!3066 = !DIDerivedType(tag: DW_TAG_member, scope: !3048, file: !1476, line: 646, baseType: !3067, size: 64, offset: 256)
!3067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3048, file: !1476, line: 646, size: 64, elements: !3068)
!3068 = !{!3069, !3072}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3067, file: !1476, line: 647, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3071)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1476, line: 542, baseType: !84)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3067, file: !1476, line: 648, baseType: !3071, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3048, file: !1476, line: 666, baseType: !147, size: 32, offset: 320)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3048, file: !1476, line: 667, baseType: !3075, size: 64, offset: 384)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1476, line: 579, size: 320, elements: !3077)
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3076, file: !1476, line: 580, baseType: !336, size: 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3048, file: !1476, line: 670, baseType: !398, size: 8, offset: 448)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3048, file: !1476, line: 681, baseType: !3081, size: 256, offset: 512)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !1476, line: 678, size: 256, elements: !3082)
!3082 = !{!3083, !3084}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3081, file: !1476, line: 679, baseType: !328, size: 192, align: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3081, file: !1476, line: 680, baseType: !84, size: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3048, file: !1476, line: 689, baseType: !91, size: 128, offset: 768)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3048, file: !1476, line: 691, baseType: !3087, size: 64, offset: 896)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1476, line: 691, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3048, file: !1476, line: 694, baseType: !3090, size: 64, offset: 960)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3092)
!3092 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1476, line: 694, flags: DIFlagFwdDecl)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3048, file: !1476, line: 697, baseType: !84, size: 64, offset: 1024)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3048, file: !1476, line: 699, baseType: !100, size: 64, offset: 1088)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3048, file: !1476, line: 700, baseType: !81, size: 64, offset: 1152)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3048, file: !1476, line: 711, baseType: !169, size: 64, offset: 1216)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3048, file: !1476, line: 717, baseType: !2161, size: 64, offset: 1280)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3048, file: !1476, line: 722, baseType: !3099, offset: 1344)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1476, line: 570, elements: !815)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2986, file: !15, line: 1928, baseType: !84, size: 64, offset: 768)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2986, file: !15, line: 1929, baseType: !3102, size: 64, offset: 832)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!147, !562, !100}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2986, file: !15, line: 1930, baseType: !3106, size: 64, offset: 896)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!147, !100, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !15, line: 1061, baseType: !81)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2986, file: !15, line: 1931, baseType: !3102, size: 64, offset: 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2986, file: !15, line: 1932, baseType: !3112, size: 64, offset: 1024)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!147, !100, !192, !192, !147}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2986, file: !15, line: 1933, baseType: !3116, size: 64, offset: 1088)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!147, !147, !100, !147}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2986, file: !15, line: 1934, baseType: !3120, size: 64, offset: 1152)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!147, !100, !147, !3123}
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !15, line: 1063, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2986, file: !15, line: 1935, baseType: !1499, size: 64, offset: 1216)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2986, file: !15, line: 1936, baseType: !3127, size: 64, offset: 1280)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!147, !147}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2986, file: !15, line: 1937, baseType: !3120, size: 64, offset: 1344)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2986, file: !15, line: 1938, baseType: !3132, size: 64, offset: 1408)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!716, !2198, !100, !2997, !719, !7}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2986, file: !15, line: 1939, baseType: !3136, size: 64, offset: 1472)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!716, !100, !2997, !2198, !719, !7}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2986, file: !15, line: 1940, baseType: !2414, size: 64, offset: 1536)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2986, file: !15, line: 1941, baseType: !3141, size: 64, offset: 1600)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!147, !100, !147, !3144, !2335}
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2986, file: !15, line: 1942, baseType: !3146, size: 64, offset: 1664)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!677, !100, !147, !192, !192}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2986, file: !15, line: 1944, baseType: !3150, size: 64, offset: 1728)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !884, !100}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2986, file: !15, line: 1948, baseType: !3154, size: 64, offset: 1792)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!716, !100, !192, !100, !192, !719, !7}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2986, file: !15, line: 1950, baseType: !3158, size: 64, offset: 1856)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!192, !100, !192, !100, !192, !192, !7}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2986, file: !15, line: 1953, baseType: !3112, size: 64, offset: 1920)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2986, file: !15, line: 1954, baseType: !3163, size: 64, offset: 1984)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!147, !3166, !7}
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !15, line: 1911, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2986, file: !15, line: 1955, baseType: !3169, size: 64, offset: 2048)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!147, !3166, !3008, !7}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2981, file: !15, line: 723, baseType: !834, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !563, file: !15, line: 725, baseType: !3174, size: 64, offset: 2816)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !15, line: 725, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !563, file: !15, line: 726, baseType: !2227, size: 1536, align: 64, offset: 2880)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !563, file: !15, line: 727, baseType: !91, size: 128, offset: 4416)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !15, line: 728, baseType: !3179, size: 64, offset: 4544)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !15, line: 728, size: 64, elements: !3180)
!3180 = !{!3181, !3182, !3185, !3186}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3179, file: !15, line: 729, baseType: !2198, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3179, file: !15, line: 730, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !15, line: 730, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3179, file: !15, line: 731, baseType: !411, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3179, file: !15, line: 732, baseType: !7, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !563, file: !15, line: 735, baseType: !362, size: 32, offset: 4608)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !563, file: !15, line: 738, baseType: !362, size: 32, offset: 4640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !563, file: !15, line: 739, baseType: !2821, size: 64, offset: 4672)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !563, file: !15, line: 750, baseType: !81, size: 64, offset: 4736)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !523, file: !524, line: 91, baseType: !3192, size: 256, offset: 448)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 256, elements: !2697)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !523, file: !524, line: 94, baseType: !3194, size: 64, offset: 704)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3195, line: 25, size: 64, elements: !3196)
!3195 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3196 = !{!3197}
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3194, file: !3195, line: 26, baseType: !3198, size: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3194, file: !3195, line: 26, size: 64, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3198, file: !3195, line: 28, baseType: !305, size: 64, align: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, scope: !3198, file: !3195, line: 30, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3198, file: !3195, line: 30, size: 64, elements: !3203)
!3203 = !{!3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3202, file: !3195, line: 31, baseType: !123, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3202, file: !3195, line: 32, baseType: !147, size: 32, offset: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !523, file: !524, line: 95, baseType: !2836, size: 64, offset: 768)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !523, file: !524, line: 96, baseType: !774, size: 64, offset: 832)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !523, file: !524, line: 97, baseType: !84, size: 64, offset: 896)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !523, file: !524, line: 98, baseType: !81, size: 64, offset: 960)
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !524, line: 100, baseType: !3211, size: 128, offset: 1024)
!3211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !524, line: 100, size: 128, elements: !3212)
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3211, file: !524, line: 101, baseType: !91, size: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3211, file: !524, line: 102, baseType: !3036, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !523, file: !524, line: 104, baseType: !91, size: 128, offset: 1152)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !523, file: !524, line: 105, baseType: !91, size: 128, offset: 1280)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !523, file: !524, line: 113, baseType: !3218, size: 128, offset: 1408)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !524, line: 109, size: 128, elements: !3219)
!3219 = !{!3220, !3221, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3218, file: !524, line: 110, baseType: !239, size: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3218, file: !524, line: 111, baseType: !538, size: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3218, file: !524, line: 112, baseType: !113, size: 128, align: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !518, file: !519, line: 72, baseType: !774, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !518, file: !519, line: 73, baseType: !147, size: 32, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !518, file: !519, line: 74, baseType: !602, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !513, file: !514, line: 10, baseType: !522, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !101, file: !15, line: 1015, baseType: !562, size: 64, offset: 1344)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !101, file: !15, line: 1016, baseType: !2984, size: 64, offset: 1408)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !101, file: !15, line: 1018, baseType: !304, size: 64, offset: 1472)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !101, file: !15, line: 1020, baseType: !81, size: 64, offset: 1536)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !101, file: !15, line: 1023, baseType: !81, size: 64, offset: 1600)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !101, file: !15, line: 1027, baseType: !3233, size: 64, offset: 1664)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !101, file: !15, line: 1029, baseType: !2226, size: 64, offset: 1728)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !101, file: !15, line: 1030, baseType: !2424, size: 32, offset: 1792)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !101, file: !15, line: 1031, baseType: !2424, size: 32, offset: 1824)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "user_name", scope: !96, file: !97, line: 44, baseType: !2824, size: 256, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sync_file_list", scope: !96, file: !97, line: 46, baseType: !91, size: 128, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !96, file: !97, line: 49, baseType: !248, size: 192, offset: 448)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !97, line: 50, baseType: !84, size: 64, offset: 640)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !96, file: !97, line: 52, baseType: !3242, size: 64, offset: 704)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !66, line: 65, size: 512, elements: !3244)
!3244 = !{!3245, !3247, !3280, !3286, !3287, !3288, !3289, !3294}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3243, file: !66, line: 66, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3243, file: !66, line: 67, baseType: !3248, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3250)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !66, line: 125, size: 640, elements: !3251)
!3251 = !{!3252, !3253, !3257, !3258, !3262, !3263, !3267, !3271, !3275, !3276}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !3250, file: !66, line: 132, baseType: !398, size: 8)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !3250, file: !66, line: 143, baseType: !3254, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!401, !3242}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !3250, file: !66, line: 155, baseType: !3254, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !3250, file: !66, line: 192, baseType: !3259, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!398, !3242}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !3250, file: !66, line: 209, baseType: !3259, size: 64, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3250, file: !66, line: 227, baseType: !3264, size: 64, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!677, !3242, !398, !677}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3250, file: !66, line: 238, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !3242}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !3250, file: !66, line: 248, baseType: !3272, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{null, !3242, !411, !147}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !3250, file: !66, line: 258, baseType: !3272, size: 64, offset: 512)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !3250, file: !66, line: 279, baseType: !3277, size: 64, offset: 576)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3242, !1306}
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3243, file: !66, line: 84, baseType: !3281, size: 128, offset: 128)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3243, file: !66, line: 84, size: 128, elements: !3282)
!3282 = !{!3283, !3284, !3285}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3281, file: !66, line: 85, baseType: !91, size: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3281, file: !66, line: 87, baseType: !1306, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3281, file: !66, line: 89, baseType: !113, size: 128, align: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3243, file: !66, line: 91, baseType: !304, size: 64, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !3243, file: !66, line: 92, baseType: !304, size: 64, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3243, file: !66, line: 93, baseType: !84, size: 64, offset: 384)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3243, file: !66, line: 94, baseType: !3290, size: 32, offset: 448)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3291, line: 19, size: 32, elements: !3292)
!3291 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3292 = !{!3293}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3290, file: !3291, line: 20, baseType: !227, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3243, file: !66, line: 95, baseType: !147, size: 32, offset: 480)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !96, file: !97, line: 53, baseType: !3296, size: 192, offset: 768)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !66, line: 116, size: 192, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3296, file: !66, line: 117, baseType: !91, size: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3296, file: !66, line: 118, baseType: !3300, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !66, line: 105, baseType: !3301)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{null, !3242, !3304}
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !83, line: 42, baseType: !84)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!3310 = !{!0, !3311, !3313, !3318, !3323, !3331, !3333, !3338, !3340, !3346}
!3311 = !DIGlobalVariableExpression(var: !3312, expr: !DIExpression())
!3312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sync_file_get_fence254", scope: !2, file: !3, line: 117, type: !81, isLocal: true, isDefinition: true)
!3313 = !DIGlobalVariableExpression(var: !3314, expr: !DIExpression())
!3314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !3315, isLocal: true, isDefinition: true)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 120, elements: !3316)
!3316 = !{!3317}
!3317 = !DISubrange(count: 15)
!3318 = !DIGlobalVariableExpression(var: !3319, expr: !DIExpression())
!3319 = distinct !DIGlobalVariable(scope: null, file: !3, line: 31, type: !3320, isLocal: true, isDefinition: true)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 80, elements: !3321)
!3321 = !{!3322}
!3322 = !DISubrange(count: 10)
!3323 = !DIGlobalVariableExpression(var: !3324, expr: !DIExpression())
!3324 = distinct !DIGlobalVariable(name: "__key", scope: !3325, file: !3, line: 36, type: !813, isLocal: true, isDefinition: true)
!3325 = distinct !DISubprogram(name: "sync_file_alloc", scope: !3, file: !3, line: 23, type: !3326, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!95}
!3328 = !{!3329, !3330}
!3329 = !DILocalVariable(name: "sync_file", scope: !3325, file: !3, line: 25, type: !95)
!3330 = !DILabel(scope: !3325, name: "err", file: !3, line: 42)
!3331 = !DIGlobalVariableExpression(var: !3332, expr: !DIExpression())
!3332 = distinct !DIGlobalVariable(scope: null, file: !3, line: 36, type: !3315, isLocal: true, isDefinition: true)
!3333 = !DIGlobalVariableExpression(var: !3334, expr: !DIExpression())
!3334 = distinct !DIGlobalVariable(scope: null, file: !56, line: 480, type: !3335, isLocal: true, isDefinition: true)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 168, elements: !3336)
!3336 = !{!3337}
!3337 = !DISubrange(count: 21)
!3338 = !DIGlobalVariableExpression(var: !3339, expr: !DIExpression())
!3339 = distinct !DIGlobalVariable(name: "sync_file_fops", scope: !2, file: !3, line: 367, type: !2985, isLocal: true, isDefinition: true)
!3340 = !DIGlobalVariableExpression(var: !3341, expr: !DIExpression())
!3341 = distinct !DIGlobalVariable(scope: null, file: !3342, line: 249, type: !3343, isLocal: true, isDefinition: true)
!3342 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 224, elements: !3344)
!3344 = !{!3345}
!3345 = !DISubrange(count: 28)
!3346 = !DIGlobalVariableExpression(var: !3347, expr: !DIExpression())
!3347 = distinct !DIGlobalVariable(scope: null, file: !66, line: 596, type: !3348, isLocal: true, isDefinition: true)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 208, elements: !3349)
!3349 = !{!3350}
!3350 = !DISubrange(count: 26)
!3351 = !{i32 7, !"Dwarf Version", i32 5}
!3352 = !{i32 2, !"Debug Info Version", i32 3}
!3353 = !{i32 1, !"wchar_size", i32 2}
!3354 = !{i32 8, !"cf-protection-branch", i32 1}
!3355 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3356 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3357 = !{i32 1, !"Code Model", i32 2}
!3358 = !{i32 1, !"override-stack-alignment", i32 8}
!3359 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3360 = distinct !DISubprogram(name: "sync_file_create", scope: !3, file: !3, line: 65, type: !3361, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!95, !3242}
!3363 = !{!3364, !3365}
!3364 = !DILocalVariable(name: "fence", arg: 1, scope: !3360, file: !3, line: 65, type: !3242)
!3365 = !DILocalVariable(name: "sync_file", scope: !3360, file: !3, line: 67, type: !95)
!3366 = !DILocation(line: 65, column: 54, scope: !3360)
!3367 = !DILocation(line: 67, column: 2, scope: !3360)
!3368 = !DILocation(line: 67, column: 20, scope: !3360)
!3369 = !DILocation(line: 69, column: 14, scope: !3360)
!3370 = !DILocation(line: 69, column: 12, scope: !3360)
!3371 = !DILocation(line: 70, column: 7, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 70, column: 6)
!3373 = !DILocation(line: 70, column: 6, scope: !3360)
!3374 = !DILocation(line: 71, column: 3, scope: !3372)
!3375 = !DILocation(line: 73, column: 35, scope: !3360)
!3376 = !DILocation(line: 73, column: 21, scope: !3360)
!3377 = !DILocation(line: 73, column: 2, scope: !3360)
!3378 = !DILocation(line: 73, column: 13, scope: !3360)
!3379 = !DILocation(line: 73, column: 19, scope: !3360)
!3380 = !DILocation(line: 75, column: 9, scope: !3360)
!3381 = !DILocation(line: 75, column: 2, scope: !3360)
!3382 = !DILocation(line: 76, column: 1, scope: !3360)
!3383 = !DILocation(line: 25, column: 2, scope: !3325)
!3384 = !DILocation(line: 25, column: 20, scope: !3325)
!3385 = !DILocation(line: 27, column: 14, scope: !3325)
!3386 = !DILocation(line: 27, column: 12, scope: !3325)
!3387 = !DILocation(line: 28, column: 7, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 28, column: 6)
!3389 = !DILocation(line: 28, column: 6, scope: !3325)
!3390 = !DILocation(line: 29, column: 3, scope: !3388)
!3391 = !DILocation(line: 32, column: 11, scope: !3325)
!3392 = !DILocation(line: 31, column: 20, scope: !3325)
!3393 = !DILocation(line: 31, column: 2, scope: !3325)
!3394 = !DILocation(line: 31, column: 13, scope: !3325)
!3395 = !DILocation(line: 31, column: 18, scope: !3325)
!3396 = !DILocation(line: 33, column: 13, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 33, column: 6)
!3398 = !DILocation(line: 33, column: 24, scope: !3397)
!3399 = !DILocation(line: 33, column: 6, scope: !3397)
!3400 = !DILocation(line: 33, column: 6, scope: !3325)
!3401 = !DILocation(line: 34, column: 3, scope: !3397)
!3402 = !DILocation(line: 36, column: 2, scope: !3325)
!3403 = !DILocation(line: 36, column: 2, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 36, column: 2)
!3405 = !DILocation(line: 38, column: 18, scope: !3325)
!3406 = !DILocation(line: 38, column: 29, scope: !3325)
!3407 = !DILocation(line: 38, column: 32, scope: !3325)
!3408 = !DILocation(line: 38, column: 2, scope: !3325)
!3409 = !DILocation(line: 40, column: 9, scope: !3325)
!3410 = !DILocation(line: 40, column: 2, scope: !3325)
!3411 = !DILocation(line: 42, column: 1, scope: !3325)
!3412 = !DILocation(line: 43, column: 8, scope: !3325)
!3413 = !DILocation(line: 43, column: 2, scope: !3325)
!3414 = !DILocation(line: 44, column: 2, scope: !3325)
!3415 = !DILocation(line: 45, column: 1, scope: !3325)
!3416 = distinct !DISubprogram(name: "dma_fence_get", scope: !66, file: !66, line: 305, type: !3417, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!3242, !3242}
!3419 = !{!3420}
!3420 = !DILocalVariable(name: "fence", arg: 1, scope: !3416, file: !66, line: 305, type: !3242)
!3421 = !DILocation(line: 305, column: 65, scope: !3416)
!3422 = !DILocation(line: 307, column: 6, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3416, file: !66, line: 307, column: 6)
!3424 = !DILocation(line: 307, column: 6, scope: !3416)
!3425 = !DILocation(line: 308, column: 13, scope: !3423)
!3426 = !DILocation(line: 308, column: 20, scope: !3423)
!3427 = !DILocation(line: 308, column: 3, scope: !3423)
!3428 = !DILocation(line: 309, column: 9, scope: !3416)
!3429 = !DILocation(line: 309, column: 2, scope: !3416)
!3430 = distinct !DISubprogram(name: "sync_file_get_fence", scope: !3, file: !3, line: 103, type: !3431, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!3242, !147}
!3433 = !{!3434, !3435, !3436}
!3434 = !DILocalVariable(name: "fd", arg: 1, scope: !3430, file: !3, line: 103, type: !147)
!3435 = !DILocalVariable(name: "sync_file", scope: !3430, file: !3, line: 105, type: !95)
!3436 = !DILocalVariable(name: "fence", scope: !3430, file: !3, line: 106, type: !3242)
!3437 = !DILocation(line: 103, column: 43, scope: !3430)
!3438 = !DILocation(line: 105, column: 2, scope: !3430)
!3439 = !DILocation(line: 105, column: 20, scope: !3430)
!3440 = !DILocation(line: 106, column: 2, scope: !3430)
!3441 = !DILocation(line: 106, column: 20, scope: !3430)
!3442 = !DILocation(line: 108, column: 30, scope: !3430)
!3443 = !DILocation(line: 108, column: 14, scope: !3430)
!3444 = !DILocation(line: 108, column: 12, scope: !3430)
!3445 = !DILocation(line: 109, column: 7, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 109, column: 6)
!3447 = !DILocation(line: 109, column: 6, scope: !3430)
!3448 = !DILocation(line: 110, column: 3, scope: !3446)
!3449 = !DILocation(line: 112, column: 24, scope: !3430)
!3450 = !DILocation(line: 112, column: 35, scope: !3430)
!3451 = !DILocation(line: 112, column: 10, scope: !3430)
!3452 = !DILocation(line: 112, column: 8, scope: !3430)
!3453 = !DILocation(line: 113, column: 7, scope: !3430)
!3454 = !DILocation(line: 113, column: 18, scope: !3430)
!3455 = !DILocation(line: 113, column: 2, scope: !3430)
!3456 = !DILocation(line: 115, column: 9, scope: !3430)
!3457 = !DILocation(line: 115, column: 2, scope: !3430)
!3458 = !DILocation(line: 116, column: 1, scope: !3430)
!3459 = distinct !DISubprogram(name: "sync_file_fdget", scope: !3, file: !3, line: 79, type: !3460, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!95, !147}
!3462 = !{!3463, !3464, !3465}
!3463 = !DILocalVariable(name: "fd", arg: 1, scope: !3459, file: !3, line: 79, type: !147)
!3464 = !DILocalVariable(name: "file", scope: !3459, file: !3, line: 81, type: !100)
!3465 = !DILabel(scope: !3459, name: "err", file: !3, line: 91)
!3466 = !DILocation(line: 79, column: 46, scope: !3459)
!3467 = !DILocation(line: 81, column: 2, scope: !3459)
!3468 = !DILocation(line: 81, column: 15, scope: !3459)
!3469 = !DILocation(line: 81, column: 27, scope: !3459)
!3470 = !DILocation(line: 81, column: 22, scope: !3459)
!3471 = !DILocation(line: 83, column: 7, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 83, column: 6)
!3473 = !DILocation(line: 83, column: 6, scope: !3459)
!3474 = !DILocation(line: 84, column: 3, scope: !3472)
!3475 = !DILocation(line: 86, column: 6, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 86, column: 6)
!3477 = !DILocation(line: 86, column: 12, scope: !3476)
!3478 = !DILocation(line: 86, column: 17, scope: !3476)
!3479 = !DILocation(line: 86, column: 6, scope: !3459)
!3480 = !DILocation(line: 87, column: 3, scope: !3476)
!3481 = !DILocation(line: 89, column: 9, scope: !3459)
!3482 = !DILocation(line: 89, column: 15, scope: !3459)
!3483 = !DILocation(line: 89, column: 2, scope: !3459)
!3484 = !DILocation(line: 91, column: 1, scope: !3459)
!3485 = !DILocation(line: 92, column: 7, scope: !3459)
!3486 = !DILocation(line: 92, column: 2, scope: !3459)
!3487 = !DILocation(line: 93, column: 2, scope: !3459)
!3488 = !DILocation(line: 94, column: 1, scope: !3459)
!3489 = !DISubprogram(name: "fput", scope: !3490, file: !3490, line: 17, type: !2415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3490 = !DIFile(filename: "./include/linux/file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "784aacb17b41d4e231ce3854c643bfe6")
!3491 = distinct !DISubprogram(name: "sync_file_get_name", scope: !3, file: !3, line: 132, type: !3492, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!411, !95, !411, !147}
!3494 = !{!3495, !3496, !3497, !3498}
!3495 = !DILocalVariable(name: "sync_file", arg: 1, scope: !3491, file: !3, line: 132, type: !95)
!3496 = !DILocalVariable(name: "buf", arg: 2, scope: !3491, file: !3, line: 132, type: !411)
!3497 = !DILocalVariable(name: "len", arg: 3, scope: !3491, file: !3, line: 132, type: !147)
!3498 = !DILocalVariable(name: "fence", scope: !3499, file: !3, line: 137, type: !3242)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 136, column: 9)
!3500 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 134, column: 6)
!3501 = !DILocation(line: 132, column: 44, scope: !3491)
!3502 = !DILocation(line: 132, column: 61, scope: !3491)
!3503 = !DILocation(line: 132, column: 70, scope: !3491)
!3504 = !DILocation(line: 134, column: 6, scope: !3500)
!3505 = !DILocation(line: 134, column: 17, scope: !3500)
!3506 = !DILocation(line: 134, column: 6, scope: !3491)
!3507 = !DILocation(line: 135, column: 11, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 134, column: 31)
!3509 = !DILocation(line: 135, column: 16, scope: !3508)
!3510 = !DILocation(line: 135, column: 27, scope: !3508)
!3511 = !DILocation(line: 135, column: 38, scope: !3508)
!3512 = !DILocation(line: 135, column: 3, scope: !3508)
!3513 = !DILocation(line: 136, column: 2, scope: !3508)
!3514 = !DILocation(line: 137, column: 3, scope: !3499)
!3515 = !DILocation(line: 137, column: 21, scope: !3499)
!3516 = !DILocation(line: 137, column: 29, scope: !3499)
!3517 = !DILocation(line: 137, column: 40, scope: !3499)
!3518 = !DILocation(line: 139, column: 12, scope: !3499)
!3519 = !DILocation(line: 139, column: 17, scope: !3499)
!3520 = !DILocation(line: 140, column: 5, scope: !3499)
!3521 = !DILocation(line: 140, column: 12, scope: !3499)
!3522 = !DILocation(line: 140, column: 17, scope: !3499)
!3523 = !DILocation(line: 140, column: 33, scope: !3499)
!3524 = !DILocation(line: 141, column: 5, scope: !3499)
!3525 = !DILocation(line: 141, column: 12, scope: !3499)
!3526 = !DILocation(line: 141, column: 17, scope: !3499)
!3527 = !DILocation(line: 141, column: 35, scope: !3499)
!3528 = !DILocation(line: 142, column: 5, scope: !3499)
!3529 = !DILocation(line: 142, column: 12, scope: !3499)
!3530 = !DILocation(line: 143, column: 5, scope: !3499)
!3531 = !DILocation(line: 143, column: 12, scope: !3499)
!3532 = !DILocation(line: 139, column: 3, scope: !3499)
!3533 = !DILocation(line: 144, column: 2, scope: !3500)
!3534 = !DILocation(line: 146, column: 9, scope: !3491)
!3535 = !DILocation(line: 146, column: 2, scope: !3491)
!3536 = !DISubprogram(name: "strscpy", scope: !3537, file: !3537, line: 72, type: !3538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3537 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!716, !411, !401, !719}
!3540 = !DISubprogram(name: "snprintf", scope: !3541, file: !3541, line: 12, type: !3542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3541 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!147, !411, !719, !401, null}
!3544 = distinct !DISubprogram(name: "kzalloc", scope: !56, file: !56, line: 719, type: !3545, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!81, !719, !82}
!3547 = !{!3548, !3549}
!3548 = !DILocalVariable(name: "size", arg: 1, scope: !3544, file: !56, line: 719, type: !719)
!3549 = !DILocalVariable(name: "flags", arg: 2, scope: !3544, file: !56, line: 719, type: !82)
!3550 = !DILocation(line: 719, column: 52, scope: !3544)
!3551 = !DILocation(line: 719, column: 64, scope: !3544)
!3552 = !DILocation(line: 721, column: 17, scope: !3544)
!3553 = !DILocation(line: 721, column: 23, scope: !3544)
!3554 = !DILocation(line: 721, column: 29, scope: !3544)
!3555 = !DILocation(line: 721, column: 9, scope: !3544)
!3556 = !DILocation(line: 721, column: 2, scope: !3544)
!3557 = !DISubprogram(name: "anon_inode_getfile", scope: !3558, file: !3558, line: 15, type: !3559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3558 = !DIFile(filename: "./include/linux/anon_inodes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00c0a889ffd591b5a8b4ccaa2c6d3740")
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!100, !401, !2984, !81, !147}
!3561 = distinct !DISubprogram(name: "IS_ERR", scope: !3562, file: !3562, line: 59, type: !3563, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3567)
!3562 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!398, !3565}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3567 = !{!3568}
!3568 = !DILocalVariable(name: "ptr", arg: 1, scope: !3561, file: !3562, line: 59, type: !3565)
!3569 = !DILocation(line: 59, column: 60, scope: !3561)
!3570 = !DILocation(line: 61, column: 9, scope: !3561)
!3571 = !DILocation(line: 61, column: 2, scope: !3561)
!3572 = !DISubprogram(name: "__init_waitqueue_head", scope: !249, file: !249, line: 64, type: !3573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{null, !3575, !401, !3576}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!3577 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3578, file: !3578, line: 35, type: !3579, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3581)
!3578 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !90}
!3581 = !{!3582}
!3582 = !DILocalVariable(name: "list", arg: 1, scope: !3577, file: !3578, line: 35, type: !90)
!3583 = !DILocation(line: 35, column: 53, scope: !3577)
!3584 = !DILocation(line: 37, column: 2, scope: !3577)
!3585 = !DILocation(line: 37, column: 2, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3577, file: !3578, line: 37, column: 2)
!3587 = !DILocation(line: 37, column: 2, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3586, file: !3578, line: 37, column: 2)
!3589 = !DILocation(line: 37, column: 2, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !3578, line: 37, column: 2)
!3591 = !DILocation(line: 38, column: 2, scope: !3577)
!3592 = !DILocation(line: 38, column: 2, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3577, file: !3578, line: 38, column: 2)
!3594 = !DILocation(line: 38, column: 2, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3593, file: !3578, line: 38, column: 2)
!3596 = !DILocation(line: 38, column: 2, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3593, file: !3578, line: 38, column: 2)
!3598 = !DILocation(line: 39, column: 1, scope: !3577)
!3599 = !DISubprogram(name: "kfree", scope: !56, file: !56, line: 227, type: !3600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{null, !3565}
!3602 = distinct !DISubprogram(name: "kmalloc", scope: !56, file: !56, line: 591, type: !3545, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3603)
!3603 = !{!3604, !3605, !3606}
!3604 = !DILocalVariable(name: "size", arg: 1, scope: !3602, file: !56, line: 591, type: !719)
!3605 = !DILocalVariable(name: "flags", arg: 2, scope: !3602, file: !56, line: 591, type: !82)
!3606 = !DILocalVariable(name: "index", scope: !3607, file: !56, line: 594, type: !7)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !56, line: 593, column: 42)
!3608 = distinct !DILexicalBlock(scope: !3602, file: !56, line: 593, column: 6)
!3609 = !DILocation(line: 591, column: 61, scope: !3602)
!3610 = !DILocation(line: 591, column: 73, scope: !3602)
!3611 = !DILocation(line: 593, column: 27, scope: !3608)
!3612 = !DILocation(line: 593, column: 6, scope: !3608)
!3613 = !DILocation(line: 593, column: 33, scope: !3608)
!3614 = !DILocation(line: 593, column: 36, scope: !3608)
!3615 = !DILocation(line: 593, column: 6, scope: !3602)
!3616 = !DILocation(line: 594, column: 3, scope: !3607)
!3617 = !DILocation(line: 594, column: 16, scope: !3607)
!3618 = !DILocation(line: 596, column: 7, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3607, file: !56, line: 596, column: 7)
!3620 = !DILocation(line: 596, column: 12, scope: !3619)
!3621 = !DILocation(line: 596, column: 7, scope: !3607)
!3622 = !DILocation(line: 597, column: 25, scope: !3619)
!3623 = !DILocation(line: 597, column: 31, scope: !3619)
!3624 = !DILocation(line: 597, column: 11, scope: !3619)
!3625 = !DILocation(line: 597, column: 4, scope: !3619)
!3626 = !DILocation(line: 599, column: 11, scope: !3607)
!3627 = !DILocation(line: 599, column: 9, scope: !3607)
!3628 = !DILocation(line: 601, column: 33, scope: !3607)
!3629 = !DILocation(line: 601, column: 40, scope: !3607)
!3630 = !DILocation(line: 601, column: 20, scope: !3607)
!3631 = !DILocation(line: 601, column: 5, scope: !3607)
!3632 = !DILocation(line: 601, column: 51, scope: !3607)
!3633 = !DILocation(line: 602, column: 5, scope: !3607)
!3634 = !DILocation(line: 602, column: 12, scope: !3607)
!3635 = !DILocation(line: 600, column: 10, scope: !3607)
!3636 = !DILocation(line: 600, column: 3, scope: !3607)
!3637 = !DILocation(line: 603, column: 2, scope: !3608)
!3638 = !DILocation(line: 604, column: 19, scope: !3602)
!3639 = !DILocation(line: 604, column: 25, scope: !3602)
!3640 = !DILocation(line: 604, column: 9, scope: !3602)
!3641 = !DILocation(line: 604, column: 2, scope: !3602)
!3642 = !DILocation(line: 605, column: 1, scope: !3602)
!3643 = !DISubprogram(name: "kmalloc_large", scope: !56, file: !56, line: 531, type: !3545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3644 = distinct !DISubprogram(name: "__kmalloc_index", scope: !56, file: !56, line: 444, type: !3645, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!7, !719, !398}
!3647 = !{!3648, !3649}
!3648 = !DILocalVariable(name: "size", arg: 1, scope: !3644, file: !56, line: 444, type: !719)
!3649 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3644, file: !56, line: 445, type: !398)
!3650 = !DILocation(line: 444, column: 60, scope: !3644)
!3651 = !DILocation(line: 445, column: 16, scope: !3644)
!3652 = !DILocation(line: 447, column: 7, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 447, column: 6)
!3654 = !DILocation(line: 447, column: 6, scope: !3644)
!3655 = !DILocation(line: 448, column: 3, scope: !3653)
!3656 = !DILocation(line: 450, column: 6, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 450, column: 6)
!3658 = !DILocation(line: 450, column: 11, scope: !3657)
!3659 = !DILocation(line: 450, column: 6, scope: !3644)
!3660 = !DILocation(line: 451, column: 3, scope: !3657)
!3661 = !DILocation(line: 453, column: 32, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 453, column: 6)
!3663 = !DILocation(line: 453, column: 37, scope: !3662)
!3664 = !DILocation(line: 453, column: 42, scope: !3662)
!3665 = !DILocation(line: 453, column: 45, scope: !3662)
!3666 = !DILocation(line: 453, column: 50, scope: !3662)
!3667 = !DILocation(line: 453, column: 6, scope: !3644)
!3668 = !DILocation(line: 454, column: 3, scope: !3662)
!3669 = !DILocation(line: 455, column: 32, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 455, column: 6)
!3671 = !DILocation(line: 455, column: 37, scope: !3670)
!3672 = !DILocation(line: 455, column: 43, scope: !3670)
!3673 = !DILocation(line: 455, column: 46, scope: !3670)
!3674 = !DILocation(line: 455, column: 51, scope: !3670)
!3675 = !DILocation(line: 455, column: 6, scope: !3644)
!3676 = !DILocation(line: 456, column: 3, scope: !3670)
!3677 = !DILocation(line: 457, column: 6, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 457, column: 6)
!3679 = !DILocation(line: 457, column: 11, scope: !3678)
!3680 = !DILocation(line: 457, column: 6, scope: !3644)
!3681 = !DILocation(line: 457, column: 26, scope: !3678)
!3682 = !DILocation(line: 458, column: 6, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 458, column: 6)
!3684 = !DILocation(line: 458, column: 11, scope: !3683)
!3685 = !DILocation(line: 458, column: 6, scope: !3644)
!3686 = !DILocation(line: 458, column: 26, scope: !3683)
!3687 = !DILocation(line: 459, column: 6, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 459, column: 6)
!3689 = !DILocation(line: 459, column: 11, scope: !3688)
!3690 = !DILocation(line: 459, column: 6, scope: !3644)
!3691 = !DILocation(line: 459, column: 26, scope: !3688)
!3692 = !DILocation(line: 460, column: 6, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 460, column: 6)
!3694 = !DILocation(line: 460, column: 11, scope: !3693)
!3695 = !DILocation(line: 460, column: 6, scope: !3644)
!3696 = !DILocation(line: 460, column: 26, scope: !3693)
!3697 = !DILocation(line: 461, column: 6, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 461, column: 6)
!3699 = !DILocation(line: 461, column: 11, scope: !3698)
!3700 = !DILocation(line: 461, column: 6, scope: !3644)
!3701 = !DILocation(line: 461, column: 26, scope: !3698)
!3702 = !DILocation(line: 462, column: 6, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 462, column: 6)
!3704 = !DILocation(line: 462, column: 11, scope: !3703)
!3705 = !DILocation(line: 462, column: 6, scope: !3644)
!3706 = !DILocation(line: 462, column: 26, scope: !3703)
!3707 = !DILocation(line: 463, column: 6, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 463, column: 6)
!3709 = !DILocation(line: 463, column: 11, scope: !3708)
!3710 = !DILocation(line: 463, column: 6, scope: !3644)
!3711 = !DILocation(line: 463, column: 26, scope: !3708)
!3712 = !DILocation(line: 464, column: 6, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 464, column: 6)
!3714 = !DILocation(line: 464, column: 11, scope: !3713)
!3715 = !DILocation(line: 464, column: 6, scope: !3644)
!3716 = !DILocation(line: 464, column: 26, scope: !3713)
!3717 = !DILocation(line: 465, column: 6, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 465, column: 6)
!3719 = !DILocation(line: 465, column: 11, scope: !3718)
!3720 = !DILocation(line: 465, column: 6, scope: !3644)
!3721 = !DILocation(line: 465, column: 26, scope: !3718)
!3722 = !DILocation(line: 466, column: 6, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 466, column: 6)
!3724 = !DILocation(line: 466, column: 11, scope: !3723)
!3725 = !DILocation(line: 466, column: 6, scope: !3644)
!3726 = !DILocation(line: 466, column: 26, scope: !3723)
!3727 = !DILocation(line: 467, column: 6, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 467, column: 6)
!3729 = !DILocation(line: 467, column: 11, scope: !3728)
!3730 = !DILocation(line: 467, column: 6, scope: !3644)
!3731 = !DILocation(line: 467, column: 26, scope: !3728)
!3732 = !DILocation(line: 468, column: 6, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 468, column: 6)
!3734 = !DILocation(line: 468, column: 11, scope: !3733)
!3735 = !DILocation(line: 468, column: 6, scope: !3644)
!3736 = !DILocation(line: 468, column: 26, scope: !3733)
!3737 = !DILocation(line: 469, column: 6, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 469, column: 6)
!3739 = !DILocation(line: 469, column: 11, scope: !3738)
!3740 = !DILocation(line: 469, column: 6, scope: !3644)
!3741 = !DILocation(line: 469, column: 26, scope: !3738)
!3742 = !DILocation(line: 470, column: 6, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 470, column: 6)
!3744 = !DILocation(line: 470, column: 11, scope: !3743)
!3745 = !DILocation(line: 470, column: 6, scope: !3644)
!3746 = !DILocation(line: 470, column: 26, scope: !3743)
!3747 = !DILocation(line: 471, column: 6, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 471, column: 6)
!3749 = !DILocation(line: 471, column: 11, scope: !3748)
!3750 = !DILocation(line: 471, column: 6, scope: !3644)
!3751 = !DILocation(line: 471, column: 26, scope: !3748)
!3752 = !DILocation(line: 472, column: 6, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 472, column: 6)
!3754 = !DILocation(line: 472, column: 11, scope: !3753)
!3755 = !DILocation(line: 472, column: 6, scope: !3644)
!3756 = !DILocation(line: 472, column: 26, scope: !3753)
!3757 = !DILocation(line: 473, column: 6, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 473, column: 6)
!3759 = !DILocation(line: 473, column: 11, scope: !3758)
!3760 = !DILocation(line: 473, column: 6, scope: !3644)
!3761 = !DILocation(line: 473, column: 26, scope: !3758)
!3762 = !DILocation(line: 474, column: 6, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 474, column: 6)
!3764 = !DILocation(line: 474, column: 11, scope: !3763)
!3765 = !DILocation(line: 474, column: 6, scope: !3644)
!3766 = !DILocation(line: 474, column: 27, scope: !3763)
!3767 = !DILocation(line: 475, column: 6, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 475, column: 6)
!3769 = !DILocation(line: 475, column: 11, scope: !3768)
!3770 = !DILocation(line: 475, column: 6, scope: !3644)
!3771 = !DILocation(line: 475, column: 32, scope: !3768)
!3772 = !DILocation(line: 477, column: 50, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3644, file: !56, line: 477, column: 6)
!3774 = !{i8 0, i8 2}
!3775 = !DILocation(line: 477, column: 6, scope: !3644)
!3776 = !DILocation(line: 478, column: 3, scope: !3773)
!3777 = !DILocation(line: 478, column: 3, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !56, line: 478, column: 3)
!3779 = distinct !DILexicalBlock(scope: !3773, file: !56, line: 478, column: 3)
!3780 = !{i32 -2141715709}
!3781 = !DILocation(line: 478, column: 3, scope: !3779)
!3782 = !DILocation(line: 480, column: 3, scope: !3773)
!3783 = !DILocation(line: 480, column: 3, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3773, file: !56, line: 480, column: 3)
!3785 = !DILocation(line: 480, column: 3, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3784, file: !56, line: 480, column: 3)
!3787 = !DILocation(line: 480, column: 3, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3784, file: !56, line: 480, column: 3)
!3789 = !{i64 2153251790, i64 2153251819, i64 2153251865, i64 2153251923, i64 2153251977, i64 2153252031, i64 2153252086, i64 2153252117}
!3790 = !DILocation(line: 483, column: 2, scope: !3644)
!3791 = !DILocation(line: 484, column: 1, scope: !3644)
!3792 = !DISubprogram(name: "kmalloc_trace", scope: !56, file: !56, line: 525, type: !3793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!81, !3795, !82, !719}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3797, line: 325, flags: DIFlagFwdDecl)
!3797 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3798 = distinct !DISubprogram(name: "kmalloc_type", scope: !56, file: !56, line: 401, type: !3799, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!55, !82, !84}
!3801 = !{!3802, !3803}
!3802 = !DILocalVariable(name: "flags", arg: 1, scope: !3798, file: !56, line: 401, type: !82)
!3803 = !DILocalVariable(name: "caller", arg: 2, scope: !3798, file: !56, line: 401, type: !84)
!3804 = !DILocation(line: 401, column: 67, scope: !3798)
!3805 = !DILocation(line: 401, column: 88, scope: !3798)
!3806 = !DILocation(line: 407, column: 6, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3798, file: !56, line: 407, column: 6)
!3808 = !DILocation(line: 407, column: 6, scope: !3798)
!3809 = !DILocation(line: 413, column: 3, scope: !3807)
!3810 = !DILocation(line: 423, column: 38, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3798, file: !56, line: 423, column: 6)
!3812 = !DILocation(line: 423, column: 44, scope: !3811)
!3813 = !DILocation(line: 423, column: 6, scope: !3798)
!3814 = !DILocation(line: 424, column: 3, scope: !3811)
!3815 = !DILocation(line: 426, column: 3, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3798, file: !56, line: 425, column: 6)
!3817 = !DILocation(line: 429, column: 1, scope: !3798)
!3818 = !DISubprogram(name: "__kmalloc", scope: !56, file: !56, line: 488, type: !3545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3819 = !DISubprogram(name: "__compiletime_assert_245", scope: !56, file: !56, line: 478, type: !1969, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3820 = distinct !DISubprogram(name: "sync_file_poll", scope: !3, file: !3, line: 191, type: !3821, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3825)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!85, !100, !3823}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !3029, line: 40, baseType: !3028)
!3825 = !{!3826, !3827, !3828}
!3826 = !DILocalVariable(name: "file", arg: 1, scope: !3820, file: !3, line: 191, type: !100)
!3827 = !DILocalVariable(name: "wait", arg: 2, scope: !3820, file: !3, line: 191, type: !3823)
!3828 = !DILocalVariable(name: "sync_file", scope: !3820, file: !3, line: 193, type: !95)
!3829 = !DILocation(line: 191, column: 45, scope: !3820)
!3830 = !DILocation(line: 191, column: 63, scope: !3820)
!3831 = !DILocation(line: 193, column: 2, scope: !3820)
!3832 = !DILocation(line: 193, column: 20, scope: !3820)
!3833 = !DILocation(line: 193, column: 32, scope: !3820)
!3834 = !DILocation(line: 193, column: 38, scope: !3820)
!3835 = !DILocation(line: 195, column: 12, scope: !3820)
!3836 = !DILocation(line: 195, column: 19, scope: !3820)
!3837 = !DILocation(line: 195, column: 30, scope: !3820)
!3838 = !DILocation(line: 195, column: 34, scope: !3820)
!3839 = !DILocation(line: 195, column: 2, scope: !3820)
!3840 = !DILocation(line: 197, column: 18, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 197, column: 6)
!3842 = !DILocation(line: 197, column: 29, scope: !3841)
!3843 = !DILocation(line: 197, column: 32, scope: !3841)
!3844 = !DILocation(line: 197, column: 6, scope: !3841)
!3845 = !DILocation(line: 197, column: 38, scope: !3841)
!3846 = !DILocation(line: 198, column: 39, scope: !3841)
!3847 = !DILocation(line: 198, column: 50, scope: !3841)
!3848 = !DILocation(line: 198, column: 7, scope: !3841)
!3849 = !DILocation(line: 197, column: 6, scope: !3820)
!3850 = !DILocation(line: 199, column: 30, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 199, column: 7)
!3852 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 198, column: 58)
!3853 = !DILocation(line: 199, column: 41, scope: !3851)
!3854 = !DILocation(line: 199, column: 49, scope: !3851)
!3855 = !DILocation(line: 199, column: 60, scope: !3851)
!3856 = !DILocation(line: 199, column: 7, scope: !3851)
!3857 = !DILocation(line: 200, column: 30, scope: !3851)
!3858 = !DILocation(line: 199, column: 7, scope: !3852)
!3859 = !DILocation(line: 201, column: 4, scope: !3851)
!3860 = !DILocation(line: 202, column: 2, scope: !3852)
!3861 = !DILocation(line: 204, column: 31, scope: !3820)
!3862 = !DILocation(line: 204, column: 42, scope: !3820)
!3863 = !DILocation(line: 204, column: 9, scope: !3820)
!3864 = !DILocation(line: 205, column: 1, scope: !3820)
!3865 = !DILocation(line: 204, column: 2, scope: !3820)
!3866 = distinct !DISubprogram(name: "sync_file_ioctl", scope: !3, file: !3, line: 350, type: !3040, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3867)
!3867 = !{!3868, !3869, !3870, !3871}
!3868 = !DILocalVariable(name: "file", arg: 1, scope: !3866, file: !3, line: 350, type: !100)
!3869 = !DILocalVariable(name: "cmd", arg: 2, scope: !3866, file: !3, line: 350, type: !7)
!3870 = !DILocalVariable(name: "arg", arg: 3, scope: !3866, file: !3, line: 351, type: !84)
!3871 = !DILocalVariable(name: "sync_file", scope: !3866, file: !3, line: 353, type: !95)
!3872 = !DILocation(line: 350, column: 42, scope: !3866)
!3873 = !DILocation(line: 350, column: 61, scope: !3866)
!3874 = !DILocation(line: 351, column: 22, scope: !3866)
!3875 = !DILocation(line: 353, column: 2, scope: !3866)
!3876 = !DILocation(line: 353, column: 20, scope: !3866)
!3877 = !DILocation(line: 353, column: 32, scope: !3866)
!3878 = !DILocation(line: 353, column: 38, scope: !3866)
!3879 = !DILocation(line: 355, column: 10, scope: !3866)
!3880 = !DILocation(line: 355, column: 2, scope: !3866)
!3881 = !DILocation(line: 357, column: 32, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 355, column: 15)
!3883 = !DILocation(line: 357, column: 43, scope: !3882)
!3884 = !DILocation(line: 357, column: 10, scope: !3882)
!3885 = !DILocation(line: 357, column: 3, scope: !3882)
!3886 = !DILocation(line: 360, column: 37, scope: !3882)
!3887 = !DILocation(line: 360, column: 48, scope: !3882)
!3888 = !DILocation(line: 360, column: 10, scope: !3882)
!3889 = !DILocation(line: 360, column: 3, scope: !3882)
!3890 = !DILocation(line: 363, column: 3, scope: !3882)
!3891 = !DILocation(line: 365, column: 1, scope: !3866)
!3892 = distinct !DISubprogram(name: "sync_file_release", scope: !3, file: !3, line: 179, type: !3103, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3893)
!3893 = !{!3894, !3895, !3896}
!3894 = !DILocalVariable(name: "inode", arg: 1, scope: !3892, file: !3, line: 179, type: !562)
!3895 = !DILocalVariable(name: "file", arg: 2, scope: !3892, file: !3, line: 179, type: !100)
!3896 = !DILocalVariable(name: "sync_file", scope: !3892, file: !3, line: 181, type: !95)
!3897 = !DILocation(line: 179, column: 44, scope: !3892)
!3898 = !DILocation(line: 179, column: 64, scope: !3892)
!3899 = !DILocation(line: 181, column: 2, scope: !3892)
!3900 = !DILocation(line: 181, column: 20, scope: !3892)
!3901 = !DILocation(line: 181, column: 32, scope: !3892)
!3902 = !DILocation(line: 181, column: 38, scope: !3892)
!3903 = !DILocation(line: 183, column: 6, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 183, column: 6)
!3905 = !DILocation(line: 183, column: 6, scope: !3892)
!3906 = !DILocation(line: 184, column: 29, scope: !3904)
!3907 = !DILocation(line: 184, column: 40, scope: !3904)
!3908 = !DILocation(line: 184, column: 48, scope: !3904)
!3909 = !DILocation(line: 184, column: 59, scope: !3904)
!3910 = !DILocation(line: 184, column: 3, scope: !3904)
!3911 = !DILocation(line: 185, column: 16, scope: !3892)
!3912 = !DILocation(line: 185, column: 27, scope: !3892)
!3913 = !DILocation(line: 185, column: 2, scope: !3892)
!3914 = !DILocation(line: 186, column: 8, scope: !3892)
!3915 = !DILocation(line: 186, column: 2, scope: !3892)
!3916 = !DILocation(line: 189, column: 1, scope: !3892)
!3917 = !DILocation(line: 188, column: 2, scope: !3892)
!3918 = distinct !DISubprogram(name: "poll_wait", scope: !3029, file: !3029, line: 42, type: !3919, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !100, !3036, !3823}
!3921 = !{!3922, !3923, !3924}
!3922 = !DILocalVariable(name: "filp", arg: 1, scope: !3918, file: !3029, line: 42, type: !100)
!3923 = !DILocalVariable(name: "wait_address", arg: 2, scope: !3918, file: !3029, line: 42, type: !3036)
!3924 = !DILocalVariable(name: "p", arg: 3, scope: !3918, file: !3029, line: 42, type: !3823)
!3925 = !DILocation(line: 42, column: 44, scope: !3918)
!3926 = !DILocation(line: 42, column: 70, scope: !3918)
!3927 = !DILocation(line: 42, column: 96, scope: !3918)
!3928 = !DILocation(line: 44, column: 6, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3918, file: !3029, line: 44, column: 6)
!3930 = !DILocation(line: 44, column: 8, scope: !3929)
!3931 = !DILocation(line: 44, column: 11, scope: !3929)
!3932 = !DILocation(line: 44, column: 14, scope: !3929)
!3933 = !DILocation(line: 44, column: 21, scope: !3929)
!3934 = !DILocation(line: 44, column: 24, scope: !3929)
!3935 = !DILocation(line: 44, column: 6, scope: !3918)
!3936 = !DILocation(line: 45, column: 3, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3929, file: !3029, line: 44, column: 38)
!3938 = !DILocation(line: 45, column: 6, scope: !3937)
!3939 = !DILocation(line: 45, column: 13, scope: !3937)
!3940 = !DILocation(line: 45, column: 19, scope: !3937)
!3941 = !DILocation(line: 45, column: 33, scope: !3937)
!3942 = !DILocation(line: 52, column: 3, scope: !3937)
!3943 = !DILocation(line: 52, column: 3, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3937, file: !3029, line: 52, column: 3)
!3945 = !DILocation(line: 52, column: 3, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3944, file: !3029, line: 52, column: 3)
!3947 = !{i64 2153371409}
!3948 = !DILocation(line: 53, column: 2, scope: !3937)
!3949 = !DILocation(line: 54, column: 1, scope: !3918)
!3950 = distinct !DISubprogram(name: "list_empty", scope: !3578, file: !3578, line: 371, type: !3951, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3955)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!147, !3953}
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!3955 = !{!3956}
!3956 = !DILocalVariable(name: "head", arg: 1, scope: !3950, file: !3578, line: 371, type: !3953)
!3957 = !DILocation(line: 371, column: 54, scope: !3950)
!3958 = !DILocation(line: 373, column: 9, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3950, file: !3578, line: 373, column: 9)
!3960 = !DILocation(line: 373, column: 9, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3959, file: !3578, line: 373, column: 9)
!3962 = !DILocation(line: 373, column: 34, scope: !3950)
!3963 = !DILocation(line: 373, column: 31, scope: !3950)
!3964 = !DILocation(line: 373, column: 2, scope: !3950)
!3965 = distinct !DISubprogram(name: "test_and_set_bit", scope: !3966, file: !3966, line: 68, type: !3967, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3971)
!3966 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!398, !677, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!3971 = !{!3972, !3973}
!3972 = !DILocalVariable(name: "nr", arg: 1, scope: !3965, file: !3966, line: 68, type: !677)
!3973 = !DILocalVariable(name: "addr", arg: 2, scope: !3965, file: !3966, line: 68, type: !3969)
!3974 = !DILocation(line: 68, column: 51, scope: !3965)
!3975 = !DILocation(line: 68, column: 79, scope: !3965)
!3976 = !DILocation(line: 70, column: 2, scope: !3965)
!3977 = !DILocation(line: 70, column: 2, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3965, file: !3966, line: 70, column: 2)
!3979 = !DILocation(line: 71, column: 31, scope: !3965)
!3980 = !DILocation(line: 71, column: 38, scope: !3965)
!3981 = !DILocation(line: 71, column: 36, scope: !3965)
!3982 = !DILocation(line: 71, column: 2, scope: !3965)
!3983 = !DILocation(line: 72, column: 31, scope: !3965)
!3984 = !DILocation(line: 72, column: 35, scope: !3965)
!3985 = !DILocation(line: 72, column: 9, scope: !3965)
!3986 = !DILocation(line: 72, column: 2, scope: !3965)
!3987 = !DISubprogram(name: "dma_fence_add_callback", scope: !66, file: !66, line: 397, type: !3988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!147, !3242, !3304, !3300}
!3990 = distinct !DISubprogram(name: "fence_check_cb_func", scope: !3, file: !3, line: 47, type: !3302, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3991)
!3991 = !{!3992, !3993, !3994, !3995}
!3992 = !DILocalVariable(name: "f", arg: 1, scope: !3990, file: !3, line: 47, type: !3242)
!3993 = !DILocalVariable(name: "cb", arg: 2, scope: !3990, file: !3, line: 47, type: !3304)
!3994 = !DILocalVariable(name: "sync_file", scope: !3990, file: !3, line: 49, type: !95)
!3995 = !DILocalVariable(name: "__mptr", scope: !3996, file: !3, line: 51, type: !81)
!3996 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 51, column: 14)
!3997 = !DILocation(line: 47, column: 51, scope: !3990)
!3998 = !DILocation(line: 47, column: 75, scope: !3990)
!3999 = !DILocation(line: 49, column: 2, scope: !3990)
!4000 = !DILocation(line: 49, column: 20, scope: !3990)
!4001 = !DILocation(line: 51, column: 14, scope: !3996)
!4002 = !DILocation(line: 51, column: 14, scope: !3990)
!4003 = !DILocation(line: 51, column: 12, scope: !3990)
!4004 = !DILocation(line: 53, column: 2, scope: !3990)
!4005 = !DILocation(line: 54, column: 1, scope: !3990)
!4006 = !DISubprogram(name: "__wake_up", scope: !249, file: !249, line: 212, type: !4007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!147, !3575, !7, !147, !81}
!4009 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !66, file: !66, line: 449, type: !3260, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4010)
!4010 = !{!4011}
!4011 = !DILocalVariable(name: "fence", arg: 1, scope: !4009, file: !66, line: 449, type: !3242)
!4012 = !DILocation(line: 449, column: 41, scope: !4009)
!4013 = !DILocation(line: 451, column: 6, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4009, file: !66, line: 451, column: 6)
!4015 = !DILocation(line: 451, column: 6, scope: !4009)
!4016 = !DILocation(line: 452, column: 3, scope: !4014)
!4017 = !DILocation(line: 454, column: 6, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4009, file: !66, line: 454, column: 6)
!4019 = !DILocation(line: 454, column: 13, scope: !4018)
!4020 = !DILocation(line: 454, column: 18, scope: !4018)
!4021 = !DILocation(line: 454, column: 27, scope: !4018)
!4022 = !DILocation(line: 454, column: 30, scope: !4018)
!4023 = !DILocation(line: 454, column: 37, scope: !4018)
!4024 = !DILocation(line: 454, column: 42, scope: !4018)
!4025 = !DILocation(line: 454, column: 51, scope: !4018)
!4026 = !DILocation(line: 454, column: 6, scope: !4009)
!4027 = !DILocation(line: 455, column: 20, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4018, file: !66, line: 454, column: 59)
!4029 = !DILocation(line: 455, column: 3, scope: !4028)
!4030 = !DILocation(line: 456, column: 3, scope: !4028)
!4031 = !DILocation(line: 459, column: 2, scope: !4009)
!4032 = !DILocation(line: 460, column: 1, scope: !4009)
!4033 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4034, file: !4034, line: 94, type: !4035, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4040)
!4034 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4035 = !DISubroutineType(types: !4036)
!4036 = !{null, !4037, !719}
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4039)
!4039 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4040 = !{!4041, !4042}
!4041 = !DILocalVariable(name: "v", arg: 1, scope: !4033, file: !4034, line: 94, type: !4037)
!4042 = !DILocalVariable(name: "size", arg: 2, scope: !4033, file: !4034, line: 94, type: !719)
!4043 = !DILocation(line: 94, column: 79, scope: !4033)
!4044 = !DILocation(line: 94, column: 89, scope: !4033)
!4045 = !DILocation(line: 96, column: 20, scope: !4033)
!4046 = !DILocation(line: 96, column: 23, scope: !4033)
!4047 = !DILocation(line: 96, column: 2, scope: !4033)
!4048 = !DILocation(line: 97, column: 2, scope: !4033)
!4049 = !DILocation(line: 98, column: 1, scope: !4033)
!4050 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !4051, file: !4051, line: 136, type: !3967, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4052)
!4051 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4052 = !{!4053, !4054, !4055}
!4053 = !DILocalVariable(name: "nr", arg: 1, scope: !4050, file: !4051, line: 136, type: !677)
!4054 = !DILocalVariable(name: "addr", arg: 2, scope: !4050, file: !4051, line: 136, type: !3969)
!4055 = !DILocalVariable(name: "c", scope: !4056, file: !4051, line: 138, type: !398)
!4056 = distinct !DILexicalBlock(scope: !4050, file: !4051, line: 138, column: 9)
!4057 = !DILocation(line: 136, column: 28, scope: !4050)
!4058 = !DILocation(line: 136, column: 56, scope: !4050)
!4059 = !DILocation(line: 138, column: 9, scope: !4056)
!4060 = !{i64 2148147497, i64 2148147536, i64 2148147557, i64 2148147594, i64 2148147617, i64 2148147626, i64 2148147729}
!4061 = !DILocation(line: 138, column: 9, scope: !4050)
!4062 = !DILocation(line: 138, column: 2, scope: !4050)
!4063 = distinct !DISubprogram(name: "kasan_check_write", scope: !4064, file: !4064, line: 44, type: !4065, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4067)
!4064 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!398, !4037, !7}
!4067 = !{!4068, !4069}
!4068 = !DILocalVariable(name: "p", arg: 1, scope: !4063, file: !4064, line: 44, type: !4037)
!4069 = !DILocalVariable(name: "size", arg: 2, scope: !4063, file: !4064, line: 44, type: !7)
!4070 = !DILocation(line: 44, column: 59, scope: !4063)
!4071 = !DILocation(line: 44, column: 75, scope: !4063)
!4072 = !DILocation(line: 46, column: 2, scope: !4063)
!4073 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4074, file: !4074, line: 229, type: !4075, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4077)
!4074 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4075 = !DISubroutineType(types: !4076)
!4076 = !{null, !4037, !719, !147}
!4077 = !{!4078, !4079, !4080}
!4078 = !DILocalVariable(name: "ptr", arg: 1, scope: !4073, file: !4074, line: 229, type: !4037)
!4079 = !DILocalVariable(name: "size", arg: 2, scope: !4073, file: !4074, line: 229, type: !719)
!4080 = !DILocalVariable(name: "type", arg: 3, scope: !4073, file: !4074, line: 230, type: !147)
!4081 = !DILocation(line: 229, column: 60, scope: !4073)
!4082 = !DILocation(line: 229, column: 72, scope: !4073)
!4083 = !DILocation(line: 230, column: 15, scope: !4073)
!4084 = !DILocation(line: 230, column: 23, scope: !4073)
!4085 = distinct !DISubprogram(name: "const_test_bit", scope: !4086, file: !4086, line: 166, type: !4087, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4091)
!4086 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!398, !84, !4089}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3970)
!4091 = !{!4092, !4093, !4094, !4095, !4096}
!4092 = !DILocalVariable(name: "nr", arg: 1, scope: !4085, file: !4086, line: 166, type: !84)
!4093 = !DILocalVariable(name: "addr", arg: 2, scope: !4085, file: !4086, line: 166, type: !4089)
!4094 = !DILocalVariable(name: "p", scope: !4085, file: !4086, line: 168, type: !3306)
!4095 = !DILocalVariable(name: "mask", scope: !4085, file: !4086, line: 169, type: !84)
!4096 = !DILocalVariable(name: "val", scope: !4085, file: !4086, line: 170, type: !84)
!4097 = !DILocation(line: 166, column: 30, scope: !4085)
!4098 = !DILocation(line: 166, column: 64, scope: !4085)
!4099 = !DILocation(line: 168, column: 2, scope: !4085)
!4100 = !DILocation(line: 168, column: 23, scope: !4085)
!4101 = !DILocation(line: 168, column: 50, scope: !4085)
!4102 = !DILocation(line: 168, column: 57, scope: !4085)
!4103 = !DILocation(line: 168, column: 55, scope: !4085)
!4104 = !DILocation(line: 169, column: 2, scope: !4085)
!4105 = !DILocation(line: 169, column: 16, scope: !4085)
!4106 = !DILocation(line: 169, column: 23, scope: !4085)
!4107 = !DILocation(line: 170, column: 2, scope: !4085)
!4108 = !DILocation(line: 170, column: 16, scope: !4085)
!4109 = !DILocation(line: 170, column: 23, scope: !4085)
!4110 = !DILocation(line: 170, column: 22, scope: !4085)
!4111 = !DILocation(line: 172, column: 12, scope: !4085)
!4112 = !DILocation(line: 172, column: 18, scope: !4085)
!4113 = !DILocation(line: 172, column: 16, scope: !4085)
!4114 = !DILocation(line: 172, column: 10, scope: !4085)
!4115 = !DILocation(line: 172, column: 9, scope: !4085)
!4116 = !DILocation(line: 173, column: 1, scope: !4085)
!4117 = !DILocation(line: 172, column: 2, scope: !4085)
!4118 = distinct !DISubprogram(name: "_test_bit", scope: !4119, file: !4119, line: 139, type: !4087, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4120)
!4119 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4120 = !{!4121, !4122}
!4121 = !DILocalVariable(name: "nr", arg: 1, scope: !4118, file: !4119, line: 139, type: !84)
!4122 = !DILocalVariable(name: "addr", arg: 2, scope: !4118, file: !4119, line: 139, type: !4089)
!4123 = !DILocation(line: 139, column: 25, scope: !4118)
!4124 = !DILocation(line: 139, column: 59, scope: !4118)
!4125 = !DILocation(line: 141, column: 25, scope: !4118)
!4126 = !DILocation(line: 141, column: 32, scope: !4118)
!4127 = !DILocation(line: 141, column: 30, scope: !4118)
!4128 = !DILocation(line: 141, column: 2, scope: !4118)
!4129 = !DILocation(line: 142, column: 23, scope: !4118)
!4130 = !DILocation(line: 142, column: 27, scope: !4118)
!4131 = !DILocation(line: 142, column: 9, scope: !4118)
!4132 = !DILocation(line: 142, column: 2, scope: !4118)
!4133 = !DISubprogram(name: "dma_fence_signal", scope: !66, file: !66, line: 390, type: !4134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!147, !3242}
!4136 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4034, file: !4034, line: 66, type: !4035, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4137)
!4137 = !{!4138, !4139}
!4138 = !DILocalVariable(name: "v", arg: 1, scope: !4136, file: !4034, line: 66, type: !4037)
!4139 = !DILocalVariable(name: "size", arg: 2, scope: !4136, file: !4034, line: 66, type: !719)
!4140 = !DILocation(line: 66, column: 73, scope: !4136)
!4141 = !DILocation(line: 66, column: 83, scope: !4136)
!4142 = !DILocation(line: 68, column: 19, scope: !4136)
!4143 = !DILocation(line: 68, column: 22, scope: !4136)
!4144 = !DILocation(line: 68, column: 2, scope: !4136)
!4145 = !DILocation(line: 69, column: 2, scope: !4136)
!4146 = !DILocation(line: 70, column: 1, scope: !4136)
!4147 = distinct !DISubprogram(name: "arch_test_bit", scope: !4051, file: !4051, line: 237, type: !4087, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4148)
!4148 = !{!4149, !4150}
!4149 = !DILocalVariable(name: "nr", arg: 1, scope: !4147, file: !4051, line: 237, type: !84)
!4150 = !DILocalVariable(name: "addr", arg: 2, scope: !4147, file: !4051, line: 237, type: !4089)
!4151 = !DILocation(line: 237, column: 29, scope: !4147)
!4152 = !DILocation(line: 237, column: 63, scope: !4147)
!4153 = !DILocation(line: 239, column: 30, scope: !4147)
!4154 = !DILocation(line: 239, column: 9, scope: !4147)
!4155 = !DILocation(line: 239, column: 54, scope: !4147)
!4156 = !DILocation(line: 239, column: 58, scope: !4147)
!4157 = !DILocation(line: 239, column: 36, scope: !4147)
!4158 = !DILocation(line: 240, column: 26, scope: !4147)
!4159 = !DILocation(line: 240, column: 30, scope: !4147)
!4160 = !DILocation(line: 240, column: 8, scope: !4147)
!4161 = !DILocation(line: 239, column: 2, scope: !4147)
!4162 = distinct !DISubprogram(name: "kasan_check_read", scope: !4064, file: !4064, line: 40, type: !4065, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4163)
!4163 = !{!4164, !4165}
!4164 = !DILocalVariable(name: "p", arg: 1, scope: !4162, file: !4064, line: 40, type: !4037)
!4165 = !DILocalVariable(name: "size", arg: 2, scope: !4162, file: !4064, line: 40, type: !7)
!4166 = !DILocation(line: 40, column: 58, scope: !4162)
!4167 = !DILocation(line: 40, column: 74, scope: !4162)
!4168 = !DILocation(line: 42, column: 2, scope: !4162)
!4169 = distinct !DISubprogram(name: "constant_test_bit", scope: !4051, file: !4051, line: 204, type: !4170, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4172)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!398, !677, !4089}
!4172 = !{!4173, !4174}
!4173 = !DILocalVariable(name: "nr", arg: 1, scope: !4169, file: !4051, line: 204, type: !677)
!4174 = !DILocalVariable(name: "addr", arg: 2, scope: !4169, file: !4051, line: 204, type: !4089)
!4175 = !DILocation(line: 204, column: 52, scope: !4169)
!4176 = !DILocation(line: 204, column: 86, scope: !4169)
!4177 = !DILocation(line: 206, column: 19, scope: !4169)
!4178 = !DILocation(line: 206, column: 22, scope: !4169)
!4179 = !DILocation(line: 206, column: 15, scope: !4169)
!4180 = !DILocation(line: 207, column: 4, scope: !4169)
!4181 = !DILocation(line: 207, column: 9, scope: !4169)
!4182 = !DILocation(line: 207, column: 12, scope: !4169)
!4183 = !DILocation(line: 206, column: 44, scope: !4169)
!4184 = !DILocation(line: 207, column: 37, scope: !4169)
!4185 = !DILocation(line: 206, column: 2, scope: !4169)
!4186 = distinct !DISubprogram(name: "variable_test_bit", scope: !4051, file: !4051, line: 224, type: !4170, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4187)
!4187 = !{!4188, !4189, !4190}
!4188 = !DILocalVariable(name: "nr", arg: 1, scope: !4186, file: !4051, line: 224, type: !677)
!4189 = !DILocalVariable(name: "addr", arg: 2, scope: !4186, file: !4051, line: 224, type: !4089)
!4190 = !DILocalVariable(name: "oldbit", scope: !4186, file: !4051, line: 226, type: !398)
!4191 = !DILocation(line: 224, column: 52, scope: !4186)
!4192 = !DILocation(line: 224, column: 86, scope: !4186)
!4193 = !DILocation(line: 226, column: 2, scope: !4186)
!4194 = !DILocation(line: 226, column: 7, scope: !4186)
!4195 = !DILocation(line: 231, column: 33, scope: !4186)
!4196 = !DILocation(line: 231, column: 46, scope: !4186)
!4197 = !DILocation(line: 228, column: 2, scope: !4186)
!4198 = !{i64 2148154658, i64 2148154732}
!4199 = !DILocation(line: 233, column: 9, scope: !4186)
!4200 = !DILocation(line: 234, column: 1, scope: !4186)
!4201 = !DILocation(line: 233, column: 2, scope: !4186)
!4202 = distinct !DISubprogram(name: "sync_file_ioctl_merge", scope: !3, file: !3, line: 207, type: !4203, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!677, !95, !84}
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4221, !4222, !4223}
!4206 = !DILocalVariable(name: "sync_file", arg: 1, scope: !4202, file: !3, line: 207, type: !95)
!4207 = !DILocalVariable(name: "arg", arg: 2, scope: !4202, file: !3, line: 208, type: !84)
!4208 = !DILocalVariable(name: "fd", scope: !4202, file: !3, line: 210, type: !147)
!4209 = !DILocalVariable(name: "err", scope: !4202, file: !3, line: 211, type: !147)
!4210 = !DILocalVariable(name: "fence2", scope: !4202, file: !3, line: 212, type: !95)
!4211 = !DILocalVariable(name: "fence3", scope: !4202, file: !3, line: 212, type: !95)
!4212 = !DILocalVariable(name: "data", scope: !4202, file: !3, line: 213, type: !4213)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sync_merge_data", file: !4214, line: 30, size: 384, elements: !4215)
!4214 = !DIFile(filename: "./include/uapi/linux/sync_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6d6fb021aa92d57453ccd769f1b2f7b9")
!4215 = !{!4216, !4217, !4218, !4219, !4220}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4213, file: !4214, line: 31, baseType: !2824, size: 256)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "fd2", scope: !4213, file: !4214, line: 32, baseType: !322, size: 32, offset: 256)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !4213, file: !4214, line: 33, baseType: !322, size: 32, offset: 288)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4213, file: !4214, line: 34, baseType: !362, size: 32, offset: 320)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4213, file: !4214, line: 35, baseType: !362, size: 32, offset: 352)
!4221 = !DILabel(scope: !4202, name: "err_put_fence3", file: !3, line: 251)
!4222 = !DILabel(scope: !4202, name: "err_put_fence2", file: !3, line: 254)
!4223 = !DILabel(scope: !4202, name: "err_put_fd", file: !3, line: 257)
!4224 = !DILocation(line: 207, column: 53, scope: !4202)
!4225 = !DILocation(line: 208, column: 21, scope: !4202)
!4226 = !DILocation(line: 210, column: 2, scope: !4202)
!4227 = !DILocation(line: 210, column: 6, scope: !4202)
!4228 = !DILocation(line: 210, column: 11, scope: !4202)
!4229 = !DILocation(line: 211, column: 2, scope: !4202)
!4230 = !DILocation(line: 211, column: 6, scope: !4202)
!4231 = !DILocation(line: 212, column: 2, scope: !4202)
!4232 = !DILocation(line: 212, column: 20, scope: !4202)
!4233 = !DILocation(line: 212, column: 29, scope: !4202)
!4234 = !DILocation(line: 213, column: 2, scope: !4202)
!4235 = !DILocation(line: 213, column: 25, scope: !4202)
!4236 = !DILocation(line: 215, column: 6, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 215, column: 6)
!4238 = !DILocation(line: 215, column: 9, scope: !4237)
!4239 = !DILocation(line: 215, column: 6, scope: !4202)
!4240 = !DILocation(line: 216, column: 10, scope: !4237)
!4241 = !DILocation(line: 216, column: 3, scope: !4237)
!4242 = !DILocation(line: 218, column: 43, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 218, column: 6)
!4244 = !DILocation(line: 218, column: 28, scope: !4243)
!4245 = !DILocation(line: 218, column: 6, scope: !4243)
!4246 = !DILocation(line: 218, column: 6, scope: !4202)
!4247 = !DILocation(line: 219, column: 7, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 218, column: 63)
!4249 = !DILocation(line: 220, column: 3, scope: !4248)
!4250 = !DILocation(line: 223, column: 11, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 223, column: 6)
!4252 = !DILocation(line: 223, column: 6, scope: !4251)
!4253 = !DILocation(line: 223, column: 17, scope: !4251)
!4254 = !DILocation(line: 223, column: 25, scope: !4251)
!4255 = !DILocation(line: 223, column: 20, scope: !4251)
!4256 = !DILocation(line: 223, column: 6, scope: !4202)
!4257 = !DILocation(line: 224, column: 7, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 223, column: 30)
!4259 = !DILocation(line: 225, column: 3, scope: !4258)
!4260 = !DILocation(line: 228, column: 32, scope: !4202)
!4261 = !DILocation(line: 228, column: 11, scope: !4202)
!4262 = !DILocation(line: 228, column: 9, scope: !4202)
!4263 = !DILocation(line: 229, column: 7, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 229, column: 6)
!4265 = !DILocation(line: 229, column: 6, scope: !4202)
!4266 = !DILocation(line: 230, column: 7, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 229, column: 15)
!4268 = !DILocation(line: 231, column: 3, scope: !4267)
!4269 = !DILocation(line: 234, column: 7, scope: !4202)
!4270 = !DILocation(line: 234, column: 2, scope: !4202)
!4271 = !DILocation(line: 234, column: 35, scope: !4202)
!4272 = !DILocation(line: 235, column: 32, scope: !4202)
!4273 = !DILocation(line: 235, column: 27, scope: !4202)
!4274 = !DILocation(line: 235, column: 38, scope: !4202)
!4275 = !DILocation(line: 235, column: 49, scope: !4202)
!4276 = !DILocation(line: 235, column: 11, scope: !4202)
!4277 = !DILocation(line: 235, column: 9, scope: !4202)
!4278 = !DILocation(line: 236, column: 7, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 236, column: 6)
!4280 = !DILocation(line: 236, column: 6, scope: !4202)
!4281 = !DILocation(line: 237, column: 7, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 236, column: 15)
!4283 = !DILocation(line: 238, column: 3, scope: !4282)
!4284 = !DILocation(line: 241, column: 15, scope: !4202)
!4285 = !DILocation(line: 241, column: 7, scope: !4202)
!4286 = !DILocation(line: 241, column: 13, scope: !4202)
!4287 = !DILocation(line: 242, column: 34, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 242, column: 6)
!4289 = !DILocation(line: 242, column: 19, scope: !4288)
!4290 = !DILocation(line: 242, column: 6, scope: !4288)
!4291 = !DILocation(line: 242, column: 6, scope: !4202)
!4292 = !DILocation(line: 243, column: 7, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 242, column: 61)
!4294 = !DILocation(line: 244, column: 3, scope: !4293)
!4295 = !DILocation(line: 247, column: 13, scope: !4202)
!4296 = !DILocation(line: 247, column: 17, scope: !4202)
!4297 = !DILocation(line: 247, column: 25, scope: !4202)
!4298 = !DILocation(line: 247, column: 2, scope: !4202)
!4299 = !DILocation(line: 248, column: 7, scope: !4202)
!4300 = !DILocation(line: 248, column: 15, scope: !4202)
!4301 = !DILocation(line: 248, column: 2, scope: !4202)
!4302 = !DILocation(line: 249, column: 2, scope: !4202)
!4303 = !DILocation(line: 251, column: 1, scope: !4202)
!4304 = !DILocation(line: 252, column: 7, scope: !4202)
!4305 = !DILocation(line: 252, column: 15, scope: !4202)
!4306 = !DILocation(line: 252, column: 2, scope: !4202)
!4307 = !DILocation(line: 254, column: 1, scope: !4202)
!4308 = !DILocation(line: 255, column: 7, scope: !4202)
!4309 = !DILocation(line: 255, column: 15, scope: !4202)
!4310 = !DILocation(line: 255, column: 2, scope: !4202)
!4311 = !DILocation(line: 257, column: 1, scope: !4202)
!4312 = !DILocation(line: 258, column: 16, scope: !4202)
!4313 = !DILocation(line: 258, column: 2, scope: !4202)
!4314 = !DILocation(line: 259, column: 9, scope: !4202)
!4315 = !DILocation(line: 259, column: 2, scope: !4202)
!4316 = !DILocation(line: 260, column: 1, scope: !4202)
!4317 = distinct !DISubprogram(name: "sync_file_ioctl_fence_info", scope: !3, file: !3, line: 279, type: !4203, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4318)
!4318 = !{!4319, !4320, !4321, !4330, !4337, !4346, !4347, !4348, !4349, !4350, !4354, !4358, !4359, !4360}
!4319 = !DILocalVariable(name: "sync_file", arg: 1, scope: !4317, file: !3, line: 279, type: !95)
!4320 = !DILocalVariable(name: "arg", arg: 2, scope: !4317, file: !3, line: 280, type: !84)
!4321 = !DILocalVariable(name: "fence_info", scope: !4317, file: !3, line: 282, type: !4322)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sync_fence_info", file: !4214, line: 46, size: 640, elements: !4324)
!4324 = !{!4325, !4326, !4327, !4328, !4329}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "obj_name", scope: !4323, file: !4214, line: 47, baseType: !2824, size: 256)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4323, file: !4214, line: 48, baseType: !2824, size: 256, offset: 256)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4323, file: !4214, line: 49, baseType: !322, size: 32, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4323, file: !4214, line: 50, baseType: !362, size: 32, offset: 544)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_ns", scope: !4323, file: !4214, line: 51, baseType: !305, size: 64, offset: 576)
!4330 = !DILocalVariable(name: "iter", scope: !4317, file: !3, line: 283, type: !4331)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_unwrap", file: !4332, line: 18, size: 192, elements: !4333)
!4332 = !DIFile(filename: "./include/linux/dma-fence-unwrap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "733283d63a464d6be1d3b78a63ef7d10")
!4333 = !{!4334, !4335, !4336}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !4331, file: !4332, line: 22, baseType: !3242, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !4331, file: !4332, line: 26, baseType: !3242, size: 64, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4331, file: !4332, line: 30, baseType: !7, size: 32, offset: 128)
!4337 = !DILocalVariable(name: "info", scope: !4317, file: !3, line: 284, type: !4338)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sync_file_info", file: !4214, line: 69, size: 448, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4343, !4344, !4345}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4338, file: !4214, line: 70, baseType: !2824, size: 256)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4338, file: !4214, line: 71, baseType: !322, size: 32, offset: 256)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4338, file: !4214, line: 72, baseType: !362, size: 32, offset: 288)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !4338, file: !4214, line: 73, baseType: !362, size: 32, offset: 320)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4338, file: !4214, line: 74, baseType: !362, size: 32, offset: 352)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fence_info", scope: !4338, file: !4214, line: 76, baseType: !305, size: 64, offset: 384)
!4346 = !DILocalVariable(name: "num_fences", scope: !4317, file: !3, line: 285, type: !7)
!4347 = !DILocalVariable(name: "fence", scope: !4317, file: !3, line: 286, type: !3242)
!4348 = !DILocalVariable(name: "ret", scope: !4317, file: !3, line: 287, type: !147)
!4349 = !DILocalVariable(name: "size", scope: !4317, file: !3, line: 288, type: !362)
!4350 = !DILocalVariable(name: "status", scope: !4351, file: !3, line: 323, type: !147)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 322, column: 60)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 322, column: 2)
!4353 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 322, column: 2)
!4354 = !DILocalVariable(name: "__dummy", scope: !4355, file: !3, line: 329, type: !304)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 329, column: 19)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 329, column: 19)
!4357 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 329, column: 6)
!4358 = !DILocalVariable(name: "__dummy2", scope: !4355, file: !3, line: 329, type: !305)
!4359 = !DILabel(scope: !4317, name: "no_fences", file: !3, line: 335)
!4360 = !DILabel(scope: !4317, name: "out", file: !3, line: 344)
!4361 = !DILocation(line: 279, column: 58, scope: !4317)
!4362 = !DILocation(line: 280, column: 26, scope: !4317)
!4363 = !DILocation(line: 282, column: 2, scope: !4317)
!4364 = !DILocation(line: 282, column: 26, scope: !4317)
!4365 = !DILocation(line: 283, column: 2, scope: !4317)
!4366 = !DILocation(line: 283, column: 26, scope: !4317)
!4367 = !DILocation(line: 284, column: 2, scope: !4317)
!4368 = !DILocation(line: 284, column: 24, scope: !4317)
!4369 = !DILocation(line: 285, column: 2, scope: !4317)
!4370 = !DILocation(line: 285, column: 15, scope: !4317)
!4371 = !DILocation(line: 286, column: 2, scope: !4317)
!4372 = !DILocation(line: 286, column: 20, scope: !4317)
!4373 = !DILocation(line: 287, column: 2, scope: !4317)
!4374 = !DILocation(line: 287, column: 6, scope: !4317)
!4375 = !DILocation(line: 288, column: 2, scope: !4317)
!4376 = !DILocation(line: 288, column: 8, scope: !4317)
!4377 = !DILocation(line: 290, column: 43, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 290, column: 6)
!4379 = !DILocation(line: 290, column: 28, scope: !4378)
!4380 = !DILocation(line: 290, column: 6, scope: !4378)
!4381 = !DILocation(line: 290, column: 6, scope: !4317)
!4382 = !DILocation(line: 291, column: 3, scope: !4378)
!4383 = !DILocation(line: 293, column: 11, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 293, column: 6)
!4385 = !DILocation(line: 293, column: 6, scope: !4384)
!4386 = !DILocation(line: 293, column: 17, scope: !4384)
!4387 = !DILocation(line: 293, column: 25, scope: !4384)
!4388 = !DILocation(line: 293, column: 20, scope: !4384)
!4389 = !DILocation(line: 293, column: 6, scope: !4317)
!4390 = !DILocation(line: 294, column: 3, scope: !4384)
!4391 = !DILocation(line: 296, column: 13, scope: !4317)
!4392 = !DILocation(line: 297, column: 2, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 297, column: 2)
!4394 = !DILocation(line: 297, column: 2, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 297, column: 2)
!4396 = !DILocation(line: 298, column: 3, scope: !4395)
!4397 = distinct !{!4397, !4392, !4398, !4399, !4400}
!4398 = !DILocation(line: 298, column: 5, scope: !4393)
!4399 = !{!"llvm.loop.mustprogress"}
!4400 = !{!"llvm.loop.unroll.disable"}
!4401 = !DILocation(line: 306, column: 12, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 306, column: 6)
!4403 = !DILocation(line: 306, column: 7, scope: !4402)
!4404 = !DILocation(line: 306, column: 6, scope: !4317)
!4405 = !DILocation(line: 307, column: 38, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 306, column: 24)
!4407 = !DILocation(line: 307, column: 49, scope: !4406)
!4408 = !DILocation(line: 307, column: 17, scope: !4406)
!4409 = !DILocation(line: 307, column: 8, scope: !4406)
!4410 = !DILocation(line: 307, column: 15, scope: !4406)
!4411 = !DILocation(line: 308, column: 3, scope: !4406)
!4412 = !DILocation(line: 310, column: 8, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 309, column: 9)
!4414 = !DILocation(line: 310, column: 15, scope: !4413)
!4415 = !DILocation(line: 313, column: 11, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 313, column: 6)
!4417 = !DILocation(line: 313, column: 24, scope: !4416)
!4418 = !DILocation(line: 313, column: 22, scope: !4416)
!4419 = !DILocation(line: 313, column: 6, scope: !4317)
!4420 = !DILocation(line: 314, column: 3, scope: !4416)
!4421 = !DILocation(line: 316, column: 9, scope: !4317)
!4422 = !DILocation(line: 316, column: 20, scope: !4317)
!4423 = !DILocation(line: 316, column: 7, scope: !4317)
!4424 = !DILocation(line: 317, column: 23, scope: !4317)
!4425 = !DILocation(line: 317, column: 15, scope: !4317)
!4426 = !DILocation(line: 317, column: 13, scope: !4317)
!4427 = !DILocation(line: 318, column: 7, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 318, column: 6)
!4429 = !DILocation(line: 318, column: 6, scope: !4317)
!4430 = !DILocation(line: 319, column: 3, scope: !4428)
!4431 = !DILocation(line: 321, column: 13, scope: !4317)
!4432 = !DILocation(line: 322, column: 2, scope: !4353)
!4433 = !DILocation(line: 322, column: 2, scope: !4352)
!4434 = !DILocation(line: 323, column: 3, scope: !4351)
!4435 = !DILocation(line: 323, column: 7, scope: !4351)
!4436 = !DILocation(line: 325, column: 33, scope: !4351)
!4437 = !DILocation(line: 325, column: 41, scope: !4351)
!4438 = !DILocation(line: 325, column: 62, scope: !4351)
!4439 = !DILocation(line: 325, column: 12, scope: !4351)
!4440 = !DILocation(line: 325, column: 10, scope: !4351)
!4441 = !DILocation(line: 326, column: 22, scope: !4351)
!4442 = !DILocation(line: 326, column: 29, scope: !4351)
!4443 = !DILocation(line: 326, column: 17, scope: !4351)
!4444 = !DILocation(line: 326, column: 41, scope: !4351)
!4445 = !DILocation(line: 326, column: 50, scope: !4351)
!4446 = !DILocation(line: 326, column: 8, scope: !4351)
!4447 = !DILocation(line: 326, column: 15, scope: !4351)
!4448 = !DILocation(line: 327, column: 2, scope: !4352)
!4449 = !DILocation(line: 327, column: 2, scope: !4351)
!4450 = distinct !{!4450, !4432, !4451, !4399, !4400}
!4451 = !DILocation(line: 327, column: 2, scope: !4353)
!4452 = !DILocation(line: 329, column: 19, scope: !4355)
!4453 = !DILocation(line: 329, column: 19, scope: !4356)
!4454 = !DILocation(line: 329, column: 58, scope: !4357)
!4455 = !DILocation(line: 330, column: 5, scope: !4357)
!4456 = !DILocation(line: 329, column: 6, scope: !4357)
!4457 = !DILocation(line: 329, column: 6, scope: !4317)
!4458 = !DILocation(line: 331, column: 7, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 330, column: 12)
!4460 = !DILocation(line: 332, column: 3, scope: !4459)
!4461 = !DILocation(line: 330, column: 9, scope: !4357)
!4462 = !DILocation(line: 335, column: 1, scope: !4317)
!4463 = !DILocation(line: 336, column: 21, scope: !4317)
!4464 = !DILocation(line: 336, column: 37, scope: !4317)
!4465 = !DILocation(line: 336, column: 32, scope: !4317)
!4466 = !DILocation(line: 336, column: 2, scope: !4317)
!4467 = !DILocation(line: 337, column: 20, scope: !4317)
!4468 = !DILocation(line: 337, column: 7, scope: !4317)
!4469 = !DILocation(line: 337, column: 18, scope: !4317)
!4470 = !DILocation(line: 339, column: 34, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 339, column: 6)
!4472 = !DILocation(line: 339, column: 19, scope: !4471)
!4473 = !DILocation(line: 339, column: 6, scope: !4471)
!4474 = !DILocation(line: 339, column: 6, scope: !4317)
!4475 = !DILocation(line: 340, column: 7, scope: !4471)
!4476 = !DILocation(line: 340, column: 3, scope: !4471)
!4477 = !DILocation(line: 342, column: 7, scope: !4471)
!4478 = !DILocation(line: 339, column: 58, scope: !4471)
!4479 = !DILocation(line: 344, column: 1, scope: !4317)
!4480 = !DILocation(line: 345, column: 8, scope: !4317)
!4481 = !DILocation(line: 345, column: 2, scope: !4317)
!4482 = !DILocation(line: 347, column: 9, scope: !4317)
!4483 = !DILocation(line: 347, column: 2, scope: !4317)
!4484 = !DILocation(line: 348, column: 1, scope: !4317)
!4485 = !DISubprogram(name: "get_unused_fd_flags", scope: !3490, file: !3490, line: 91, type: !4486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!147, !7}
!4488 = distinct !DISubprogram(name: "copy_from_user", scope: !4489, file: !4489, line: 180, type: !4490, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4492)
!4489 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!84, !81, !3565, !84}
!4492 = !{!4493, !4494, !4495}
!4493 = !DILocalVariable(name: "to", arg: 1, scope: !4488, file: !4489, line: 180, type: !81)
!4494 = !DILocalVariable(name: "from", arg: 2, scope: !4488, file: !4489, line: 180, type: !3565)
!4495 = !DILocalVariable(name: "n", arg: 3, scope: !4488, file: !4489, line: 180, type: !84)
!4496 = !DILocation(line: 180, column: 22, scope: !4488)
!4497 = !DILocation(line: 180, column: 45, scope: !4488)
!4498 = !DILocation(line: 180, column: 65, scope: !4488)
!4499 = !DILocation(line: 182, column: 22, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4488, file: !4489, line: 182, column: 6)
!4501 = !DILocation(line: 182, column: 26, scope: !4500)
!4502 = !DILocation(line: 182, column: 6, scope: !4500)
!4503 = !DILocation(line: 182, column: 6, scope: !4488)
!4504 = !DILocation(line: 183, column: 23, scope: !4500)
!4505 = !DILocation(line: 183, column: 27, scope: !4500)
!4506 = !DILocation(line: 183, column: 33, scope: !4500)
!4507 = !DILocation(line: 183, column: 7, scope: !4500)
!4508 = !DILocation(line: 183, column: 5, scope: !4500)
!4509 = !DILocation(line: 183, column: 3, scope: !4500)
!4510 = !DILocation(line: 184, column: 9, scope: !4488)
!4511 = !DILocation(line: 184, column: 2, scope: !4488)
!4512 = distinct !DISubprogram(name: "sync_file_merge", scope: !3, file: !3, line: 159, type: !4513, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4515)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!95, !401, !95, !95}
!4515 = !{!4516, !4517, !4518, !4519, !4520, !4521, !4524}
!4516 = !DILocalVariable(name: "name", arg: 1, scope: !4512, file: !3, line: 159, type: !401)
!4517 = !DILocalVariable(name: "a", arg: 2, scope: !4512, file: !3, line: 159, type: !95)
!4518 = !DILocalVariable(name: "b", arg: 3, scope: !4512, file: !3, line: 160, type: !95)
!4519 = !DILocalVariable(name: "sync_file", scope: !4512, file: !3, line: 162, type: !95)
!4520 = !DILocalVariable(name: "fence", scope: !4512, file: !3, line: 163, type: !3242)
!4521 = !DILocalVariable(name: "__f", scope: !4522, file: !3, line: 169, type: !4523)
!4522 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 169, column: 10)
!4523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3242, size: 128, elements: !1855)
!4524 = !DILocalVariable(name: "__c", scope: !4522, file: !3, line: 169, type: !4525)
!4525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4331, size: 384, elements: !1855)
!4526 = !DILocation(line: 159, column: 54, scope: !4512)
!4527 = !DILocation(line: 159, column: 78, scope: !4512)
!4528 = !DILocation(line: 160, column: 25, scope: !4512)
!4529 = !DILocation(line: 162, column: 2, scope: !4512)
!4530 = !DILocation(line: 162, column: 20, scope: !4512)
!4531 = !DILocation(line: 163, column: 2, scope: !4512)
!4532 = !DILocation(line: 163, column: 20, scope: !4512)
!4533 = !DILocation(line: 165, column: 14, scope: !4512)
!4534 = !DILocation(line: 165, column: 12, scope: !4512)
!4535 = !DILocation(line: 166, column: 7, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 166, column: 6)
!4537 = !DILocation(line: 166, column: 6, scope: !4512)
!4538 = !DILocation(line: 167, column: 3, scope: !4536)
!4539 = !DILocation(line: 169, column: 10, scope: !4522)
!4540 = !DILocation(line: 169, column: 10, scope: !4512)
!4541 = !DILocation(line: 169, column: 8, scope: !4512)
!4542 = !DILocation(line: 170, column: 7, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 170, column: 6)
!4544 = !DILocation(line: 170, column: 6, scope: !4512)
!4545 = !DILocation(line: 171, column: 8, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 170, column: 14)
!4547 = !DILocation(line: 171, column: 19, scope: !4546)
!4548 = !DILocation(line: 171, column: 3, scope: !4546)
!4549 = !DILocation(line: 172, column: 3, scope: !4546)
!4550 = !DILocation(line: 174, column: 21, scope: !4512)
!4551 = !DILocation(line: 174, column: 2, scope: !4512)
!4552 = !DILocation(line: 174, column: 13, scope: !4512)
!4553 = !DILocation(line: 174, column: 19, scope: !4512)
!4554 = !DILocation(line: 175, column: 10, scope: !4512)
!4555 = !DILocation(line: 175, column: 21, scope: !4512)
!4556 = !DILocation(line: 175, column: 32, scope: !4512)
!4557 = !DILocation(line: 175, column: 2, scope: !4512)
!4558 = !DILocation(line: 176, column: 9, scope: !4512)
!4559 = !DILocation(line: 176, column: 2, scope: !4512)
!4560 = !DILocation(line: 177, column: 1, scope: !4512)
!4561 = distinct !DISubprogram(name: "copy_to_user", scope: !4489, file: !4489, line: 188, type: !4490, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4562)
!4562 = !{!4563, !4564, !4565}
!4563 = !DILocalVariable(name: "to", arg: 1, scope: !4561, file: !4489, line: 188, type: !81)
!4564 = !DILocalVariable(name: "from", arg: 2, scope: !4561, file: !4489, line: 188, type: !3565)
!4565 = !DILocalVariable(name: "n", arg: 3, scope: !4561, file: !4489, line: 188, type: !84)
!4566 = !DILocation(line: 188, column: 27, scope: !4561)
!4567 = !DILocation(line: 188, column: 43, scope: !4561)
!4568 = !DILocation(line: 188, column: 63, scope: !4561)
!4569 = !DILocation(line: 190, column: 22, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4561, file: !4489, line: 190, column: 6)
!4571 = !DILocation(line: 190, column: 28, scope: !4570)
!4572 = !DILocation(line: 190, column: 6, scope: !4570)
!4573 = !DILocation(line: 190, column: 6, scope: !4561)
!4574 = !DILocation(line: 191, column: 21, scope: !4570)
!4575 = !DILocation(line: 191, column: 25, scope: !4570)
!4576 = !DILocation(line: 191, column: 31, scope: !4570)
!4577 = !DILocation(line: 191, column: 7, scope: !4570)
!4578 = !DILocation(line: 191, column: 5, scope: !4570)
!4579 = !DILocation(line: 191, column: 3, scope: !4570)
!4580 = !DILocation(line: 192, column: 9, scope: !4561)
!4581 = !DILocation(line: 192, column: 2, scope: !4561)
!4582 = !DISubprogram(name: "fd_install", scope: !3490, file: !3490, line: 97, type: !4583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{null, !7, !100}
!4585 = !DISubprogram(name: "put_unused_fd", scope: !3490, file: !3490, line: 92, type: !4586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{null, !7}
!4588 = distinct !DISubprogram(name: "check_copy_size", scope: !3342, file: !3342, line: 237, type: !4589, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4591)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!398, !3565, !719, !398}
!4591 = !{!4592, !4593, !4594, !4595, !4596, !4599}
!4592 = !DILocalVariable(name: "addr", arg: 1, scope: !4588, file: !3342, line: 237, type: !3565)
!4593 = !DILocalVariable(name: "bytes", arg: 2, scope: !4588, file: !3342, line: 237, type: !719)
!4594 = !DILocalVariable(name: "is_source", arg: 3, scope: !4588, file: !3342, line: 237, type: !398)
!4595 = !DILocalVariable(name: "sz", scope: !4588, file: !3342, line: 239, type: !147)
!4596 = !DILocalVariable(name: "__ret_warn_on", scope: !4597, file: !3342, line: 249, type: !147)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !3342, line: 249, column: 6)
!4598 = distinct !DILexicalBlock(scope: !4588, file: !3342, line: 249, column: 6)
!4599 = !DILocalVariable(name: "__flags", scope: !4600, file: !3342, line: 249, type: !147)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !3342, line: 249, column: 6)
!4601 = distinct !DILexicalBlock(scope: !4597, file: !3342, line: 249, column: 6)
!4602 = !DILocation(line: 237, column: 29, scope: !4588)
!4603 = !DILocation(line: 237, column: 42, scope: !4588)
!4604 = !DILocation(line: 237, column: 54, scope: !4588)
!4605 = !DILocation(line: 239, column: 2, scope: !4588)
!4606 = !DILocation(line: 239, column: 6, scope: !4588)
!4607 = !DILocation(line: 239, column: 33, scope: !4588)
!4608 = !DILocation(line: 239, column: 11, scope: !4588)
!4609 = !DILocation(line: 240, column: 6, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4588, file: !3342, line: 240, column: 6)
!4611 = !DILocation(line: 0, scope: !4610)
!4612 = !DILocation(line: 240, column: 6, scope: !4588)
!4613 = !DILocation(line: 241, column: 29, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4615, file: !3342, line: 241, column: 7)
!4615 = distinct !DILexicalBlock(scope: !4610, file: !3342, line: 240, column: 39)
!4616 = !DILocation(line: 241, column: 8, scope: !4614)
!4617 = !DILocation(line: 241, column: 7, scope: !4615)
!4618 = !DILocation(line: 242, column: 18, scope: !4614)
!4619 = !DILocation(line: 242, column: 22, scope: !4614)
!4620 = !DILocation(line: 242, column: 4, scope: !4614)
!4621 = !DILocation(line: 243, column: 12, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4614, file: !3342, line: 243, column: 12)
!4623 = !DILocation(line: 243, column: 12, scope: !4614)
!4624 = !DILocation(line: 244, column: 4, scope: !4622)
!4625 = !{i32 975212}
!4626 = !DILocation(line: 246, column: 4, scope: !4622)
!4627 = !{i32 975241}
!4628 = !DILocation(line: 247, column: 3, scope: !4615)
!4629 = !DILocation(line: 249, column: 6, scope: !4597)
!4630 = !DILocation(line: 249, column: 6, scope: !4601)
!4631 = !DILocation(line: 249, column: 6, scope: !4600)
!4632 = !DILocation(line: 249, column: 6, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4600, file: !3342, line: 249, column: 6)
!4634 = !DILocation(line: 249, column: 6, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4600, file: !3342, line: 249, column: 6)
!4636 = !{i64 2149622744, i64 2149622773, i64 2149622819, i64 2149622877, i64 2149622931, i64 2149622985, i64 2149623040, i64 2149623071, i64 2149623379, i64 2149623385, i64 2149623432, i64 2149623455, i64 2149623481}
!4637 = !DILocation(line: 249, column: 6, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4600, file: !3342, line: 249, column: 6)
!4639 = !DILocation(line: 249, column: 6, scope: !4598)
!4640 = !DILocation(line: 249, column: 6, scope: !4588)
!4641 = !DILocation(line: 250, column: 3, scope: !4598)
!4642 = !DILocation(line: 251, column: 20, scope: !4588)
!4643 = !DILocation(line: 251, column: 26, scope: !4588)
!4644 = !DILocation(line: 251, column: 33, scope: !4588)
!4645 = !DILocation(line: 251, column: 2, scope: !4588)
!4646 = !DILocation(line: 252, column: 2, scope: !4588)
!4647 = !DILocation(line: 253, column: 1, scope: !4588)
!4648 = !DISubprogram(name: "_copy_from_user", scope: !4489, file: !4489, line: 158, type: !4490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4649 = distinct !DISubprogram(name: "copy_overflow", scope: !3342, file: !3342, line: 230, type: !4650, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4652)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{null, !147, !84}
!4652 = !{!4653, !4654}
!4653 = !DILocalVariable(name: "size", arg: 1, scope: !4649, file: !3342, line: 230, type: !147)
!4654 = !DILocalVariable(name: "count", arg: 2, scope: !4649, file: !3342, line: 230, type: !84)
!4655 = !DILocation(line: 230, column: 38, scope: !4649)
!4656 = !DILocation(line: 230, column: 58, scope: !4649)
!4657 = !DILocation(line: 233, column: 19, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4649, file: !3342, line: 232, column: 6)
!4659 = !DILocation(line: 233, column: 25, scope: !4658)
!4660 = !DILocation(line: 233, column: 3, scope: !4658)
!4661 = !DILocation(line: 234, column: 1, scope: !4649)
!4662 = !DISubprogram(name: "__bad_copy_from", scope: !3342, file: !3342, line: 224, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4663 = !DISubprogram(name: "__bad_copy_to", scope: !3342, file: !3342, line: 226, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4664 = distinct !DISubprogram(name: "check_object_size", scope: !3342, file: !3342, line: 218, type: !4665, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4667)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{null, !3565, !84, !398}
!4667 = !{!4668, !4669, !4670}
!4668 = !DILocalVariable(name: "ptr", arg: 1, scope: !4664, file: !3342, line: 218, type: !3565)
!4669 = !DILocalVariable(name: "n", arg: 2, scope: !4664, file: !3342, line: 218, type: !84)
!4670 = !DILocalVariable(name: "to_user", arg: 3, scope: !4664, file: !3342, line: 219, type: !398)
!4671 = !DILocation(line: 218, column: 50, scope: !4664)
!4672 = !DILocation(line: 218, column: 69, scope: !4664)
!4673 = !DILocation(line: 219, column: 15, scope: !4664)
!4674 = !DILocation(line: 220, column: 3, scope: !4664)
!4675 = !DISubprogram(name: "__copy_overflow", scope: !3342, file: !3342, line: 228, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4676 = !DISubprogram(name: "__dma_fence_unwrap_merge", scope: !4332, file: !4332, line: 51, type: !4677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!3242, !7, !4679, !4680}
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4681 = !DISubprogram(name: "_copy_to_user", scope: !4489, file: !4489, line: 176, type: !4490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4682 = !DISubprogram(name: "dma_fence_unwrap_first", scope: !4332, file: !4332, line: 33, type: !4683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!3242, !3242, !4680}
!4685 = !DISubprogram(name: "dma_fence_unwrap_next", scope: !4332, file: !4332, line: 35, type: !4686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!3242, !4680}
!4688 = !DISubprogram(name: "dma_fence_get_status", scope: !66, file: !66, line: 564, type: !4134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4689 = distinct !DISubprogram(name: "sync_fill_fence_info", scope: !3, file: !3, line: 262, type: !4690, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4692)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!147, !3242, !4322}
!4692 = !{!4693, !4694}
!4693 = !DILocalVariable(name: "fence", arg: 1, scope: !4689, file: !3, line: 262, type: !3242)
!4694 = !DILocalVariable(name: "info", arg: 2, scope: !4689, file: !3, line: 263, type: !4322)
!4695 = !DILocation(line: 262, column: 51, scope: !4689)
!4696 = !DILocation(line: 263, column: 30, scope: !4689)
!4697 = !DILocation(line: 265, column: 10, scope: !4689)
!4698 = !DILocation(line: 265, column: 16, scope: !4689)
!4699 = !DILocation(line: 265, column: 26, scope: !4689)
!4700 = !DILocation(line: 265, column: 33, scope: !4689)
!4701 = !DILocation(line: 265, column: 38, scope: !4689)
!4702 = !DILocation(line: 265, column: 56, scope: !4689)
!4703 = !DILocation(line: 265, column: 2, scope: !4689)
!4704 = !DILocation(line: 267, column: 10, scope: !4689)
!4705 = !DILocation(line: 267, column: 16, scope: !4689)
!4706 = !DILocation(line: 267, column: 29, scope: !4689)
!4707 = !DILocation(line: 267, column: 36, scope: !4689)
!4708 = !DILocation(line: 267, column: 41, scope: !4689)
!4709 = !DILocation(line: 267, column: 57, scope: !4689)
!4710 = !DILocation(line: 267, column: 2, scope: !4689)
!4711 = !DILocation(line: 270, column: 38, scope: !4689)
!4712 = !DILocation(line: 270, column: 17, scope: !4689)
!4713 = !DILocation(line: 270, column: 2, scope: !4689)
!4714 = !DILocation(line: 270, column: 8, scope: !4689)
!4715 = !DILocation(line: 270, column: 15, scope: !4689)
!4716 = !DILocation(line: 272, column: 25, scope: !4689)
!4717 = !DILocation(line: 272, column: 3, scope: !4689)
!4718 = !DILocation(line: 273, column: 36, scope: !4689)
!4719 = !DILocation(line: 273, column: 16, scope: !4689)
!4720 = !DILocation(line: 273, column: 4, scope: !4689)
!4721 = !DILocation(line: 274, column: 4, scope: !4689)
!4722 = !DILocation(line: 271, column: 2, scope: !4689)
!4723 = !DILocation(line: 271, column: 8, scope: !4689)
!4724 = !DILocation(line: 271, column: 21, scope: !4689)
!4725 = !DILocation(line: 276, column: 9, scope: !4689)
!4726 = !DILocation(line: 276, column: 15, scope: !4689)
!4727 = !DILocation(line: 276, column: 2, scope: !4689)
!4728 = distinct !DISubprogram(name: "ktime_to_ns", scope: !1307, file: !1307, line: 80, type: !4729, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4732)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!175, !4731}
!4731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!4732 = !{!4733}
!4733 = !DILocalVariable(name: "kt", arg: 1, scope: !4728, file: !1307, line: 80, type: !4731)
!4734 = !DILocation(line: 80, column: 45, scope: !4728)
!4735 = !DILocation(line: 82, column: 9, scope: !4728)
!4736 = !DILocation(line: 82, column: 2, scope: !4728)
!4737 = distinct !DISubprogram(name: "dma_fence_timestamp", scope: !66, file: !66, line: 594, type: !4738, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4740)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!1306, !3242}
!4740 = !{!4741, !4742, !4745}
!4741 = !DILocalVariable(name: "fence", arg: 1, scope: !4737, file: !66, line: 594, type: !3242)
!4742 = !DILocalVariable(name: "__ret_warn_on", scope: !4743, file: !66, line: 596, type: !147)
!4743 = distinct !DILexicalBlock(scope: !4744, file: !66, line: 596, column: 6)
!4744 = distinct !DILexicalBlock(scope: !4737, file: !66, line: 596, column: 6)
!4745 = !DILocalVariable(name: "__flags", scope: !4746, file: !66, line: 596, type: !147)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !66, line: 596, column: 6)
!4747 = distinct !DILexicalBlock(scope: !4743, file: !66, line: 596, column: 6)
!4748 = !DILocation(line: 594, column: 61, scope: !4737)
!4749 = !DILocation(line: 596, column: 6, scope: !4743)
!4750 = !DILocation(line: 596, column: 6, scope: !4747)
!4751 = !DILocation(line: 596, column: 6, scope: !4746)
!4752 = !DILocation(line: 596, column: 6, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4746, file: !66, line: 596, column: 6)
!4754 = !DILocation(line: 596, column: 6, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4746, file: !66, line: 596, column: 6)
!4756 = !{i64 2153431543, i64 2153431572, i64 2153431618, i64 2153431676, i64 2153431730, i64 2153431784, i64 2153431839, i64 2153431870, i64 2153432178, i64 2153432184, i64 2153432231, i64 2153432254, i64 2153432280}
!4757 = !DILocation(line: 596, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4746, file: !66, line: 596, column: 6)
!4759 = !DILocation(line: 596, column: 6, scope: !4744)
!4760 = !DILocation(line: 596, column: 6, scope: !4737)
!4761 = !DILocation(line: 597, column: 10, scope: !4744)
!4762 = !DILocation(line: 597, column: 3, scope: !4744)
!4763 = !DILocation(line: 599, column: 2, scope: !4737)
!4764 = !DILocation(line: 599, column: 10, scope: !4737)
!4765 = !DILocation(line: 599, column: 9, scope: !4737)
!4766 = !DILocation(line: 600, column: 3, scope: !4737)
!4767 = distinct !{!4767, !4763, !4768, !4399, !4400}
!4768 = !DILocation(line: 600, column: 13, scope: !4737)
!4769 = !DILocation(line: 602, column: 9, scope: !4737)
!4770 = !DILocation(line: 602, column: 16, scope: !4737)
!4771 = !DILocation(line: 602, column: 2, scope: !4737)
!4772 = !DILocation(line: 603, column: 1, scope: !4737)
!4773 = distinct !DISubprogram(name: "ktime_set", scope: !1307, file: !1307, line: 38, type: !4774, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4777)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!1306, !4776, !3307}
!4776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!4777 = !{!4778, !4779}
!4778 = !DILocalVariable(name: "secs", arg: 1, scope: !4773, file: !1307, line: 38, type: !4776)
!4779 = !DILocalVariable(name: "nsecs", arg: 2, scope: !4773, file: !1307, line: 38, type: !3307)
!4780 = !DILocation(line: 38, column: 43, scope: !4773)
!4781 = !DILocation(line: 38, column: 69, scope: !4773)
!4782 = !DILocation(line: 40, column: 6, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4773, file: !1307, line: 40, column: 6)
!4784 = !DILocation(line: 40, column: 6, scope: !4773)
!4785 = !DILocation(line: 41, column: 3, scope: !4783)
!4786 = !DILocation(line: 43, column: 9, scope: !4773)
!4787 = !DILocation(line: 43, column: 14, scope: !4773)
!4788 = !DILocation(line: 43, column: 36, scope: !4773)
!4789 = !DILocation(line: 43, column: 29, scope: !4773)
!4790 = !DILocation(line: 43, column: 2, scope: !4773)
!4791 = !DILocation(line: 44, column: 1, scope: !4773)
!4792 = !DISubprogram(name: "ktime_get", scope: !4793, file: !4793, line: 67, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4793 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!4794 = distinct !DISubprogram(name: "cpu_relax", scope: !4795, file: !4795, line: 16, type: !1969, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4795 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!4796 = !DILocation(line: 18, column: 2, scope: !4794)
!4797 = !DILocation(line: 19, column: 1, scope: !4794)
!4798 = distinct !DISubprogram(name: "rep_nop", scope: !4795, file: !4795, line: 11, type: !1969, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4799 = !DILocation(line: 13, column: 2, scope: !4798)
!4800 = !{i64 2099040}
!4801 = !DILocation(line: 14, column: 1, scope: !4798)
!4802 = !DISubprogram(name: "dma_fence_remove_callback", scope: !66, file: !66, line: 400, type: !4803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!398, !3242, !3304}
!4805 = distinct !DISubprogram(name: "dma_fence_put", scope: !66, file: !66, line: 293, type: !3269, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4806)
!4806 = !{!4807}
!4807 = !DILocalVariable(name: "fence", arg: 1, scope: !4805, file: !66, line: 293, type: !3242)
!4808 = !DILocation(line: 293, column: 52, scope: !4805)
!4809 = !DILocation(line: 295, column: 6, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4805, file: !66, line: 295, column: 6)
!4811 = !DILocation(line: 295, column: 6, scope: !4805)
!4812 = !DILocation(line: 296, column: 13, scope: !4810)
!4813 = !DILocation(line: 296, column: 20, scope: !4810)
!4814 = !DILocation(line: 296, column: 3, scope: !4810)
!4815 = !DILocation(line: 297, column: 1, scope: !4805)
!4816 = distinct !DISubprogram(name: "kref_put", scope: !3291, file: !3291, line: 62, type: !4817, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4823)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!147, !4819, !4820}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{null, !4819}
!4823 = !{!4824, !4825}
!4824 = !DILocalVariable(name: "kref", arg: 1, scope: !4816, file: !3291, line: 62, type: !4819)
!4825 = !DILocalVariable(name: "release", arg: 2, scope: !4816, file: !3291, line: 62, type: !4820)
!4826 = !DILocation(line: 62, column: 41, scope: !4816)
!4827 = !DILocation(line: 62, column: 54, scope: !4816)
!4828 = !DILocation(line: 64, column: 29, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4816, file: !3291, line: 64, column: 6)
!4830 = !DILocation(line: 64, column: 35, scope: !4829)
!4831 = !DILocation(line: 64, column: 6, scope: !4829)
!4832 = !DILocation(line: 64, column: 6, scope: !4816)
!4833 = !DILocation(line: 65, column: 3, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4829, file: !3291, line: 64, column: 46)
!4835 = !DILocation(line: 65, column: 11, scope: !4834)
!4836 = !DILocation(line: 66, column: 3, scope: !4834)
!4837 = !DILocation(line: 68, column: 2, scope: !4816)
!4838 = !DILocation(line: 69, column: 1, scope: !4816)
!4839 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !73, file: !73, line: 331, type: !4840, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4843)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!398, !4842}
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!4843 = !{!4844}
!4844 = !DILocalVariable(name: "r", arg: 1, scope: !4839, file: !73, line: 331, type: !4842)
!4845 = !DILocation(line: 331, column: 67, scope: !4839)
!4846 = !DILocation(line: 333, column: 33, scope: !4839)
!4847 = !DILocation(line: 333, column: 9, scope: !4839)
!4848 = !DILocation(line: 333, column: 2, scope: !4839)
!4849 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !73, file: !73, line: 313, type: !4850, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4852)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!398, !4842, !878}
!4852 = !{!4853, !4854}
!4853 = !DILocalVariable(name: "r", arg: 1, scope: !4849, file: !73, line: 313, type: !4842)
!4854 = !DILocalVariable(name: "oldp", arg: 2, scope: !4849, file: !73, line: 313, type: !878)
!4855 = !DILocation(line: 313, column: 69, scope: !4849)
!4856 = !DILocation(line: 313, column: 77, scope: !4849)
!4857 = !DILocation(line: 315, column: 36, scope: !4849)
!4858 = !DILocation(line: 315, column: 39, scope: !4849)
!4859 = !DILocation(line: 315, column: 9, scope: !4849)
!4860 = !DILocation(line: 315, column: 2, scope: !4849)
!4861 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !73, file: !73, line: 270, type: !4862, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4864)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!398, !147, !4842, !878}
!4864 = !{!4865, !4866, !4867, !4868}
!4865 = !DILocalVariable(name: "i", arg: 1, scope: !4861, file: !73, line: 270, type: !147)
!4866 = !DILocalVariable(name: "r", arg: 2, scope: !4861, file: !73, line: 270, type: !4842)
!4867 = !DILocalVariable(name: "oldp", arg: 3, scope: !4861, file: !73, line: 270, type: !878)
!4868 = !DILocalVariable(name: "old", scope: !4861, file: !73, line: 272, type: !147)
!4869 = !DILocation(line: 270, column: 61, scope: !4861)
!4870 = !DILocation(line: 270, column: 76, scope: !4861)
!4871 = !DILocation(line: 270, column: 84, scope: !4861)
!4872 = !DILocation(line: 272, column: 2, scope: !4861)
!4873 = !DILocation(line: 272, column: 6, scope: !4861)
!4874 = !DILocation(line: 272, column: 37, scope: !4861)
!4875 = !DILocation(line: 272, column: 41, scope: !4861)
!4876 = !DILocation(line: 272, column: 44, scope: !4861)
!4877 = !DILocation(line: 272, column: 12, scope: !4861)
!4878 = !DILocation(line: 274, column: 6, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4861, file: !73, line: 274, column: 6)
!4880 = !DILocation(line: 274, column: 6, scope: !4861)
!4881 = !DILocation(line: 275, column: 11, scope: !4879)
!4882 = !DILocation(line: 275, column: 4, scope: !4879)
!4883 = !DILocation(line: 275, column: 9, scope: !4879)
!4884 = !DILocation(line: 275, column: 3, scope: !4879)
!4885 = !DILocation(line: 277, column: 6, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4861, file: !73, line: 277, column: 6)
!4887 = !DILocation(line: 277, column: 13, scope: !4886)
!4888 = !DILocation(line: 277, column: 10, scope: !4886)
!4889 = !DILocation(line: 277, column: 6, scope: !4861)
!4890 = !DILocation(line: 278, column: 3, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4886, file: !73, line: 277, column: 16)
!4892 = !DILocation(line: 278, column: 3, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4891, file: !73, line: 278, column: 3)
!4894 = !DILocation(line: 278, column: 3, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4893, file: !73, line: 278, column: 3)
!4896 = !DILocation(line: 278, column: 3, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4893, file: !73, line: 278, column: 3)
!4898 = !DILocation(line: 278, column: 3, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4897, file: !73, line: 278, column: 3)
!4900 = !{i64 2150815403}
!4901 = !DILocation(line: 279, column: 3, scope: !4891)
!4902 = !DILocation(line: 282, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4861, file: !73, line: 282, column: 6)
!4904 = !DILocation(line: 282, column: 6, scope: !4861)
!4905 = !DILocation(line: 283, column: 26, scope: !4903)
!4906 = !DILocation(line: 283, column: 3, scope: !4903)
!4907 = !DILocation(line: 285, column: 2, scope: !4861)
!4908 = !DILocation(line: 286, column: 1, scope: !4861)
!4909 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4910, file: !4910, line: 397, type: !4911, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4914)
!4910 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!147, !147, !4913}
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!4914 = !{!4915, !4916}
!4915 = !DILocalVariable(name: "i", arg: 1, scope: !4909, file: !4910, line: 397, type: !147)
!4916 = !DILocalVariable(name: "v", arg: 2, scope: !4909, file: !4910, line: 397, type: !4913)
!4917 = !DILocation(line: 397, column: 30, scope: !4909)
!4918 = !DILocation(line: 397, column: 43, scope: !4909)
!4919 = !DILocation(line: 399, column: 2, scope: !4909)
!4920 = !DILocation(line: 399, column: 2, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4909, file: !4910, line: 399, column: 2)
!4922 = !DILocation(line: 400, column: 31, scope: !4909)
!4923 = !DILocation(line: 400, column: 2, scope: !4909)
!4924 = !DILocation(line: 401, column: 38, scope: !4909)
!4925 = !DILocation(line: 401, column: 41, scope: !4909)
!4926 = !DILocation(line: 401, column: 9, scope: !4909)
!4927 = !DILocation(line: 401, column: 2, scope: !4909)
!4928 = !DISubprogram(name: "refcount_warn_saturate", scope: !73, file: !73, line: 127, type: !4929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{null, !4842, !72}
!4931 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !4932, file: !4932, line: 928, type: !4911, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4933)
!4932 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4933 = !{!4934, !4935}
!4934 = !DILocalVariable(name: "i", arg: 1, scope: !4931, file: !4932, line: 928, type: !147)
!4935 = !DILocalVariable(name: "v", arg: 2, scope: !4931, file: !4932, line: 928, type: !4913)
!4936 = !DILocation(line: 928, column: 34, scope: !4931)
!4937 = !DILocation(line: 928, column: 47, scope: !4931)
!4938 = !DILocation(line: 936, column: 31, scope: !4931)
!4939 = !DILocation(line: 936, column: 34, scope: !4931)
!4940 = !DILocation(line: 936, column: 9, scope: !4931)
!4941 = !DILocation(line: 936, column: 2, scope: !4931)
!4942 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4943, file: !4943, line: 101, type: !4911, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4944)
!4943 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4944 = !{!4945, !4946, !4947}
!4945 = !DILocalVariable(name: "i", arg: 1, scope: !4942, file: !4943, line: 101, type: !147)
!4946 = !DILocalVariable(name: "v", arg: 2, scope: !4942, file: !4943, line: 101, type: !4913)
!4947 = !DILocalVariable(name: "__ret", scope: !4948, file: !4943, line: 103, type: !147)
!4948 = distinct !DILexicalBlock(scope: !4942, file: !4943, line: 103, column: 9)
!4949 = !DILocation(line: 101, column: 54, scope: !4942)
!4950 = !DILocation(line: 101, column: 67, scope: !4942)
!4951 = !DILocation(line: 103, column: 9, scope: !4948)
!4952 = !{i64 2148993869, i64 2148993908, i64 2148993929, i64 2148993966, i64 2148993989, i64 2148993998}
!4953 = !DILocation(line: 103, column: 9, scope: !4942)
!4954 = !DILocation(line: 103, column: 2, scope: !4942)
!4955 = distinct !DISubprogram(name: "kref_get", scope: !3291, file: !3291, line: 43, type: !4821, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4956)
!4956 = !{!4957}
!4957 = !DILocalVariable(name: "kref", arg: 1, scope: !4955, file: !3291, line: 43, type: !4819)
!4958 = !DILocation(line: 43, column: 42, scope: !4955)
!4959 = !DILocation(line: 45, column: 16, scope: !4955)
!4960 = !DILocation(line: 45, column: 22, scope: !4955)
!4961 = !DILocation(line: 45, column: 2, scope: !4955)
!4962 = !DILocation(line: 46, column: 1, scope: !4955)
!4963 = distinct !DISubprogram(name: "refcount_inc", scope: !73, file: !73, line: 265, type: !4964, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4966)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{null, !4842}
!4966 = !{!4967}
!4967 = !DILocalVariable(name: "r", arg: 1, scope: !4963, file: !73, line: 265, type: !4842)
!4968 = !DILocation(line: 265, column: 45, scope: !4963)
!4969 = !DILocation(line: 267, column: 17, scope: !4963)
!4970 = !DILocation(line: 267, column: 2, scope: !4963)
!4971 = !DILocation(line: 268, column: 1, scope: !4963)
!4972 = distinct !DISubprogram(name: "__refcount_inc", scope: !73, file: !73, line: 248, type: !4973, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4975)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !4842, !878}
!4975 = !{!4976, !4977}
!4976 = !DILocalVariable(name: "r", arg: 1, scope: !4972, file: !73, line: 248, type: !4842)
!4977 = !DILocalVariable(name: "oldp", arg: 2, scope: !4972, file: !73, line: 248, type: !878)
!4978 = !DILocation(line: 248, column: 47, scope: !4972)
!4979 = !DILocation(line: 248, column: 55, scope: !4972)
!4980 = !DILocation(line: 250, column: 20, scope: !4972)
!4981 = !DILocation(line: 250, column: 23, scope: !4972)
!4982 = !DILocation(line: 250, column: 2, scope: !4972)
!4983 = !DILocation(line: 251, column: 1, scope: !4972)
!4984 = distinct !DISubprogram(name: "__refcount_add", scope: !73, file: !73, line: 191, type: !4985, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4987)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{null, !147, !4842, !878}
!4987 = !{!4988, !4989, !4990, !4991}
!4988 = !DILocalVariable(name: "i", arg: 1, scope: !4984, file: !73, line: 191, type: !147)
!4989 = !DILocalVariable(name: "r", arg: 2, scope: !4984, file: !73, line: 191, type: !4842)
!4990 = !DILocalVariable(name: "oldp", arg: 3, scope: !4984, file: !73, line: 191, type: !878)
!4991 = !DILocalVariable(name: "old", scope: !4984, file: !73, line: 193, type: !147)
!4992 = !DILocation(line: 191, column: 39, scope: !4984)
!4993 = !DILocation(line: 191, column: 54, scope: !4984)
!4994 = !DILocation(line: 191, column: 62, scope: !4984)
!4995 = !DILocation(line: 193, column: 2, scope: !4984)
!4996 = !DILocation(line: 193, column: 6, scope: !4984)
!4997 = !DILocation(line: 193, column: 37, scope: !4984)
!4998 = !DILocation(line: 193, column: 41, scope: !4984)
!4999 = !DILocation(line: 193, column: 44, scope: !4984)
!5000 = !DILocation(line: 193, column: 12, scope: !4984)
!5001 = !DILocation(line: 195, column: 6, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4984, file: !73, line: 195, column: 6)
!5003 = !DILocation(line: 195, column: 6, scope: !4984)
!5004 = !DILocation(line: 196, column: 11, scope: !5002)
!5005 = !DILocation(line: 196, column: 4, scope: !5002)
!5006 = !DILocation(line: 196, column: 9, scope: !5002)
!5007 = !DILocation(line: 196, column: 3, scope: !5002)
!5008 = !DILocation(line: 198, column: 6, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4984, file: !73, line: 198, column: 6)
!5010 = !DILocation(line: 198, column: 6, scope: !4984)
!5011 = !DILocation(line: 199, column: 26, scope: !5009)
!5012 = !DILocation(line: 199, column: 3, scope: !5009)
!5013 = !DILocation(line: 200, column: 11, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5009, file: !73, line: 200, column: 11)
!5015 = !DILocation(line: 200, column: 11, scope: !5009)
!5016 = !DILocation(line: 201, column: 26, scope: !5014)
!5017 = !DILocation(line: 201, column: 3, scope: !5014)
!5018 = !DILocation(line: 202, column: 1, scope: !4984)
!5019 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4910, file: !4910, line: 250, type: !4911, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5020)
!5020 = !{!5021, !5022}
!5021 = !DILocalVariable(name: "i", arg: 1, scope: !5019, file: !4910, line: 250, type: !147)
!5022 = !DILocalVariable(name: "v", arg: 2, scope: !5019, file: !4910, line: 250, type: !4913)
!5023 = !DILocation(line: 250, column: 30, scope: !5019)
!5024 = !DILocation(line: 250, column: 43, scope: !5019)
!5025 = !DILocation(line: 252, column: 31, scope: !5019)
!5026 = !DILocation(line: 252, column: 2, scope: !5019)
!5027 = !DILocation(line: 253, column: 38, scope: !5019)
!5028 = !DILocation(line: 253, column: 41, scope: !5019)
!5029 = !DILocation(line: 253, column: 9, scope: !5019)
!5030 = !DILocation(line: 253, column: 2, scope: !5019)
!5031 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4932, file: !4932, line: 731, type: !4911, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5032)
!5032 = !{!5033, !5034}
!5033 = !DILocalVariable(name: "i", arg: 1, scope: !5031, file: !4932, line: 731, type: !147)
!5034 = !DILocalVariable(name: "v", arg: 2, scope: !5031, file: !4932, line: 731, type: !4913)
!5035 = !DILocation(line: 731, column: 34, scope: !5031)
!5036 = !DILocation(line: 731, column: 47, scope: !5031)
!5037 = !DILocation(line: 736, column: 31, scope: !5031)
!5038 = !DILocation(line: 736, column: 34, scope: !5031)
!5039 = !DILocation(line: 736, column: 9, scope: !5031)
!5040 = !DILocation(line: 736, column: 2, scope: !5031)
!5041 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4943, file: !4943, line: 95, type: !4911, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5042)
!5042 = !{!5043, !5044, !5045}
!5043 = !DILocalVariable(name: "i", arg: 1, scope: !5041, file: !4943, line: 95, type: !147)
!5044 = !DILocalVariable(name: "v", arg: 2, scope: !5041, file: !4943, line: 95, type: !4913)
!5045 = !DILocalVariable(name: "__ret", scope: !5046, file: !4943, line: 97, type: !147)
!5046 = distinct !DILexicalBlock(scope: !5041, file: !4943, line: 97, column: 9)
!5047 = !DILocation(line: 95, column: 54, scope: !5041)
!5048 = !DILocation(line: 95, column: 67, scope: !5041)
!5049 = !DILocation(line: 97, column: 9, scope: !5046)
!5050 = !{i64 2148991684, i64 2148991723, i64 2148991744, i64 2148991781, i64 2148991804, i64 2148991813}
!5051 = !DILocation(line: 97, column: 9, scope: !5041)
!5052 = !DILocation(line: 97, column: 2, scope: !5041)
!5053 = !DISubprogram(name: "fget", scope: !3490, file: !3490, line: 49, type: !5054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!100, !7}
