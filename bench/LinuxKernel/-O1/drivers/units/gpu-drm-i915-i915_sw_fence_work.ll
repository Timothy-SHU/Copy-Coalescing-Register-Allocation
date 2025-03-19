; ModuleID = 'drivers/gpu/drm/i915/i915_sw_fence_work.c'
source_filename = "drivers/gpu/drm/i915/i915_sw_fence_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.dma_fence_work = type { %struct.dma_fence, %struct.spinlock, %struct.i915_sw_fence, %struct.i915_sw_dma_fence_cb, %struct.work_struct, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon, i64, i64, i64, %struct.kref, i32 }
%union.anon = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.i915_sw_fence = type { %struct.wait_queue_head, ptr, %struct.atomic_t, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.i915_sw_dma_fence_cb = type { %struct.dma_fence_cb, ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dma_fence_work_ops = type { ptr, ptr, ptr }

@fence_ops = internal constant %struct.dma_fence_ops { i8 0, ptr @get_driver_name, ptr @get_timeline_name, ptr null, ptr null, ptr null, ptr @fence_release, ptr null, ptr null, ptr null }, align 8, !dbg !0
@dma_fence_work_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !265
@.str = private unnamed_addr constant [10 x i8] c"dma-fence\00", align 1, !dbg !276
@.str.1 = private unnamed_addr constant [5 x i8] c"work\00", align 1, !dbg !281
@system_unbound_wq = external dso_local global ptr, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1, !dbg !286

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dma_fence_work_init(ptr noundef %f, ptr noundef %ops) #0 align 16 !dbg !267 {
entry:
  %f.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral11 = alloca %struct.atomic64_t, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !271, metadata !DIExpression()), !dbg !300
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !272, metadata !DIExpression()), !dbg !301
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !302
  %1 = load ptr, ptr %f.addr, align 8, !dbg !303
  %ops1 = getelementptr inbounds %struct.dma_fence_work, ptr %1, i32 0, i32 5, !dbg !304
  store ptr %0, ptr %ops1, align 8, !dbg !305
  br label %do.body, !dbg !306

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %f.addr, align 8, !dbg !307
  %lock = getelementptr inbounds %struct.dma_fence_work, ptr %2, i32 0, i32 1, !dbg !307
  %call = call ptr @spinlock_check(ptr noundef %lock) #10, !dbg !307
  %3 = load ptr, ptr %f.addr, align 8, !dbg !307
  %lock2 = getelementptr inbounds %struct.dma_fence_work, ptr %3, i32 0, i32 1, !dbg !307
  %4 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !307
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %4, i32 0, i32 0, !dbg !307
  %5 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !307
  %counter = getelementptr inbounds %struct.atomic_t, ptr %5, i32 0, i32 0, !dbg !307
  store i32 0, ptr %counter, align 4, !dbg !307
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !307
  br label %do.end, !dbg !307

do.end:                                           ; preds = %do.body
  %6 = load ptr, ptr %f.addr, align 8, !dbg !309
  %dma = getelementptr inbounds %struct.dma_fence_work, ptr %6, i32 0, i32 0, !dbg !310
  %7 = load ptr, ptr %f.addr, align 8, !dbg !311
  %lock3 = getelementptr inbounds %struct.dma_fence_work, ptr %7, i32 0, i32 1, !dbg !312
  call void @dma_fence_init(ptr noundef %dma, ptr noundef @fence_ops, ptr noundef %lock3, i64 noundef 0, i64 noundef 0) #10, !dbg !313
  br label %do.body4, !dbg !314

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !315

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !317

do.end6:                                          ; preds = %do.body5
  %8 = load ptr, ptr %f.addr, align 8, !dbg !315
  %chain = getelementptr inbounds %struct.dma_fence_work, ptr %8, i32 0, i32 2, !dbg !315
  call void @__i915_sw_fence_init(ptr noundef %chain, ptr noundef @fence_notify, ptr noundef null, ptr noundef null) #10, !dbg !315
  br label %do.end7, !dbg !315

do.end7:                                          ; preds = %do.end6
  br label %do.body8, !dbg !319

do.body8:                                         ; preds = %do.end7
  br label %do.body9, !dbg !320

do.body9:                                         ; preds = %do.body8
  %9 = load ptr, ptr %f.addr, align 8, !dbg !322
  %work = getelementptr inbounds %struct.dma_fence_work, ptr %9, i32 0, i32 4, !dbg !322
  call void @__init_work(ptr noundef %work, i32 noundef 0) #10, !dbg !322
  %10 = load ptr, ptr %f.addr, align 8, !dbg !322
  %work10 = getelementptr inbounds %struct.dma_fence_work, ptr %10, i32 0, i32 4, !dbg !322
  %data = getelementptr inbounds %struct.work_struct, ptr %work10, i32 0, i32 0, !dbg !322
  %counter12 = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral11, i32 0, i32 0, !dbg !322
  store i64 68719476704, ptr %counter12, align 8, !dbg !322
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral11, i64 8, i1 false), !dbg !322
  %11 = load ptr, ptr %f.addr, align 8, !dbg !322
  %work13 = getelementptr inbounds %struct.dma_fence_work, ptr %11, i32 0, i32 4, !dbg !322
  %entry14 = getelementptr inbounds %struct.work_struct, ptr %work13, i32 0, i32 1, !dbg !322
  call void @INIT_LIST_HEAD(ptr noundef %entry14) #10, !dbg !322
  %12 = load ptr, ptr %f.addr, align 8, !dbg !322
  %work15 = getelementptr inbounds %struct.dma_fence_work, ptr %12, i32 0, i32 4, !dbg !322
  %func = getelementptr inbounds %struct.work_struct, ptr %work15, i32 0, i32 2, !dbg !322
  store ptr @fence_work, ptr %func, align 8, !dbg !322
  br label %do.end16, !dbg !322

do.end16:                                         ; preds = %do.body9
  br label %do.end17, !dbg !320

do.end17:                                         ; preds = %do.end16
  ret void, !dbg !324
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #2 align 16 !dbg !325 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !334
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !335
  ret ptr %1, !dbg !336
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !337 dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !340 dso_local void @__i915_sw_fence_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fence_notify(ptr noundef %fence, i32 noundef %state) #0 align 16 !dbg !344 {
entry:
  %fence.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %f = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !346, metadata !DIExpression()), !dbg !351
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !347, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %f, metadata !348, metadata !DIExpression()), !dbg !354
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !349, metadata !DIExpression()), !dbg !355
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !355
  store ptr %0, ptr %__mptr, align 8, !dbg !355
  %1 = load ptr, ptr %__mptr, align 8, !dbg !355
  %add.ptr = getelementptr i8, ptr %1, i64 -72, !dbg !355
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !355
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !356
  %2 = load ptr, ptr %tmp, align 8, !dbg !355
  store ptr %2, ptr %f, align 8, !dbg !354
  %3 = load i32, ptr %state.addr, align 4, !dbg !357
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
  ], !dbg !358

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %fence.addr, align 8, !dbg !359
  %error = getelementptr inbounds %struct.i915_sw_fence, ptr %4, i32 0, i32 3, !dbg !362
  %5 = load i32, ptr %error, align 4, !dbg !362
  %tobool = icmp ne i32 %5, 0, !dbg !359
  br i1 %tobool, label %if.then, label %if.end, !dbg !363

if.then:                                          ; preds = %sw.bb
  %6 = load ptr, ptr %f, align 8, !dbg !364
  %dma = getelementptr inbounds %struct.dma_fence_work, ptr %6, i32 0, i32 0, !dbg !365
  %7 = load ptr, ptr %fence.addr, align 8, !dbg !366
  %error1 = getelementptr inbounds %struct.i915_sw_fence, ptr %7, i32 0, i32 3, !dbg !367
  %8 = load i32, ptr %error1, align 4, !dbg !367
  call void @dma_fence_set_error(ptr noundef %dma, i32 noundef %8) #10, !dbg !368
  br label %if.end, !dbg !368

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load ptr, ptr %f, align 8, !dbg !369
  %dma2 = getelementptr inbounds %struct.dma_fence_work, ptr %9, i32 0, i32 0, !dbg !371
  %error3 = getelementptr inbounds %struct.dma_fence, ptr %dma2, i32 0, i32 7, !dbg !372
  %10 = load i32, ptr %error3, align 4, !dbg !372
  %tobool4 = icmp ne i32 %10, 0, !dbg !369
  br i1 %tobool4, label %if.else27, label %if.then5, !dbg !373

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %f, align 8, !dbg !374
  %dma6 = getelementptr inbounds %struct.dma_fence_work, ptr %11, i32 0, i32 0, !dbg !376
  %call = call ptr @dma_fence_get(ptr noundef %dma6) #10, !dbg !377
  %12 = load ptr, ptr %f, align 8, !dbg !378
  %dma7 = getelementptr inbounds %struct.dma_fence_work, ptr %12, i32 0, i32 0, !dbg !378
  %flags = getelementptr inbounds %struct.dma_fence, ptr %dma7, i32 0, i32 5, !dbg !378
  %13 = ptrtoint ptr %flags to i64, !dbg !378
  %cmp = icmp ne i64 %13, 0, !dbg !378
  %conv = zext i1 %cmp to i32, !dbg !378
  %14 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !378
  br i1 %14, label %land.lhs.true, label %cond.false, !dbg !378

land.lhs.true:                                    ; preds = %if.then5
  %15 = load ptr, ptr %f, align 8, !dbg !378
  %dma8 = getelementptr inbounds %struct.dma_fence_work, ptr %15, i32 0, i32 0, !dbg !378
  %flags9 = getelementptr inbounds %struct.dma_fence, ptr %dma8, i32 0, i32 5, !dbg !378
  %16 = ptrtoint ptr %flags9 to i64, !dbg !378
  %cmp10 = icmp ne i64 %16, 0, !dbg !378
  br i1 %cmp10, label %land.lhs.true12, label %cond.false, !dbg !378

land.lhs.true12:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %f, align 8, !dbg !378
  %dma13 = getelementptr inbounds %struct.dma_fence_work, ptr %17, i32 0, i32 0, !dbg !378
  %flags14 = getelementptr inbounds %struct.dma_fence, ptr %dma13, i32 0, i32 5, !dbg !378
  %18 = load i64, ptr %flags14, align 8, !dbg !378
  %19 = call i1 @llvm.is.constant.i64(i64 %18), !dbg !378
  br i1 %19, label %cond.true, label %cond.false, !dbg !380

cond.true:                                        ; preds = %land.lhs.true12
  %20 = load ptr, ptr %f, align 8, !dbg !378
  %dma15 = getelementptr inbounds %struct.dma_fence_work, ptr %20, i32 0, i32 0, !dbg !378
  %flags16 = getelementptr inbounds %struct.dma_fence, ptr %dma15, i32 0, i32 5, !dbg !378
  %call17 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %flags16) #10, !dbg !378
  br i1 %call17, label %if.then23, label %if.else, !dbg !378

cond.false:                                       ; preds = %land.lhs.true12, %land.lhs.true, %if.then5
  %21 = load ptr, ptr %f, align 8, !dbg !378
  %dma19 = getelementptr inbounds %struct.dma_fence_work, ptr %21, i32 0, i32 0, !dbg !378
  %flags20 = getelementptr inbounds %struct.dma_fence, ptr %dma19, i32 0, i32 5, !dbg !378
  %call21 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %flags20) #10, !dbg !378
  br i1 %call21, label %if.then23, label %if.else, !dbg !380

if.then23:                                        ; preds = %cond.false, %cond.true
  %22 = load ptr, ptr %f, align 8, !dbg !381
  %work = getelementptr inbounds %struct.dma_fence_work, ptr %22, i32 0, i32 4, !dbg !382
  call void @fence_work(ptr noundef %work) #10, !dbg !383
  br label %if.end26, !dbg !383

if.else:                                          ; preds = %cond.false, %cond.true
  %23 = load ptr, ptr @system_unbound_wq, align 8, !dbg !384
  %24 = load ptr, ptr %f, align 8, !dbg !385
  %work24 = getelementptr inbounds %struct.dma_fence_work, ptr %24, i32 0, i32 4, !dbg !386
  %call25 = call zeroext i1 @queue_work(ptr noundef %23, ptr noundef %work24) #10, !dbg !387
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  br label %if.end28, !dbg !388

if.else27:                                        ; preds = %if.end
  %25 = load ptr, ptr %f, align 8, !dbg !389
  call void @fence_complete(ptr noundef %25) #10, !dbg !391
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.end26
  br label %sw.epilog, !dbg !392

sw.bb29:                                          ; preds = %entry
  %26 = load ptr, ptr %f, align 8, !dbg !393
  %dma30 = getelementptr inbounds %struct.dma_fence_work, ptr %26, i32 0, i32 0, !dbg !394
  call void @dma_fence_put(ptr noundef %dma30) #10, !dbg !395
  br label %sw.epilog, !dbg !396

sw.epilog:                                        ; preds = %entry, %sw.bb29, %if.end28
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !397
  ret i32 0, !dbg !398
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #5 align 16 !dbg !399 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !403, metadata !DIExpression()), !dbg !405
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !404, metadata !DIExpression()), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !408 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !413, metadata !DIExpression()), !dbg !414
  br label %do.body, !dbg !415

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !416

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !418

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !416

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !420
  %1 = load ptr, ptr %list.addr, align 8, !dbg !420
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !420
  store volatile ptr %0, ptr %next, align 8, !dbg !420
  br label %do.end3, !dbg !420

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !416

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !422

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !423

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !425

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !423

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !427
  %3 = load ptr, ptr %list.addr, align 8, !dbg !427
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !427
  store volatile ptr %2, ptr %prev, align 8, !dbg !427
  br label %do.end9, !dbg !427

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !423

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !429
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fence_work(ptr noundef %work) #0 align 16 !dbg !430 {
entry:
  %work.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !432, metadata !DIExpression()), !dbg !436
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !437
  call void @llvm.dbg.declare(metadata ptr %f, metadata !433, metadata !DIExpression()), !dbg !438
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !434, metadata !DIExpression()), !dbg !439
  %0 = load ptr, ptr %work.addr, align 8, !dbg !439
  store ptr %0, ptr %__mptr, align 8, !dbg !439
  %1 = load ptr, ptr %__mptr, align 8, !dbg !439
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !439
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !439
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !440
  %2 = load ptr, ptr %tmp, align 8, !dbg !439
  store ptr %2, ptr %f, align 8, !dbg !438
  %3 = load ptr, ptr %f, align 8, !dbg !441
  %ops = getelementptr inbounds %struct.dma_fence_work, ptr %3, i32 0, i32 5, !dbg !442
  %4 = load ptr, ptr %ops, align 8, !dbg !442
  %work1 = getelementptr inbounds %struct.dma_fence_work_ops, ptr %4, i32 0, i32 1, !dbg !443
  %5 = load ptr, ptr %work1, align 8, !dbg !443
  %6 = load ptr, ptr %f, align 8, !dbg !444
  call void %5(ptr noundef %6) #10, !dbg !441
  %7 = load ptr, ptr %f, align 8, !dbg !445
  call void @fence_complete(ptr noundef %7) #10, !dbg !446
  %8 = load ptr, ptr %f, align 8, !dbg !447
  %dma = getelementptr inbounds %struct.dma_fence_work, ptr %8, i32 0, i32 0, !dbg !448
  call void @dma_fence_put(ptr noundef %dma) #10, !dbg !449
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !450
  ret void, !dbg !450
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dma_fence_work_chain(ptr noundef %f, ptr noundef %signal) #0 align 16 !dbg !451 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %signal.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !455, metadata !DIExpression()), !dbg !457
  store ptr %signal, ptr %signal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signal.addr, metadata !456, metadata !DIExpression()), !dbg !458
  %0 = load ptr, ptr %signal.addr, align 8, !dbg !459
  %tobool = icmp ne ptr %0, null, !dbg !459
  br i1 %tobool, label %if.end, label %if.then, !dbg !461

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !462
  br label %return, !dbg !462

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %f.addr, align 8, !dbg !463
  %chain = getelementptr inbounds %struct.dma_fence_work, ptr %1, i32 0, i32 2, !dbg !464
  %2 = load ptr, ptr %signal.addr, align 8, !dbg !465
  %3 = load ptr, ptr %f.addr, align 8, !dbg !466
  %cb = getelementptr inbounds %struct.dma_fence_work, ptr %3, i32 0, i32 3, !dbg !467
  %call = call i32 @__i915_sw_fence_await_dma_fence(ptr noundef %chain, ptr noundef %2, ptr noundef %cb) #10, !dbg !468
  store i32 %call, ptr %retval, align 4, !dbg !469
  br label %return, !dbg !469

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !470
  ret i32 %4, !dbg !470
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !471 dso_local i32 @__i915_sw_fence_await_dma_fence(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_driver_name(ptr noundef %fence) #0 align 16 !dbg !475 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !477, metadata !DIExpression()), !dbg !478
  ret ptr @.str, !dbg !479
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_timeline_name(ptr noundef %fence) #0 align 16 !dbg !480 {
entry:
  %fence.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !482, metadata !DIExpression()), !dbg !486
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !487
  call void @llvm.dbg.declare(metadata ptr %f, metadata !483, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !484, metadata !DIExpression()), !dbg !489
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !489
  store ptr %0, ptr %__mptr, align 8, !dbg !489
  %1 = load ptr, ptr %__mptr, align 8, !dbg !489
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !489
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !490
  %2 = load ptr, ptr %tmp, align 8, !dbg !489
  store ptr %2, ptr %f, align 8, !dbg !488
  %3 = load ptr, ptr %f, align 8, !dbg !491
  %ops = getelementptr inbounds %struct.dma_fence_work, ptr %3, i32 0, i32 5, !dbg !492
  %4 = load ptr, ptr %ops, align 8, !dbg !492
  %name = getelementptr inbounds %struct.dma_fence_work_ops, ptr %4, i32 0, i32 0, !dbg !493
  %5 = load ptr, ptr %name, align 8, !dbg !493
  %tobool = icmp ne ptr %5, null, !dbg !491
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !491

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !491

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !491

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @.str.1, %cond.false ], !dbg !491
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !494
  ret ptr %cond, !dbg !495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fence_release(ptr noundef %fence) #0 align 16 !dbg !496 {
entry:
  %fence.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !498, metadata !DIExpression()), !dbg !502
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %f, metadata !499, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !500, metadata !DIExpression()), !dbg !505
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !505
  store ptr %0, ptr %__mptr, align 8, !dbg !505
  %1 = load ptr, ptr %__mptr, align 8, !dbg !505
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !505
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !505
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !506
  %2 = load ptr, ptr %tmp, align 8, !dbg !505
  store ptr %2, ptr %f, align 8, !dbg !504
  %3 = load ptr, ptr %f, align 8, !dbg !507
  %chain = getelementptr inbounds %struct.dma_fence_work, ptr %3, i32 0, i32 2, !dbg !508
  call void @i915_sw_fence_fini(ptr noundef %chain) #10, !dbg !509
  br label %do.body, !dbg !510

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !511

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !511

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %f, align 8, !dbg !513
  %dma = getelementptr inbounds %struct.dma_fence_work, ptr %4, i32 0, i32 0, !dbg !514
  call void @dma_fence_free(ptr noundef %dma) #10, !dbg !515
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !516
  ret void, !dbg !516
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_sw_fence_fini(ptr noundef %fence) #5 align 16 !dbg !517 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !521, metadata !DIExpression()), !dbg !522
  ret void, !dbg !523
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !524 dso_local void @dma_fence_free(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_set_error(ptr noundef %fence, i32 noundef %error) #5 align 16 !dbg !525 {
entry:
  %fence.addr = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on35 = alloca i32, align 4
  %__flags54 = alloca i32, align 4
  %tmp67 = alloca i64, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !529, metadata !DIExpression()), !dbg !541
  store i32 %error, ptr %error.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !530, metadata !DIExpression()), !dbg !542
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !531, metadata !DIExpression()), !dbg !543
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !543
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !543
  %1 = ptrtoint ptr %flags to i64, !dbg !543
  %cmp = icmp ne i64 %1, 0, !dbg !543
  %conv = zext i1 %cmp to i32, !dbg !543
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !543
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !543

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !543
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !543
  %4 = ptrtoint ptr %flags1 to i64, !dbg !543
  %cmp2 = icmp ne i64 %4, 0, !dbg !543
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !543

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !543
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !543
  %6 = load i64, ptr %flags5, align 8, !dbg !543
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !543
  br i1 %7, label %cond.true, label %cond.false, !dbg !543

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !543
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !543
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #10, !dbg !543
  %conv7 = zext i1 %call to i32, !dbg !543
  br label %cond.end, !dbg !543

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !543
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !543
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #10, !dbg !543
  %conv10 = zext i1 %call9 to i32, !dbg !543
  br label %cond.end, !dbg !543

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !543
  %tobool = icmp ne i32 %cond, 0, !dbg !543
  %lnot = xor i1 %tobool, true, !dbg !543
  %lnot11 = xor i1 %lnot, true, !dbg !543
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !543
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !543
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !544
  %tobool12 = icmp ne i32 %10, 0, !dbg !544
  %lnot13 = xor i1 %tobool12, true, !dbg !544
  %lnot15 = xor i1 %lnot13, true, !dbg !544
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !544
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !544
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !544
  %tobool18 = icmp ne i64 %expval, 0, !dbg !544
  br i1 %tobool18, label %if.then, label %if.end, !dbg !543

if.then:                                          ; preds = %cond.end
  br label %do.body, !dbg !544

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !533, metadata !DIExpression()), !dbg !545
  store i32 2305, ptr %__flags, align 4, !dbg !545
  br label %do.body19, !dbg !545

do.body19:                                        ; preds = %do.body
  br label %do.cond, !dbg !546

do.cond:                                          ; preds = %do.body19
  br label %do.end, !dbg !546

do.end:                                           ; preds = %do.cond
  br label %do.body20, !dbg !545

do.body20:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !548
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 580, i32 %11, i64 12) #11, !dbg !548, !srcloc !550
  br label %do.cond21, !dbg !548

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !548

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !545

do.body23:                                        ; preds = %do.end22
  br label %do.cond24, !dbg !551

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !551

do.end25:                                         ; preds = %do.cond24
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !544
  br label %do.cond26, !dbg !545

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !545

do.end27:                                         ; preds = %do.cond26
  br label %if.end, !dbg !545

if.end:                                           ; preds = %do.end27, %cond.end
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !543
  %tobool28 = icmp ne i32 %12, 0, !dbg !543
  %lnot29 = xor i1 %tobool28, true, !dbg !543
  %lnot31 = xor i1 %lnot29, true, !dbg !543
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !543
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !543
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !543
  store i64 %expval34, ptr %tmp, align 8, !dbg !544
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !553
  %13 = load i64, ptr %tmp, align 8, !dbg !543
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on35) #11, !dbg !554
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on35, metadata !536, metadata !DIExpression()), !dbg !554
  %14 = load i32, ptr %error.addr, align 4, !dbg !554
  %cmp36 = icmp sge i32 %14, 0, !dbg !554
  br i1 %cmp36, label %lor.end, label %lor.rhs, !dbg !554

lor.rhs:                                          ; preds = %if.end
  %15 = load i32, ptr %error.addr, align 4, !dbg !554
  %cmp38 = icmp slt i32 %15, -4095, !dbg !554
  br label %lor.end, !dbg !554

lor.end:                                          ; preds = %lor.rhs, %if.end
  %16 = phi i1 [ true, %if.end ], [ %cmp38, %lor.rhs ]
  %lnot40 = xor i1 %16, true, !dbg !554
  %lnot42 = xor i1 %lnot40, true, !dbg !554
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !554
  store i32 %lnot.ext43, ptr %__ret_warn_on35, align 4, !dbg !554
  %17 = load i32, ptr %__ret_warn_on35, align 4, !dbg !555
  %tobool44 = icmp ne i32 %17, 0, !dbg !555
  %lnot45 = xor i1 %tobool44, true, !dbg !555
  %lnot47 = xor i1 %lnot45, true, !dbg !555
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !555
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !555
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !555
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !555
  br i1 %tobool51, label %if.then52, label %if.end66, !dbg !554

if.then52:                                        ; preds = %lor.end
  br label %do.body53, !dbg !555

do.body53:                                        ; preds = %if.then52
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags54) #11, !dbg !556
  call void @llvm.dbg.declare(metadata ptr %__flags54, metadata !538, metadata !DIExpression()), !dbg !556
  store i32 2305, ptr %__flags54, align 4, !dbg !556
  br label %do.body55, !dbg !556

do.body55:                                        ; preds = %do.body53
  br label %do.cond56, !dbg !557

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !557

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !556

do.body58:                                        ; preds = %do.end57
  %18 = load i32, ptr %__flags54, align 4, !dbg !559
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 581, i32 %18, i64 12) #11, !dbg !559, !srcloc !561
  br label %do.cond59, !dbg !559

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !559

do.end60:                                         ; preds = %do.cond59
  br label %do.body61, !dbg !556

do.body61:                                        ; preds = %do.end60
  br label %do.cond62, !dbg !562

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !562

do.end63:                                         ; preds = %do.cond62
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags54) #11, !dbg !555
  br label %do.cond64, !dbg !556

do.cond64:                                        ; preds = %do.end63
  br label %do.end65, !dbg !556

do.end65:                                         ; preds = %do.cond64
  br label %if.end66, !dbg !556

if.end66:                                         ; preds = %do.end65, %lor.end
  %19 = load i32, ptr %__ret_warn_on35, align 4, !dbg !554
  %tobool68 = icmp ne i32 %19, 0, !dbg !554
  %lnot69 = xor i1 %tobool68, true, !dbg !554
  %lnot71 = xor i1 %lnot69, true, !dbg !554
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !554
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !554
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 0), !dbg !554
  store i64 %expval74, ptr %tmp67, align 8, !dbg !555
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on35) #11, !dbg !564
  %20 = load i64, ptr %tmp67, align 8, !dbg !554
  %21 = load i32, ptr %error.addr, align 4, !dbg !565
  %22 = load ptr, ptr %fence.addr, align 8, !dbg !566
  %error75 = getelementptr inbounds %struct.dma_fence, ptr %22, i32 0, i32 7, !dbg !567
  store i32 %21, ptr %error75, align 4, !dbg !568
  ret void, !dbg !569
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #5 align 16 !dbg !570 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !574, metadata !DIExpression()), !dbg !575
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !576
  %tobool = icmp ne ptr %0, null, !dbg !576
  br i1 %tobool, label %if.then, label %if.end, !dbg !578

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !579
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !580
  call void @kref_get(ptr noundef %refcount) #10, !dbg !581
  br label %if.end, !dbg !581

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !582
  ret ptr %2, !dbg !583
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !584 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !592, metadata !DIExpression()), !dbg !597
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !593, metadata !DIExpression()), !dbg !598
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !599
  call void @llvm.dbg.declare(metadata ptr %p, metadata !594, metadata !DIExpression()), !dbg !600
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !601
  %1 = load i64, ptr %nr.addr, align 8, !dbg !602
  %div = udiv i64 %1, 64, !dbg !602
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !603
  store ptr %add.ptr, ptr %p, align 8, !dbg !600
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !604
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !595, metadata !DIExpression()), !dbg !605
  %2 = load i64, ptr %nr.addr, align 8, !dbg !606
  %rem = urem i64 %2, 64, !dbg !606
  %shl = shl i64 1, %rem, !dbg !606
  store i64 %shl, ptr %mask, align 8, !dbg !605
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %val, metadata !596, metadata !DIExpression()), !dbg !608
  %3 = load ptr, ptr %p, align 8, !dbg !609
  %4 = load i64, ptr %3, align 8, !dbg !610
  store i64 %4, ptr %val, align 8, !dbg !608
  %5 = load i64, ptr %val, align 8, !dbg !611
  %6 = load i64, ptr %mask, align 8, !dbg !612
  %and = and i64 %5, %6, !dbg !613
  %tobool = icmp ne i64 %and, 0, !dbg !614
  %lnot = xor i1 %tobool, true, !dbg !614
  %lnot1 = xor i1 %lnot, true, !dbg !615
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !616
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !616
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !616
  ret i1 %lnot1, !dbg !617
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !618 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !621, metadata !DIExpression()), !dbg !623
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !622, metadata !DIExpression()), !dbg !624
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !625
  %1 = load i64, ptr %nr.addr, align 8, !dbg !626
  %div = udiv i64 %1, 64, !dbg !626
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !627
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !628
  %2 = load i64, ptr %nr.addr, align 8, !dbg !629
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !630
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !631
  ret i1 %call, !dbg !632
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #5 align 16 !dbg !633 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !639, metadata !DIExpression()), !dbg !641
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !640, metadata !DIExpression()), !dbg !642
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !643
  %1 = load ptr, ptr %work.addr, align 8, !dbg !644
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #10, !dbg !645
  ret i1 %call, !dbg !646
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fence_complete(ptr noundef %f) #0 align 16 !dbg !647 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !649, metadata !DIExpression()), !dbg !650
  %0 = load ptr, ptr %f.addr, align 8, !dbg !651
  %ops = getelementptr inbounds %struct.dma_fence_work, ptr %0, i32 0, i32 5, !dbg !653
  %1 = load ptr, ptr %ops, align 8, !dbg !653
  %release = getelementptr inbounds %struct.dma_fence_work_ops, ptr %1, i32 0, i32 2, !dbg !654
  %2 = load ptr, ptr %release, align 8, !dbg !654
  %tobool = icmp ne ptr %2, null, !dbg !651
  br i1 %tobool, label %if.then, label %if.end, !dbg !655

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %f.addr, align 8, !dbg !656
  %ops1 = getelementptr inbounds %struct.dma_fence_work, ptr %3, i32 0, i32 5, !dbg !657
  %4 = load ptr, ptr %ops1, align 8, !dbg !657
  %release2 = getelementptr inbounds %struct.dma_fence_work_ops, ptr %4, i32 0, i32 2, !dbg !658
  %5 = load ptr, ptr %release2, align 8, !dbg !658
  %6 = load ptr, ptr %f.addr, align 8, !dbg !659
  call void %5(ptr noundef %6) #10, !dbg !656
  br label %if.end, !dbg !656

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %f.addr, align 8, !dbg !660
  %dma = getelementptr inbounds %struct.dma_fence_work, ptr %7, i32 0, i32 0, !dbg !661
  %call = call i32 @dma_fence_signal(ptr noundef %dma) #10, !dbg !662
  ret void, !dbg !663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #5 align 16 !dbg !664 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !666, metadata !DIExpression()), !dbg !667
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !668
  %tobool = icmp ne ptr %0, null, !dbg !668
  br i1 %tobool, label %if.then, label %if.end, !dbg !670

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !671
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !672
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #10, !dbg !673
  br label %if.end, !dbg !673

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !674
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #5 align 16 !dbg !675 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !680, metadata !DIExpression()), !dbg !681
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !682
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !683
  call void @refcount_inc(ptr noundef %refcount) #10, !dbg !684
  ret void, !dbg !685
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #5 align 16 !dbg !686 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !691, metadata !DIExpression()), !dbg !692
  %0 = load ptr, ptr %r.addr, align 8, !dbg !693
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #10, !dbg !694
  ret void, !dbg !695
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !696 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !701, metadata !DIExpression()), !dbg !703
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !702, metadata !DIExpression()), !dbg !704
  %0 = load ptr, ptr %r.addr, align 8, !dbg !705
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !706
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #10, !dbg !707
  ret void, !dbg !708
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !709 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !713, metadata !DIExpression()), !dbg !717
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !714, metadata !DIExpression()), !dbg !718
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !715, metadata !DIExpression()), !dbg !719
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %old, metadata !716, metadata !DIExpression()), !dbg !721
  %0 = load i32, ptr %i.addr, align 4, !dbg !722
  %1 = load ptr, ptr %r.addr, align 8, !dbg !723
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !724
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #10, !dbg !725
  store i32 %call, ptr %old, align 4, !dbg !721
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !726
  %tobool = icmp ne ptr %2, null, !dbg !726
  br i1 %tobool, label %if.then, label %if.end, !dbg !728

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !729
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !730
  store i32 %3, ptr %4, align 4, !dbg !731
  br label %if.end, !dbg !732

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !733
  %tobool1 = icmp ne i32 %5, 0, !dbg !733
  %lnot = xor i1 %tobool1, true, !dbg !733
  %lnot2 = xor i1 %lnot, true, !dbg !733
  %lnot3 = xor i1 %lnot2, true, !dbg !733
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !733
  %conv = sext i32 %lnot.ext to i64, !dbg !733
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !733
  %tobool4 = icmp ne i64 %expval, 0, !dbg !733
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !735

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !736
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #10, !dbg !737
  br label %if.end18, !dbg !737

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !738
  %cmp = icmp slt i32 %7, 0, !dbg !738
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !738

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !738
  %9 = load i32, ptr %i.addr, align 4, !dbg !738
  %add = add i32 %8, %9, !dbg !738
  %cmp7 = icmp slt i32 %add, 0, !dbg !738
  br label %lor.end, !dbg !738

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !738
  %lnot11 = xor i1 %lnot9, true, !dbg !738
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !738
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !738
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !738
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !738
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !740

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !741
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #10, !dbg !742
  br label %if.end17, !dbg !742

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !743
  ret void, !dbg !743
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !744 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !750, metadata !DIExpression()), !dbg !752
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !751, metadata !DIExpression()), !dbg !753
  %0 = load ptr, ptr %v.addr, align 8, !dbg !754
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !755
  %1 = load i32, ptr %i.addr, align 4, !dbg !756
  %2 = load ptr, ptr %v.addr, align 8, !dbg !757
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #10, !dbg !758
  ret i32 %call, !dbg !759
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !760 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !763 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !775, metadata !DIExpression()), !dbg !777
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !776, metadata !DIExpression()), !dbg !778
  %0 = load ptr, ptr %v.addr, align 8, !dbg !779
  %1 = load i64, ptr %size.addr, align 8, !dbg !780
  %conv = trunc i64 %1 to i32, !dbg !780
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !781
  %2 = load ptr, ptr %v.addr, align 8, !dbg !782
  %3 = load i64, ptr %size.addr, align 8, !dbg !782
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !782
  ret void, !dbg !783
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !784 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !787, metadata !DIExpression()), !dbg !789
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !788, metadata !DIExpression()), !dbg !790
  %0 = load i32, ptr %i.addr, align 4, !dbg !791
  %1 = load ptr, ptr %v.addr, align 8, !dbg !792
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #10, !dbg !793
  ret i32 %call, !dbg !794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !795 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !800, metadata !DIExpression()), !dbg !802
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !801, metadata !DIExpression()), !dbg !803
  ret i1 true, !dbg !804
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !805 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !810, metadata !DIExpression()), !dbg !813
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !811, metadata !DIExpression()), !dbg !814
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !812, metadata !DIExpression()), !dbg !815
  ret void, !dbg !816
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !817 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !820, metadata !DIExpression()), !dbg !824
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !821, metadata !DIExpression()), !dbg !825
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !826
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !822, metadata !DIExpression()), !dbg !826
  %0 = load i32, ptr %i.addr, align 4, !dbg !826
  store i32 %0, ptr %__ret, align 4, !dbg !826
  %1 = load i32, ptr %__ret, align 4, !dbg !826
  %2 = load ptr, ptr %v.addr, align 8, !dbg !826
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !826
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !826, !srcloc !827
  store i32 %3, ptr %__ret, align 4, !dbg !826
  %4 = load i32, ptr %__ret, align 4, !dbg !826
  store i32 %4, ptr %tmp, align 4, !dbg !826
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !828
  %5 = load i32, ptr %tmp, align 4, !dbg !826
  ret i32 %5, !dbg !829
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !830 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !832, metadata !DIExpression()), !dbg !834
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !833, metadata !DIExpression()), !dbg !835
  %0 = load ptr, ptr %v.addr, align 8, !dbg !836
  %1 = load i64, ptr %size.addr, align 8, !dbg !837
  %conv = trunc i64 %1 to i32, !dbg !837
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !838
  %2 = load ptr, ptr %v.addr, align 8, !dbg !839
  %3 = load i64, ptr %size.addr, align 8, !dbg !839
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !839
  ret void, !dbg !840
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !841 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !844, metadata !DIExpression()), !dbg !846
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !845, metadata !DIExpression()), !dbg !847
  %0 = load i64, ptr %nr.addr, align 8, !dbg !848
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !849
  br i1 %1, label %cond.true, label %cond.false, !dbg !849

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !850
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !851
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !852
  %conv = zext i1 %call to i32, !dbg !852
  br label %cond.end, !dbg !849

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !853
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !854
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !855
  %conv2 = zext i1 %call1 to i32, !dbg !855
  br label %cond.end, !dbg !849

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !849
  %tobool = icmp ne i32 %cond, 0, !dbg !849
  ret i1 %tobool, !dbg !856
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !857 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !859, metadata !DIExpression()), !dbg !861
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !860, metadata !DIExpression()), !dbg !862
  ret i1 true, !dbg !863
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !864 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !868, metadata !DIExpression()), !dbg !870
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !869, metadata !DIExpression()), !dbg !871
  %0 = load i64, ptr %nr.addr, align 8, !dbg !872
  %and = and i64 %0, 63, !dbg !873
  %shl = shl i64 1, %and, !dbg !874
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !875
  %2 = load i64, ptr %nr.addr, align 8, !dbg !876
  %shr = ashr i64 %2, 6, !dbg !877
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !875
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !875
  %and1 = and i64 %shl, %3, !dbg !878
  %cmp = icmp ne i64 %and1, 0, !dbg !879
  ret i1 %cmp, !dbg !880
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !881 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !883, metadata !DIExpression()), !dbg !886
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !884, metadata !DIExpression()), !dbg !887
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !885, metadata !DIExpression()), !dbg !889
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !890
  %1 = load i64, ptr %nr.addr, align 8, !dbg !891
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !892, !srcloc !893
  %3 = icmp ult i8 %2, 2, !dbg !892
  call void @llvm.assume(i1 %3), !dbg !892
  store i8 %2, ptr %oldbit, align 1, !dbg !892
  %4 = load i8, ptr %oldbit, align 1, !dbg !894, !range !895, !noundef !275
  %tobool = trunc i8 %4 to i1, !dbg !894
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !896
  ret i1 %tobool, !dbg !897
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !898 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !901 dso_local i32 @dma_fence_signal(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #5 align 16 !dbg !904 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !909, metadata !DIExpression()), !dbg !911
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !910, metadata !DIExpression()), !dbg !912
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !913
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !915
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #10, !dbg !916
  br i1 %call, label %if.then, label %if.end, !dbg !917

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !918
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !920
  call void %1(ptr noundef %2) #10, !dbg !918
  store i32 1, ptr %retval, align 4, !dbg !921
  br label %return, !dbg !921

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !922
  br label %return, !dbg !922

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !923
  ret i32 %3, !dbg !923
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !924 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !928, metadata !DIExpression()), !dbg !929
  %0 = load ptr, ptr %r.addr, align 8, !dbg !930
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #10, !dbg !931
  ret i1 %call, !dbg !932
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !933 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !937, metadata !DIExpression()), !dbg !939
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !938, metadata !DIExpression()), !dbg !940
  %0 = load ptr, ptr %r.addr, align 8, !dbg !941
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !942
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #10, !dbg !943
  ret i1 %call, !dbg !944
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !945 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !949, metadata !DIExpression()), !dbg !953
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !950, metadata !DIExpression()), !dbg !954
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !951, metadata !DIExpression()), !dbg !955
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #11, !dbg !956
  call void @llvm.dbg.declare(metadata ptr %old, metadata !952, metadata !DIExpression()), !dbg !957
  %0 = load i32, ptr %i.addr, align 4, !dbg !958
  %1 = load ptr, ptr %r.addr, align 8, !dbg !959
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !960
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #10, !dbg !961
  store i32 %call, ptr %old, align 4, !dbg !957
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !962
  %tobool = icmp ne ptr %2, null, !dbg !962
  br i1 %tobool, label %if.then, label %if.end, !dbg !964

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !965
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !966
  store i32 %3, ptr %4, align 4, !dbg !967
  br label %if.end, !dbg !968

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !969
  %6 = load i32, ptr %i.addr, align 4, !dbg !971
  %cmp = icmp eq i32 %5, %6, !dbg !972
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !973

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !974

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !976

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !978

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !978

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !976

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !980

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !982

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !982

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !980, !srcloc !984
  br label %do.cond7, !dbg !980

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !980

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !976

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !976

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !985

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !986
  %cmp12 = icmp slt i32 %7, 0, !dbg !986
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !986

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !986
  %9 = load i32, ptr %i.addr, align 4, !dbg !986
  %sub = sub i32 %8, %9, !dbg !986
  %cmp13 = icmp slt i32 %sub, 0, !dbg !986
  br label %lor.end, !dbg !986

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !986
  %lnot14 = xor i1 %lnot, true, !dbg !986
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !986
  %conv = sext i32 %lnot.ext to i64, !dbg !986
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !986
  %tobool15 = icmp ne i64 %expval, 0, !dbg !986
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !988

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !989
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #10, !dbg !990
  br label %if.end17, !dbg !990

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !991

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #11, !dbg !992
  %12 = load i1, ptr %retval, align 1, !dbg !992
  ret i1 %12, !dbg !992
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !993 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !995, metadata !DIExpression()), !dbg !997
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !996, metadata !DIExpression()), !dbg !998
  br label %do.body, !dbg !999

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1000

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1002
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !1003
  %1 = load i32, ptr %i.addr, align 4, !dbg !1004
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1005
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #10, !dbg !1006
  ret i32 %call, !dbg !1007
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !1008 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1010, metadata !DIExpression()), !dbg !1012
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1011, metadata !DIExpression()), !dbg !1013
  %0 = load i32, ptr %i.addr, align 4, !dbg !1014
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1015
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #10, !dbg !1016
  ret i32 %call, !dbg !1017
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #2 align 16 !dbg !1018 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1020, metadata !DIExpression()), !dbg !1024
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1021, metadata !DIExpression()), !dbg !1025
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #11, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1022, metadata !DIExpression()), !dbg !1026
  %0 = load i32, ptr %i.addr, align 4, !dbg !1026
  %sub = sub i32 0, %0, !dbg !1026
  store i32 %sub, ptr %__ret, align 4, !dbg !1026
  %1 = load i32, ptr %__ret, align 4, !dbg !1026
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1026
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !1026
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #11, !dbg !1026, !srcloc !1027
  store i32 %3, ptr %__ret, align 4, !dbg !1026
  %4 = load i32, ptr %__ret, align 4, !dbg !1026
  store i32 %4, ptr %tmp, align 4, !dbg !1026
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #11, !dbg !1028
  %5 = load i32, ptr %tmp, align 4, !dbg !1026
  ret i32 %5, !dbg !1029
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296, !297, !298}
!llvm.ident = !{!299}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fence_ops", scope: !2, file: !3, line: 77, type: !118, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_sw_fence_work.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_sw_fence_work\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_sw_fence_work.ll drivers/gpu/drm/i915/i915_sw_fence_work.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !61, globals: !264, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/i915/i915_sw_fence_work.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03c445276dd7fc5f73c91477945eb7a4")
!4 = !{!5, !11, !37, !41, !48, !56}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "i915_sw_fence_notify", file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/gpu/drm/i915/i915_sw_fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03d1e1d9373fbc2e669daced9ccb8b3a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "FENCE_COMPLETE", value: 0)
!10 = !DIEnumerator(name: "FENCE_FREE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 30, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!14 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!15 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!16 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!17 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!18 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!19 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!20 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!21 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!22 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!23 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!24 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!25 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!26 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!27 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!28 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!29 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!30 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!31 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!32 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!33 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!34 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!35 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!36 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !38, line: 35, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "drivers/gpu/drm/i915/i915_sw_fence_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9518347a96f65d284361cadbcba2e87e")
!39 = !{!40}
!40 = !DIEnumerator(name: "DMA_FENCE_WORK_IMM", value: 3)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !42, line: 98, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0)
!45 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1)
!46 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2)
!47 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !49, line: 119, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!52 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!53 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!54 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!55 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 10, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "false", value: 0)
!60 = !DIEnumerator(name: "true", value: 1)
!61 = !{!62, !63, !64, !258, !259, !261, !262}
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_work", file: !38, line: 24, size: 1472, elements: !66)
!66 = !{!67, !197, !198, !216, !230, !247}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !65, file: !38, line: 25, baseType: !68, size: 512)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !42, line: 65, size: 512, elements: !69)
!69 = !{!70, !116, !162, !181, !185, !186, !187, !196}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !42, line: 66, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !73, line: 29, baseType: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !73, line: 17, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !73, line: 18, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !74, file: !73, line: 18, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !77, file: !73, line: 19, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !81, line: 14, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !80, file: !81, line: 15, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !85, line: 44, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !85, line: 14, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !85, line: 15, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 15, size: 32, elements: !90)
!90 = !{!91, !98, !108}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !89, file: !85, line: 16, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !93, line: 174, baseType: !94)
!93 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 172, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !94, file: !93, line: 173, baseType: !97, size: 32)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 24, baseType: !99, size: 16)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 24, size: 16, elements: !100)
!100 = !{!101, !107}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !99, file: !85, line: 25, baseType: !102, size: 8)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !103, line: 17, baseType: !104)
!103 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !105, line: 21, baseType: !106)
!105 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !99, file: !85, line: 26, baseType: !102, size: 8, offset: 8)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !85, line: 28, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !85, line: 28, size: 32, elements: !110)
!110 = !{!111, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !109, file: !85, line: 29, baseType: !112, size: 16)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !103, line: 19, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !105, line: 24, baseType: !114)
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !109, file: !85, line: 30, baseType: !112, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !68, file: !42, line: 67, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !42, line: 125, size: 640, elements: !120)
!120 = !{!121, !124, !132, !133, !137, !138, !143, !147, !152, !153}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !119, file: !42, line: 132, baseType: !122, size: 8)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !93, line: 35, baseType: !123)
!123 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !119, file: !42, line: 143, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !131}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !119, file: !42, line: 155, baseType: !125, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !119, file: !42, line: 192, baseType: !134, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!122, !131}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !119, file: !42, line: 209, baseType: !134, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !119, file: !42, line: 227, baseType: !139, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !131, !122, !142}
!142 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !119, file: !42, line: 238, baseType: !144, size: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !131}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !119, file: !42, line: 248, baseType: !148, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !131, !151, !97}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !119, file: !42, line: 258, baseType: !148, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !119, file: !42, line: 279, baseType: !154, size: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !131, !157}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !158, line: 29, baseType: !159)
!158 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !103, line: 22, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !105, line: 30, baseType: !161)
!161 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !42, line: 84, baseType: !163, size: 128, offset: 128)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !42, line: 84, size: 128, elements: !164)
!164 = !{!165, !171, !172}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !163, file: !42, line: 85, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !93, line: 190, size: 128, elements: !167)
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !93, line: 191, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !166, file: !93, line: 191, baseType: !169, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !163, file: !42, line: 87, baseType: !157, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !163, file: !42, line: 89, baseType: !173, size: 128, align: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !93, line: 232, size: 128, align: 64, elements: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !93, line: 233, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !173, file: !93, line: 234, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !176}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !68, file: !42, line: 91, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !103, line: 23, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !105, line: 31, baseType: !184)
!184 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !68, file: !42, line: 92, baseType: !182, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !42, line: 93, baseType: !62, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !68, file: !42, line: 94, baseType: !188, size: 32, offset: 448)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !189, line: 19, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !188, file: !189, line: 20, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !49, line: 113, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !49, line: 111, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !193, file: !49, line: 112, baseType: !92, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !68, file: !42, line: 95, baseType: !97, size: 32, offset: 480)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !65, file: !38, line: 26, baseType: !72, size: 32, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !65, file: !38, line: 28, baseType: !199, size: 320, offset: 576)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_sw_fence", file: !6, line: 30, size: 320, elements: !200)
!200 = !{!201, !208, !214, !215}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !199, file: !6, line: 31, baseType: !202, size: 192)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !203, line: 41, baseType: !204)
!203 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !203, line: 37, size: 192, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !204, file: !203, line: 38, baseType: !72, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !204, file: !203, line: 39, baseType: !166, size: 128, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !199, file: !6, line: 32, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "i915_sw_fence_notify_t", file: !6, line: 27, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!97, !213, !5}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !199, file: !6, line: 36, baseType: !92, size: 32, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !199, file: !6, line: 37, baseType: !97, size: 32, offset: 288)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !65, file: !38, line: 29, baseType: !217, size: 256, offset: 896)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_sw_dma_fence_cb", file: !6, line: 79, size: 256, elements: !218)
!218 = !{!219, !229}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !217, file: !6, line: 80, baseType: !220, size: 192)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !42, line: 116, size: 192, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !220, file: !42, line: 117, baseType: !166, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !220, file: !42, line: 118, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !42, line: 105, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !131, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !217, file: !6, line: 81, baseType: !213, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !65, file: !38, line: 31, baseType: !231, size: 256, offset: 1152)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !12, line: 98, size: 256, elements: !232)
!232 = !{!233, !240, !241}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !12, line: 99, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !235, line: 13, baseType: !236)
!235 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !93, line: 181, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 179, size: 64, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !237, file: !93, line: 180, baseType: !159, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !231, file: !12, line: 100, baseType: !166, size: 128, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !231, file: !12, line: 101, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !12, line: 21, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !65, file: !38, line: 32, baseType: !248, size: 64, offset: 1408)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_work_ops", file: !38, line: 18, size: 192, elements: !251)
!251 = !{!252, !253, !257}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !38, line: 19, baseType: !128, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !250, file: !38, line: 20, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !64}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !250, file: !38, line: 21, baseType: !254, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !93, line: 42, baseType: !62)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !169)
!264 = !{!265, !0, !276, !281, !286}
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "__key", scope: !267, file: !3, line: 90, type: !273, isLocal: true, isDefinition: true)
!267 = distinct !DISubprogram(name: "dma_fence_work_init", scope: !3, file: !3, line: 83, type: !268, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !270)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !64, !248}
!270 = !{!271, !272}
!271 = !DILocalVariable(name: "f", arg: 1, scope: !267, file: !3, line: 83, type: !64)
!272 = !DILocalVariable(name: "ops", arg: 2, scope: !267, file: !3, line: 84, type: !248)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !274, line: 206, elements: !275)
!274 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!275 = !{}
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 80, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 10)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 40, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 5)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !42, line: 580, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 208, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 26)
!291 = !{i32 7, !"Dwarf Version", i32 5}
!292 = !{i32 2, !"Debug Info Version", i32 3}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 8, !"cf-protection-branch", i32 1}
!295 = !{i32 4, !"function_return_thunk_extern", i32 1}
!296 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!297 = !{i32 1, !"Code Model", i32 2}
!298 = !{i32 1, !"override-stack-alignment", i32 8}
!299 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!300 = !DILocation(line: 83, column: 49, scope: !267)
!301 = !DILocation(line: 84, column: 38, scope: !267)
!302 = !DILocation(line: 86, column: 11, scope: !267)
!303 = !DILocation(line: 86, column: 2, scope: !267)
!304 = !DILocation(line: 86, column: 5, scope: !267)
!305 = !DILocation(line: 86, column: 9, scope: !267)
!306 = !DILocation(line: 87, column: 2, scope: !267)
!307 = !DILocation(line: 87, column: 2, scope: !308)
!308 = distinct !DILexicalBlock(scope: !267, file: !3, line: 87, column: 2)
!309 = !DILocation(line: 88, column: 18, scope: !267)
!310 = !DILocation(line: 88, column: 21, scope: !267)
!311 = !DILocation(line: 88, column: 39, scope: !267)
!312 = !DILocation(line: 88, column: 42, scope: !267)
!313 = !DILocation(line: 88, column: 2, scope: !267)
!314 = !DILocation(line: 89, column: 2, scope: !267)
!315 = !DILocation(line: 89, column: 2, scope: !316)
!316 = distinct !DILexicalBlock(scope: !267, file: !3, line: 89, column: 2)
!317 = !DILocation(line: 89, column: 2, scope: !318)
!318 = distinct !DILexicalBlock(scope: !316, file: !3, line: 89, column: 2)
!319 = !DILocation(line: 90, column: 2, scope: !267)
!320 = !DILocation(line: 90, column: 2, scope: !321)
!321 = distinct !DILexicalBlock(scope: !267, file: !3, line: 90, column: 2)
!322 = !DILocation(line: 90, column: 2, scope: !323)
!323 = distinct !DILexicalBlock(scope: !321, file: !3, line: 90, column: 2)
!324 = !DILocation(line: 91, column: 1, scope: !267)
!325 = distinct !DISubprogram(name: "spinlock_check", scope: !326, file: !326, line: 324, type: !327, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!326 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !71}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !81, line: 23, baseType: !80)
!331 = !{!332}
!332 = !DILocalVariable(name: "lock", arg: 1, scope: !325, file: !326, line: 324, type: !71)
!333 = !DILocation(line: 324, column: 67, scope: !325)
!334 = !DILocation(line: 326, column: 10, scope: !325)
!335 = !DILocation(line: 326, column: 16, scope: !325)
!336 = !DILocation(line: 326, column: 2, scope: !325)
!337 = !DISubprogram(name: "dma_fence_init", scope: !42, file: !42, line: 282, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !131, !117, !71, !182, !182}
!340 = !DISubprogram(name: "__i915_sw_fence_init", scope: !6, file: !6, line: 42, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !213, !209, !128, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!344 = distinct !DISubprogram(name: "fence_notify", scope: !3, file: !3, line: 27, type: !211, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!345 = !{!346, !347, !348, !349}
!346 = !DILocalVariable(name: "fence", arg: 1, scope: !344, file: !3, line: 27, type: !213)
!347 = !DILocalVariable(name: "state", arg: 2, scope: !344, file: !3, line: 27, type: !5)
!348 = !DILocalVariable(name: "f", scope: !344, file: !3, line: 29, type: !64)
!349 = !DILocalVariable(name: "__mptr", scope: !350, file: !3, line: 29, type: !63)
!350 = distinct !DILexicalBlock(scope: !344, file: !3, line: 29, column: 29)
!351 = !DILocation(line: 27, column: 36, scope: !344)
!352 = !DILocation(line: 27, column: 69, scope: !344)
!353 = !DILocation(line: 29, column: 2, scope: !344)
!354 = !DILocation(line: 29, column: 25, scope: !344)
!355 = !DILocation(line: 29, column: 29, scope: !350)
!356 = !DILocation(line: 29, column: 29, scope: !344)
!357 = !DILocation(line: 31, column: 10, scope: !344)
!358 = !DILocation(line: 31, column: 2, scope: !344)
!359 = !DILocation(line: 33, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 33, column: 7)
!361 = distinct !DILexicalBlock(scope: !344, file: !3, line: 31, column: 17)
!362 = !DILocation(line: 33, column: 14, scope: !360)
!363 = !DILocation(line: 33, column: 7, scope: !361)
!364 = !DILocation(line: 34, column: 25, scope: !360)
!365 = !DILocation(line: 34, column: 28, scope: !360)
!366 = !DILocation(line: 34, column: 33, scope: !360)
!367 = !DILocation(line: 34, column: 40, scope: !360)
!368 = !DILocation(line: 34, column: 4, scope: !360)
!369 = !DILocation(line: 36, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !361, file: !3, line: 36, column: 7)
!371 = !DILocation(line: 36, column: 11, scope: !370)
!372 = !DILocation(line: 36, column: 15, scope: !370)
!373 = !DILocation(line: 36, column: 7, scope: !361)
!374 = !DILocation(line: 37, column: 19, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !3, line: 36, column: 22)
!376 = !DILocation(line: 37, column: 22, scope: !375)
!377 = !DILocation(line: 37, column: 4, scope: !375)
!378 = !DILocation(line: 38, column: 8, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 38, column: 8)
!380 = !DILocation(line: 38, column: 8, scope: !375)
!381 = !DILocation(line: 39, column: 17, scope: !379)
!382 = !DILocation(line: 39, column: 20, scope: !379)
!383 = !DILocation(line: 39, column: 5, scope: !379)
!384 = !DILocation(line: 41, column: 16, scope: !379)
!385 = !DILocation(line: 41, column: 36, scope: !379)
!386 = !DILocation(line: 41, column: 39, scope: !379)
!387 = !DILocation(line: 41, column: 5, scope: !379)
!388 = !DILocation(line: 42, column: 3, scope: !375)
!389 = !DILocation(line: 43, column: 19, scope: !390)
!390 = distinct !DILexicalBlock(scope: !370, file: !3, line: 42, column: 10)
!391 = !DILocation(line: 43, column: 4, scope: !390)
!392 = !DILocation(line: 45, column: 3, scope: !361)
!393 = !DILocation(line: 48, column: 18, scope: !361)
!394 = !DILocation(line: 48, column: 21, scope: !361)
!395 = !DILocation(line: 48, column: 3, scope: !361)
!396 = !DILocation(line: 49, column: 3, scope: !361)
!397 = !DILocation(line: 53, column: 1, scope: !344)
!398 = !DILocation(line: 52, column: 2, scope: !344)
!399 = distinct !DISubprogram(name: "__init_work", scope: !12, file: !12, line: 263, type: !400, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !246, !97}
!402 = !{!403, !404}
!403 = !DILocalVariable(name: "work", arg: 1, scope: !399, file: !12, line: 263, type: !246)
!404 = !DILocalVariable(name: "onstack", arg: 2, scope: !399, file: !12, line: 263, type: !97)
!405 = !DILocation(line: 263, column: 52, scope: !399)
!406 = !DILocation(line: 263, column: 62, scope: !399)
!407 = !DILocation(line: 263, column: 73, scope: !399)
!408 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !409, file: !409, line: 35, type: !410, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!409 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!410 = !DISubroutineType(types: !411)
!411 = !{null, !169}
!412 = !{!413}
!413 = !DILocalVariable(name: "list", arg: 1, scope: !408, file: !409, line: 35, type: !169)
!414 = !DILocation(line: 35, column: 53, scope: !408)
!415 = !DILocation(line: 37, column: 2, scope: !408)
!416 = !DILocation(line: 37, column: 2, scope: !417)
!417 = distinct !DILexicalBlock(scope: !408, file: !409, line: 37, column: 2)
!418 = !DILocation(line: 37, column: 2, scope: !419)
!419 = distinct !DILexicalBlock(scope: !417, file: !409, line: 37, column: 2)
!420 = !DILocation(line: 37, column: 2, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !409, line: 37, column: 2)
!422 = !DILocation(line: 38, column: 2, scope: !408)
!423 = !DILocation(line: 38, column: 2, scope: !424)
!424 = distinct !DILexicalBlock(scope: !408, file: !409, line: 38, column: 2)
!425 = !DILocation(line: 38, column: 2, scope: !426)
!426 = distinct !DILexicalBlock(scope: !424, file: !409, line: 38, column: 2)
!427 = !DILocation(line: 38, column: 2, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !409, line: 38, column: 2)
!429 = !DILocation(line: 39, column: 1, scope: !408)
!430 = distinct !DISubprogram(name: "fence_work", scope: !3, file: !3, line: 16, type: !244, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !431)
!431 = !{!432, !433, !434}
!432 = !DILocalVariable(name: "work", arg: 1, scope: !430, file: !3, line: 16, type: !246)
!433 = !DILocalVariable(name: "f", scope: !430, file: !3, line: 18, type: !64)
!434 = !DILocalVariable(name: "__mptr", scope: !435, file: !3, line: 18, type: !63)
!435 = distinct !DILexicalBlock(scope: !430, file: !3, line: 18, column: 29)
!436 = !DILocation(line: 16, column: 44, scope: !430)
!437 = !DILocation(line: 18, column: 2, scope: !430)
!438 = !DILocation(line: 18, column: 25, scope: !430)
!439 = !DILocation(line: 18, column: 29, scope: !435)
!440 = !DILocation(line: 18, column: 29, scope: !430)
!441 = !DILocation(line: 20, column: 2, scope: !430)
!442 = !DILocation(line: 20, column: 5, scope: !430)
!443 = !DILocation(line: 20, column: 10, scope: !430)
!444 = !DILocation(line: 20, column: 15, scope: !430)
!445 = !DILocation(line: 22, column: 17, scope: !430)
!446 = !DILocation(line: 22, column: 2, scope: !430)
!447 = !DILocation(line: 23, column: 17, scope: !430)
!448 = !DILocation(line: 23, column: 20, scope: !430)
!449 = !DILocation(line: 23, column: 2, scope: !430)
!450 = !DILocation(line: 24, column: 1, scope: !430)
!451 = distinct !DISubprogram(name: "dma_fence_work_chain", scope: !3, file: !3, line: 93, type: !452, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!97, !64, !131}
!454 = !{!455, !456}
!455 = !DILocalVariable(name: "f", arg: 1, scope: !451, file: !3, line: 93, type: !64)
!456 = !DILocalVariable(name: "signal", arg: 2, scope: !451, file: !3, line: 93, type: !131)
!457 = !DILocation(line: 93, column: 49, scope: !451)
!458 = !DILocation(line: 93, column: 70, scope: !451)
!459 = !DILocation(line: 95, column: 7, scope: !460)
!460 = distinct !DILexicalBlock(scope: !451, file: !3, line: 95, column: 6)
!461 = !DILocation(line: 95, column: 6, scope: !451)
!462 = !DILocation(line: 96, column: 3, scope: !460)
!463 = !DILocation(line: 98, column: 42, scope: !451)
!464 = !DILocation(line: 98, column: 45, scope: !451)
!465 = !DILocation(line: 98, column: 52, scope: !451)
!466 = !DILocation(line: 98, column: 61, scope: !451)
!467 = !DILocation(line: 98, column: 64, scope: !451)
!468 = !DILocation(line: 98, column: 9, scope: !451)
!469 = !DILocation(line: 98, column: 2, scope: !451)
!470 = !DILocation(line: 99, column: 1, scope: !451)
!471 = !DISubprogram(name: "__i915_sw_fence_await_dma_fence", scope: !6, file: !6, line: 84, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{!97, !213, !131, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!475 = distinct !DISubprogram(name: "get_driver_name", scope: !3, file: !3, line: 55, type: !126, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !476)
!476 = !{!477}
!477 = !DILocalVariable(name: "fence", arg: 1, scope: !475, file: !3, line: 55, type: !131)
!478 = !DILocation(line: 55, column: 54, scope: !475)
!479 = !DILocation(line: 57, column: 2, scope: !475)
!480 = distinct !DISubprogram(name: "get_timeline_name", scope: !3, file: !3, line: 60, type: !126, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!481 = !{!482, !483, !484}
!482 = !DILocalVariable(name: "fence", arg: 1, scope: !480, file: !3, line: 60, type: !131)
!483 = !DILocalVariable(name: "f", scope: !480, file: !3, line: 62, type: !64)
!484 = !DILocalVariable(name: "__mptr", scope: !485, file: !3, line: 62, type: !63)
!485 = distinct !DILexicalBlock(scope: !480, file: !3, line: 62, column: 29)
!486 = !DILocation(line: 60, column: 56, scope: !480)
!487 = !DILocation(line: 62, column: 2, scope: !480)
!488 = !DILocation(line: 62, column: 25, scope: !480)
!489 = !DILocation(line: 62, column: 29, scope: !485)
!490 = !DILocation(line: 62, column: 29, scope: !480)
!491 = !DILocation(line: 64, column: 9, scope: !480)
!492 = !DILocation(line: 64, column: 12, scope: !480)
!493 = !DILocation(line: 64, column: 17, scope: !480)
!494 = !DILocation(line: 65, column: 1, scope: !480)
!495 = !DILocation(line: 64, column: 2, scope: !480)
!496 = distinct !DISubprogram(name: "fence_release", scope: !3, file: !3, line: 67, type: !145, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!497 = !{!498, !499, !500}
!498 = !DILocalVariable(name: "fence", arg: 1, scope: !496, file: !3, line: 67, type: !131)
!499 = !DILocalVariable(name: "f", scope: !496, file: !3, line: 69, type: !64)
!500 = !DILocalVariable(name: "__mptr", scope: !501, file: !3, line: 69, type: !63)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 69, column: 29)
!502 = !DILocation(line: 67, column: 45, scope: !496)
!503 = !DILocation(line: 69, column: 2, scope: !496)
!504 = !DILocation(line: 69, column: 25, scope: !496)
!505 = !DILocation(line: 69, column: 29, scope: !501)
!506 = !DILocation(line: 69, column: 29, scope: !496)
!507 = !DILocation(line: 71, column: 22, scope: !496)
!508 = !DILocation(line: 71, column: 25, scope: !496)
!509 = !DILocation(line: 71, column: 2, scope: !496)
!510 = !DILocation(line: 73, column: 2, scope: !496)
!511 = !DILocation(line: 73, column: 2, scope: !512)
!512 = distinct !DILexicalBlock(scope: !496, file: !3, line: 73, column: 2)
!513 = !DILocation(line: 74, column: 18, scope: !496)
!514 = !DILocation(line: 74, column: 21, scope: !496)
!515 = !DILocation(line: 74, column: 2, scope: !496)
!516 = !DILocation(line: 75, column: 1, scope: !496)
!517 = distinct !DISubprogram(name: "i915_sw_fence_fini", scope: !6, file: !6, line: 67, type: !518, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !213}
!520 = !{!521}
!521 = !DILocalVariable(name: "fence", arg: 1, scope: !517, file: !6, line: 67, type: !213)
!522 = !DILocation(line: 67, column: 61, scope: !517)
!523 = !DILocation(line: 67, column: 69, scope: !517)
!524 = !DISubprogram(name: "dma_fence_free", scope: !42, file: !42, line: 286, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!525 = distinct !DISubprogram(name: "dma_fence_set_error", scope: !42, file: !42, line: 577, type: !526, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !131, !97}
!528 = !{!529, !530, !531, !533, !536, !538}
!529 = !DILocalVariable(name: "fence", arg: 1, scope: !525, file: !42, line: 577, type: !131)
!530 = !DILocalVariable(name: "error", arg: 2, scope: !525, file: !42, line: 578, type: !97)
!531 = !DILocalVariable(name: "__ret_warn_on", scope: !532, file: !42, line: 580, type: !97)
!532 = distinct !DILexicalBlock(scope: !525, file: !42, line: 580, column: 2)
!533 = !DILocalVariable(name: "__flags", scope: !534, file: !42, line: 580, type: !97)
!534 = distinct !DILexicalBlock(scope: !535, file: !42, line: 580, column: 2)
!535 = distinct !DILexicalBlock(scope: !532, file: !42, line: 580, column: 2)
!536 = !DILocalVariable(name: "__ret_warn_on", scope: !537, file: !42, line: 581, type: !97)
!537 = distinct !DILexicalBlock(scope: !525, file: !42, line: 581, column: 2)
!538 = !DILocalVariable(name: "__flags", scope: !539, file: !42, line: 581, type: !97)
!539 = distinct !DILexicalBlock(scope: !540, file: !42, line: 581, column: 2)
!540 = distinct !DILexicalBlock(scope: !537, file: !42, line: 581, column: 2)
!541 = !DILocation(line: 577, column: 58, scope: !525)
!542 = !DILocation(line: 578, column: 16, scope: !525)
!543 = !DILocation(line: 580, column: 2, scope: !532)
!544 = !DILocation(line: 580, column: 2, scope: !535)
!545 = !DILocation(line: 580, column: 2, scope: !534)
!546 = !DILocation(line: 580, column: 2, scope: !547)
!547 = distinct !DILexicalBlock(scope: !534, file: !42, line: 580, column: 2)
!548 = !DILocation(line: 580, column: 2, scope: !549)
!549 = distinct !DILexicalBlock(scope: !534, file: !42, line: 580, column: 2)
!550 = !{i64 2150830245, i64 2150830274, i64 2150830320, i64 2150830378, i64 2150830432, i64 2150830486, i64 2150830541, i64 2150830572, i64 2150830880, i64 2150830886, i64 2150830933, i64 2150830956, i64 2150830982}
!551 = !DILocation(line: 580, column: 2, scope: !552)
!552 = distinct !DILexicalBlock(scope: !534, file: !42, line: 580, column: 2)
!553 = !DILocation(line: 580, column: 2, scope: !525)
!554 = !DILocation(line: 581, column: 2, scope: !537)
!555 = !DILocation(line: 581, column: 2, scope: !540)
!556 = !DILocation(line: 581, column: 2, scope: !539)
!557 = !DILocation(line: 581, column: 2, scope: !558)
!558 = distinct !DILexicalBlock(scope: !539, file: !42, line: 581, column: 2)
!559 = !DILocation(line: 581, column: 2, scope: !560)
!560 = distinct !DILexicalBlock(scope: !539, file: !42, line: 581, column: 2)
!561 = !{i64 2150831767, i64 2150831796, i64 2150831842, i64 2150831900, i64 2150831954, i64 2150832008, i64 2150832063, i64 2150832094, i64 2150832402, i64 2150832408, i64 2150832455, i64 2150832478, i64 2150832504}
!562 = !DILocation(line: 581, column: 2, scope: !563)
!563 = distinct !DILexicalBlock(scope: !539, file: !42, line: 581, column: 2)
!564 = !DILocation(line: 581, column: 2, scope: !525)
!565 = !DILocation(line: 583, column: 17, scope: !525)
!566 = !DILocation(line: 583, column: 2, scope: !525)
!567 = !DILocation(line: 583, column: 9, scope: !525)
!568 = !DILocation(line: 583, column: 15, scope: !525)
!569 = !DILocation(line: 584, column: 1, scope: !525)
!570 = distinct !DISubprogram(name: "dma_fence_get", scope: !42, file: !42, line: 305, type: !571, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!131, !131}
!573 = !{!574}
!574 = !DILocalVariable(name: "fence", arg: 1, scope: !570, file: !42, line: 305, type: !131)
!575 = !DILocation(line: 305, column: 65, scope: !570)
!576 = !DILocation(line: 307, column: 6, scope: !577)
!577 = distinct !DILexicalBlock(scope: !570, file: !42, line: 307, column: 6)
!578 = !DILocation(line: 307, column: 6, scope: !570)
!579 = !DILocation(line: 308, column: 13, scope: !577)
!580 = !DILocation(line: 308, column: 20, scope: !577)
!581 = !DILocation(line: 308, column: 3, scope: !577)
!582 = !DILocation(line: 309, column: 9, scope: !570)
!583 = !DILocation(line: 309, column: 2, scope: !570)
!584 = distinct !DISubprogram(name: "const_test_bit", scope: !585, file: !585, line: 166, type: !586, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !591)
!585 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!586 = !DISubroutineType(types: !587)
!587 = !{!122, !62, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!591 = !{!592, !593, !594, !595, !596}
!592 = !DILocalVariable(name: "nr", arg: 1, scope: !584, file: !585, line: 166, type: !62)
!593 = !DILocalVariable(name: "addr", arg: 2, scope: !584, file: !585, line: 166, type: !588)
!594 = !DILocalVariable(name: "p", scope: !584, file: !585, line: 168, type: !259)
!595 = !DILocalVariable(name: "mask", scope: !584, file: !585, line: 169, type: !62)
!596 = !DILocalVariable(name: "val", scope: !584, file: !585, line: 170, type: !62)
!597 = !DILocation(line: 166, column: 30, scope: !584)
!598 = !DILocation(line: 166, column: 64, scope: !584)
!599 = !DILocation(line: 168, column: 2, scope: !584)
!600 = !DILocation(line: 168, column: 23, scope: !584)
!601 = !DILocation(line: 168, column: 50, scope: !584)
!602 = !DILocation(line: 168, column: 57, scope: !584)
!603 = !DILocation(line: 168, column: 55, scope: !584)
!604 = !DILocation(line: 169, column: 2, scope: !584)
!605 = !DILocation(line: 169, column: 16, scope: !584)
!606 = !DILocation(line: 169, column: 23, scope: !584)
!607 = !DILocation(line: 170, column: 2, scope: !584)
!608 = !DILocation(line: 170, column: 16, scope: !584)
!609 = !DILocation(line: 170, column: 23, scope: !584)
!610 = !DILocation(line: 170, column: 22, scope: !584)
!611 = !DILocation(line: 172, column: 12, scope: !584)
!612 = !DILocation(line: 172, column: 18, scope: !584)
!613 = !DILocation(line: 172, column: 16, scope: !584)
!614 = !DILocation(line: 172, column: 10, scope: !584)
!615 = !DILocation(line: 172, column: 9, scope: !584)
!616 = !DILocation(line: 173, column: 1, scope: !584)
!617 = !DILocation(line: 172, column: 2, scope: !584)
!618 = distinct !DISubprogram(name: "_test_bit", scope: !619, file: !619, line: 139, type: !586, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !620)
!619 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!620 = !{!621, !622}
!621 = !DILocalVariable(name: "nr", arg: 1, scope: !618, file: !619, line: 139, type: !62)
!622 = !DILocalVariable(name: "addr", arg: 2, scope: !618, file: !619, line: 139, type: !588)
!623 = !DILocation(line: 139, column: 25, scope: !618)
!624 = !DILocation(line: 139, column: 59, scope: !618)
!625 = !DILocation(line: 141, column: 25, scope: !618)
!626 = !DILocation(line: 141, column: 32, scope: !618)
!627 = !DILocation(line: 141, column: 30, scope: !618)
!628 = !DILocation(line: 141, column: 2, scope: !618)
!629 = !DILocation(line: 142, column: 23, scope: !618)
!630 = !DILocation(line: 142, column: 27, scope: !618)
!631 = !DILocation(line: 142, column: 9, scope: !618)
!632 = !DILocation(line: 142, column: 2, scope: !618)
!633 = distinct !DISubprogram(name: "queue_work", scope: !12, file: !12, line: 559, type: !634, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !638)
!634 = !DISubroutineType(types: !635)
!635 = !{!122, !636, !246}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !12, line: 18, flags: DIFlagFwdDecl)
!638 = !{!639, !640}
!639 = !DILocalVariable(name: "wq", arg: 1, scope: !633, file: !12, line: 559, type: !636)
!640 = !DILocalVariable(name: "work", arg: 2, scope: !633, file: !12, line: 560, type: !246)
!641 = !DILocation(line: 559, column: 56, scope: !633)
!642 = !DILocation(line: 560, column: 30, scope: !633)
!643 = !DILocation(line: 562, column: 41, scope: !633)
!644 = !DILocation(line: 562, column: 45, scope: !633)
!645 = !DILocation(line: 562, column: 9, scope: !633)
!646 = !DILocation(line: 562, column: 2, scope: !633)
!647 = distinct !DISubprogram(name: "fence_complete", scope: !3, file: !3, line: 9, type: !255, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !648)
!648 = !{!649}
!649 = !DILocalVariable(name: "f", arg: 1, scope: !647, file: !3, line: 9, type: !64)
!650 = !DILocation(line: 9, column: 51, scope: !647)
!651 = !DILocation(line: 11, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !647, file: !3, line: 11, column: 6)
!653 = !DILocation(line: 11, column: 9, scope: !652)
!654 = !DILocation(line: 11, column: 14, scope: !652)
!655 = !DILocation(line: 11, column: 6, scope: !647)
!656 = !DILocation(line: 12, column: 3, scope: !652)
!657 = !DILocation(line: 12, column: 6, scope: !652)
!658 = !DILocation(line: 12, column: 11, scope: !652)
!659 = !DILocation(line: 12, column: 19, scope: !652)
!660 = !DILocation(line: 13, column: 20, scope: !647)
!661 = !DILocation(line: 13, column: 23, scope: !647)
!662 = !DILocation(line: 13, column: 2, scope: !647)
!663 = !DILocation(line: 14, column: 1, scope: !647)
!664 = distinct !DISubprogram(name: "dma_fence_put", scope: !42, file: !42, line: 293, type: !145, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!665 = !{!666}
!666 = !DILocalVariable(name: "fence", arg: 1, scope: !664, file: !42, line: 293, type: !131)
!667 = !DILocation(line: 293, column: 52, scope: !664)
!668 = !DILocation(line: 295, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !42, line: 295, column: 6)
!670 = !DILocation(line: 295, column: 6, scope: !664)
!671 = !DILocation(line: 296, column: 13, scope: !669)
!672 = !DILocation(line: 296, column: 20, scope: !669)
!673 = !DILocation(line: 296, column: 3, scope: !669)
!674 = !DILocation(line: 297, column: 1, scope: !664)
!675 = distinct !DISubprogram(name: "kref_get", scope: !189, file: !189, line: 43, type: !676, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!679 = !{!680}
!680 = !DILocalVariable(name: "kref", arg: 1, scope: !675, file: !189, line: 43, type: !678)
!681 = !DILocation(line: 43, column: 42, scope: !675)
!682 = !DILocation(line: 45, column: 16, scope: !675)
!683 = !DILocation(line: 45, column: 22, scope: !675)
!684 = !DILocation(line: 45, column: 2, scope: !675)
!685 = !DILocation(line: 46, column: 1, scope: !675)
!686 = distinct !DISubprogram(name: "refcount_inc", scope: !49, file: !49, line: 265, type: !687, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!690 = !{!691}
!691 = !DILocalVariable(name: "r", arg: 1, scope: !686, file: !49, line: 265, type: !689)
!692 = !DILocation(line: 265, column: 45, scope: !686)
!693 = !DILocation(line: 267, column: 17, scope: !686)
!694 = !DILocation(line: 267, column: 2, scope: !686)
!695 = !DILocation(line: 268, column: 1, scope: !686)
!696 = distinct !DISubprogram(name: "__refcount_inc", scope: !49, file: !49, line: 248, type: !697, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !689, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!700 = !{!701, !702}
!701 = !DILocalVariable(name: "r", arg: 1, scope: !696, file: !49, line: 248, type: !689)
!702 = !DILocalVariable(name: "oldp", arg: 2, scope: !696, file: !49, line: 248, type: !699)
!703 = !DILocation(line: 248, column: 47, scope: !696)
!704 = !DILocation(line: 248, column: 55, scope: !696)
!705 = !DILocation(line: 250, column: 20, scope: !696)
!706 = !DILocation(line: 250, column: 23, scope: !696)
!707 = !DILocation(line: 250, column: 2, scope: !696)
!708 = !DILocation(line: 251, column: 1, scope: !696)
!709 = distinct !DISubprogram(name: "__refcount_add", scope: !49, file: !49, line: 191, type: !710, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !97, !689, !699}
!712 = !{!713, !714, !715, !716}
!713 = !DILocalVariable(name: "i", arg: 1, scope: !709, file: !49, line: 191, type: !97)
!714 = !DILocalVariable(name: "r", arg: 2, scope: !709, file: !49, line: 191, type: !689)
!715 = !DILocalVariable(name: "oldp", arg: 3, scope: !709, file: !49, line: 191, type: !699)
!716 = !DILocalVariable(name: "old", scope: !709, file: !49, line: 193, type: !97)
!717 = !DILocation(line: 191, column: 39, scope: !709)
!718 = !DILocation(line: 191, column: 54, scope: !709)
!719 = !DILocation(line: 191, column: 62, scope: !709)
!720 = !DILocation(line: 193, column: 2, scope: !709)
!721 = !DILocation(line: 193, column: 6, scope: !709)
!722 = !DILocation(line: 193, column: 37, scope: !709)
!723 = !DILocation(line: 193, column: 41, scope: !709)
!724 = !DILocation(line: 193, column: 44, scope: !709)
!725 = !DILocation(line: 193, column: 12, scope: !709)
!726 = !DILocation(line: 195, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !709, file: !49, line: 195, column: 6)
!728 = !DILocation(line: 195, column: 6, scope: !709)
!729 = !DILocation(line: 196, column: 11, scope: !727)
!730 = !DILocation(line: 196, column: 4, scope: !727)
!731 = !DILocation(line: 196, column: 9, scope: !727)
!732 = !DILocation(line: 196, column: 3, scope: !727)
!733 = !DILocation(line: 198, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !709, file: !49, line: 198, column: 6)
!735 = !DILocation(line: 198, column: 6, scope: !709)
!736 = !DILocation(line: 199, column: 26, scope: !734)
!737 = !DILocation(line: 199, column: 3, scope: !734)
!738 = !DILocation(line: 200, column: 11, scope: !739)
!739 = distinct !DILexicalBlock(scope: !734, file: !49, line: 200, column: 11)
!740 = !DILocation(line: 200, column: 11, scope: !734)
!741 = !DILocation(line: 201, column: 26, scope: !739)
!742 = !DILocation(line: 201, column: 3, scope: !739)
!743 = !DILocation(line: 202, column: 1, scope: !709)
!744 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !745, file: !745, line: 250, type: !746, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !749)
!745 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!746 = !DISubroutineType(types: !747)
!747 = !{!97, !97, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!749 = !{!750, !751}
!750 = !DILocalVariable(name: "i", arg: 1, scope: !744, file: !745, line: 250, type: !97)
!751 = !DILocalVariable(name: "v", arg: 2, scope: !744, file: !745, line: 250, type: !748)
!752 = !DILocation(line: 250, column: 30, scope: !744)
!753 = !DILocation(line: 250, column: 43, scope: !744)
!754 = !DILocation(line: 252, column: 31, scope: !744)
!755 = !DILocation(line: 252, column: 2, scope: !744)
!756 = !DILocation(line: 253, column: 38, scope: !744)
!757 = !DILocation(line: 253, column: 41, scope: !744)
!758 = !DILocation(line: 253, column: 9, scope: !744)
!759 = !DILocation(line: 253, column: 2, scope: !744)
!760 = !DISubprogram(name: "refcount_warn_saturate", scope: !49, file: !49, line: 127, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !689, !48}
!763 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !764, file: !764, line: 94, type: !765, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!764 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!765 = !DISubroutineType(types: !766)
!766 = !{null, !767, !770}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 61, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !772, line: 72, baseType: !773)
!772 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !772, line: 16, baseType: !62)
!774 = !{!775, !776}
!775 = !DILocalVariable(name: "v", arg: 1, scope: !763, file: !764, line: 94, type: !767)
!776 = !DILocalVariable(name: "size", arg: 2, scope: !763, file: !764, line: 94, type: !770)
!777 = !DILocation(line: 94, column: 79, scope: !763)
!778 = !DILocation(line: 94, column: 89, scope: !763)
!779 = !DILocation(line: 96, column: 20, scope: !763)
!780 = !DILocation(line: 96, column: 23, scope: !763)
!781 = !DILocation(line: 96, column: 2, scope: !763)
!782 = !DILocation(line: 97, column: 2, scope: !763)
!783 = !DILocation(line: 98, column: 1, scope: !763)
!784 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !785, file: !785, line: 731, type: !746, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !786)
!785 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!786 = !{!787, !788}
!787 = !DILocalVariable(name: "i", arg: 1, scope: !784, file: !785, line: 731, type: !97)
!788 = !DILocalVariable(name: "v", arg: 2, scope: !784, file: !785, line: 731, type: !748)
!789 = !DILocation(line: 731, column: 34, scope: !784)
!790 = !DILocation(line: 731, column: 47, scope: !784)
!791 = !DILocation(line: 736, column: 31, scope: !784)
!792 = !DILocation(line: 736, column: 34, scope: !784)
!793 = !DILocation(line: 736, column: 9, scope: !784)
!794 = !DILocation(line: 736, column: 2, scope: !784)
!795 = distinct !DISubprogram(name: "kasan_check_write", scope: !796, file: !796, line: 44, type: !797, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !799)
!796 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!797 = !DISubroutineType(types: !798)
!798 = !{!122, !767, !7}
!799 = !{!800, !801}
!800 = !DILocalVariable(name: "p", arg: 1, scope: !795, file: !796, line: 44, type: !767)
!801 = !DILocalVariable(name: "size", arg: 2, scope: !795, file: !796, line: 44, type: !7)
!802 = !DILocation(line: 44, column: 59, scope: !795)
!803 = !DILocation(line: 44, column: 75, scope: !795)
!804 = !DILocation(line: 46, column: 2, scope: !795)
!805 = distinct !DISubprogram(name: "kcsan_check_access", scope: !806, file: !806, line: 229, type: !807, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!806 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!807 = !DISubroutineType(types: !808)
!808 = !{null, !767, !770, !97}
!809 = !{!810, !811, !812}
!810 = !DILocalVariable(name: "ptr", arg: 1, scope: !805, file: !806, line: 229, type: !767)
!811 = !DILocalVariable(name: "size", arg: 2, scope: !805, file: !806, line: 229, type: !770)
!812 = !DILocalVariable(name: "type", arg: 3, scope: !805, file: !806, line: 230, type: !97)
!813 = !DILocation(line: 229, column: 60, scope: !805)
!814 = !DILocation(line: 229, column: 72, scope: !805)
!815 = !DILocation(line: 230, column: 15, scope: !805)
!816 = !DILocation(line: 230, column: 23, scope: !805)
!817 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !818, file: !818, line: 95, type: !746, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !819)
!818 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!819 = !{!820, !821, !822}
!820 = !DILocalVariable(name: "i", arg: 1, scope: !817, file: !818, line: 95, type: !97)
!821 = !DILocalVariable(name: "v", arg: 2, scope: !817, file: !818, line: 95, type: !748)
!822 = !DILocalVariable(name: "__ret", scope: !823, file: !818, line: 97, type: !97)
!823 = distinct !DILexicalBlock(scope: !817, file: !818, line: 97, column: 9)
!824 = !DILocation(line: 95, column: 54, scope: !817)
!825 = !DILocation(line: 95, column: 67, scope: !817)
!826 = !DILocation(line: 97, column: 9, scope: !823)
!827 = !{i64 2148881308, i64 2148881347, i64 2148881368, i64 2148881405, i64 2148881428, i64 2148881437}
!828 = !DILocation(line: 97, column: 9, scope: !817)
!829 = !DILocation(line: 97, column: 2, scope: !817)
!830 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !764, file: !764, line: 66, type: !765, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!831 = !{!832, !833}
!832 = !DILocalVariable(name: "v", arg: 1, scope: !830, file: !764, line: 66, type: !767)
!833 = !DILocalVariable(name: "size", arg: 2, scope: !830, file: !764, line: 66, type: !770)
!834 = !DILocation(line: 66, column: 73, scope: !830)
!835 = !DILocation(line: 66, column: 83, scope: !830)
!836 = !DILocation(line: 68, column: 19, scope: !830)
!837 = !DILocation(line: 68, column: 22, scope: !830)
!838 = !DILocation(line: 68, column: 2, scope: !830)
!839 = !DILocation(line: 69, column: 2, scope: !830)
!840 = !DILocation(line: 70, column: 1, scope: !830)
!841 = distinct !DISubprogram(name: "arch_test_bit", scope: !842, file: !842, line: 237, type: !586, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !843)
!842 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!843 = !{!844, !845}
!844 = !DILocalVariable(name: "nr", arg: 1, scope: !841, file: !842, line: 237, type: !62)
!845 = !DILocalVariable(name: "addr", arg: 2, scope: !841, file: !842, line: 237, type: !588)
!846 = !DILocation(line: 237, column: 29, scope: !841)
!847 = !DILocation(line: 237, column: 63, scope: !841)
!848 = !DILocation(line: 239, column: 30, scope: !841)
!849 = !DILocation(line: 239, column: 9, scope: !841)
!850 = !DILocation(line: 239, column: 54, scope: !841)
!851 = !DILocation(line: 239, column: 58, scope: !841)
!852 = !DILocation(line: 239, column: 36, scope: !841)
!853 = !DILocation(line: 240, column: 26, scope: !841)
!854 = !DILocation(line: 240, column: 30, scope: !841)
!855 = !DILocation(line: 240, column: 8, scope: !841)
!856 = !DILocation(line: 239, column: 2, scope: !841)
!857 = distinct !DISubprogram(name: "kasan_check_read", scope: !796, file: !796, line: 40, type: !797, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !858)
!858 = !{!859, !860}
!859 = !DILocalVariable(name: "p", arg: 1, scope: !857, file: !796, line: 40, type: !767)
!860 = !DILocalVariable(name: "size", arg: 2, scope: !857, file: !796, line: 40, type: !7)
!861 = !DILocation(line: 40, column: 58, scope: !857)
!862 = !DILocation(line: 40, column: 74, scope: !857)
!863 = !DILocation(line: 42, column: 2, scope: !857)
!864 = distinct !DISubprogram(name: "constant_test_bit", scope: !842, file: !842, line: 204, type: !865, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{!122, !142, !588}
!867 = !{!868, !869}
!868 = !DILocalVariable(name: "nr", arg: 1, scope: !864, file: !842, line: 204, type: !142)
!869 = !DILocalVariable(name: "addr", arg: 2, scope: !864, file: !842, line: 204, type: !588)
!870 = !DILocation(line: 204, column: 52, scope: !864)
!871 = !DILocation(line: 204, column: 86, scope: !864)
!872 = !DILocation(line: 206, column: 19, scope: !864)
!873 = !DILocation(line: 206, column: 22, scope: !864)
!874 = !DILocation(line: 206, column: 15, scope: !864)
!875 = !DILocation(line: 207, column: 4, scope: !864)
!876 = !DILocation(line: 207, column: 9, scope: !864)
!877 = !DILocation(line: 207, column: 12, scope: !864)
!878 = !DILocation(line: 206, column: 44, scope: !864)
!879 = !DILocation(line: 207, column: 37, scope: !864)
!880 = !DILocation(line: 206, column: 2, scope: !864)
!881 = distinct !DISubprogram(name: "variable_test_bit", scope: !842, file: !842, line: 224, type: !865, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !882)
!882 = !{!883, !884, !885}
!883 = !DILocalVariable(name: "nr", arg: 1, scope: !881, file: !842, line: 224, type: !142)
!884 = !DILocalVariable(name: "addr", arg: 2, scope: !881, file: !842, line: 224, type: !588)
!885 = !DILocalVariable(name: "oldbit", scope: !881, file: !842, line: 226, type: !122)
!886 = !DILocation(line: 224, column: 52, scope: !881)
!887 = !DILocation(line: 224, column: 86, scope: !881)
!888 = !DILocation(line: 226, column: 2, scope: !881)
!889 = !DILocation(line: 226, column: 7, scope: !881)
!890 = !DILocation(line: 231, column: 33, scope: !881)
!891 = !DILocation(line: 231, column: 46, scope: !881)
!892 = !DILocation(line: 228, column: 2, scope: !881)
!893 = !{i64 2148047317, i64 2148047391}
!894 = !DILocation(line: 233, column: 9, scope: !881)
!895 = !{i8 0, i8 2}
!896 = !DILocation(line: 234, column: 1, scope: !881)
!897 = !DILocation(line: 233, column: 2, scope: !881)
!898 = !DISubprogram(name: "queue_work_on", scope: !12, file: !12, line: 496, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!899 = !DISubroutineType(types: !900)
!900 = !{!122, !97, !636, !246}
!901 = !DISubprogram(name: "dma_fence_signal", scope: !42, file: !42, line: 390, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DISubroutineType(types: !903)
!903 = !{!97, !131}
!904 = distinct !DISubprogram(name: "kref_put", scope: !189, file: !189, line: 62, type: !905, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!905 = !DISubroutineType(types: !906)
!906 = !{!97, !678, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!908 = !{!909, !910}
!909 = !DILocalVariable(name: "kref", arg: 1, scope: !904, file: !189, line: 62, type: !678)
!910 = !DILocalVariable(name: "release", arg: 2, scope: !904, file: !189, line: 62, type: !907)
!911 = !DILocation(line: 62, column: 41, scope: !904)
!912 = !DILocation(line: 62, column: 54, scope: !904)
!913 = !DILocation(line: 64, column: 29, scope: !914)
!914 = distinct !DILexicalBlock(scope: !904, file: !189, line: 64, column: 6)
!915 = !DILocation(line: 64, column: 35, scope: !914)
!916 = !DILocation(line: 64, column: 6, scope: !914)
!917 = !DILocation(line: 64, column: 6, scope: !904)
!918 = !DILocation(line: 65, column: 3, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !189, line: 64, column: 46)
!920 = !DILocation(line: 65, column: 11, scope: !919)
!921 = !DILocation(line: 66, column: 3, scope: !919)
!922 = !DILocation(line: 68, column: 2, scope: !904)
!923 = !DILocation(line: 69, column: 1, scope: !904)
!924 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !49, file: !49, line: 331, type: !925, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!122, !689}
!927 = !{!928}
!928 = !DILocalVariable(name: "r", arg: 1, scope: !924, file: !49, line: 331, type: !689)
!929 = !DILocation(line: 331, column: 67, scope: !924)
!930 = !DILocation(line: 333, column: 33, scope: !924)
!931 = !DILocation(line: 333, column: 9, scope: !924)
!932 = !DILocation(line: 333, column: 2, scope: !924)
!933 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !49, file: !49, line: 313, type: !934, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{!122, !689, !699}
!936 = !{!937, !938}
!937 = !DILocalVariable(name: "r", arg: 1, scope: !933, file: !49, line: 313, type: !689)
!938 = !DILocalVariable(name: "oldp", arg: 2, scope: !933, file: !49, line: 313, type: !699)
!939 = !DILocation(line: 313, column: 69, scope: !933)
!940 = !DILocation(line: 313, column: 77, scope: !933)
!941 = !DILocation(line: 315, column: 36, scope: !933)
!942 = !DILocation(line: 315, column: 39, scope: !933)
!943 = !DILocation(line: 315, column: 9, scope: !933)
!944 = !DILocation(line: 315, column: 2, scope: !933)
!945 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !49, file: !49, line: 270, type: !946, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{!122, !97, !689, !699}
!948 = !{!949, !950, !951, !952}
!949 = !DILocalVariable(name: "i", arg: 1, scope: !945, file: !49, line: 270, type: !97)
!950 = !DILocalVariable(name: "r", arg: 2, scope: !945, file: !49, line: 270, type: !689)
!951 = !DILocalVariable(name: "oldp", arg: 3, scope: !945, file: !49, line: 270, type: !699)
!952 = !DILocalVariable(name: "old", scope: !945, file: !49, line: 272, type: !97)
!953 = !DILocation(line: 270, column: 61, scope: !945)
!954 = !DILocation(line: 270, column: 76, scope: !945)
!955 = !DILocation(line: 270, column: 84, scope: !945)
!956 = !DILocation(line: 272, column: 2, scope: !945)
!957 = !DILocation(line: 272, column: 6, scope: !945)
!958 = !DILocation(line: 272, column: 37, scope: !945)
!959 = !DILocation(line: 272, column: 41, scope: !945)
!960 = !DILocation(line: 272, column: 44, scope: !945)
!961 = !DILocation(line: 272, column: 12, scope: !945)
!962 = !DILocation(line: 274, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !945, file: !49, line: 274, column: 6)
!964 = !DILocation(line: 274, column: 6, scope: !945)
!965 = !DILocation(line: 275, column: 11, scope: !963)
!966 = !DILocation(line: 275, column: 4, scope: !963)
!967 = !DILocation(line: 275, column: 9, scope: !963)
!968 = !DILocation(line: 275, column: 3, scope: !963)
!969 = !DILocation(line: 277, column: 6, scope: !970)
!970 = distinct !DILexicalBlock(scope: !945, file: !49, line: 277, column: 6)
!971 = !DILocation(line: 277, column: 13, scope: !970)
!972 = !DILocation(line: 277, column: 10, scope: !970)
!973 = !DILocation(line: 277, column: 6, scope: !945)
!974 = !DILocation(line: 278, column: 3, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !49, line: 277, column: 16)
!976 = !DILocation(line: 278, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !975, file: !49, line: 278, column: 3)
!978 = !DILocation(line: 278, column: 3, scope: !979)
!979 = distinct !DILexicalBlock(scope: !977, file: !49, line: 278, column: 3)
!980 = !DILocation(line: 278, column: 3, scope: !981)
!981 = distinct !DILexicalBlock(scope: !977, file: !49, line: 278, column: 3)
!982 = !DILocation(line: 278, column: 3, scope: !983)
!983 = distinct !DILexicalBlock(scope: !981, file: !49, line: 278, column: 3)
!984 = !{i64 2149827809}
!985 = !DILocation(line: 279, column: 3, scope: !975)
!986 = !DILocation(line: 282, column: 6, scope: !987)
!987 = distinct !DILexicalBlock(scope: !945, file: !49, line: 282, column: 6)
!988 = !DILocation(line: 282, column: 6, scope: !945)
!989 = !DILocation(line: 283, column: 26, scope: !987)
!990 = !DILocation(line: 283, column: 3, scope: !987)
!991 = !DILocation(line: 285, column: 2, scope: !945)
!992 = !DILocation(line: 286, column: 1, scope: !945)
!993 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !745, file: !745, line: 397, type: !746, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!994 = !{!995, !996}
!995 = !DILocalVariable(name: "i", arg: 1, scope: !993, file: !745, line: 397, type: !97)
!996 = !DILocalVariable(name: "v", arg: 2, scope: !993, file: !745, line: 397, type: !748)
!997 = !DILocation(line: 397, column: 30, scope: !993)
!998 = !DILocation(line: 397, column: 43, scope: !993)
!999 = !DILocation(line: 399, column: 2, scope: !993)
!1000 = !DILocation(line: 399, column: 2, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !993, file: !745, line: 399, column: 2)
!1002 = !DILocation(line: 400, column: 31, scope: !993)
!1003 = !DILocation(line: 400, column: 2, scope: !993)
!1004 = !DILocation(line: 401, column: 38, scope: !993)
!1005 = !DILocation(line: 401, column: 41, scope: !993)
!1006 = !DILocation(line: 401, column: 9, scope: !993)
!1007 = !DILocation(line: 401, column: 2, scope: !993)
!1008 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !785, file: !785, line: 928, type: !746, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1009 = !{!1010, !1011}
!1010 = !DILocalVariable(name: "i", arg: 1, scope: !1008, file: !785, line: 928, type: !97)
!1011 = !DILocalVariable(name: "v", arg: 2, scope: !1008, file: !785, line: 928, type: !748)
!1012 = !DILocation(line: 928, column: 34, scope: !1008)
!1013 = !DILocation(line: 928, column: 47, scope: !1008)
!1014 = !DILocation(line: 936, column: 31, scope: !1008)
!1015 = !DILocation(line: 936, column: 34, scope: !1008)
!1016 = !DILocation(line: 936, column: 9, scope: !1008)
!1017 = !DILocation(line: 936, column: 2, scope: !1008)
!1018 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !818, file: !818, line: 101, type: !746, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DILocalVariable(name: "i", arg: 1, scope: !1018, file: !818, line: 101, type: !97)
!1021 = !DILocalVariable(name: "v", arg: 2, scope: !1018, file: !818, line: 101, type: !748)
!1022 = !DILocalVariable(name: "__ret", scope: !1023, file: !818, line: 103, type: !97)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !818, line: 103, column: 9)
!1024 = !DILocation(line: 101, column: 54, scope: !1018)
!1025 = !DILocation(line: 101, column: 67, scope: !1018)
!1026 = !DILocation(line: 103, column: 9, scope: !1023)
!1027 = !{i64 2148883493, i64 2148883532, i64 2148883553, i64 2148883590, i64 2148883613, i64 2148883622}
!1028 = !DILocation(line: 103, column: 9, scope: !1018)
!1029 = !DILocation(line: 103, column: 2, scope: !1018)
