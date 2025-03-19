; ModuleID = 'drivers/gpu/drm/i915/i915_deps.c'
source_filename = "drivers/gpu/drm/i915/i915_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_deps = type { ptr, ptr, i32, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.13, i64, i64, i64, %struct.kref, i32 }
%union.anon.13 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_resv_iter = type { ptr, i32, ptr, i32, i32, ptr, i32, i8 }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_deps_init(ptr noundef %deps, i32 noundef %gfp) #0 align 16 !dbg !158 {
entry:
  %deps.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %deps, ptr %deps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deps.addr, metadata !295, metadata !DIExpression()), !dbg !297
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !296, metadata !DIExpression()), !dbg !298
  %0 = load ptr, ptr %deps.addr, align 8, !dbg !299
  %fences = getelementptr inbounds %struct.i915_deps, ptr %0, i32 0, i32 1, !dbg !300
  store ptr null, ptr %fences, align 8, !dbg !301
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !302
  %2 = load ptr, ptr %deps.addr, align 8, !dbg !303
  %gfp1 = getelementptr inbounds %struct.i915_deps, ptr %2, i32 0, i32 4, !dbg !304
  store i32 %1, ptr %gfp1, align 8, !dbg !305
  %3 = load ptr, ptr %deps.addr, align 8, !dbg !306
  call void @i915_deps_reset_fences(ptr noundef %3) #15, !dbg !307
  ret void, !dbg !308
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_deps_reset_fences(ptr noundef %deps) #0 align 16 !dbg !309 {
entry:
  %deps.addr = alloca ptr, align 8
  store ptr %deps, ptr %deps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deps.addr, metadata !313, metadata !DIExpression()), !dbg !314
  %0 = load ptr, ptr %deps.addr, align 8, !dbg !315
  %fences = getelementptr inbounds %struct.i915_deps, ptr %0, i32 0, i32 1, !dbg !317
  %1 = load ptr, ptr %fences, align 8, !dbg !317
  %2 = load ptr, ptr %deps.addr, align 8, !dbg !318
  %single = getelementptr inbounds %struct.i915_deps, ptr %2, i32 0, i32 0, !dbg !319
  %cmp = icmp ne ptr %1, %single, !dbg !320
  br i1 %cmp, label %if.then, label %if.end, !dbg !321

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %deps.addr, align 8, !dbg !322
  %fences1 = getelementptr inbounds %struct.i915_deps, ptr %3, i32 0, i32 1, !dbg !323
  %4 = load ptr, ptr %fences1, align 8, !dbg !323
  call void @kfree(ptr noundef %4) #15, !dbg !324
  br label %if.end, !dbg !324

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %deps.addr, align 8, !dbg !325
  %num_deps = getelementptr inbounds %struct.i915_deps, ptr %5, i32 0, i32 2, !dbg !326
  store i32 0, ptr %num_deps, align 8, !dbg !327
  %6 = load ptr, ptr %deps.addr, align 8, !dbg !328
  %fences_size = getelementptr inbounds %struct.i915_deps, ptr %6, i32 0, i32 3, !dbg !329
  store i32 1, ptr %fences_size, align 4, !dbg !330
  %7 = load ptr, ptr %deps.addr, align 8, !dbg !331
  %single2 = getelementptr inbounds %struct.i915_deps, ptr %7, i32 0, i32 0, !dbg !332
  %8 = load ptr, ptr %deps.addr, align 8, !dbg !333
  %fences3 = getelementptr inbounds %struct.i915_deps, ptr %8, i32 0, i32 1, !dbg !334
  store ptr %single2, ptr %fences3, align 8, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_deps_fini(ptr noundef %deps) #0 align 16 !dbg !337 {
entry:
  %deps.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %deps, ptr %deps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deps.addr, metadata !339, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %i, metadata !340, metadata !DIExpression()), !dbg !343
  store i32 0, ptr %i, align 4, !dbg !344
  br label %for.cond, !dbg !346

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !347
  %1 = load ptr, ptr %deps.addr, align 8, !dbg !349
  %num_deps = getelementptr inbounds %struct.i915_deps, ptr %1, i32 0, i32 2, !dbg !350
  %2 = load i32, ptr %num_deps, align 8, !dbg !350
  %cmp = icmp ult i32 %0, %2, !dbg !351
  br i1 %cmp, label %for.body, label %for.end, !dbg !352

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %deps.addr, align 8, !dbg !353
  %fences = getelementptr inbounds %struct.i915_deps, ptr %3, i32 0, i32 1, !dbg !354
  %4 = load ptr, ptr %fences, align 8, !dbg !354
  %5 = load i32, ptr %i, align 4, !dbg !355
  %idxprom = zext i32 %5 to i64, !dbg !353
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !353
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !353
  call void @dma_fence_put(ptr noundef %6) #15, !dbg !356
  br label %for.inc, !dbg !356

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !357
  %inc = add i32 %7, 1, !dbg !357
  store i32 %inc, ptr %i, align 4, !dbg !357
  br label %for.cond, !dbg !358, !llvm.loop !359

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %deps.addr, align 8, !dbg !363
  %fences1 = getelementptr inbounds %struct.i915_deps, ptr %8, i32 0, i32 1, !dbg !365
  %9 = load ptr, ptr %fences1, align 8, !dbg !365
  %10 = load ptr, ptr %deps.addr, align 8, !dbg !366
  %single = getelementptr inbounds %struct.i915_deps, ptr %10, i32 0, i32 0, !dbg !367
  %cmp2 = icmp ne ptr %9, %single, !dbg !368
  br i1 %cmp2, label %if.then, label %if.end, !dbg !369

if.then:                                          ; preds = %for.end
  %11 = load ptr, ptr %deps.addr, align 8, !dbg !370
  %fences3 = getelementptr inbounds %struct.i915_deps, ptr %11, i32 0, i32 1, !dbg !371
  %12 = load ptr, ptr %fences3, align 8, !dbg !371
  call void @kfree(ptr noundef %12) #15, !dbg !372
  br label %if.end, !dbg !372

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !373
  ret void, !dbg !373
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #3 align 16 !dbg !374 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !378
  %tobool = icmp ne ptr %0, null, !dbg !378
  br i1 %tobool, label %if.then, label %if.end, !dbg !380

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !381
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !382
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #15, !dbg !383
  br label %if.end, !dbg !383

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !384
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !385 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_deps_sync(ptr noundef %deps, ptr noundef %ctx) #0 align 16 !dbg !390 {
entry:
  %deps.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %fences = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %deps, ptr %deps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deps.addr, metadata !4309, metadata !DIExpression()), !dbg !4314
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4310, metadata !DIExpression()), !dbg !4315
  call void @llvm.lifetime.start.p0(i64 8, ptr %fences) #16, !dbg !4316
  call void @llvm.dbg.declare(metadata ptr %fences, metadata !4311, metadata !DIExpression()), !dbg !4317
  %0 = load ptr, ptr %deps.addr, align 8, !dbg !4318
  %fences1 = getelementptr inbounds %struct.i915_deps, ptr %0, i32 0, i32 1, !dbg !4319
  %1 = load ptr, ptr %fences1, align 8, !dbg !4319
  store ptr %1, ptr %fences, align 8, !dbg !4317
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4320
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4312, metadata !DIExpression()), !dbg !4321
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4322
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4313, metadata !DIExpression()), !dbg !4323
  store i32 0, ptr %ret, align 4, !dbg !4323
  store i32 0, ptr %i, align 4, !dbg !4324
  br label %for.cond, !dbg !4326

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !4327
  %3 = load ptr, ptr %deps.addr, align 8, !dbg !4329
  %num_deps = getelementptr inbounds %struct.i915_deps, ptr %3, i32 0, i32 2, !dbg !4330
  %4 = load i32, ptr %num_deps, align 8, !dbg !4330
  %cmp = icmp ult i32 %2, %4, !dbg !4331
  br i1 %cmp, label %for.body, label %for.end, !dbg !4332

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !4333
  %no_wait_gpu = getelementptr inbounds %struct.ttm_operation_ctx, ptr %5, i32 0, i32 1, !dbg !4336
  %6 = load i8, ptr %no_wait_gpu, align 1, !dbg !4336, !range !4337, !noundef !762
  %tobool = trunc i8 %6 to i1, !dbg !4336
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4338

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %fences, align 8, !dbg !4339
  %8 = load ptr, ptr %7, align 8, !dbg !4340
  %call = call zeroext i1 @dma_fence_is_signaled(ptr noundef %8) #15, !dbg !4341
  br i1 %call, label %if.end, label %if.then, !dbg !4342

if.then:                                          ; preds = %land.lhs.true
  store i32 -16, ptr %ret, align 4, !dbg !4343
  br label %for.end, !dbg !4345

if.end:                                           ; preds = %land.lhs.true, %for.body
  %9 = load ptr, ptr %fences, align 8, !dbg !4346
  %10 = load ptr, ptr %9, align 8, !dbg !4347
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !4348
  %interruptible = getelementptr inbounds %struct.ttm_operation_ctx, ptr %11, i32 0, i32 0, !dbg !4349
  %12 = load i8, ptr %interruptible, align 8, !dbg !4349, !range !4337, !noundef !762
  %tobool2 = trunc i8 %12 to i1, !dbg !4349
  %call3 = call i64 @dma_fence_wait(ptr noundef %10, i1 noundef zeroext %tobool2) #15, !dbg !4350
  %conv = trunc i64 %call3 to i32, !dbg !4350
  store i32 %conv, ptr %ret, align 4, !dbg !4351
  %13 = load i32, ptr %ret, align 4, !dbg !4352
  %tobool4 = icmp ne i32 %13, 0, !dbg !4352
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4354

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %fences, align 8, !dbg !4355
  %15 = load ptr, ptr %14, align 8, !dbg !4356
  %error = getelementptr inbounds %struct.dma_fence, ptr %15, i32 0, i32 7, !dbg !4357
  %16 = load i32, ptr %error, align 4, !dbg !4357
  store i32 %16, ptr %ret, align 4, !dbg !4358
  br label %if.end6, !dbg !4359

if.end6:                                          ; preds = %if.then5, %if.end
  %17 = load i32, ptr %ret, align 4, !dbg !4360
  %tobool7 = icmp ne i32 %17, 0, !dbg !4360
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4362

if.then8:                                         ; preds = %if.end6
  br label %for.end, !dbg !4363

if.end9:                                          ; preds = %if.end6
  br label %for.inc, !dbg !4364

for.inc:                                          ; preds = %if.end9
  %18 = load i32, ptr %i, align 4, !dbg !4365
  %inc = add i32 %18, 1, !dbg !4365
  store i32 %inc, ptr %i, align 4, !dbg !4365
  %19 = load ptr, ptr %fences, align 8, !dbg !4366
  %incdec.ptr = getelementptr ptr, ptr %19, i32 1, !dbg !4366
  store ptr %incdec.ptr, ptr %fences, align 8, !dbg !4366
  br label %for.cond, !dbg !4367, !llvm.loop !4368

for.end:                                          ; preds = %if.then8, %if.then, %for.cond
  %20 = load i32, ptr %ret, align 4, !dbg !4370
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4371
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4371
  call void @llvm.lifetime.end.p0(i64 8, ptr %fences) #16, !dbg !4371
  ret i32 %20, !dbg !4372
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_signaled(ptr noundef %fence) #3 align 16 !dbg !4373 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4375, metadata !DIExpression()), !dbg !4376
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4377
  %flags = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5, !dbg !4377
  %1 = ptrtoint ptr %flags to i64, !dbg !4377
  %cmp = icmp ne i64 %1, 0, !dbg !4377
  %conv = zext i1 %cmp to i32, !dbg !4377
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4377
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !4377

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %fence.addr, align 8, !dbg !4377
  %flags1 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 5, !dbg !4377
  %4 = ptrtoint ptr %flags1 to i64, !dbg !4377
  %cmp2 = icmp ne i64 %4, 0, !dbg !4377
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !4377

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %fence.addr, align 8, !dbg !4377
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 5, !dbg !4377
  %6 = load i64, ptr %flags5, align 8, !dbg !4377
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4377
  br i1 %7, label %cond.true, label %cond.false, !dbg !4379

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %fence.addr, align 8, !dbg !4377
  %flags6 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 5, !dbg !4377
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #15, !dbg !4377
  br i1 %call, label %if.then, label %if.end, !dbg !4377

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %fence.addr, align 8, !dbg !4377
  %flags8 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 5, !dbg !4377
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #15, !dbg !4377
  br i1 %call9, label %if.then, label %if.end, !dbg !4379

if.then:                                          ; preds = %cond.false, %cond.true
  store i1 true, ptr %retval, align 1, !dbg !4380
  br label %return, !dbg !4380

if.end:                                           ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %fence.addr, align 8, !dbg !4381
  %ops = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 1, !dbg !4383
  %11 = load ptr, ptr %ops, align 8, !dbg !4383
  %signaled = getelementptr inbounds %struct.dma_fence_ops, ptr %11, i32 0, i32 4, !dbg !4384
  %12 = load ptr, ptr %signaled, align 8, !dbg !4384
  %tobool = icmp ne ptr %12, null, !dbg !4381
  br i1 %tobool, label %land.lhs.true11, label %if.end18, !dbg !4385

land.lhs.true11:                                  ; preds = %if.end
  %13 = load ptr, ptr %fence.addr, align 8, !dbg !4386
  %ops12 = getelementptr inbounds %struct.dma_fence, ptr %13, i32 0, i32 1, !dbg !4387
  %14 = load ptr, ptr %ops12, align 8, !dbg !4387
  %signaled13 = getelementptr inbounds %struct.dma_fence_ops, ptr %14, i32 0, i32 4, !dbg !4388
  %15 = load ptr, ptr %signaled13, align 8, !dbg !4388
  %16 = load ptr, ptr %fence.addr, align 8, !dbg !4389
  %call14 = call zeroext i1 %15(ptr noundef %16) #15, !dbg !4386
  br i1 %call14, label %if.then16, label %if.end18, !dbg !4390

if.then16:                                        ; preds = %land.lhs.true11
  %17 = load ptr, ptr %fence.addr, align 8, !dbg !4391
  %call17 = call i32 @dma_fence_signal(ptr noundef %17) #15, !dbg !4393
  store i1 true, ptr %retval, align 1, !dbg !4394
  br label %return, !dbg !4394

if.end18:                                         ; preds = %land.lhs.true11, %if.end
  store i1 false, ptr %retval, align 1, !dbg !4395
  br label %return, !dbg !4395

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !4396
  ret i1 %18, !dbg !4396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dma_fence_wait(ptr noundef %fence, i1 noundef zeroext %intr) #3 align 16 !dbg !4397 {
entry:
  %fence.addr = alloca ptr, align 8
  %intr.addr = alloca i8, align 1
  %ret = alloca i64, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4401, metadata !DIExpression()), !dbg !4404
  %frombool = zext i1 %intr to i8
  store i8 %frombool, ptr %intr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %intr.addr, metadata !4402, metadata !DIExpression()), !dbg !4405
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !4406
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4403, metadata !DIExpression()), !dbg !4407
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4408
  %1 = load i8, ptr %intr.addr, align 1, !dbg !4409, !range !4337, !noundef !762
  %tobool = trunc i8 %1 to i1, !dbg !4409
  %call = call i64 @dma_fence_wait_timeout(ptr noundef %0, i1 noundef zeroext %tobool, i64 noundef 9223372036854775807) #15, !dbg !4410
  store i64 %call, ptr %ret, align 8, !dbg !4411
  %2 = load i64, ptr %ret, align 8, !dbg !4412
  %cmp = icmp slt i64 %2, 0, !dbg !4413
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4412

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %ret, align 8, !dbg !4414
  br label %cond.end, !dbg !4412

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4412

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 0, %cond.false ], !dbg !4412
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !4415
  ret i64 %cond, !dbg !4416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_deps_add_dependency(ptr noundef %deps, ptr noundef %fence, ptr noundef %ctx) #0 align 16 !dbg !4417 {
entry:
  %retval = alloca i32, align 4
  %deps.addr = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %entry6 = alloca ptr, align 8
  store ptr %deps, ptr %deps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deps.addr, metadata !4421, metadata !DIExpression()), !dbg !4430
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4422, metadata !DIExpression()), !dbg !4431
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4423, metadata !DIExpression()), !dbg !4432
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4433
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4424, metadata !DIExpression()), !dbg !4434
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4435
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4425, metadata !DIExpression()), !dbg !4436
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4437
  %tobool = icmp ne ptr %0, null, !dbg !4437
  br i1 %tobool, label %if.end, label %if.then, !dbg !4439

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4440

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !4441
  %call = call zeroext i1 @dma_fence_is_signaled(ptr noundef %1) #15, !dbg !4443
  br i1 %call, label %if.then1, label %if.end5, !dbg !4444

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !4445
  %error = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 7, !dbg !4447
  %3 = load i32, ptr %error, align 4, !dbg !4447
  store i32 %3, ptr %ret, align 4, !dbg !4448
  %4 = load i32, ptr %ret, align 4, !dbg !4449
  %tobool2 = icmp ne i32 %4, 0, !dbg !4449
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4451

if.then3:                                         ; preds = %if.then1
  %5 = load ptr, ptr %deps.addr, align 8, !dbg !4452
  call void @i915_deps_fini(ptr noundef %5) #15, !dbg !4453
  br label %if.end4, !dbg !4453

if.end4:                                          ; preds = %if.then3, %if.then1
  %6 = load i32, ptr %ret, align 4, !dbg !4454
  store i32 %6, ptr %retval, align 4, !dbg !4455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4455

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !4456
  br label %for.cond, !dbg !4457

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load i32, ptr %i, align 4, !dbg !4458
  %8 = load ptr, ptr %deps.addr, align 8, !dbg !4459
  %num_deps = getelementptr inbounds %struct.i915_deps, ptr %8, i32 0, i32 2, !dbg !4460
  %9 = load i32, ptr %num_deps, align 8, !dbg !4460
  %cmp = icmp ult i32 %7, %9, !dbg !4461
  br i1 %cmp, label %for.body, label %for.end, !dbg !4462

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry6) #16, !dbg !4463
  call void @llvm.dbg.declare(metadata ptr %entry6, metadata !4426, metadata !DIExpression()), !dbg !4464
  %10 = load ptr, ptr %deps.addr, align 8, !dbg !4465
  %fences = getelementptr inbounds %struct.i915_deps, ptr %10, i32 0, i32 1, !dbg !4466
  %11 = load ptr, ptr %fences, align 8, !dbg !4466
  %12 = load i32, ptr %i, align 4, !dbg !4467
  %idxprom = zext i32 %12 to i64, !dbg !4465
  %arrayidx = getelementptr ptr, ptr %11, i64 %idxprom, !dbg !4465
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !4465
  store ptr %13, ptr %entry6, align 8, !dbg !4464
  %14 = load ptr, ptr %entry6, align 8, !dbg !4468
  %context = getelementptr inbounds %struct.dma_fence, ptr %14, i32 0, i32 3, !dbg !4470
  %15 = load i64, ptr %context, align 8, !dbg !4470
  %tobool7 = icmp ne i64 %15, 0, !dbg !4468
  br i1 %tobool7, label %lor.lhs.false, label %if.then11, !dbg !4471

lor.lhs.false:                                    ; preds = %for.body
  %16 = load ptr, ptr %entry6, align 8, !dbg !4472
  %context8 = getelementptr inbounds %struct.dma_fence, ptr %16, i32 0, i32 3, !dbg !4473
  %17 = load i64, ptr %context8, align 8, !dbg !4473
  %18 = load ptr, ptr %fence.addr, align 8, !dbg !4474
  %context9 = getelementptr inbounds %struct.dma_fence, ptr %18, i32 0, i32 3, !dbg !4475
  %19 = load i64, ptr %context9, align 8, !dbg !4475
  %cmp10 = icmp ne i64 %17, %19, !dbg !4476
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4477

if.then11:                                        ; preds = %lor.lhs.false, %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4478

if.end12:                                         ; preds = %lor.lhs.false
  %20 = load ptr, ptr %fence.addr, align 8, !dbg !4479
  %21 = load ptr, ptr %entry6, align 8, !dbg !4481
  %call13 = call zeroext i1 @dma_fence_is_later(ptr noundef %20, ptr noundef %21) #15, !dbg !4482
  br i1 %call13, label %if.then14, label %if.end19, !dbg !4483

if.then14:                                        ; preds = %if.end12
  %22 = load ptr, ptr %entry6, align 8, !dbg !4484
  call void @dma_fence_put(ptr noundef %22) #15, !dbg !4486
  %23 = load ptr, ptr %fence.addr, align 8, !dbg !4487
  %call15 = call ptr @dma_fence_get(ptr noundef %23) #15, !dbg !4488
  %24 = load ptr, ptr %deps.addr, align 8, !dbg !4489
  %fences16 = getelementptr inbounds %struct.i915_deps, ptr %24, i32 0, i32 1, !dbg !4490
  %25 = load ptr, ptr %fences16, align 8, !dbg !4490
  %26 = load i32, ptr %i, align 4, !dbg !4491
  %idxprom17 = zext i32 %26 to i64, !dbg !4489
  %arrayidx18 = getelementptr ptr, ptr %25, i64 %idxprom17, !dbg !4489
  store ptr %call15, ptr %arrayidx18, align 8, !dbg !4492
  br label %if.end19, !dbg !4493

if.end19:                                         ; preds = %if.then14, %if.end12
  store i32 0, ptr %retval, align 4, !dbg !4494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4494

cleanup:                                          ; preds = %if.end19, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry6) #16, !dbg !4495
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %27 = load i32, ptr %i, align 4, !dbg !4496
  %inc = add i32 %27, 1, !dbg !4496
  store i32 %inc, ptr %i, align 4, !dbg !4496
  br label %for.cond, !dbg !4497, !llvm.loop !4498

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %deps.addr, align 8, !dbg !4500
  %29 = load ptr, ptr %fence.addr, align 8, !dbg !4501
  %30 = load ptr, ptr %ctx.addr, align 8, !dbg !4502
  %call20 = call i32 @i915_deps_grow(ptr noundef %28, ptr noundef %29, ptr noundef %30) #15, !dbg !4503
  store i32 %call20, ptr %retval, align 4, !dbg !4504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4504

cleanup21:                                        ; preds = %for.end, %cleanup, %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4505
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4505
  %31 = load i32, ptr %retval, align 4, !dbg !4505
  ret i32 %31, !dbg !4505
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @dma_fence_is_later(ptr noundef %f1, ptr noundef %f2) #3 align 16 !dbg !4506 {
entry:
  %retval = alloca i1, align 1
  %f1.addr = alloca ptr, align 8
  %f2.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %f1, ptr %f1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f1.addr, metadata !4510, metadata !DIExpression()), !dbg !4518
  store ptr %f2, ptr %f2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f2.addr, metadata !4511, metadata !DIExpression()), !dbg !4519
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4520
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4512, metadata !DIExpression()), !dbg !4520
  %0 = load ptr, ptr %f1.addr, align 8, !dbg !4520
  %context = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 3, !dbg !4520
  %1 = load i64, ptr %context, align 8, !dbg !4520
  %2 = load ptr, ptr %f2.addr, align 8, !dbg !4520
  %context1 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 3, !dbg !4520
  %3 = load i64, ptr %context1, align 8, !dbg !4520
  %cmp = icmp ne i64 %1, %3, !dbg !4520
  %lnot = xor i1 %cmp, true, !dbg !4520
  %lnot2 = xor i1 %lnot, true, !dbg !4520
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4520
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4520
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !4521
  %tobool = icmp ne i32 %4, 0, !dbg !4521
  %lnot3 = xor i1 %tobool, true, !dbg !4521
  %lnot5 = xor i1 %lnot3, true, !dbg !4521
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4521
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4521
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4521
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4521
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4520

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4521

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !4522
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4515, metadata !DIExpression()), !dbg !4522
  store i32 2305, ptr %__flags, align 4, !dbg !4522
  br label %do.body8, !dbg !4522

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !4523

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !4523

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !4522

do.body9:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !4525
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 495, i32 %5, i64 12) #16, !dbg !4525, !srcloc !4527
  br label %do.cond10, !dbg !4525

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4525

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4522

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !4528

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4528

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !4521
  br label %do.cond15, !dbg !4522

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !4522

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !4522

if.end:                                           ; preds = %do.end16, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4520
  %tobool17 = icmp ne i32 %6, 0, !dbg !4520
  %lnot18 = xor i1 %tobool17, true, !dbg !4520
  %lnot20 = xor i1 %lnot18, true, !dbg !4520
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4520
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4520
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !4520
  store i64 %expval23, ptr %tmp, align 8, !dbg !4521
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4530
  %7 = load i64, ptr %tmp, align 8, !dbg !4520
  %tobool24 = icmp ne i64 %7, 0, !dbg !4530
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4531

if.then25:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !4532
  br label %return, !dbg !4532

if.end26:                                         ; preds = %if.end
  %8 = load ptr, ptr %f1.addr, align 8, !dbg !4533
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 4, !dbg !4534
  %9 = load i64, ptr %seqno, align 8, !dbg !4534
  %10 = load ptr, ptr %f2.addr, align 8, !dbg !4535
  %seqno27 = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 4, !dbg !4536
  %11 = load i64, ptr %seqno27, align 8, !dbg !4536
  %12 = load ptr, ptr %f1.addr, align 8, !dbg !4537
  %ops = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 1, !dbg !4538
  %13 = load ptr, ptr %ops, align 8, !dbg !4538
  %call = call zeroext i1 @__dma_fence_is_later(i64 noundef %9, i64 noundef %11, ptr noundef %13) #15, !dbg !4539
  store i1 %call, ptr %retval, align 1, !dbg !4540
  br label %return, !dbg !4540

return:                                           ; preds = %if.end26, %if.then25
  %14 = load i1, ptr %retval, align 1, !dbg !4541
  ret i1 %14, !dbg !4541
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dma_fence_get(ptr noundef %fence) #3 align 16 !dbg !4542 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4546, metadata !DIExpression()), !dbg !4547
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !4548
  %tobool = icmp ne ptr %0, null, !dbg !4548
  br i1 %tobool, label %if.then, label %if.end, !dbg !4550

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !4551
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !4552
  call void @kref_get(ptr noundef %refcount) #15, !dbg !4553
  br label %if.end, !dbg !4553

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fence.addr, align 8, !dbg !4554
  ret ptr %2, !dbg !4555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_deps_grow(ptr noundef %deps, ptr noundef %fence, ptr noundef %ctx) #0 align 16 !dbg !4556 {
entry:
  %retval = alloca i32, align 4
  %deps.addr = alloca ptr, align 8
  %fence.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %new_size = alloca i32, align 4
  %new_fences = alloca ptr, align 8
  %__UNIQUE_ID___x296 = alloca i32, align 4
  %__UNIQUE_ID___y297 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %deps, ptr %deps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deps.addr, metadata !4558, metadata !DIExpression()), !dbg !4573
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !4559, metadata !DIExpression()), !dbg !4574
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4560, metadata !DIExpression()), !dbg !4575
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4561, metadata !DIExpression()), !dbg !4577
  %0 = load ptr, ptr %deps.addr, align 8, !dbg !4578
  %num_deps = getelementptr inbounds %struct.i915_deps, ptr %0, i32 0, i32 2, !dbg !4579
  %1 = load i32, ptr %num_deps, align 8, !dbg !4579
  %2 = load ptr, ptr %deps.addr, align 8, !dbg !4580
  %fences_size = getelementptr inbounds %struct.i915_deps, ptr %2, i32 0, i32 3, !dbg !4581
  %3 = load i32, ptr %fences_size, align 4, !dbg !4581
  %cmp = icmp uge i32 %1, %3, !dbg !4582
  br i1 %cmp, label %if.then, label %if.end15, !dbg !4583

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_size) #16, !dbg !4584
  call void @llvm.dbg.declare(metadata ptr %new_size, metadata !4562, metadata !DIExpression()), !dbg !4585
  %4 = load ptr, ptr %deps.addr, align 8, !dbg !4586
  %fences_size1 = getelementptr inbounds %struct.i915_deps, ptr %4, i32 0, i32 3, !dbg !4587
  %5 = load i32, ptr %fences_size1, align 4, !dbg !4587
  %mul = mul i32 2, %5, !dbg !4588
  store i32 %mul, ptr %new_size, align 4, !dbg !4585
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_fences) #16, !dbg !4589
  call void @llvm.dbg.declare(metadata ptr %new_fences, metadata !4565, metadata !DIExpression()), !dbg !4590
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x296) #16, !dbg !4591
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x296, metadata !4566, metadata !DIExpression()), !dbg !4591
  %6 = load i32, ptr %new_size, align 4, !dbg !4591
  store i32 %6, ptr %__UNIQUE_ID___x296, align 4, !dbg !4591
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y297) #16, !dbg !4591
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y297, metadata !4568, metadata !DIExpression()), !dbg !4591
  store i32 8, ptr %__UNIQUE_ID___y297, align 4, !dbg !4591
  %7 = load i32, ptr %__UNIQUE_ID___x296, align 4, !dbg !4591
  %8 = load i32, ptr %__UNIQUE_ID___y297, align 4, !dbg !4591
  %cmp2 = icmp ugt i32 %7, %8, !dbg !4591
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !4591

cond.true:                                        ; preds = %if.then
  %9 = load i32, ptr %__UNIQUE_ID___x296, align 4, !dbg !4591
  br label %cond.end, !dbg !4591

cond.false:                                       ; preds = %if.then
  %10 = load i32, ptr %__UNIQUE_ID___y297, align 4, !dbg !4591
  br label %cond.end, !dbg !4591

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !4591
  store i32 %cond, ptr %tmp, align 4, !dbg !4591
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y297) #16, !dbg !4592
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x296) #16, !dbg !4592
  %11 = load i32, ptr %tmp, align 4, !dbg !4591
  store i32 %11, ptr %new_size, align 4, !dbg !4593
  %12 = load i32, ptr %new_size, align 4, !dbg !4594
  %conv = zext i32 %12 to i64, !dbg !4594
  %13 = load ptr, ptr %deps.addr, align 8, !dbg !4595
  %gfp = getelementptr inbounds %struct.i915_deps, ptr %13, i32 0, i32 4, !dbg !4596
  %14 = load i32, ptr %gfp, align 8, !dbg !4596
  %call = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef %14) #17, !dbg !4597
  store ptr %call, ptr %new_fences, align 8, !dbg !4598
  %15 = load ptr, ptr %new_fences, align 8, !dbg !4599
  %tobool = icmp ne ptr %15, null, !dbg !4599
  br i1 %tobool, label %if.end, label %if.then3, !dbg !4601

if.then3:                                         ; preds = %cond.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4602

if.end:                                           ; preds = %cond.end
  %16 = load ptr, ptr %new_fences, align 8, !dbg !4603
  %17 = load ptr, ptr %deps.addr, align 8, !dbg !4604
  %fences = getelementptr inbounds %struct.i915_deps, ptr %17, i32 0, i32 1, !dbg !4605
  %18 = load ptr, ptr %fences, align 8, !dbg !4605
  %19 = load ptr, ptr %deps.addr, align 8, !dbg !4606
  %fences_size4 = getelementptr inbounds %struct.i915_deps, ptr %19, i32 0, i32 3, !dbg !4607
  %20 = load i32, ptr %fences_size4, align 4, !dbg !4607
  %conv5 = zext i32 %20 to i64, !dbg !4606
  %mul6 = mul i64 %conv5, 8, !dbg !4608
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %18, i64 %mul6, i1 false), !dbg !4609
  br label %do.body, !dbg !4610

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #16, !dbg !4611
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !4569, metadata !DIExpression()), !dbg !4611
  %21 = load ptr, ptr %new_fences, align 8, !dbg !4611
  store ptr %21, ptr %__tmp, align 8, !dbg !4611
  %22 = load ptr, ptr %deps.addr, align 8, !dbg !4611
  %fences7 = getelementptr inbounds %struct.i915_deps, ptr %22, i32 0, i32 1, !dbg !4611
  %23 = load ptr, ptr %fences7, align 8, !dbg !4611
  store ptr %23, ptr %new_fences, align 8, !dbg !4611
  %24 = load ptr, ptr %__tmp, align 8, !dbg !4611
  %25 = load ptr, ptr %deps.addr, align 8, !dbg !4611
  %fences8 = getelementptr inbounds %struct.i915_deps, ptr %25, i32 0, i32 1, !dbg !4611
  store ptr %24, ptr %fences8, align 8, !dbg !4611
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #16, !dbg !4610
  br label %do.cond, !dbg !4611

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4611

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %new_fences, align 8, !dbg !4612
  %27 = load ptr, ptr %deps.addr, align 8, !dbg !4614
  %single = getelementptr inbounds %struct.i915_deps, ptr %27, i32 0, i32 0, !dbg !4615
  %cmp9 = icmp ne ptr %26, %single, !dbg !4616
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4617

if.then11:                                        ; preds = %do.end
  %28 = load ptr, ptr %new_fences, align 8, !dbg !4618
  call void @kfree(ptr noundef %28) #15, !dbg !4619
  br label %if.end12, !dbg !4619

if.end12:                                         ; preds = %if.then11, %do.end
  %29 = load i32, ptr %new_size, align 4, !dbg !4620
  %30 = load ptr, ptr %deps.addr, align 8, !dbg !4621
  %fences_size13 = getelementptr inbounds %struct.i915_deps, ptr %30, i32 0, i32 3, !dbg !4622
  store i32 %29, ptr %fences_size13, align 4, !dbg !4623
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4624
  br label %cleanup, !dbg !4624

cleanup:                                          ; preds = %if.then3, %if.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_fences) #16, !dbg !4624
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_size) #16, !dbg !4624
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
    i32 2, label %sync
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end15, !dbg !4625

if.end15:                                         ; preds = %cleanup.cont, %entry
  %31 = load ptr, ptr %fence.addr, align 8, !dbg !4626
  %call16 = call ptr @dma_fence_get(ptr noundef %31) #15, !dbg !4627
  %32 = load ptr, ptr %deps.addr, align 8, !dbg !4628
  %fences17 = getelementptr inbounds %struct.i915_deps, ptr %32, i32 0, i32 1, !dbg !4629
  %33 = load ptr, ptr %fences17, align 8, !dbg !4629
  %34 = load ptr, ptr %deps.addr, align 8, !dbg !4630
  %num_deps18 = getelementptr inbounds %struct.i915_deps, ptr %34, i32 0, i32 2, !dbg !4631
  %35 = load i32, ptr %num_deps18, align 8, !dbg !4632
  %inc = add i32 %35, 1, !dbg !4632
  store i32 %inc, ptr %num_deps18, align 8, !dbg !4632
  %idxprom = zext i32 %35 to i64, !dbg !4628
  %arrayidx = getelementptr ptr, ptr %33, i64 %idxprom, !dbg !4628
  store ptr %call16, ptr %arrayidx, align 8, !dbg !4633
  store i32 0, ptr %retval, align 4, !dbg !4634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !4634

sync:                                             ; preds = %cleanup
  call void @llvm.dbg.label(metadata !4571), !dbg !4635
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !4636
  %no_wait_gpu = getelementptr inbounds %struct.ttm_operation_ctx, ptr %36, i32 0, i32 1, !dbg !4638
  %37 = load i8, ptr %no_wait_gpu, align 1, !dbg !4638, !range !4337, !noundef !762
  %tobool19 = trunc i8 %37 to i1, !dbg !4638
  br i1 %tobool19, label %land.lhs.true, label %if.end23, !dbg !4639

land.lhs.true:                                    ; preds = %sync
  %38 = load ptr, ptr %fence.addr, align 8, !dbg !4640
  %call21 = call zeroext i1 @dma_fence_is_signaled(ptr noundef %38) #15, !dbg !4641
  br i1 %call21, label %if.end23, label %if.then22, !dbg !4642

if.then22:                                        ; preds = %land.lhs.true
  store i32 -16, ptr %ret, align 4, !dbg !4643
  br label %unref, !dbg !4645

if.end23:                                         ; preds = %land.lhs.true, %sync
  %39 = load ptr, ptr %fence.addr, align 8, !dbg !4646
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !4647
  %interruptible = getelementptr inbounds %struct.ttm_operation_ctx, ptr %40, i32 0, i32 0, !dbg !4648
  %41 = load i8, ptr %interruptible, align 8, !dbg !4648, !range !4337, !noundef !762
  %tobool24 = trunc i8 %41 to i1, !dbg !4648
  %call25 = call i64 @dma_fence_wait(ptr noundef %39, i1 noundef zeroext %tobool24) #15, !dbg !4649
  %conv26 = trunc i64 %call25 to i32, !dbg !4649
  store i32 %conv26, ptr %ret, align 4, !dbg !4650
  %42 = load i32, ptr %ret, align 4, !dbg !4651
  %tobool27 = icmp ne i32 %42, 0, !dbg !4651
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !4653

if.then28:                                        ; preds = %if.end23
  br label %unref, !dbg !4654

if.end29:                                         ; preds = %if.end23
  %43 = load ptr, ptr %fence.addr, align 8, !dbg !4655
  %error = getelementptr inbounds %struct.dma_fence, ptr %43, i32 0, i32 7, !dbg !4656
  %44 = load i32, ptr %error, align 4, !dbg !4656
  store i32 %44, ptr %ret, align 4, !dbg !4657
  %45 = load i32, ptr %ret, align 4, !dbg !4658
  %tobool30 = icmp ne i32 %45, 0, !dbg !4658
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !4660

if.then31:                                        ; preds = %if.end29
  br label %unref, !dbg !4661

if.end32:                                         ; preds = %if.end29
  store i32 0, ptr %retval, align 4, !dbg !4662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !4662

unref:                                            ; preds = %if.then31, %if.then28, %if.then22
  call void @llvm.dbg.label(metadata !4572), !dbg !4663
  %46 = load ptr, ptr %deps.addr, align 8, !dbg !4664
  call void @i915_deps_fini(ptr noundef %46) #15, !dbg !4665
  %47 = load i32, ptr %ret, align 4, !dbg !4666
  store i32 %47, ptr %retval, align 4, !dbg !4667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !4667

cleanup33:                                        ; preds = %unref, %if.end32, %if.end15, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4668
  %48 = load i32, ptr %retval, align 4, !dbg !4668
  ret i32 %48, !dbg !4668
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_deps_add_resv(ptr noundef %deps, ptr noundef %resv, ptr noundef %ctx) #0 align 16 !dbg !4669 {
entry:
  %retval = alloca i32, align 4
  %deps.addr = alloca ptr, align 8
  %resv.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %iter = alloca %struct.dma_resv_iter, align 8
  %fence = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %deps, ptr %deps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deps.addr, metadata !4673, metadata !DIExpression()), !dbg !4692
  store ptr %resv, ptr %resv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resv.addr, metadata !4674, metadata !DIExpression()), !dbg !4693
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !4675, metadata !DIExpression()), !dbg !4694
  call void @llvm.lifetime.start.p0(i64 48, ptr %iter) #16, !dbg !4695
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !4676, metadata !DIExpression()), !dbg !4696
  call void @llvm.lifetime.start.p0(i64 8, ptr %fence) #16, !dbg !4697
  call void @llvm.dbg.declare(metadata ptr %fence, metadata !4687, metadata !DIExpression()), !dbg !4698
  br label %do.body, !dbg !4699

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %resv.addr, align 8, !dbg !4700
  %lock = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 0, !dbg !4700
  %base = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 0, !dbg !4700
  br label %do.cond, !dbg !4700

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4700

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %resv.addr, align 8, !dbg !4702
  %call = call i32 @dma_resv_usage_rw(i1 noundef zeroext true) #15, !dbg !4702
  call void @dma_resv_iter_begin(ptr noundef %iter, ptr noundef %1, i32 noundef %call) #15, !dbg !4702
  %call1 = call ptr @dma_resv_iter_first(ptr noundef %iter) #15, !dbg !4702
  store ptr %call1, ptr %fence, align 8, !dbg !4702
  br label %for.cond, !dbg !4702

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load ptr, ptr %fence, align 8, !dbg !4703
  %tobool = icmp ne ptr %2, null, !dbg !4702
  br i1 %tobool, label %for.body, label %for.end, !dbg !4702

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4688, metadata !DIExpression()), !dbg !4705
  %3 = load ptr, ptr %deps.addr, align 8, !dbg !4706
  %4 = load ptr, ptr %fence, align 8, !dbg !4707
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !4708
  %call2 = call i32 @i915_deps_add_dependency(ptr noundef %3, ptr noundef %4, ptr noundef %5) #15, !dbg !4709
  store i32 %call2, ptr %ret, align 4, !dbg !4705
  %6 = load i32, ptr %ret, align 4, !dbg !4710
  %tobool3 = icmp ne i32 %6, 0, !dbg !4710
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4712

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %ret, align 4, !dbg !4713
  store i32 %7, ptr %retval, align 4, !dbg !4714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4714

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4715
  br label %cleanup, !dbg !4715

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4715
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4716

for.inc:                                          ; preds = %cleanup.cont
  %call4 = call ptr @dma_resv_iter_next(ptr noundef %iter) #15, !dbg !4703
  store ptr %call4, ptr %fence, align 8, !dbg !4703
  br label %for.cond, !dbg !4703, !llvm.loop !4717

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !4719

cleanup5:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %fence) #16, !dbg !4720
  call void @llvm.lifetime.end.p0(i64 48, ptr %iter) #16, !dbg !4720
  %8 = load i32, ptr %retval, align 4, !dbg !4720
  ret i32 %8, !dbg !4720
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_resv_iter_begin(ptr noundef %cursor, ptr noundef %obj, i32 noundef %usage) #3 align 16 !dbg !4721 {
entry:
  %cursor.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  store ptr %cursor, ptr %cursor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !4726, metadata !DIExpression()), !dbg !4729
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !4727, metadata !DIExpression()), !dbg !4730
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !4728, metadata !DIExpression()), !dbg !4731
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !4732
  %1 = load ptr, ptr %cursor.addr, align 8, !dbg !4733
  %obj1 = getelementptr inbounds %struct.dma_resv_iter, ptr %1, i32 0, i32 0, !dbg !4734
  store ptr %0, ptr %obj1, align 8, !dbg !4735
  %2 = load i32, ptr %usage.addr, align 4, !dbg !4736
  %3 = load ptr, ptr %cursor.addr, align 8, !dbg !4737
  %usage2 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 1, !dbg !4738
  store i32 %2, ptr %usage2, align 8, !dbg !4739
  %4 = load ptr, ptr %cursor.addr, align 8, !dbg !4740
  %fence = getelementptr inbounds %struct.dma_resv_iter, ptr %4, i32 0, i32 2, !dbg !4741
  store ptr null, ptr %fence, align 8, !dbg !4742
  ret void, !dbg !4743
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_resv_usage_rw(i1 noundef zeroext %write) #3 align 16 !dbg !4744 {
entry:
  %write.addr = alloca i8, align 1
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !4748, metadata !DIExpression()), !dbg !4749
  %0 = load i8, ptr %write.addr, align 1, !dbg !4750, !range !4337, !noundef !762
  %tobool = trunc i8 %0 to i1, !dbg !4750
  %1 = zext i1 %tobool to i64, !dbg !4750
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !4750
  ret i32 %cond, !dbg !4751
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4752 dso_local ptr @dma_resv_iter_first(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4755 dso_local ptr @dma_resv_iter_next(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #3 align 16 !dbg !4756 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !4764, metadata !DIExpression()), !dbg !4766
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !4765, metadata !DIExpression()), !dbg !4767
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !4768
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !4770
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #15, !dbg !4771
  br i1 %call, label %if.then, label %if.end, !dbg !4772

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !4773
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !4775
  call void %1(ptr noundef %2) #15, !dbg !4773
  store i32 1, ptr %retval, align 4, !dbg !4776
  br label %return, !dbg !4776

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4777
  br label %return, !dbg !4777

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !4778
  ret i32 %3, !dbg !4778
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #3 align 16 !dbg !4779 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4786
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #15, !dbg !4787
  ret i1 %call, !dbg !4788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4789 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4793, metadata !DIExpression()), !dbg !4795
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4794, metadata !DIExpression()), !dbg !4796
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4797
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !4798
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !4799
  ret i1 %call, !dbg !4800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !4801 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4805, metadata !DIExpression()), !dbg !4809
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4806, metadata !DIExpression()), !dbg !4810
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !4807, metadata !DIExpression()), !dbg !4811
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4808, metadata !DIExpression()), !dbg !4813
  %0 = load i32, ptr %i.addr, align 4, !dbg !4814
  %1 = load ptr, ptr %r.addr, align 8, !dbg !4815
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !4816
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #15, !dbg !4817
  store i32 %call, ptr %old, align 4, !dbg !4813
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !4818
  %tobool = icmp ne ptr %2, null, !dbg !4818
  br i1 %tobool, label %if.then, label %if.end, !dbg !4820

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !4821
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !4822
  store i32 %3, ptr %4, align 4, !dbg !4823
  br label %if.end, !dbg !4824

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !4825
  %6 = load i32, ptr %i.addr, align 4, !dbg !4827
  %cmp = icmp eq i32 %5, %6, !dbg !4828
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !4829

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !4830

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !4832

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !4834

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4834

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4832

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4836

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !4838

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4838

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !4836, !srcloc !4840
  br label %do.cond7, !dbg !4836

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !4836

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !4832

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4832

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !4841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4841

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !4842
  %cmp12 = icmp slt i32 %7, 0, !dbg !4842
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !4842

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !4842
  %9 = load i32, ptr %i.addr, align 4, !dbg !4842
  %sub = sub i32 %8, %9, !dbg !4842
  %cmp13 = icmp slt i32 %sub, 0, !dbg !4842
  br label %lor.end, !dbg !4842

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !4842
  %lnot14 = xor i1 %lnot, true, !dbg !4842
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !4842
  %conv = sext i32 %lnot.ext to i64, !dbg !4842
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4842
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4842
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4844

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !4845
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #15, !dbg !4846
  br label %if.end17, !dbg !4846

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !4847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4847

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !4848
  %12 = load i1, ptr %retval, align 1, !dbg !4848
  ret i1 %12, !dbg !4848
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4849 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4855, metadata !DIExpression()), !dbg !4857
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4856, metadata !DIExpression()), !dbg !4858
  br label %do.body, !dbg !4859

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4860

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4862
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !4863
  %1 = load i32, ptr %i.addr, align 4, !dbg !4864
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4865
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #15, !dbg !4866
  ret i32 %call, !dbg !4867
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4868 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4871 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4879, metadata !DIExpression()), !dbg !4881
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4880, metadata !DIExpression()), !dbg !4882
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4883
  %1 = load i64, ptr %size.addr, align 8, !dbg !4884
  %conv = trunc i64 %1 to i32, !dbg !4884
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !4885
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4886
  %3 = load i64, ptr %size.addr, align 8, !dbg !4886
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #15, !dbg !4886
  ret void, !dbg !4887
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4888 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4891, metadata !DIExpression()), !dbg !4893
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4892, metadata !DIExpression()), !dbg !4894
  %0 = load i32, ptr %i.addr, align 4, !dbg !4895
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4896
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #15, !dbg !4897
  ret i32 %call, !dbg !4898
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4899 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4904, metadata !DIExpression()), !dbg !4906
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4905, metadata !DIExpression()), !dbg !4907
  ret i1 true, !dbg !4908
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4909 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4914, metadata !DIExpression()), !dbg !4917
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4915, metadata !DIExpression()), !dbg !4918
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4916, metadata !DIExpression()), !dbg !4919
  ret void, !dbg !4920
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !4921 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4924, metadata !DIExpression()), !dbg !4928
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4925, metadata !DIExpression()), !dbg !4929
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !4930
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4926, metadata !DIExpression()), !dbg !4930
  %0 = load i32, ptr %i.addr, align 4, !dbg !4930
  %sub = sub i32 0, %0, !dbg !4930
  store i32 %sub, ptr %__ret, align 4, !dbg !4930
  %1 = load i32, ptr %__ret, align 4, !dbg !4930
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4930
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !4930
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !4930, !srcloc !4931
  store i32 %3, ptr %__ret, align 4, !dbg !4930
  %4 = load i32, ptr %__ret, align 4, !dbg !4930
  store i32 %4, ptr %tmp, align 4, !dbg !4930
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !4932
  %5 = load i32, ptr %tmp, align 4, !dbg !4930
  ret i32 %5, !dbg !4933
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4934 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4942, metadata !DIExpression()), !dbg !4947
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4943, metadata !DIExpression()), !dbg !4948
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4949
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4944, metadata !DIExpression()), !dbg !4950
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4951
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4952
  %div = udiv i64 %1, 64, !dbg !4952
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4953
  store ptr %add.ptr, ptr %p, align 8, !dbg !4950
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !4954
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4945, metadata !DIExpression()), !dbg !4955
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4956
  %rem = urem i64 %2, 64, !dbg !4956
  %shl = shl i64 1, %rem, !dbg !4956
  store i64 %shl, ptr %mask, align 8, !dbg !4955
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !4957
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4946, metadata !DIExpression()), !dbg !4958
  %3 = load ptr, ptr %p, align 8, !dbg !4959
  %4 = load i64, ptr %3, align 8, !dbg !4960
  store i64 %4, ptr %val, align 8, !dbg !4958
  %5 = load i64, ptr %val, align 8, !dbg !4961
  %6 = load i64, ptr %mask, align 8, !dbg !4962
  %and = and i64 %5, %6, !dbg !4963
  %tobool = icmp ne i64 %and, 0, !dbg !4964
  %lnot = xor i1 %tobool, true, !dbg !4964
  %lnot1 = xor i1 %lnot, true, !dbg !4965
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !4966
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !4966
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4966
  ret i1 %lnot1, !dbg !4967
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4968 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4971, metadata !DIExpression()), !dbg !4973
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4972, metadata !DIExpression()), !dbg !4974
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4975
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4976
  %div = udiv i64 %1, 64, !dbg !4976
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4977
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !4978
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4979
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4980
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !4981
  ret i1 %call, !dbg !4982
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4983 dso_local i32 @dma_fence_signal(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4986 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4988, metadata !DIExpression()), !dbg !4990
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4989, metadata !DIExpression()), !dbg !4991
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4992
  %1 = load i64, ptr %size.addr, align 8, !dbg !4993
  %conv = trunc i64 %1 to i32, !dbg !4993
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !4994
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4995
  %3 = load i64, ptr %size.addr, align 8, !dbg !4995
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !4995
  ret void, !dbg !4996
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4997 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5000, metadata !DIExpression()), !dbg !5002
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5001, metadata !DIExpression()), !dbg !5003
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5004
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5005
  br i1 %1, label %cond.true, label %cond.false, !dbg !5005

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5006
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5007
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5008
  %conv = zext i1 %call to i32, !dbg !5008
  br label %cond.end, !dbg !5005

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5009
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5010
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !5011
  %conv2 = zext i1 %call1 to i32, !dbg !5011
  br label %cond.end, !dbg !5005

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5005
  %tobool = icmp ne i32 %cond, 0, !dbg !5005
  ret i1 %tobool, !dbg !5012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5013 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5015, metadata !DIExpression()), !dbg !5017
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5016, metadata !DIExpression()), !dbg !5018
  ret i1 true, !dbg !5019
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5020 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5024, metadata !DIExpression()), !dbg !5026
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5025, metadata !DIExpression()), !dbg !5027
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5028
  %and = and i64 %0, 63, !dbg !5029
  %shl = shl i64 1, %and, !dbg !5030
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5031
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5032
  %shr = ashr i64 %2, 6, !dbg !5033
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5031
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5031
  %and1 = and i64 %shl, %3, !dbg !5034
  %cmp = icmp ne i64 %and1, 0, !dbg !5035
  ret i1 %cmp, !dbg !5036
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5037 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5039, metadata !DIExpression()), !dbg !5042
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5040, metadata !DIExpression()), !dbg !5043
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !5044
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5041, metadata !DIExpression()), !dbg !5045
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5046
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5047
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5048, !srcloc !5049
  %3 = icmp ult i8 %2, 2, !dbg !5048
  call void @llvm.assume(i1 %3), !dbg !5048
  store i8 %2, ptr %oldbit, align 1, !dbg !5048
  %4 = load i8, ptr %oldbit, align 1, !dbg !5050, !range !4337, !noundef !762
  %tobool = trunc i8 %4 to i1, !dbg !5050
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !5051
  ret i1 %tobool, !dbg !5052
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5053 dso_local i64 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__dma_fence_is_later(i64 noundef %f1, i64 noundef %f2, ptr noundef %ops) #3 align 16 !dbg !5054 {
entry:
  %retval = alloca i1, align 1
  %f1.addr = alloca i64, align 8
  %f2.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  store i64 %f1, ptr %f1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f1.addr, metadata !5058, metadata !DIExpression()), !dbg !5061
  store i64 %f2, ptr %f2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f2.addr, metadata !5059, metadata !DIExpression()), !dbg !5062
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5060, metadata !DIExpression()), !dbg !5063
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !5064
  %use_64bit_seqno = getelementptr inbounds %struct.dma_fence_ops, ptr %0, i32 0, i32 0, !dbg !5066
  %1 = load i8, ptr %use_64bit_seqno, align 8, !dbg !5066, !range !4337, !noundef !762
  %tobool = trunc i8 %1 to i1, !dbg !5066
  br i1 %tobool, label %if.then, label %if.end, !dbg !5067

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %f1.addr, align 8, !dbg !5068
  %3 = load i64, ptr %f2.addr, align 8, !dbg !5069
  %cmp = icmp ugt i64 %2, %3, !dbg !5070
  store i1 %cmp, ptr %retval, align 1, !dbg !5071
  br label %return, !dbg !5071

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %f1.addr, align 8, !dbg !5072
  %and = and i64 %4, 4294967295, !dbg !5072
  %conv = trunc i64 %and to i32, !dbg !5072
  %5 = load i64, ptr %f2.addr, align 8, !dbg !5073
  %and1 = and i64 %5, 4294967295, !dbg !5073
  %conv2 = trunc i64 %and1 to i32, !dbg !5073
  %sub = sub i32 %conv, %conv2, !dbg !5074
  %cmp3 = icmp sgt i32 %sub, 0, !dbg !5075
  store i1 %cmp3, ptr %retval, align 1, !dbg !5076
  br label %return, !dbg !5076

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !5077
  ret i1 %6, !dbg !5077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #3 align 16 !dbg !5078 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5082
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5083
  call void @refcount_inc(ptr noundef %refcount) #15, !dbg !5084
  ret void, !dbg !5085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !5086 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5092
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #15, !dbg !5093
  ret void, !dbg !5094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5095 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5099, metadata !DIExpression()), !dbg !5101
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5100, metadata !DIExpression()), !dbg !5102
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5103
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5104
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #15, !dbg !5105
  ret void, !dbg !5106
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !5107 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5111, metadata !DIExpression()), !dbg !5115
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5112, metadata !DIExpression()), !dbg !5116
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5113, metadata !DIExpression()), !dbg !5117
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #16, !dbg !5118
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5114, metadata !DIExpression()), !dbg !5119
  %0 = load i32, ptr %i.addr, align 4, !dbg !5120
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5121
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5122
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #15, !dbg !5123
  store i32 %call, ptr %old, align 4, !dbg !5119
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5124
  %tobool = icmp ne ptr %2, null, !dbg !5124
  br i1 %tobool, label %if.then, label %if.end, !dbg !5126

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5127
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5128
  store i32 %3, ptr %4, align 4, !dbg !5129
  br label %if.end, !dbg !5130

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5131
  %tobool1 = icmp ne i32 %5, 0, !dbg !5131
  %lnot = xor i1 %tobool1, true, !dbg !5131
  %lnot2 = xor i1 %lnot, true, !dbg !5131
  %lnot3 = xor i1 %lnot2, true, !dbg !5131
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5131
  %conv = sext i32 %lnot.ext to i64, !dbg !5131
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5131
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5131
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5133

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5134
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #15, !dbg !5135
  br label %if.end18, !dbg !5135

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5136
  %cmp = icmp slt i32 %7, 0, !dbg !5136
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5136

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5136
  %9 = load i32, ptr %i.addr, align 4, !dbg !5136
  %add = add i32 %8, %9, !dbg !5136
  %cmp7 = icmp slt i32 %add, 0, !dbg !5136
  br label %lor.end, !dbg !5136

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5136
  %lnot11 = xor i1 %lnot9, true, !dbg !5136
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5136
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5136
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5136
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5136
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5138

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5139
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #15, !dbg !5140
  br label %if.end17, !dbg !5140

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #16, !dbg !5141
  ret void, !dbg !5141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5142 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5144, metadata !DIExpression()), !dbg !5146
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5145, metadata !DIExpression()), !dbg !5147
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5148
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #15, !dbg !5149
  %1 = load i32, ptr %i.addr, align 4, !dbg !5150
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5151
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #15, !dbg !5152
  ret i32 %call, !dbg !5153
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5154 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5156, metadata !DIExpression()), !dbg !5158
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5157, metadata !DIExpression()), !dbg !5159
  %0 = load i32, ptr %i.addr, align 4, !dbg !5160
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5161
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #15, !dbg !5162
  ret i32 %call, !dbg !5163
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !5164 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5166, metadata !DIExpression()), !dbg !5170
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5167, metadata !DIExpression()), !dbg !5171
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5168, metadata !DIExpression()), !dbg !5172
  %0 = load i32, ptr %i.addr, align 4, !dbg !5172
  store i32 %0, ptr %__ret, align 4, !dbg !5172
  %1 = load i32, ptr %__ret, align 4, !dbg !5172
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5172
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5172
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #16, !dbg !5172, !srcloc !5173
  store i32 %3, ptr %__ret, align 4, !dbg !5172
  %4 = load i32, ptr %__ret, align 4, !dbg !5172
  store i32 %4, ptr %tmp, align 4, !dbg !5172
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !5174
  %5 = load i32, ptr %tmp, align 4, !dbg !5172
  ret i32 %5, !dbg !5175
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5176 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5180, metadata !DIExpression()), !dbg !5184
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5181, metadata !DIExpression()), !dbg !5185
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5182, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5183, metadata !DIExpression()), !dbg !5188
  %0 = load i64, ptr %n.addr, align 8, !dbg !5189
  %1 = load i64, ptr %size.addr, align 8, !dbg !5189
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5189
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5189
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5189
  store i64 %4, ptr %bytes, align 8, !dbg !5189
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #15, !dbg !5189
  %lnot = xor i1 %call, true, !dbg !5189
  %lnot1 = xor i1 %lnot, true, !dbg !5189
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5189
  %conv = sext i32 %lnot.ext to i64, !dbg !5189
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5189
  %tobool = icmp ne i64 %expval, 0, !dbg !5189
  br i1 %tobool, label %if.then, label %if.end, !dbg !5191

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5192

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5193
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5195
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5196

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5197
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5198
  br i1 %8, label %if.then2, label %if.end4, !dbg !5199

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5200
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5201
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #18, !dbg !5202
  store ptr %call3, ptr %retval, align 8, !dbg !5203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5203

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5204
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5205
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #18, !dbg !5206
  store ptr %call5, ptr %retval, align 8, !dbg !5207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5207

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !5208
  %13 = load ptr, ptr %retval, align 8, !dbg !5208
  ret ptr %13, !dbg !5208
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !5209 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5216, !range !4337, !noundef !762
  %tobool = trunc i8 %0 to i1, !dbg !5216
  %lnot = xor i1 %tobool, true, !dbg !5216
  %lnot1 = xor i1 %lnot, true, !dbg !5216
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5216
  %conv = sext i32 %lnot.ext to i64, !dbg !5216
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5216
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5216
  ret i1 %tobool2, !dbg !5217
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5218 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5222, metadata !DIExpression()), !dbg !5227
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5223, metadata !DIExpression()), !dbg !5228
  %0 = load i64, ptr %size.addr, align 8, !dbg !5229
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5230
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5231

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5232
  %tobool = icmp ne i64 %2, 0, !dbg !5232
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5233

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5234
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5224, metadata !DIExpression()), !dbg !5235
  %3 = load i64, ptr %size.addr, align 8, !dbg !5236
  %cmp = icmp ugt i64 %3, 8192, !dbg !5238
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5239

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5240
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5241
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5242
  store ptr %call, ptr %retval, align 8, !dbg !5243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5243

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5244
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !5244
  store i32 %call2, ptr %index, align 4, !dbg !5245
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5246
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5247
  %9 = ptrtoint ptr %8 to i64, !dbg !5247
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !5248
  %idxprom = zext i32 %call3 to i64, !dbg !5249
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5249
  %10 = load i32, ptr %index, align 4, !dbg !5250
  %idxprom4 = zext i32 %10 to i64, !dbg !5249
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5249
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5249
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5251
  %13 = load i64, ptr %size.addr, align 8, !dbg !5252
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5253
  store ptr %call6, ptr %retval, align 8, !dbg !5254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5254

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5255
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5256
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5257
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5258
  store ptr %call8, ptr %retval, align 8, !dbg !5259
  br label %return, !dbg !5259

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5260
  ret ptr %16, !dbg !5260
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5261 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5262 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !5263 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5267, metadata !DIExpression()), !dbg !5269
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5268, metadata !DIExpression()), !dbg !5270
  %0 = load i64, ptr %size.addr, align 8, !dbg !5271
  %tobool = icmp ne i64 %0, 0, !dbg !5271
  br i1 %tobool, label %if.end, label %if.then, !dbg !5273

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5274
  br label %return, !dbg !5274

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5275
  %cmp = icmp ule i64 %1, 8, !dbg !5277
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5278

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5279
  br label %return, !dbg !5279

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5280
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5282
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5283

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5284
  %cmp4 = icmp ule i64 %3, 96, !dbg !5285
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5286

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5287
  br label %return, !dbg !5287

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5288
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5290
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5291

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5292
  %cmp9 = icmp ule i64 %5, 192, !dbg !5293
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5294

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5295
  br label %return, !dbg !5295

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5296
  %cmp12 = icmp ule i64 %6, 8, !dbg !5298
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5299

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5300
  br label %return, !dbg !5300

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5301
  %cmp15 = icmp ule i64 %7, 16, !dbg !5303
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5304

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5305
  br label %return, !dbg !5305

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5306
  %cmp18 = icmp ule i64 %8, 32, !dbg !5308
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5309

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5310
  br label %return, !dbg !5310

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5311
  %cmp21 = icmp ule i64 %9, 64, !dbg !5313
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5314

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5315
  br label %return, !dbg !5315

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5316
  %cmp24 = icmp ule i64 %10, 128, !dbg !5318
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5319

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5320
  br label %return, !dbg !5320

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5321
  %cmp27 = icmp ule i64 %11, 256, !dbg !5323
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5324

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5325
  br label %return, !dbg !5325

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5326
  %cmp30 = icmp ule i64 %12, 512, !dbg !5328
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5329

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5330
  br label %return, !dbg !5330

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5331
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5333
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5334

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5335
  br label %return, !dbg !5335

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5336
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5338
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5339

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5340
  br label %return, !dbg !5340

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5341
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5343
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5344

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5345
  br label %return, !dbg !5345

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5346
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5348
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5349

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5350
  br label %return, !dbg !5350

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5351
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5353
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5354

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5355
  br label %return, !dbg !5355

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5356
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5358
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5359

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5360
  br label %return, !dbg !5360

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5361
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5363
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5364

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5365
  br label %return, !dbg !5365

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5366
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5368
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5369

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5370
  br label %return, !dbg !5370

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5371
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5373
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5374

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5375
  br label %return, !dbg !5375

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5376
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5378
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5379

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5380
  br label %return, !dbg !5380

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5381
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5383
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5384

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5385
  br label %return, !dbg !5385

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5386
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5388
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5389

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5390
  br label %return, !dbg !5390

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5391, !range !4337, !noundef !762
  %tobool69 = trunc i8 %25 to i1, !dbg !5391
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5393

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5394

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_177() #20, !dbg !5395, !srcloc !5398
  unreachable, !dbg !5395

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5399

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5400

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5401

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5403

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5401

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !5405, !srcloc !5407
  br label %do.end75, !dbg !5405

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5401

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5408
  br label %return, !dbg !5408

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5409
  ret i32 %26, !dbg !5409
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5410 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !5416 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5420, metadata !DIExpression()), !dbg !5422
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5421, metadata !DIExpression()), !dbg !5423
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5424
  %and = and i32 %0, 17, !dbg !5424
  %cmp = icmp eq i32 %and, 0, !dbg !5424
  %lnot = xor i1 %cmp, true, !dbg !5424
  %lnot1 = xor i1 %lnot, true, !dbg !5424
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5424
  %conv = sext i32 %lnot.ext to i64, !dbg !5424
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5424
  %tobool = icmp ne i64 %expval, 0, !dbg !5424
  br i1 %tobool, label %if.then, label %if.end, !dbg !5426

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5427
  br label %return, !dbg !5427

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5428
  %and2 = and i32 %1, 1, !dbg !5430
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5430
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5431

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5433
  br label %return, !dbg !5433

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5435
  ret i32 %2, !dbg !5435
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5436 dso_local void @__compiletime_assert_177() #14

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0,1) }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 495, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 26)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !14, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_deps.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_deps\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_deps.ll drivers/gpu/drm/i915/i915_deps.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !133, globals: !148, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "drivers/gpu/drm/i915/i915_deps.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cef7c34a88c5b291d875d7ed11930040")
!15 = !{!16, !22, !30, !37, !45, !61, !68, !74, !79, !85, !91, !98, !105, !110, !118, !124}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !17, line: 65, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !23, line: 9, baseType: !18, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!26 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!27 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!28 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!29 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !31, line: 312, baseType: !18, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!34 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!35 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!36 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !38, line: 68, baseType: !18, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!43 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !46, line: 1325, baseType: !18, size: 32, elements: !47)
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
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !62, line: 15, baseType: !18, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!65 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!66 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!67 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !69, line: 26, baseType: !18, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!72 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!73 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !75, line: 2052, baseType: !18, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!78 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !80, line: 54, baseType: !18, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "USRQUOTA", value: 0)
!83 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!84 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !86, line: 16, baseType: !18, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "TT_NONE", value: 0)
!89 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!90 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !92, line: 51, baseType: !18, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!95 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!96 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!97 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_resv_usage", file: !99, line: 71, baseType: !18, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "DMA_RESV_USAGE_KERNEL", value: 0)
!102 = !DIEnumerator(name: "DMA_RESV_USAGE_WRITE", value: 1)
!103 = !DIEnumerator(name: "DMA_RESV_USAGE_READ", value: 2)
!104 = !DIEnumerator(name: "DMA_RESV_USAGE_BOOKKEEP", value: 3)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 10, baseType: !18, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "false", value: 0)
!109 = !DIEnumerator(name: "true", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !111, line: 119, baseType: !18, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!114 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!115 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!116 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!117 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !2, line: 98, baseType: !18, size: 32, elements: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0)
!121 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1)
!122 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2)
!123 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !18, size: 32, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132}
!126 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!127 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!128 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!129 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!130 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!131 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!132 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!133 = !{!134, !137, !138, !140, !141, !142, !143, !136, !147}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !135, line: 42, baseType: !136)
!135 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!136 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!141 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!142 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !144, line: 21, baseType: !145)
!144 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !146, line: 27, baseType: !18)
!146 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !135, line: 154, baseType: !18)
!148 = !{!0, !7}
!149 = !{i32 7, !"Dwarf Version", i32 5}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 8, !"cf-protection-branch", i32 1}
!153 = !{i32 4, !"function_return_thunk_extern", i32 1}
!154 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!155 = !{i32 1, !"Code Model", i32 2}
!156 = !{i32 1, !"override-stack-alignment", i32 8}
!157 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!158 = distinct !DISubprogram(name: "i915_deps_init", scope: !14, file: !14, line: 50, type: !159, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !294)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !161, !147}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_deps", file: !163, line: 24, size: 256, elements: !164)
!163 = !DIFile(filename: "drivers/gpu/drm/i915/i915_deps.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a5c1d5acc08a8eefbb7083abbe72af6")
!164 = !{!165, !289, !291, !292, !293}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "single", scope: !162, file: !163, line: 25, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !2, line: 65, size: 512, elements: !168)
!168 = !{!169, !211, !254, !273, !277, !278, !279, !288}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !167, file: !2, line: 66, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !172, line: 29, baseType: !173)
!172 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !172, line: 17, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !172, line: 18, baseType: !176, size: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !172, line: 18, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !176, file: !172, line: 19, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !180, line: 14, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !179, file: !180, line: 15, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !184, line: 44, baseType: !185)
!184 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !184, line: 14, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !184, line: 15, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !184, line: 15, size: 32, elements: !189)
!189 = !{!190, !195, !203}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !188, file: !184, line: 16, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !135, line: 174, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 172, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !192, file: !135, line: 173, baseType: !142, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !184, line: 24, baseType: !196, size: 16)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !184, line: 24, size: 16, elements: !197)
!197 = !{!198, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !196, file: !184, line: 25, baseType: !199, size: 8)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !144, line: 17, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !146, line: 21, baseType: !201)
!201 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !196, file: !184, line: 26, baseType: !199, size: 8, offset: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !184, line: 28, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !184, line: 28, size: 32, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !204, file: !184, line: 29, baseType: !207, size: 16)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !144, line: 19, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !146, line: 24, baseType: !209)
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !204, file: !184, line: 30, baseType: !207, size: 16, offset: 16)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !167, file: !2, line: 67, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !2, line: 125, size: 640, elements: !215)
!215 = !{!216, !219, !225, !226, !230, !231, !235, !239, !244, !245}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !214, file: !2, line: 132, baseType: !217, size: 8)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !135, line: 35, baseType: !218)
!218 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !214, file: !2, line: 143, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !166}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !214, file: !2, line: 155, baseType: !220, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !214, file: !2, line: 192, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!217, !166}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !214, file: !2, line: 209, baseType: !227, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !214, file: !2, line: 227, baseType: !232, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!141, !166, !217, !141}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !214, file: !2, line: 238, baseType: !236, size: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !166}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !214, file: !2, line: 248, baseType: !240, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !166, !243, !142}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !214, file: !2, line: 258, baseType: !240, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !214, file: !2, line: 279, baseType: !246, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !166, !249}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !250, line: 29, baseType: !251)
!250 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !144, line: 22, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !146, line: 30, baseType: !253)
!253 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !2, line: 84, baseType: !255, size: 128, offset: 128)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !2, line: 84, size: 128, elements: !256)
!256 = !{!257, !263, !264}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !255, file: !2, line: 85, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !135, line: 190, size: 128, elements: !259)
!259 = !{!260, !262}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !135, line: 191, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !258, file: !135, line: 191, baseType: !261, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !255, file: !2, line: 87, baseType: !249, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !255, file: !2, line: 89, baseType: !265, size: 128, align: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !135, line: 232, size: 128, align: 64, elements: !266)
!266 = !{!267, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !135, line: 233, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !265, file: !135, line: 234, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !268}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !167, file: !2, line: 91, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !144, line: 23, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !146, line: 31, baseType: !276)
!276 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !167, file: !2, line: 92, baseType: !274, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !2, line: 93, baseType: !136, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !167, file: !2, line: 94, baseType: !280, size: 32, offset: 448)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !281, line: 19, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !280, file: !281, line: 20, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !111, line: 113, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !111, line: 111, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !285, file: !111, line: 112, baseType: !191, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !167, file: !2, line: 95, baseType: !142, size: 32, offset: 480)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !162, file: !163, line: 26, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "num_deps", scope: !162, file: !163, line: 27, baseType: !18, size: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "fences_size", scope: !162, file: !163, line: 28, baseType: !18, size: 32, offset: 160)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "gfp", scope: !162, file: !163, line: 29, baseType: !147, size: 32, offset: 192)
!294 = !{!295, !296}
!295 = !DILocalVariable(name: "deps", arg: 1, scope: !158, file: !14, line: 50, type: !161)
!296 = !DILocalVariable(name: "gfp", arg: 2, scope: !158, file: !14, line: 50, type: !147)
!297 = !DILocation(line: 50, column: 39, scope: !158)
!298 = !DILocation(line: 50, column: 51, scope: !158)
!299 = !DILocation(line: 52, column: 2, scope: !158)
!300 = !DILocation(line: 52, column: 8, scope: !158)
!301 = !DILocation(line: 52, column: 15, scope: !158)
!302 = !DILocation(line: 53, column: 14, scope: !158)
!303 = !DILocation(line: 53, column: 2, scope: !158)
!304 = !DILocation(line: 53, column: 8, scope: !158)
!305 = !DILocation(line: 53, column: 12, scope: !158)
!306 = !DILocation(line: 54, column: 25, scope: !158)
!307 = !DILocation(line: 54, column: 2, scope: !158)
!308 = !DILocation(line: 55, column: 1, scope: !158)
!309 = distinct !DISubprogram(name: "i915_deps_reset_fences", scope: !14, file: !14, line: 36, type: !310, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !161}
!312 = !{!313}
!313 = !DILocalVariable(name: "deps", arg: 1, scope: !309, file: !14, line: 36, type: !161)
!314 = !DILocation(line: 36, column: 54, scope: !309)
!315 = !DILocation(line: 38, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !14, line: 38, column: 6)
!317 = !DILocation(line: 38, column: 12, scope: !316)
!318 = !DILocation(line: 38, column: 23, scope: !316)
!319 = !DILocation(line: 38, column: 29, scope: !316)
!320 = !DILocation(line: 38, column: 19, scope: !316)
!321 = !DILocation(line: 38, column: 6, scope: !309)
!322 = !DILocation(line: 39, column: 9, scope: !316)
!323 = !DILocation(line: 39, column: 15, scope: !316)
!324 = !DILocation(line: 39, column: 3, scope: !316)
!325 = !DILocation(line: 40, column: 2, scope: !309)
!326 = !DILocation(line: 40, column: 8, scope: !309)
!327 = !DILocation(line: 40, column: 17, scope: !309)
!328 = !DILocation(line: 41, column: 2, scope: !309)
!329 = !DILocation(line: 41, column: 8, scope: !309)
!330 = !DILocation(line: 41, column: 20, scope: !309)
!331 = !DILocation(line: 42, column: 18, scope: !309)
!332 = !DILocation(line: 42, column: 24, scope: !309)
!333 = !DILocation(line: 42, column: 2, scope: !309)
!334 = !DILocation(line: 42, column: 8, scope: !309)
!335 = !DILocation(line: 42, column: 15, scope: !309)
!336 = !DILocation(line: 43, column: 1, scope: !309)
!337 = distinct !DISubprogram(name: "i915_deps_fini", scope: !14, file: !14, line: 64, type: !310, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !338)
!338 = !{!339, !340}
!339 = !DILocalVariable(name: "deps", arg: 1, scope: !337, file: !14, line: 64, type: !161)
!340 = !DILocalVariable(name: "i", scope: !337, file: !14, line: 66, type: !18)
!341 = !DILocation(line: 64, column: 39, scope: !337)
!342 = !DILocation(line: 66, column: 2, scope: !337)
!343 = !DILocation(line: 66, column: 15, scope: !337)
!344 = !DILocation(line: 68, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !337, file: !14, line: 68, column: 2)
!346 = !DILocation(line: 68, column: 7, scope: !345)
!347 = !DILocation(line: 68, column: 14, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !14, line: 68, column: 2)
!349 = !DILocation(line: 68, column: 18, scope: !348)
!350 = !DILocation(line: 68, column: 24, scope: !348)
!351 = !DILocation(line: 68, column: 16, scope: !348)
!352 = !DILocation(line: 68, column: 2, scope: !345)
!353 = !DILocation(line: 69, column: 17, scope: !348)
!354 = !DILocation(line: 69, column: 23, scope: !348)
!355 = !DILocation(line: 69, column: 30, scope: !348)
!356 = !DILocation(line: 69, column: 3, scope: !348)
!357 = !DILocation(line: 68, column: 34, scope: !348)
!358 = !DILocation(line: 68, column: 2, scope: !348)
!359 = distinct !{!359, !352, !360, !361, !362}
!360 = !DILocation(line: 69, column: 32, scope: !345)
!361 = !{!"llvm.loop.mustprogress"}
!362 = !{!"llvm.loop.unroll.disable"}
!363 = !DILocation(line: 71, column: 6, scope: !364)
!364 = distinct !DILexicalBlock(scope: !337, file: !14, line: 71, column: 6)
!365 = !DILocation(line: 71, column: 12, scope: !364)
!366 = !DILocation(line: 71, column: 23, scope: !364)
!367 = !DILocation(line: 71, column: 29, scope: !364)
!368 = !DILocation(line: 71, column: 19, scope: !364)
!369 = !DILocation(line: 71, column: 6, scope: !337)
!370 = !DILocation(line: 72, column: 9, scope: !364)
!371 = !DILocation(line: 72, column: 15, scope: !364)
!372 = !DILocation(line: 72, column: 3, scope: !364)
!373 = !DILocation(line: 73, column: 1, scope: !337)
!374 = distinct !DISubprogram(name: "dma_fence_put", scope: !2, file: !2, line: 293, type: !237, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !375)
!375 = !{!376}
!376 = !DILocalVariable(name: "fence", arg: 1, scope: !374, file: !2, line: 293, type: !166)
!377 = !DILocation(line: 293, column: 52, scope: !374)
!378 = !DILocation(line: 295, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !2, line: 295, column: 6)
!380 = !DILocation(line: 295, column: 6, scope: !374)
!381 = !DILocation(line: 296, column: 13, scope: !379)
!382 = !DILocation(line: 296, column: 20, scope: !379)
!383 = !DILocation(line: 296, column: 3, scope: !379)
!384 = !DILocation(line: 297, column: 1, scope: !374)
!385 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!390 = distinct !DISubprogram(name: "i915_deps_sync", scope: !14, file: !14, line: 132, type: !391, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4308)
!391 = !DISubroutineType(types: !392)
!392 = !{!142, !393, !395}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_operation_ctx", file: !398, line: 178, size: 192, elements: !399)
!398 = !DIFile(filename: "./include/drm/ttm/ttm_bo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2f81fca0b8181781f1c758cd81feeff")
!399 = !{!400, !401, !402, !403, !404, !405, !4306}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !397, file: !398, line: 179, baseType: !217, size: 8)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_gpu", scope: !397, file: !398, line: 180, baseType: !217, size: 8, offset: 8)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_retry_mayfail", scope: !397, file: !398, line: 181, baseType: !217, size: 8, offset: 16)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "allow_res_evict", scope: !397, file: !398, line: 182, baseType: !217, size: 8, offset: 24)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "force_alloc", scope: !397, file: !398, line: 183, baseType: !217, size: 8, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !397, file: !398, line: 184, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !99, line: 155, size: 384, elements: !408)
!408 = !{!409, !4303}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !407, file: !99, line: 166, baseType: !410, size: 320)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !411, line: 47, size: 320, elements: !412)
!411 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!412 = !{!413, !432}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !410, file: !411, line: 48, baseType: !414, size: 256)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !415, line: 66, size: 256, elements: !416)
!415 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!416 = !{!417, !424, !426, !431}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !414, file: !415, line: 67, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !419, line: 13, baseType: !420)
!419 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !135, line: 181, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 179, size: 64, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !421, file: !135, line: 180, baseType: !251, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !414, file: !415, line: 68, baseType: !425, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !180, line: 23, baseType: !179)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !414, file: !415, line: 70, baseType: !427, size: 32, offset: 96)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !428, line: 15, size: 32, elements: !429)
!428 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !427, file: !428, line: 20, baseType: !191, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !414, file: !415, line: 72, baseType: !258, size: 128, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !410, file: !411, line: 49, baseType: !433, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !411, line: 55, size: 192, elements: !435)
!435 = !{!436, !4299, !4300, !4301, !4302}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !434, file: !411, line: 56, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !439, line: 746, size: 58368, elements: !440)
!439 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!440 = !{!441, !449, !450, !451, !452, !453, !454, !455, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !533, !544, !643, !647, !650, !681, !682, !683, !684, !695, !697, !698, !699, !700, !701, !702, !713, !714, !717, !718, !719, !720, !721, !722, !723, !724, !731, !732, !739, !740, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3476, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3524, !3530, !3531, !3532, !3533, !3534, !3536, !3539, !3546, !3551, !3554, !3557, !3560, !3563, !3701, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3739, !3740, !3741, !3750, !3758, !3759, !3760, !3761, !3762, !3767, !3768, !3769, !3772, !3773, !3776, !3779, !3782, !3790, !3793, !3794, !3880, !3881, !3882, !3883, !3884, !3890, !3891, !3892, !3893, !3896, !3897, !3900, !3903, !3904, !3907, !3908, !3909, !3912, !3913, !3914, !3915, !3916, !3917, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3949, !3950, !3956, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3968, !4040, !4042, !4043, !4044, !4045, !4046, !4047, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4076, !4077, !4078}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !438, file: !439, line: 752, baseType: !442, size: 192)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !443, line: 56, size: 192, elements: !444)
!443 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!444 = !{!445, !446, !447, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !443, line: 57, baseType: !136, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !442, file: !443, line: 58, baseType: !136, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !442, file: !443, line: 59, baseType: !143, size: 32, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !442, file: !443, line: 61, baseType: !143, size: 32, offset: 160)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !438, file: !439, line: 754, baseType: !18, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !438, file: !439, line: 767, baseType: !137, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !438, file: !439, line: 768, baseType: !284, size: 32, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !439, line: 770, baseType: !18, size: 32, offset: 352)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !438, file: !439, line: 771, baseType: !18, size: 32, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !438, file: !439, line: 774, baseType: !142, size: 32, offset: 416)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !438, file: !439, line: 775, baseType: !456, size: 128, offset: 448)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !457, line: 58, size: 128, elements: !458)
!457 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!458 = !{!459, !465, !470, !471}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !456, file: !457, line: 59, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !461, line: 60, size: 64, elements: !462)
!461 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !461, line: 61, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !457, line: 60, baseType: !466, size: 32, offset: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !457, line: 60, size: 32, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !466, file: !457, line: 61, baseType: !18, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !466, file: !457, line: 62, baseType: !191, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !456, file: !457, line: 65, baseType: !207, size: 16, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !456, file: !457, line: 65, baseType: !207, size: 16, offset: 112)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !438, file: !439, line: 776, baseType: !18, size: 32, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !438, file: !439, line: 777, baseType: !136, size: 64, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !438, file: !439, line: 778, baseType: !437, size: 64, offset: 704)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !438, file: !439, line: 787, baseType: !142, size: 32, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !438, file: !439, line: 788, baseType: !142, size: 32, offset: 800)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !438, file: !439, line: 790, baseType: !142, size: 32, offset: 832)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !438, file: !439, line: 792, baseType: !142, size: 32, offset: 864)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !438, file: !439, line: 793, baseType: !142, size: 32, offset: 896)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !438, file: !439, line: 794, baseType: !142, size: 32, offset: 928)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !438, file: !439, line: 795, baseType: !18, size: 32, offset: 960)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !438, file: !439, line: 797, baseType: !483, size: 2048, offset: 1024)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !439, line: 551, size: 2048, elements: !484)
!484 = !{!485, !490, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !512, !515, !516, !517}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !483, file: !439, line: 553, baseType: !486, size: 128)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !439, line: 411, size: 128, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !486, file: !439, line: 412, baseType: !136, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !486, file: !439, line: 413, baseType: !143, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !483, file: !439, line: 554, baseType: !491, size: 192, align: 64, offset: 128)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !492, line: 5, size: 192, align: 64, elements: !493)
!492 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!493 = !{!494, !495, !497}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !491, file: !492, line: 6, baseType: !136, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !491, file: !492, line: 7, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !491, file: !492, line: 8, baseType: !496, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !483, file: !439, line: 555, baseType: !274, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !483, file: !439, line: 556, baseType: !274, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !483, file: !439, line: 558, baseType: !258, size: 128, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !483, file: !439, line: 559, baseType: !18, size: 32, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !483, file: !439, line: 561, baseType: !274, size: 64, offset: 640)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !483, file: !439, line: 562, baseType: !274, size: 64, offset: 704)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !483, file: !439, line: 563, baseType: !274, size: 64, offset: 768)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !483, file: !439, line: 564, baseType: !274, size: 64, offset: 832)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !483, file: !439, line: 565, baseType: !251, size: 64, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !483, file: !439, line: 566, baseType: !274, size: 64, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !483, file: !439, line: 568, baseType: !274, size: 64, offset: 1024)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !483, file: !439, line: 571, baseType: !142, size: 32, offset: 1088)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !483, file: !439, line: 572, baseType: !511, size: 64, offset: 1152)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !483, file: !439, line: 574, baseType: !513, size: 64, offset: 1216)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !439, line: 49, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !483, file: !439, line: 576, baseType: !513, size: 64, offset: 1280)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !483, file: !439, line: 578, baseType: !136, size: 64, offset: 1344)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !483, file: !439, line: 588, baseType: !518, size: 512, align: 512, offset: 1536)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !439, line: 497, size: 512, align: 512, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !526, !527, !528}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !518, file: !439, line: 498, baseType: !274, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !518, file: !439, line: 499, baseType: !274, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !518, file: !439, line: 500, baseType: !274, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !518, file: !439, line: 501, baseType: !143, size: 32, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !518, file: !439, line: 502, baseType: !143, size: 32, offset: 224)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !518, file: !439, line: 503, baseType: !136, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !518, file: !439, line: 504, baseType: !136, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !518, file: !439, line: 505, baseType: !136, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !518, file: !439, line: 506, baseType: !529, size: 64, align: 64, offset: 448)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !439, line: 445, size: 64, align: 64, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !529, file: !439, line: 446, baseType: !18, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !529, file: !439, line: 447, baseType: !18, size: 32, offset: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !438, file: !439, line: 798, baseType: !534, size: 384, offset: 3072)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !439, line: 592, size: 384, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !534, file: !439, line: 593, baseType: !258, size: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !534, file: !439, line: 594, baseType: !136, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !534, file: !439, line: 595, baseType: !136, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !534, file: !439, line: 596, baseType: !18, size: 32, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !534, file: !439, line: 597, baseType: !209, size: 16, offset: 288)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !534, file: !439, line: 598, baseType: !209, size: 16, offset: 304)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !534, file: !439, line: 600, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !438, file: !439, line: 799, baseType: !545, size: 1792, offset: 3456)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !439, line: 610, size: 1792, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !640, !641}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !545, file: !439, line: 611, baseType: !491, size: 192, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !545, file: !439, line: 618, baseType: !274, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !545, file: !439, line: 619, baseType: !274, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !545, file: !439, line: 620, baseType: !274, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !545, file: !439, line: 621, baseType: !274, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !545, file: !439, line: 622, baseType: !274, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !545, file: !439, line: 629, baseType: !251, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !545, file: !439, line: 630, baseType: !274, size: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !439, line: 631, baseType: !18, size: 32, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !545, file: !439, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !545, file: !439, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !545, file: !439, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !545, file: !439, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !545, file: !439, line: 662, baseType: !561, size: 512, offset: 704)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !17, line: 118, size: 512, elements: !562)
!562 = !{!563, !569, !570, !575, !636, !637, !638, !639}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !561, file: !17, line: 119, baseType: !564, size: 256)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !565, line: 9, size: 256, elements: !566)
!565 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !564, file: !565, line: 10, baseType: !491, size: 192, align: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !564, file: !565, line: 11, baseType: !249, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !561, file: !17, line: 120, baseType: !249, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !561, file: !17, line: 121, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!16, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !561, file: !17, line: 122, baseType: !576, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !17, line: 159, size: 512, align: 512, elements: !578)
!578 = !{!579, !604, !605, !609, !619, !620, !631, !635}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !577, file: !17, line: 160, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !17, line: 215, size: 4608, align: 512, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !581, file: !17, line: 216, baseType: !425, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !581, file: !17, line: 217, baseType: !18, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !581, file: !17, line: 218, baseType: !18, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !581, file: !17, line: 219, baseType: !18, size: 32, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !581, file: !17, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !581, file: !17, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !581, file: !17, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !581, file: !17, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !581, file: !17, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !581, file: !17, line: 226, baseType: !18, size: 32, offset: 160)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !581, file: !17, line: 227, baseType: !209, size: 16, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !581, file: !17, line: 228, baseType: !209, size: 16, offset: 208)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !581, file: !17, line: 229, baseType: !18, size: 32, offset: 224)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !581, file: !17, line: 235, baseType: !249, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !581, file: !17, line: 236, baseType: !574, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !581, file: !17, line: 237, baseType: !249, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !581, file: !17, line: 238, baseType: !574, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !581, file: !17, line: 239, baseType: !601, size: 4096, align: 512, offset: 512)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 4096, align: 512, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 8)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !577, file: !17, line: 161, baseType: !18, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !577, file: !17, line: 162, baseType: !606, size: 32, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !135, line: 32, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !608, line: 96, baseType: !142)
!608 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!609 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !577, file: !17, line: 163, baseType: !610, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !611, line: 274, baseType: !612)
!611 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !611, line: 274, size: 32, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !612, file: !611, line: 274, baseType: !615, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !611, line: 69, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !611, line: 64, size: 32, elements: !617)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !616, file: !611, line: 65, baseType: !18, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !577, file: !17, line: 164, baseType: !574, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !577, file: !17, line: 165, baseType: !621, size: 128, offset: 256)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !565, line: 14, size: 128, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !621, file: !565, line: 15, baseType: !624, size: 128)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !492, line: 26, size: 128, elements: !625)
!625 = !{!626, !630}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !624, file: !492, line: 27, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !492, line: 12, size: 64, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !627, file: !492, line: 13, baseType: !496, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !624, file: !492, line: 28, baseType: !496, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !577, file: !17, line: 166, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!249}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !577, file: !17, line: 167, baseType: !249, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !561, file: !17, line: 123, baseType: !199, size: 8, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !561, file: !17, line: 124, baseType: !199, size: 8, offset: 456)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !561, file: !17, line: 125, baseType: !199, size: 8, offset: 464)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !561, file: !17, line: 126, baseType: !199, size: 8, offset: 472)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !545, file: !439, line: 671, baseType: !561, size: 512, offset: 1216)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !545, file: !439, line: 679, baseType: !642, size: 64, offset: 1728)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !438, file: !439, line: 800, baseType: !644, size: 64, offset: 5248)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !439, line: 800, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !438, file: !439, line: 809, baseType: !648, size: 64, offset: 5312)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !439, line: 70, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !438, file: !439, line: 825, baseType: !651, size: 2048, align: 512, offset: 5632)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !439, line: 509, size: 2048, align: 512, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !651, file: !439, line: 511, baseType: !274, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !651, file: !439, line: 512, baseType: !274, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !651, file: !439, line: 513, baseType: !274, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !651, file: !439, line: 514, baseType: !274, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !651, file: !439, line: 515, baseType: !274, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !651, file: !439, line: 516, baseType: !274, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !651, file: !439, line: 518, baseType: !274, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !651, file: !439, line: 519, baseType: !274, size: 64, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !651, file: !439, line: 520, baseType: !251, size: 64, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !651, file: !439, line: 522, baseType: !274, size: 64, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !651, file: !439, line: 523, baseType: !274, size: 64, offset: 640)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !651, file: !439, line: 524, baseType: !251, size: 64, offset: 704)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !651, file: !439, line: 526, baseType: !251, size: 64, offset: 768)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !651, file: !439, line: 527, baseType: !274, size: 64, offset: 832)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !651, file: !439, line: 529, baseType: !274, size: 64, offset: 896)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !651, file: !439, line: 530, baseType: !274, size: 64, offset: 960)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !651, file: !439, line: 531, baseType: !274, size: 64, offset: 1024)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !651, file: !439, line: 532, baseType: !274, size: 64, offset: 1088)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !651, file: !439, line: 533, baseType: !274, size: 64, offset: 1152)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !651, file: !439, line: 535, baseType: !274, size: 64, offset: 1216)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !651, file: !439, line: 536, baseType: !274, size: 64, offset: 1280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !651, file: !439, line: 537, baseType: !274, size: 64, offset: 1344)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !651, file: !439, line: 538, baseType: !274, size: 64, offset: 1408)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !651, file: !439, line: 539, baseType: !274, size: 64, offset: 1472)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !651, file: !439, line: 540, baseType: !274, size: 64, offset: 1536)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !651, file: !439, line: 541, baseType: !274, size: 64, offset: 1600)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !651, file: !439, line: 542, baseType: !274, size: 64, offset: 1664)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !651, file: !439, line: 543, baseType: !274, size: 64, offset: 1728)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !438, file: !439, line: 833, baseType: !18, size: 32, offset: 7680)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !438, file: !439, line: 836, baseType: !18, size: 32, offset: 7712)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !438, file: !439, line: 837, baseType: !142, size: 32, offset: 7744)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !438, file: !439, line: 838, baseType: !685, size: 64, offset: 7808)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !688, line: 19, baseType: !689)
!688 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !688, line: 19, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !689, file: !688, line: 19, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 1)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !438, file: !439, line: 839, baseType: !696, size: 64, offset: 7872)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !438, file: !439, line: 840, baseType: !687, size: 64, offset: 7936)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !438, file: !439, line: 841, baseType: !137, size: 64, offset: 8000)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !438, file: !439, line: 843, baseType: !209, size: 16, offset: 8064)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !438, file: !439, line: 845, baseType: !209, size: 16, offset: 8080)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !438, file: !439, line: 848, baseType: !142, size: 32, offset: 8096)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !438, file: !439, line: 849, baseType: !703, size: 32, offset: 8128)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !439, line: 718, size: 32, elements: !704)
!704 = !{!705, !712}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !703, file: !439, line: 724, baseType: !706, size: 32)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !439, line: 719, size: 32, elements: !707)
!707 = !{!708, !709, !710, !711}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !706, file: !439, line: 720, baseType: !199, size: 8)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !706, file: !439, line: 721, baseType: !199, size: 8, offset: 8)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !706, file: !439, line: 722, baseType: !199, size: 8, offset: 16)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !706, file: !439, line: 723, baseType: !199, size: 8, offset: 24)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !703, file: !439, line: 725, baseType: !143, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !438, file: !439, line: 850, baseType: !258, size: 128, offset: 8192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !438, file: !439, line: 851, baseType: !715, size: 64, offset: 8320)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !439, line: 60, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !438, file: !439, line: 855, baseType: !136, size: 64, offset: 8384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !438, file: !439, line: 856, baseType: !199, size: 8, offset: 8448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !438, file: !439, line: 857, baseType: !199, size: 8, offset: 8456)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !438, file: !439, line: 858, baseType: !142, size: 32, offset: 8480)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !438, file: !439, line: 859, baseType: !258, size: 128, offset: 8512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !438, file: !439, line: 860, baseType: !142, size: 32, offset: 8640)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !438, file: !439, line: 861, baseType: !258, size: 128, offset: 8704)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !438, file: !439, line: 873, baseType: !725, size: 256, offset: 8832)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !439, line: 376, size: 256, elements: !726)
!726 = !{!727, !728, !729, !730}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !725, file: !439, line: 381, baseType: !136, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !725, file: !439, line: 384, baseType: !276, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !725, file: !439, line: 389, baseType: !276, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !725, file: !439, line: 392, baseType: !276, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !438, file: !439, line: 875, baseType: !258, size: 128, offset: 9088)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !438, file: !439, line: 877, baseType: !733, size: 320, offset: 9216)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !734, line: 86, size: 320, elements: !735)
!734 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!735 = !{!736, !737, !738}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !733, file: !734, line: 87, baseType: !142, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !733, file: !734, line: 88, baseType: !258, size: 128, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !733, file: !734, line: 89, baseType: !258, size: 128, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !438, file: !439, line: 878, baseType: !491, size: 192, align: 64, offset: 9536)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !438, file: !439, line: 881, baseType: !741, size: 64, offset: 9728)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !46, line: 733, size: 10240, elements: !743)
!743 = !{!744, !3395}
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !46, line: 734, baseType: !745, size: 10240)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !742, file: !46, line: 734, size: 10240, elements: !746)
!746 = !{!747, !751, !765, !3274, !3275, !3276, !3277, !3278, !3279, !3286, !3287, !3288, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3327, !3329, !3332, !3375, !3376, !3377, !3380, !3381, !3382, !3385, !3386, !3387, !3393, !3394}
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !46, line: 739, baseType: !748, size: 512, align: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !46, line: 739, size: 512, align: 512, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !748, file: !46, line: 747, baseType: !191, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !745, file: !46, line: 750, baseType: !752, size: 128, offset: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !753, line: 218, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!754 = !{!755, !763, !764}
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !753, line: 219, baseType: !756, size: 32)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !753, line: 219, size: 32, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !756, file: !753, line: 220, baseType: !171, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !756, file: !753, line: 221, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !753, line: 197, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 197, elements: !762)
!762 = !{}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !752, file: !753, line: 223, baseType: !18, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !752, file: !753, line: 224, baseType: !137, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !745, file: !46, line: 752, baseType: !766, size: 64, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!136, !769, !136, !136, !136, !136}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !75, line: 994, size: 1856, align: 64, elements: !771)
!771 = !{!772, !778, !779, !781, !782, !783, !786, !787, !863, !1072, !1081, !3264, !3265, !3266, !3267, !3268, !3269, !3271, !3272, !3273}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !75, line: 995, baseType: !773, size: 128)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !75, line: 995, size: 128, elements: !774)
!774 = !{!775, !776, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !773, file: !75, line: 996, baseType: !460, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !773, file: !75, line: 997, baseType: !265, size: 128, align: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !773, file: !75, line: 998, baseType: !18, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !770, file: !75, line: 1005, baseType: !171, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !770, file: !75, line: 1006, baseType: !780, size: 32, offset: 160)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !135, line: 156, baseType: !18)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !770, file: !75, line: 1007, baseType: !418, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !770, file: !75, line: 1008, baseType: !414, size: 256, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !770, file: !75, line: 1009, baseType: !784, size: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !135, line: 52, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !608, line: 88, baseType: !253)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !770, file: !75, line: 1010, baseType: !18, size: 32, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !770, file: !75, line: 1011, baseType: !788, size: 256, offset: 640)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !75, line: 948, size: 256, elements: !789)
!789 = !{!790, !813, !852, !853, !861, !862}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !788, file: !75, line: 949, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !792, line: 34, baseType: !793)
!792 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !792, line: 25, size: 64, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !793, file: !792, line: 26, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !797, line: 27, baseType: !798)
!797 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !797, line: 13, size: 64, elements: !799)
!799 = !{!800, !812}
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !797, line: 14, baseType: !801, size: 32)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !797, line: 14, size: 32, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !801, file: !797, line: 15, baseType: !191, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !797, line: 16, baseType: !805, size: 32)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !801, file: !797, line: 16, size: 32, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !805, file: !797, line: 18, baseType: !199, size: 8)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !805, file: !797, line: 19, baseType: !809, size: 24, offset: 8)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 24, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 3)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !798, file: !797, line: 26, baseType: !183, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !788, file: !75, line: 950, baseType: !814, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !23, line: 59, size: 768, elements: !816)
!816 = !{!817, !818, !819, !820, !833, !834, !841, !842}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !815, file: !23, line: 61, baseType: !284, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !815, file: !23, line: 62, baseType: !18, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !815, file: !23, line: 63, baseType: !171, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !815, file: !23, line: 65, baseType: !821, size: 256, offset: 128)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 256, elements: !831)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !135, line: 194, size: 64, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !822, file: !135, line: 195, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !135, line: 198, size: 128, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !135, line: 199, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !826, file: !135, line: 199, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!831 = !{!832}
!832 = !DISubrange(count: 4)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !815, file: !23, line: 66, baseType: !822, size: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !815, file: !23, line: 68, baseType: !835, size: 192, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !836, line: 41, baseType: !837)
!836 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !836, line: 37, size: 192, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !837, file: !836, line: 38, baseType: !171, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !837, file: !836, line: 39, baseType: !258, size: 128, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !815, file: !23, line: 69, baseType: !265, size: 128, align: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !815, file: !23, line: 70, baseType: !843, offset: 768)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, elements: !850)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !23, line: 54, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !844, file: !23, line: 55, baseType: !142, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !844, file: !23, line: 56, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !23, line: 56, flags: DIFlagFwdDecl)
!850 = !{!851}
!851 = !DISubrange(count: -1)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !788, file: !75, line: 951, baseType: !22, size: 32, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !788, file: !75, line: 952, baseType: !854, size: 32, offset: 160)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !855, line: 23, baseType: !856)
!855 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !855, line: 21, size: 32, elements: !857)
!857 = !{!858}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !856, file: !855, line: 22, baseType: !859, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !135, line: 37, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !608, line: 49, baseType: !18)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !788, file: !75, line: 952, baseType: !854, size: 32, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !788, file: !75, line: 953, baseType: !142, size: 32, offset: 224)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !770, file: !75, line: 1012, baseType: !864, size: 64, offset: 896)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !867, line: 110, size: 1472, elements: !868)
!867 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!868 = !{!869, !870, !871, !878, !879, !880, !881, !882, !883, !884, !885, !891, !892, !893, !894, !895, !896, !1017, !1018, !1019, !1020, !1021, !1052, !1055, !1059, !1067}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !866, file: !867, line: 111, baseType: !418, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !866, file: !867, line: 112, baseType: !854, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !866, file: !867, line: 113, baseType: !872, size: 32, offset: 96)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !855, line: 28, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !855, line: 26, size: 32, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !873, file: !855, line: 27, baseType: !876, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !135, line: 38, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !608, line: 50, baseType: !18)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !866, file: !867, line: 114, baseType: !854, size: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !866, file: !867, line: 115, baseType: !872, size: 32, offset: 160)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !866, file: !867, line: 116, baseType: !854, size: 32, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !866, file: !867, line: 117, baseType: !872, size: 32, offset: 224)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !866, file: !867, line: 118, baseType: !854, size: 32, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !866, file: !867, line: 119, baseType: !872, size: 32, offset: 288)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !866, file: !867, line: 120, baseType: !18, size: 32, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !866, file: !867, line: 121, baseType: !886, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !887, line: 24, baseType: !888)
!887 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !887, line: 24, size: 64, elements: !889)
!889 = !{!890}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !888, file: !887, line: 24, baseType: !274, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !866, file: !867, line: 122, baseType: !886, size: 64, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !866, file: !867, line: 123, baseType: !886, size: 64, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !866, file: !867, line: 124, baseType: !886, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !866, file: !867, line: 125, baseType: !886, size: 64, offset: 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !866, file: !867, line: 127, baseType: !201, size: 8, offset: 704)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !866, file: !867, line: 129, baseType: !897, size: 64, offset: 768)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !899, line: 195, size: 1728, elements: !900)
!899 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!900 = !{!901, !902, !907, !912, !921, !924, !925, !932, !933, !934, !935, !938, !939, !940, !942, !943, !981, !1002}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !898, file: !899, line: 196, baseType: !284, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !898, file: !899, line: 197, baseType: !903, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !899, line: 28, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !135, line: 104, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !144, line: 20, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !146, line: 26, baseType: !142)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !899, line: 198, baseType: !908, size: 192, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !899, line: 198, size: 192, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !908, file: !899, line: 199, baseType: !258, size: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !908, file: !899, line: 200, baseType: !491, size: 192, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !898, file: !899, line: 205, baseType: !913, size: 320, offset: 256)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !914, line: 48, size: 320, elements: !915)
!914 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!915 = !{!916, !917, !918, !919, !920}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !913, file: !914, line: 49, baseType: !418, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !913, file: !914, line: 55, baseType: !418, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !913, file: !914, line: 57, baseType: !427, size: 32, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !913, file: !914, line: 59, baseType: !425, size: 32, offset: 160)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !913, file: !914, line: 60, baseType: !258, size: 128, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !898, file: !899, line: 206, baseType: !922, size: 64, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !899, line: 206, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !898, file: !899, line: 207, baseType: !137, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !899, line: 208, baseType: !926, size: 64, offset: 704)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !899, line: 208, size: 64, elements: !927)
!927 = !{!928, !931}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !926, file: !899, line: 209, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !930, line: 8, baseType: !252)
!930 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!931 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !926, file: !899, line: 210, baseType: !929, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !898, file: !899, line: 212, baseType: !929, size: 64, offset: 768)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !898, file: !899, line: 213, baseType: !854, size: 32, offset: 832)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !898, file: !899, line: 214, baseType: !872, size: 32, offset: 864)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !898, file: !899, line: 215, baseType: !936, size: 32, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !899, line: 31, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 110, baseType: !143)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !898, file: !899, line: 216, baseType: !209, size: 16, offset: 928)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !898, file: !899, line: 217, baseType: !209, size: 16, offset: 944)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !898, file: !899, line: 221, baseType: !941, size: 16, offset: 960)
!941 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !898, file: !899, line: 228, baseType: !136, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !899, line: 245, baseType: !944, size: 320, offset: 1088)
!944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !899, line: 245, size: 320, elements: !945)
!945 = !{!946, !973}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !944, file: !899, line: 246, baseType: !947, size: 320)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !899, line: 114, size: 320, elements: !948)
!948 = !{!949, !950, !962, !965, !972}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !947, file: !899, line: 116, baseType: !136, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !899, line: 117, baseType: !951, size: 64, offset: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !899, line: 117, size: 64, elements: !952)
!952 = !{!953, !961}
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !899, line: 118, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !899, line: 118, size: 64, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !954, file: !899, line: 120, baseType: !207, size: 16)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !954, file: !899, line: 121, baseType: !958, size: 48, offset: 16)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !959)
!959 = !{!960}
!960 = !DISubrange(count: 6)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !951, file: !899, line: 127, baseType: !136, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !947, file: !899, line: 129, baseType: !963, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !899, line: 102, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !947, file: !899, line: 130, baseType: !966, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !899, line: 108, size: 192, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !967, file: !899, line: 109, baseType: !265, size: 128, align: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !967, file: !899, line: 110, baseType: !284, size: 32, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !967, file: !899, line: 111, baseType: !217, size: 8, offset: 160)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !947, file: !899, line: 131, baseType: !223, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !899, line: 247, baseType: !974, size: 320)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !899, line: 247, size: 320, elements: !975)
!975 = !{!976, !977, !978, !979, !980}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !974, file: !899, line: 248, baseType: !136, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !974, file: !899, line: 249, baseType: !136, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !974, file: !899, line: 250, baseType: !963, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !974, file: !899, line: 251, baseType: !966, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !974, file: !899, line: 252, baseType: !243, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !899, line: 260, baseType: !982, size: 256, offset: 1408)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !899, line: 260, size: 256, elements: !983)
!983 = !{!984, !990}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !982, file: !899, line: 261, baseType: !985, size: 256)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !899, line: 134, size: 256, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !985, file: !899, line: 135, baseType: !137, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !985, file: !899, line: 136, baseType: !989, size: 256)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !831)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !899, line: 262, baseType: !991, size: 256)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !899, line: 262, size: 256, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !991, file: !899, line: 264, baseType: !258, size: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !991, file: !899, line: 265, baseType: !995, size: 128, offset: 128)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !996, line: 22, size: 128, elements: !997)
!996 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!997 = !{!998, !1001}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !995, file: !996, line: 23, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !996, line: 23, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !995, file: !996, line: 24, baseType: !136, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !898, file: !899, line: 280, baseType: !1003, size: 64, offset: 1664)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !899, line: 176, size: 192, elements: !1005)
!1005 = !{!1006, !1015, !1016}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1004, file: !899, line: 177, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !899, line: 171, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!142, !897, !1011, !1013, !897}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1004, file: !899, line: 178, baseType: !897, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1004, file: !899, line: 179, baseType: !963, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !866, file: !867, line: 130, baseType: !897, size: 64, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !866, file: !867, line: 131, baseType: !897, size: 64, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !866, file: !867, line: 132, baseType: !897, size: 64, offset: 960)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !866, file: !867, line: 135, baseType: !137, size: 64, offset: 1024)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !866, file: !867, line: 137, baseType: !1022, size: 64, offset: 1088)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1024, line: 14, size: 1088, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1025 = !{!1026, !1027, !1036, !1037, !1038, !1039, !1040, !1041}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1023, file: !1024, line: 15, baseType: !284, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1023, file: !1024, line: 17, baseType: !1028, size: 320, offset: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1029, line: 22, size: 320, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1030 = !{!1031, !1032, !1033, !1034}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1028, file: !1029, line: 23, baseType: !425, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1028, file: !1029, line: 24, baseType: !251, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1028, file: !1029, line: 26, baseType: !258, size: 128, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1028, file: !1029, line: 28, baseType: !1035, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1023, file: !1024, line: 19, baseType: !136, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1023, file: !1024, line: 20, baseType: !418, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1023, file: !1024, line: 23, baseType: !826, size: 128, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1023, file: !1024, line: 24, baseType: !854, size: 32, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1023, file: !1024, line: 29, baseType: !418, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1023, file: !1024, line: 36, baseType: !1042, size: 320, offset: 768)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1043, line: 15, size: 320, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1042, file: !1043, line: 16, baseType: !425, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1042, file: !1043, line: 18, baseType: !142, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1042, file: !1043, line: 19, baseType: !142, size: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1042, file: !1043, line: 20, baseType: !142, size: 32, offset: 96)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1042, file: !1043, line: 21, baseType: !142, size: 32, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1042, file: !1043, line: 22, baseType: !136, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !1043, line: 23, baseType: !136, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !866, file: !867, line: 138, baseType: !1053, size: 64, offset: 1152)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !855, line: 18, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !866, file: !867, line: 139, baseType: !1056, size: 64, offset: 1216)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1058, line: 16, flags: DIFlagFwdDecl)
!1058 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !866, file: !867, line: 140, baseType: !1060, size: 64, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !867, line: 25, size: 64, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1061, file: !867, line: 26, baseType: !191, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1061, file: !867, line: 27, baseType: !142, size: 32, offset: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1061, file: !867, line: 28, baseType: !1066, offset: 64)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, elements: !850)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !867, line: 142, baseType: !1068, size: 128, offset: 1344)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !867, line: 142, size: 128, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1068, file: !867, line: 143, baseType: !142, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1068, file: !867, line: 144, baseType: !265, size: 128, align: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !770, file: !75, line: 1013, baseType: !1073, size: 256, offset: 960)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !75, line: 970, size: 256, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1073, file: !75, line: 971, baseType: !136, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1073, file: !75, line: 972, baseType: !18, size: 32, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1073, file: !75, line: 973, baseType: !18, size: 32, offset: 96)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1073, file: !75, line: 974, baseType: !18, size: 32, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1073, file: !75, line: 975, baseType: !18, size: 32, offset: 160)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1073, file: !75, line: 976, baseType: !784, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !770, file: !75, line: 1014, baseType: !1082, size: 128, offset: 1216)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1083, line: 8, size: 128, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1084 = !{!1085, !3263}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1082, file: !1083, line: 9, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1088, line: 70, size: 256, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1089 = !{!1090, !3260, !3261, !3262}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1087, file: !1088, line: 71, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1093, line: 82, size: 1536, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1094 = !{!1095, !1096, !1101, !1109, !1110, !1125, !3227, !3229, !3242, !3243, !3244, !3245, !3246, !3252, !3253, !3254}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1092, file: !1093, line: 84, baseType: !18, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1092, file: !1093, line: 85, baseType: !1097, size: 32, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !611, line: 275, baseType: !1098)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !611, line: 275, size: 32, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1098, file: !611, line: 275, baseType: !615, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1092, file: !1093, line: 86, baseType: !1102, size: 128, offset: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1103, line: 38, size: 128, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1104 = !{!1105, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1102, file: !1103, line: 39, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1102, file: !1103, line: 39, baseType: !1108, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1092, file: !1093, line: 87, baseType: !1091, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1092, file: !1093, line: 88, baseType: !1111, size: 128, offset: 256)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1093, line: 49, size: 128, elements: !1112)
!1112 = !{!1113, !1122}
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !1093, line: 50, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !1093, line: 50, size: 64, elements: !1115)
!1115 = !{!1116, !1121}
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !1093, line: 51, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1114, file: !1093, line: 51, size: 64, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1117, file: !1093, line: 52, baseType: !143, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1117, file: !1093, line: 52, baseType: !143, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1114, file: !1093, line: 54, baseType: !274, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1111, file: !1093, line: 56, baseType: !1123, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1092, file: !1093, line: 89, baseType: !1126, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !75, line: 641, size: 4800, elements: !1128)
!1128 = !{!1129, !1131, !1132, !1133, !1134, !1135, !1136, !1139, !1140, !1336, !3041, !3042, !3043, !3044, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3209, !3212, !3213, !3214, !3223, !3224, !3225, !3226}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1127, file: !75, line: 642, baseType: !1130, size: 16)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !135, line: 24, baseType: !209)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1127, file: !75, line: 643, baseType: !209, size: 16, offset: 16)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1127, file: !75, line: 644, baseType: !854, size: 32, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1127, file: !75, line: 645, baseType: !258, size: 128, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1127, file: !75, line: 646, baseType: !872, size: 32, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1127, file: !75, line: 647, baseType: !18, size: 32, offset: 224)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1127, file: !75, line: 650, baseType: !1137, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !75, line: 607, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1127, file: !75, line: 651, baseType: !1137, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1127, file: !75, line: 654, baseType: !1141, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !75, line: 1966, size: 2048, align: 512, elements: !1144)
!1144 = !{!1145, !1149, !1162, !1168, !1172, !1176, !1180, !1184, !1188, !1192, !1196, !1197, !1203, !1207, !1244, !1275, !1285, !1291, !1295, !1299, !1303, !1307, !1311, !1317, !1321}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1143, file: !75, line: 1967, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!1091, !1126, !1091, !18}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1143, file: !75, line: 1968, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!223, !1091, !1126, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1155, line: 10, size: 128, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1156 = !{!1157, !1161}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1154, file: !1155, line: 11, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !137}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1154, file: !1155, line: 12, baseType: !137, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1143, file: !75, line: 1969, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!142, !1166, !1126, !142}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !887, line: 42, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1143, file: !75, line: 1970, baseType: !1169, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1137, !1126, !142, !217}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1143, file: !75, line: 1972, baseType: !1173, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!142, !1091, !243, !142}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1143, file: !75, line: 1974, baseType: !1177, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!142, !1166, !1126, !1091, !1130, !217}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1143, file: !75, line: 1976, baseType: !1181, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!142, !1091, !1126, !1091}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1143, file: !75, line: 1977, baseType: !1185, size: 64, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!142, !1126, !1091}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1143, file: !75, line: 1978, baseType: !1189, size: 64, offset: 512)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!142, !1166, !1126, !1091, !223}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1143, file: !75, line: 1980, baseType: !1193, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!142, !1166, !1126, !1091, !1130}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1143, file: !75, line: 1982, baseType: !1185, size: 64, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1143, file: !75, line: 1983, baseType: !1198, size: 64, offset: 704)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!142, !1166, !1126, !1091, !1130, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !135, line: 21, baseType: !1202)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !135, line: 18, baseType: !143)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1143, file: !75, line: 1985, baseType: !1204, size: 64, offset: 768)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!142, !1166, !1126, !1091, !1126, !1091, !18}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1143, file: !75, line: 1987, baseType: !1208, size: 64, offset: 832)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!142, !1166, !1091, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !75, line: 226, size: 640, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1226, !1235, !1236, !1241, !1242, !1243}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1212, file: !75, line: 227, baseType: !18, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1212, file: !75, line: 228, baseType: !1130, size: 16, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !75, line: 241, baseType: !1217, size: 32, offset: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !75, line: 241, size: 32, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1217, file: !75, line: 242, baseType: !854, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1217, file: !75, line: 243, baseType: !1221, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1222, line: 16, baseType: !1223)
!1222 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 14, size: 32, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1223, file: !1222, line: 15, baseType: !859, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !75, line: 245, baseType: !1227, size: 32, offset: 96)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !75, line: 245, size: 32, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1227, file: !75, line: 246, baseType: !872, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1227, file: !75, line: 247, baseType: !1231, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1222, line: 20, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 18, size: 32, elements: !1233)
!1233 = !{!1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1232, file: !1222, line: 19, baseType: !876, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1212, file: !75, line: 249, baseType: !784, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1212, file: !75, line: 250, baseType: !1237, size: 128, offset: 192)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !930, line: 13, size: 128, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1237, file: !930, line: 14, baseType: !929, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1237, file: !930, line: 15, baseType: !141, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1212, file: !75, line: 251, baseType: !1237, size: 128, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1212, file: !75, line: 252, baseType: !1237, size: 128, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1212, file: !75, line: 259, baseType: !769, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1143, file: !75, line: 1988, baseType: !1245, size: 64, offset: 896)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!142, !1166, !1248, !1250, !143, !18}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1252, line: 22, size: 1280, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1251, file: !1252, line: 23, baseType: !143, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1251, file: !1252, line: 24, baseType: !1130, size: 16, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1251, file: !1252, line: 25, baseType: !18, size: 32, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1251, file: !1252, line: 26, baseType: !937, size: 32, offset: 96)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1251, file: !1252, line: 27, baseType: !274, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1251, file: !1252, line: 28, baseType: !274, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1251, file: !1252, line: 41, baseType: !274, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1251, file: !1252, line: 42, baseType: !1201, size: 32, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1251, file: !1252, line: 43, baseType: !1201, size: 32, offset: 352)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1251, file: !1252, line: 44, baseType: !854, size: 32, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1251, file: !1252, line: 45, baseType: !872, size: 32, offset: 416)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1251, file: !1252, line: 46, baseType: !784, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1251, file: !1252, line: 47, baseType: !1237, size: 128, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1251, file: !1252, line: 48, baseType: !1237, size: 128, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1251, file: !1252, line: 49, baseType: !1237, size: 128, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1251, file: !1252, line: 50, baseType: !1237, size: 128, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1251, file: !1252, line: 51, baseType: !274, size: 64, offset: 1024)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1251, file: !1252, line: 52, baseType: !274, size: 64, offset: 1088)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1251, file: !1252, line: 53, baseType: !143, size: 32, offset: 1152)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1251, file: !1252, line: 54, baseType: !143, size: 32, offset: 1184)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1251, file: !1252, line: 55, baseType: !274, size: 64, offset: 1216)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1143, file: !75, line: 1990, baseType: !1276, size: 64, offset: 960)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!1279, !1091, !243, !1282}
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !135, line: 66, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !608, line: 73, baseType: !1281)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !608, line: 15, baseType: !141)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 61, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !608, line: 72, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !608, line: 16, baseType: !136)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1143, file: !75, line: 1991, baseType: !1286, size: 64, offset: 1024)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!142, !1126, !1289, !274, !274}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !75, line: 55, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1143, file: !75, line: 1993, baseType: !1292, size: 64, offset: 1088)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!142, !1126, !142}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1143, file: !75, line: 1994, baseType: !1296, size: 64, offset: 1152)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!142, !1126, !1091, !769, !18, !1130}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1143, file: !75, line: 1997, baseType: !1300, size: 64, offset: 1216)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!142, !1166, !1126, !769, !1130}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1143, file: !75, line: 1999, baseType: !1304, size: 64, offset: 1280)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1137, !1166, !1091, !142}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1143, file: !75, line: 2001, baseType: !1308, size: 64, offset: 1344)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!142, !1166, !1091, !1137, !142}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1143, file: !75, line: 2003, baseType: !1312, size: 64, offset: 1408)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!142, !1166, !1091, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !75, line: 76, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1143, file: !75, line: 2005, baseType: !1318, size: 64, offset: 1472)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!142, !1091, !1315}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1143, file: !75, line: 2006, baseType: !1322, size: 64, offset: 1536)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!1325, !1126}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !75, line: 3192, size: 192, elements: !1327)
!1327 = !{!1328, !1335}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1326, file: !75, line: 3193, baseType: !1329, size: 128)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1330, line: 296, size: 128, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1331 = !{!1332, !1333, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1329, file: !1330, line: 297, baseType: !171, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1329, file: !1330, line: 299, baseType: !147, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1329, file: !1330, line: 300, baseType: !137, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1326, file: !75, line: 3194, baseType: !143, size: 32, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1127, file: !75, line: 655, baseType: !1337, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !75, line: 1190, size: 10752, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !2554, !2686, !2726, !2809, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2826, !2830, !2831, !2834, !2837, !2840, !2843, !2844, !2845, !2886, !2912, !2913, !2914, !2915, !2916, !2917, !2920, !2924, !2933, !2934, !2935, !2936, !2995, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1338, file: !75, line: 1191, baseType: !258, size: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1338, file: !75, line: 1192, baseType: !1201, size: 32, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1338, file: !75, line: 1193, baseType: !201, size: 8, offset: 160)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1338, file: !75, line: 1194, baseType: !136, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1338, file: !75, line: 1195, baseType: !784, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1338, file: !75, line: 1196, baseType: !1346, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !75, line: 2366, size: 576, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1357, !1361, !1365, !1369, !2542, !2543, !2544, !2546, !2547, !2548, !2550, !2551, !2552, !2553}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1347, file: !75, line: 2367, baseType: !223, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1347, file: !75, line: 2368, baseType: !142, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1347, file: !75, line: 2376, baseType: !1352, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!142, !1355}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1088, line: 21, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1347, file: !75, line: 2377, baseType: !1358, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !75, line: 75, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1347, file: !75, line: 2378, baseType: !1362, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1091, !1346, !142, !223, !137}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1347, file: !75, line: 2380, baseType: !1366, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{null, !1337}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1347, file: !75, line: 2381, baseType: !1370, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !31, line: 402, size: 9216, align: 512, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1379, !2186, !2212, !2213, !2214, !2215, !2219, !2222, !2223, !2224, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2292, !2296, !2316, !2336, !2337, !2338, !2339, !2348, !2371, !2372, !2375, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2389, !2390, !2501, !2509, !2510, !2511, !2513, !2517, !2518, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2535, !2536, !2537, !2541}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1371, file: !31, line: 403, baseType: !30, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1371, file: !31, line: 406, baseType: !258, size: 128, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1371, file: !31, line: 409, baseType: !1376, size: 448, offset: 192)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1377)
!1377 = !{!1378}
!1378 = !DISubrange(count: 56)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1371, file: !31, line: 417, baseType: !1380, size: 768, offset: 640)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !31, line: 45, size: 768, elements: !1381)
!1381 = !{!1382, !2179, !2180, !2181, !2184}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1380, file: !31, line: 46, baseType: !1383, size: 512)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1384, line: 64, size: 512, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1385 = !{!1386, !1387, !1388, !1390, !1434, !2038, !2173, !2174, !2175, !2176, !2177, !2178}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1383, file: !1384, line: 65, baseType: !223, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1383, file: !1384, line: 66, baseType: !258, size: 128, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1383, file: !1384, line: 67, baseType: !1389, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1383, file: !1384, line: 68, baseType: !1391, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1384, line: 168, size: 768, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1392, file: !1384, line: 169, baseType: !258, size: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1392, file: !1384, line: 170, baseType: !171, size: 32, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1392, file: !1384, line: 171, baseType: !1383, size: 512, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1392, file: !1384, line: 172, baseType: !1398, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1384, line: 133, size: 192, elements: !1401)
!1401 = !{!1402, !1409, !1414}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1400, file: !1384, line: 134, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!142, !1407}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1400, file: !1384, line: 135, baseType: !1410, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!223, !1407}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1400, file: !1384, line: 136, baseType: !1415, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!142, !1407, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1384, line: 125, size: 20736, elements: !1421)
!1421 = !{!1422, !1424, !1428, !1429, !1433}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1420, file: !1384, line: 126, baseType: !1423, size: 192)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 192, elements: !810)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1420, file: !1384, line: 127, baseType: !1425, size: 4096, offset: 192)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 4096, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1420, file: !1384, line: 128, baseType: !142, size: 32, offset: 4288)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1420, file: !1384, line: 129, baseType: !1430, size: 16384, offset: 4320)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1431)
!1431 = !{!1432}
!1432 = !DISubrange(count: 2048)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1420, file: !1384, line: 130, baseType: !142, size: 32, offset: 20704)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1383, file: !1384, line: 69, baseType: !1435, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1384, line: 116, size: 384, elements: !1438)
!1438 = !{!1439, !1443, !1462, !2000, !2028, !2032}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1437, file: !1384, line: 117, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1389}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1437, file: !1384, line: 118, baseType: !1444, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1446)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1447, line: 254, size: 128, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1448 = !{!1449, !1458}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1446, file: !1447, line: 255, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1279, !1389, !1453, !243}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1447, line: 30, size: 128, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1454, file: !1447, line: 31, baseType: !223, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1454, file: !1447, line: 32, baseType: !1130, size: 16, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1446, file: !1447, line: 256, baseType: !1459, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1279, !1389, !1453, !223, !1282}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1437, file: !1384, line: 119, baseType: !1463, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1447, line: 84, size: 320, elements: !1467)
!1467 = !{!1468, !1469, !1473, !1996, !1998}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1466, file: !1447, line: 85, baseType: !223, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1466, file: !1447, line: 86, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1130, !1389, !1453, !142}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1466, file: !1447, line: 88, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1130, !1389, !1477, !142}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1447, line: 175, size: 512, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1987, !1991, !1992}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1478, file: !1447, line: 176, baseType: !1454, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1478, file: !1447, line: 177, baseType: !1282, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1478, file: !1447, line: 178, baseType: !137, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1478, file: !1447, line: 179, baseType: !1484, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !75, line: 472, size: 1536, align: 64, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1979, !1980, !1981, !1984, !1985, !1986}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1488, file: !75, line: 473, baseType: !1126, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1488, file: !75, line: 474, baseType: !1329, size: 128, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1488, file: !75, line: 475, baseType: !913, size: 320, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1488, file: !75, line: 476, baseType: !147, size: 32, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1488, file: !75, line: 477, baseType: !191, size: 32, offset: 544)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1488, file: !75, line: 482, baseType: !624, size: 128, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1488, file: !75, line: 483, baseType: !136, size: 64, offset: 704)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1488, file: !75, line: 484, baseType: !136, size: 64, offset: 768)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1488, file: !75, line: 485, baseType: !1499, size: 64, offset: 832)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !75, line: 404, size: 1280, elements: !1502)
!1502 = !{!1503, !1804, !1874, !1878, !1882, !1888, !1894, !1898, !1903, !1907, !1911, !1915, !1943, !1947, !1951, !1955, !1960, !1964, !1971, !1975}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1501, file: !75, line: 405, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!142, !1507, !1802}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !46, line: 74, size: 512, align: 128, elements: !1509)
!1509 = !{!1510, !1511, !1796, !1801}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1508, file: !46, line: 75, baseType: !136, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !46, line: 83, baseType: !1512, size: 320, offset: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1508, file: !46, line: 83, size: 320, elements: !1513)
!1513 = !{!1514, !1535, !1549, !1553, !1795}
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !46, line: 84, baseType: !1515, size: 320)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !46, line: 84, size: 320, elements: !1516)
!1516 = !{!1517, !1528, !1529, !1534}
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !46, line: 90, baseType: !1518, size: 128)
!1518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1515, file: !46, line: 90, size: 128, elements: !1519)
!1519 = !{!1520, !1521, !1526, !1527}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1518, file: !46, line: 91, baseType: !258, size: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !46, line: 94, baseType: !1522, size: 128)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1518, file: !46, line: 94, size: 128, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1522, file: !46, line: 96, baseType: !137, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1522, file: !46, line: 98, baseType: !18, size: 32, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1518, file: !46, line: 102, baseType: !258, size: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1518, file: !46, line: 103, baseType: !258, size: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1515, file: !46, line: 106, baseType: !1487, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !46, line: 107, baseType: !1530, size: 64, offset: 192)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1515, file: !46, line: 107, size: 64, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1530, file: !46, line: 108, baseType: !136, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1530, file: !46, line: 109, baseType: !136, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1515, file: !46, line: 117, baseType: !136, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !46, line: 119, baseType: !1536, size: 320)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !46, line: 119, size: 320, elements: !1537)
!1537 = !{!1538, !1539, !1542, !1543, !1544}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1536, file: !46, line: 124, baseType: !136, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1536, file: !46, line: 125, baseType: !1540, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !46, line: 125, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1536, file: !46, line: 126, baseType: !136, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1536, file: !46, line: 127, baseType: !136, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !46, line: 128, baseType: !1545, size: 64, offset: 256)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1536, file: !46, line: 128, size: 64, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1545, file: !46, line: 133, baseType: !136, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1545, file: !46, line: 138, baseType: !418, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !46, line: 141, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !46, line: 141, size: 64, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1550, file: !46, line: 142, baseType: !136, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !46, line: 144, baseType: !1554, size: 128)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !46, line: 144, size: 128, elements: !1555)
!1555 = !{!1556, !1794}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1554, file: !46, line: 146, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 126, size: 1216, elements: !1559)
!1559 = !{!1560, !1569, !1590, !1601, !1602, !1603, !1604, !1776, !1777, !1778}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1558, file: !38, line: 127, baseType: !1561, size: 384)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 21, size: 384, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1561, file: !38, line: 22, baseType: !136, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1561, file: !38, line: 23, baseType: !139, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1561, file: !38, line: 24, baseType: !139, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1561, file: !38, line: 25, baseType: !136, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1561, file: !38, line: 26, baseType: !136, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1561, file: !38, line: 27, baseType: !136, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1558, file: !38, line: 128, baseType: !1570, size: 128, offset: 384)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1571, line: 105, size: 128, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1570, file: !1571, line: 110, baseType: !136, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1570, file: !1571, line: 118, baseType: !1575, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1571, line: 95, size: 448, elements: !1577)
!1577 = !{!1578, !1579, !1585, !1586, !1587, !1588, !1589}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1576, file: !1571, line: 96, baseType: !418, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1576, file: !1571, line: 97, baseType: !1580, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1571, line: 60, baseType: !1582)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1576, file: !1571, line: 98, baseType: !1580, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1576, file: !1571, line: 99, baseType: !217, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1576, file: !1571, line: 100, baseType: !217, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1576, file: !1571, line: 101, baseType: !265, size: 128, align: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1576, file: !1571, line: 102, baseType: !1584, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1558, file: !38, line: 129, baseType: !1591, size: 256, offset: 512)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1592, line: 26, size: 256, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1591, file: !1592, line: 27, baseType: !18, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1591, file: !1592, line: 28, baseType: !1596, size: 192, offset: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1597, line: 43, size: 192, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1596, file: !1597, line: 44, baseType: !425, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1596, file: !1597, line: 45, baseType: !258, size: 128, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1558, file: !38, line: 130, baseType: !37, size: 32, offset: 768)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1558, file: !38, line: 131, baseType: !18, size: 32, offset: 800)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1558, file: !38, line: 132, baseType: !136, size: 64, offset: 832)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1558, file: !38, line: 133, baseType: !1605, size: 64, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1607)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 77, size: 192, elements: !1608)
!1608 = !{!1609, !1613, !1772}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1607, file: !38, line: 83, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !1507}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1607, file: !38, line: 89, baseType: !1614, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !46, line: 1184, baseType: !18)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1620, line: 512, size: 896, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1621 = !{!1622, !1740, !1741, !1748, !1755, !1765, !1766, !1767, !1769, !1770}
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 513, baseType: !1623, size: 320)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !1620, line: 513, size: 320, elements: !1624)
!1624 = !{!1625, !1736, !1737, !1738, !1739}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1623, file: !1620, line: 514, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !46, line: 625, size: 1344, elements: !1628)
!1628 = !{!1629, !1638, !1639, !1647, !1654, !1655, !1660, !1661, !1666, !1667, !1670, !1729, !1730, !1731, !1732, !1733, !1734}
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !46, line: 628, baseType: !1630, size: 128)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !46, line: 628, size: 128, elements: !1631)
!1631 = !{!1632, !1637}
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !46, line: 629, baseType: !1633, size: 128)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1630, file: !46, line: 629, size: 128, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1633, file: !46, line: 631, baseType: !136, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1633, file: !46, line: 632, baseType: !136, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1630, file: !46, line: 635, baseType: !265, size: 128, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1627, file: !46, line: 639, baseType: !741, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1627, file: !46, line: 640, baseType: !1640, size: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1641, line: 297, baseType: !1642)
!1641 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1641, line: 297, size: 64, elements: !1643)
!1643 = !{!1644}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1642, file: !1641, line: 297, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1646, line: 19, baseType: !136)
!1646 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !46, line: 646, baseType: !1648, size: 64, offset: 256)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !46, line: 646, size: 64, elements: !1649)
!1649 = !{!1650, !1653}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1648, file: !46, line: 647, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !46, line: 542, baseType: !136)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1648, file: !46, line: 648, baseType: !1652, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1627, file: !46, line: 666, baseType: !142, size: 32, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1627, file: !46, line: 667, baseType: !1656, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !46, line: 579, size: 320, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1657, file: !46, line: 580, baseType: !913, size: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1627, file: !46, line: 670, baseType: !217, size: 8, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1627, file: !46, line: 681, baseType: !1662, size: 256, offset: 512)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1627, file: !46, line: 678, size: 256, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1662, file: !46, line: 679, baseType: !491, size: 192, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1662, file: !46, line: 680, baseType: !136, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1627, file: !46, line: 689, baseType: !258, size: 128, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1627, file: !46, line: 691, baseType: !1668, size: 64, offset: 896)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !46, line: 691, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1627, file: !46, line: 694, baseType: !1671, size: 64, offset: 960)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1620, line: 563, size: 1024, elements: !1674)
!1674 = !{!1675, !1679, !1680, !1684, !1688, !1692, !1693, !1697, !1701, !1705, !1706, !1707, !1711, !1715, !1721, !1725}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1673, file: !1620, line: 564, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !1626}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1673, file: !1620, line: 569, baseType: !1676, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1673, file: !1620, line: 571, baseType: !1681, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!142, !1626, !136}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1673, file: !1620, line: 572, baseType: !1685, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!142, !1626}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1673, file: !1620, line: 578, baseType: !1689, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!142, !1626, !136, !136, !136}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1673, file: !1620, line: 580, baseType: !1614, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1673, file: !1620, line: 581, baseType: !1694, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!1617, !1618, !18}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1673, file: !1620, line: 582, baseType: !1698, size: 64, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!1617, !1618, !136, !136}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1673, file: !1620, line: 584, baseType: !1702, size: 64, offset: 512)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!136, !1626}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1673, file: !1620, line: 588, baseType: !1614, size: 64, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1673, file: !1620, line: 591, baseType: !1614, size: 64, offset: 640)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1673, file: !1620, line: 597, baseType: !1708, size: 64, offset: 704)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!142, !1626, !136, !137, !142, !142}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1673, file: !1620, line: 603, baseType: !1712, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!223, !1626}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1673, file: !1620, line: 613, baseType: !1716, size: 64, offset: 832)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!142, !1626, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !439, line: 54, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1673, file: !1620, line: 625, baseType: !1722, size: 64, offset: 896)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1719, !1626, !136}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1673, file: !1620, line: 633, baseType: !1726, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1507, !1626, !136}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1627, file: !46, line: 697, baseType: !136, size: 64, offset: 1024)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1627, file: !46, line: 699, baseType: !769, size: 64, offset: 1088)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1627, file: !46, line: 700, baseType: !137, size: 64, offset: 1152)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1627, file: !46, line: 711, baseType: !418, size: 64, offset: 1216)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1627, file: !46, line: 717, baseType: !1719, size: 64, offset: 1280)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1627, file: !46, line: 722, baseType: !1735, offset: 1344)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !46, line: 570, elements: !762)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1623, file: !1620, line: 515, baseType: !147, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1623, file: !1620, line: 516, baseType: !136, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1623, file: !1620, line: 517, baseType: !136, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1623, file: !1620, line: 518, baseType: !136, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1619, file: !1620, line: 520, baseType: !45, size: 32, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1619, file: !1620, line: 522, baseType: !1742, size: 64, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1646, line: 22, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1646, line: 22, size: 64, elements: !1745)
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1744, file: !1646, line: 22, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1646, line: 15, baseType: !136)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1619, file: !1620, line: 524, baseType: !1749, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1641, line: 372, baseType: !1751)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1641, line: 372, size: 64, elements: !1752)
!1752 = !{!1753}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1751, file: !1641, line: 372, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1646, line: 16, baseType: !136)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 527, baseType: !1756, size: 64, offset: 512)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 527, size: 64, elements: !1757)
!1757 = !{!1758, !1764}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1756, file: !1620, line: 528, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1646, line: 21, baseType: !1760)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1646, line: 21, size: 64, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1760, file: !1646, line: 21, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1646, line: 14, baseType: !136)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1756, file: !1620, line: 529, baseType: !1743, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1619, file: !1620, line: 534, baseType: !1507, size: 64, offset: 576)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1619, file: !1620, line: 535, baseType: !1507, size: 64, offset: 640)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1619, file: !1620, line: 541, baseType: !1768, size: 64, offset: 704)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1619, file: !1620, line: 545, baseType: !170, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1619, file: !1620, line: 549, baseType: !1771, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1641, line: 520, baseType: !1507)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1607, file: !38, line: 100, baseType: !1773, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!142, !1557, !136, !136, !142}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1558, file: !38, line: 134, baseType: !137, size: 64, offset: 960)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1558, file: !38, line: 135, baseType: !142, size: 32, offset: 1024)
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1558, file: !38, line: 136, baseType: !1779, size: 128, offset: 1088)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1558, file: !38, line: 136, size: 128, elements: !1780)
!1780 = !{!1781, !1787}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1779, file: !38, line: 137, baseType: !1782, size: 128)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1783, line: 6, size: 128, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1782, file: !1783, line: 7, baseType: !274, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1782, file: !1783, line: 8, baseType: !274, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !38, line: 138, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1779, file: !38, line: 138, elements: !1789)
!1789 = !{!1790, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1788, file: !38, line: 138, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1788, file: !38, line: 138, elements: !762)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1788, file: !38, line: 138, baseType: !1793)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1782, elements: !850)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1554, file: !46, line: 147, baseType: !137, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1512, file: !46, line: 161, baseType: !265, size: 128, align: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !46, line: 164, baseType: !1797, size: 32, offset: 384)
!1797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1508, file: !46, line: 164, size: 32, elements: !1798)
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1797, file: !46, line: 169, baseType: !191, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1797, file: !46, line: 177, baseType: !18, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1508, file: !46, line: 181, baseType: !191, size: 32, offset: 416)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !75, line: 309, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1501, file: !75, line: 406, baseType: !1805, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!142, !769, !1808}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !46, line: 293, size: 1536, elements: !1810)
!1810 = !{!1811, !1841, !1855}
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !46, line: 295, baseType: !1812, size: 512)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !46, line: 295, size: 512, elements: !1813)
!1813 = !{!1814, !1840}
!1814 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !46, line: 296, baseType: !1815, size: 448)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1812, file: !46, line: 296, size: 448, elements: !1816)
!1816 = !{!1817, !1818, !1827, !1828, !1829, !1838, !1839}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1815, file: !46, line: 298, baseType: !136, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !46, line: 299, baseType: !1819, size: 128, offset: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !46, line: 299, size: 128, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1819, file: !46, line: 300, baseType: !258, size: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1819, file: !46, line: 302, baseType: !1823, size: 128)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !46, line: 302, size: 128, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1823, file: !46, line: 303, baseType: !137, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1823, file: !46, line: 305, baseType: !18, size: 32, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1815, file: !46, line: 310, baseType: !1487, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1815, file: !46, line: 311, baseType: !136, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !46, line: 312, baseType: !1830, size: 64, offset: 320)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !46, line: 312, size: 64, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1830, file: !46, line: 313, baseType: !137, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1830, file: !46, line: 314, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !46, line: 257, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 255, size: 64, elements: !1836)
!1836 = !{!1837}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1835, file: !46, line: 256, baseType: !136, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1815, file: !46, line: 316, baseType: !191, size: 32, offset: 384)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1815, file: !46, line: 317, baseType: !191, size: 32, offset: 416)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1812, file: !46, line: 323, baseType: !1508, size: 512, align: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !46, line: 325, baseType: !1842, size: 512, offset: 512)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !46, line: 325, size: 512, elements: !1843)
!1843 = !{!1844, !1854}
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !46, line: 326, baseType: !1845, size: 320)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1842, file: !46, line: 326, size: 320, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1845, file: !46, line: 327, baseType: !136, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1845, file: !46, line: 328, baseType: !136, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1845, file: !46, line: 329, baseType: !136, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1845, file: !46, line: 331, baseType: !191, size: 32, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1845, file: !46, line: 332, baseType: !191, size: 32, offset: 224)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1845, file: !46, line: 333, baseType: !191, size: 32, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1845, file: !46, line: 335, baseType: !18, size: 32, offset: 288)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1842, file: !46, line: 339, baseType: !1508, size: 512, align: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !46, line: 341, baseType: !1856, size: 512, offset: 1024)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !46, line: 341, size: 512, elements: !1857)
!1857 = !{!1858, !1867, !1873}
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !46, line: 342, baseType: !1859, size: 384)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !46, line: 342, size: 384, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1859, file: !46, line: 343, baseType: !136, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1859, file: !46, line: 344, baseType: !136, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1859, file: !46, line: 346, baseType: !137, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1859, file: !46, line: 347, baseType: !137, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1859, file: !46, line: 348, baseType: !137, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1859, file: !46, line: 349, baseType: !137, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !46, line: 352, baseType: !1868, size: 256)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !46, line: 352, size: 256, elements: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1868, file: !46, line: 353, baseType: !136, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1868, file: !46, line: 354, baseType: !136, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1868, file: !46, line: 356, baseType: !258, size: 128, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1856, file: !46, line: 359, baseType: !1508, size: 512, align: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1501, file: !75, line: 409, baseType: !1875, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!142, !1487, !1802}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1501, file: !75, line: 412, baseType: !1879, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!217, !1487, !1808}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1501, file: !75, line: 414, baseType: !1883, size: 64, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !75, line: 310, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1501, file: !75, line: 416, baseType: !1889, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!142, !769, !1487, !784, !18, !1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1501, file: !75, line: 419, baseType: !1895, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!142, !769, !1487, !784, !18, !18, !1507, !137}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1501, file: !75, line: 424, baseType: !1899, size: 64, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!1902, !1487, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !135, line: 131, baseType: !274)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1501, file: !75, line: 425, baseType: !1904, size: 64, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1808, !1282, !1282}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1501, file: !75, line: 426, baseType: !1908, size: 64, offset: 576)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!217, !1808, !147}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1501, file: !75, line: 427, baseType: !1912, size: 64, offset: 640)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1808}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1501, file: !75, line: 428, baseType: !1916, size: 64, offset: 704)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1279, !1919, !1941}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !75, line: 373, size: 384, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1928, !1929, !1930, !1931}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1920, file: !75, line: 374, baseType: !769, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1920, file: !75, line: 375, baseType: !784, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1920, file: !75, line: 376, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1919, !141}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1920, file: !75, line: 377, baseType: !137, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1920, file: !75, line: 378, baseType: !142, size: 32, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1920, file: !75, line: 379, baseType: !207, size: 16, offset: 288)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1920, file: !75, line: 380, baseType: !1932, size: 64, offset: 320)
!1932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1920, file: !75, line: 380, size: 64, elements: !1933)
!1933 = !{!1934, !1937}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1932, file: !75, line: 386, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !75, line: 386, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1932, file: !75, line: 395, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1279, !137}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !75, line: 69, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1501, file: !75, line: 433, baseType: !1944, size: 64, offset: 768)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!142, !1487, !1808, !1808, !61}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1501, file: !75, line: 435, baseType: !1948, size: 64, offset: 832)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!142, !1808}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1501, file: !75, line: 436, baseType: !1952, size: 64, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!217, !1808, !1282, !1282}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1501, file: !75, line: 438, baseType: !1956, size: 64, offset: 960)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1808, !1959, !1959}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1501, file: !75, line: 439, baseType: !1961, size: 64, offset: 1024)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!142, !1487, !1507}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1501, file: !75, line: 442, baseType: !1965, size: 64, offset: 1088)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!142, !1968, !769, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !75, line: 66, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1501, file: !75, line: 444, baseType: !1972, size: 64, offset: 1152)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !769}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1501, file: !75, line: 445, baseType: !1976, size: 64, offset: 1216)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!142, !1919, !1941}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1488, file: !75, line: 486, baseType: !136, size: 64, offset: 896)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1488, file: !75, line: 487, baseType: !913, size: 320, offset: 960)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1488, file: !75, line: 488, baseType: !1982, size: 32, offset: 1280)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1983, line: 8, baseType: !143)
!1983 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1488, file: !75, line: 489, baseType: !171, size: 32, offset: 1312)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1488, file: !75, line: 490, baseType: !258, size: 128, offset: 1344)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1488, file: !75, line: 491, baseType: !137, size: 64, offset: 1472)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1478, file: !1447, line: 180, baseType: !1988, size: 64, offset: 320)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1279, !769, !1389, !1477, !243, !784, !1282}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1478, file: !1447, line: 182, baseType: !1988, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1478, file: !1447, line: 184, baseType: !1993, size: 64, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!142, !769, !1389, !1477, !1626}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1466, file: !1447, line: 90, baseType: !1997, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1466, file: !1447, line: 91, baseType: !1999, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1437, file: !1384, line: 120, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!2004, !1407}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2006)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !69, line: 39, size: 384, elements: !2007)
!2007 = !{!2008, !2009, !2013, !2017, !2023, !2027}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2006, file: !69, line: 40, baseType: !68, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2006, file: !69, line: 41, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!217}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2006, file: !69, line: 42, baseType: !2014, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!137}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2006, file: !69, line: 43, baseType: !2018, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!388, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !69, line: 19, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2006, file: !69, line: 44, baseType: !2024, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!388}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2006, file: !69, line: 45, baseType: !1158, size: 64, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1437, file: !1384, line: 121, baseType: !2029, size: 64, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!388, !1407}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1437, file: !1384, line: 122, baseType: !2033, size: 64, offset: 320)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !1407, !2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1383, file: !1384, line: 70, baseType: !2039, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2041, line: 190, size: 1152, elements: !2042)
!2041 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2165, !2166, !2167, !2168, !2169, !2172}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2040, file: !2041, line: 191, baseType: !191, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2040, file: !2041, line: 192, baseType: !191, size: 32, offset: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2040, file: !2041, line: 202, baseType: !2039, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2040, file: !2041, line: 203, baseType: !223, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2040, file: !2041, line: 205, baseType: !491, size: 192, align: 64, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2040, file: !2041, line: 207, baseType: !388, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2040, file: !2041, line: 208, baseType: !18, size: 32, offset: 448)
!2050 = !DIDerivedType(tag: DW_TAG_member, scope: !2040, file: !2041, line: 209, baseType: !2051, size: 256, offset: 512)
!2051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2040, file: !2041, line: 209, size: 256, elements: !2052)
!2052 = !{!2053, !2062, !2066}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2051, file: !2041, line: 210, baseType: !2054, size: 256)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2041, line: 153, size: 256, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2061}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2054, file: !2041, line: 154, baseType: !136, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2054, file: !2041, line: 156, baseType: !627, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2054, file: !2041, line: 162, baseType: !2059, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2041, line: 162, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2054, file: !2041, line: 167, baseType: !136, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2051, file: !2041, line: 211, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2041, line: 170, size: 64, elements: !2064)
!2064 = !{!2065}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2063, file: !2041, line: 171, baseType: !2039, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2051, file: !2041, line: 212, baseType: !2067, size: 256)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2041, line: 174, size: 256, elements: !2068)
!2068 = !{!2069, !2160, !2163, !2164}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2067, file: !2041, line: 175, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2041, line: 271, size: 768, elements: !2073)
!2073 = !{!2074, !2133, !2137, !2138, !2139, !2140, !2141, !2145, !2146, !2147, !2148, !2156}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2072, file: !2041, line: 276, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!142, !2078}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2041, line: 251, size: 1216, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2079, file: !2041, line: 253, baseType: !2039, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2079, file: !2041, line: 254, baseType: !769, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2079, file: !2041, line: 255, baseType: !2084, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2086, line: 17, size: 960, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2118, !2119, !2122}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2085, file: !2086, line: 18, baseType: !243, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2085, file: !2086, line: 19, baseType: !1282, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2085, file: !2086, line: 20, baseType: !1282, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2085, file: !2086, line: 21, baseType: !1282, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2085, file: !2086, line: 22, baseType: !1282, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2085, file: !2086, line: 23, baseType: !784, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2085, file: !2086, line: 24, baseType: !784, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2085, file: !2086, line: 25, baseType: !414, size: 256, offset: 448)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2085, file: !2086, line: 26, baseType: !2097, size: 64, offset: 704)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2086, line: 32, size: 256, elements: !2100)
!2100 = !{!2101, !2106, !2110, !2114}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2099, file: !2086, line: 33, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!137, !2084, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2099, file: !2086, line: 34, baseType: !2107, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !2084, !137}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2099, file: !2086, line: 35, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!137, !2084, !137, !2105}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2099, file: !2086, line: 36, baseType: !2115, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!142, !2084, !137}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2085, file: !2086, line: 27, baseType: !142, size: 32, offset: 768)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2085, file: !2086, line: 28, baseType: !2120, size: 64, offset: 832)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2085, file: !2086, line: 29, baseType: !137, size: 64, offset: 896)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2079, file: !2041, line: 256, baseType: !137, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2079, file: !2041, line: 259, baseType: !414, size: 256, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2079, file: !2041, line: 260, baseType: !414, size: 256, offset: 512)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2079, file: !2041, line: 261, baseType: !142, size: 32, offset: 768)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2079, file: !2041, line: 262, baseType: !258, size: 128, offset: 832)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2079, file: !2041, line: 263, baseType: !243, size: 64, offset: 960)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2079, file: !2041, line: 265, baseType: !1282, size: 64, offset: 1024)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2079, file: !2041, line: 266, baseType: !217, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2079, file: !2041, line: 267, baseType: !217, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2079, file: !2041, line: 268, baseType: !1671, size: 64, offset: 1152)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2072, file: !2041, line: 277, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !2078}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2072, file: !2041, line: 290, baseType: !2115, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2072, file: !2041, line: 292, baseType: !2102, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2072, file: !2041, line: 293, baseType: !2111, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2072, file: !2041, line: 294, baseType: !2107, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2072, file: !2041, line: 296, baseType: !2142, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!1279, !2078, !243, !1282, !784}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2072, file: !2041, line: 306, baseType: !1282, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2072, file: !2041, line: 313, baseType: !217, size: 8, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2072, file: !2041, line: 314, baseType: !2142, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2072, file: !2041, line: 317, baseType: !2149, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!2152, !2078, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2153, line: 59, baseType: !18)
!2153 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !75, line: 61, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2072, file: !2041, line: 320, baseType: !2157, size: 64, offset: 704)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!142, !2078, !1626}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2067, file: !2041, line: 176, baseType: !2161, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2041, line: 35, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2067, file: !2041, line: 177, baseType: !784, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2067, file: !2041, line: 178, baseType: !2039, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2040, file: !2041, line: 215, baseType: !137, size: 64, offset: 768)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2040, file: !2041, line: 221, baseType: !274, size: 64, offset: 832)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2040, file: !2041, line: 223, baseType: !209, size: 16, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2040, file: !2041, line: 224, baseType: !1130, size: 16, offset: 912)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2040, file: !2041, line: 225, baseType: !2170, size: 64, offset: 960)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2041, line: 36, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2040, file: !2041, line: 227, baseType: !265, size: 128, align: 64, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1383, file: !1384, line: 71, baseType: !280, size: 32, offset: 448)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1383, file: !1384, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1383, file: !1384, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1383, file: !1384, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1383, file: !1384, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1383, file: !1384, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1380, file: !31, line: 47, baseType: !1370, size: 64, offset: 512)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1380, file: !31, line: 48, baseType: !1389, size: 64, offset: 576)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1380, file: !31, line: 49, baseType: !2182, size: 64, offset: 640)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !31, line: 49, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1380, file: !31, line: 50, baseType: !2185, size: 64, offset: 704)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1371, file: !31, line: 418, baseType: !2187, size: 64, offset: 1408)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !31, line: 53, size: 448, elements: !2189)
!2189 = !{!2190, !2191, !2196, !2200, !2204, !2208}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2188, file: !31, line: 54, baseType: !1454, size: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2188, file: !31, line: 55, baseType: !2192, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!1279, !2187, !2195, !243}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2188, file: !31, line: 57, baseType: !2197, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!1279, !2187, !2195, !223, !1282}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2188, file: !31, line: 59, baseType: !2201, size: 64, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !1370, !223}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2188, file: !31, line: 60, baseType: !2205, size: 64, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!142, !1370}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2188, file: !31, line: 61, baseType: !2209, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !1370}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1371, file: !31, line: 419, baseType: !223, size: 64, offset: 1472)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1371, file: !31, line: 420, baseType: !223, size: 64, offset: 1536)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1371, file: !31, line: 421, baseType: !1389, size: 64, offset: 1600)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1371, file: !31, line: 424, baseType: !2216, size: 64, offset: 1664)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2218)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !31, line: 424, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1371, file: !31, line: 425, baseType: !2220, size: 64, offset: 1728)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1371, file: !31, line: 426, baseType: !18, size: 32, offset: 1792)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1371, file: !31, line: 435, baseType: !414, size: 256, offset: 1856)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1371, file: !31, line: 437, baseType: !2225, size: 64, offset: 2112)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2227, line: 69, size: 320, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2228 = !{!2229, !2230, !2231, !2248, !2250, !2254, !2255}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2226, file: !2227, line: 70, baseType: !223, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2226, file: !2227, line: 71, baseType: !1370, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2226, file: !2227, line: 72, baseType: !2232, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2227, line: 47, size: 256, elements: !2235)
!2235 = !{!2236, !2237, !2243, !2247}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2234, file: !2227, line: 49, baseType: !18, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2234, file: !2227, line: 51, baseType: !2238, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!142, !223, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2226)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2234, file: !2227, line: 53, baseType: !2244, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!142, !243, !2241}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2234, file: !2227, line: 55, baseType: !1158, size: 64, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2226, file: !2227, line: 73, baseType: !2249, size: 16, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2226, file: !2227, line: 74, baseType: !2251, size: 8, offset: 208)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !144, line: 16, baseType: !2252)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !146, line: 20, baseType: !2253)
!2253 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2226, file: !2227, line: 75, baseType: !199, size: 8, offset: 216)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !2227, line: 76, baseType: !2256, size: 64, offset: 256)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !2227, line: 76, size: 64, elements: !2257)
!2257 = !{!2258, !2259, !2266}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2256, file: !2227, line: 77, baseType: !137, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2256, file: !2227, line: 78, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2227, line: 86, size: 128, elements: !2263)
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2262, file: !2227, line: 87, baseType: !18, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2262, file: !2227, line: 88, baseType: !243, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2256, file: !2227, line: 79, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2227, line: 92, size: 256, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2275, !2276}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2269, file: !2227, line: 94, baseType: !18, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2269, file: !2227, line: 95, baseType: !18, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2269, file: !2227, line: 96, baseType: !2274, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2269, file: !2227, line: 97, baseType: !2232, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2269, file: !2227, line: 98, baseType: !137, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1371, file: !31, line: 438, baseType: !18, size: 32, offset: 2176)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1371, file: !31, line: 441, baseType: !18, size: 32, offset: 2208)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1371, file: !31, line: 442, baseType: !2216, size: 64, offset: 2240)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1371, file: !31, line: 443, baseType: !2220, size: 64, offset: 2304)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1371, file: !31, line: 444, baseType: !217, size: 8, offset: 2368)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1371, file: !31, line: 451, baseType: !217, size: 8, offset: 2376)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1371, file: !31, line: 454, baseType: !18, size: 32, offset: 2400)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1371, file: !31, line: 455, baseType: !2285, size: 64, offset: 2432)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2287, line: 23, size: 96, elements: !2288)
!2287 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2288 = !{!2289, !2290, !2291}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2286, file: !2287, line: 24, baseType: !142, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2286, file: !2287, line: 24, baseType: !142, size: 32, offset: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2286, file: !2287, line: 24, baseType: !142, size: 32, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1371, file: !31, line: 458, baseType: !2293, size: 64, offset: 2496)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!142}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1371, file: !31, line: 460, baseType: !2297, size: 4032, align: 512, offset: 2560)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2298, size: 4032, elements: !2314)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !31, line: 362, size: 576, elements: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2298, file: !31, line: 363, baseType: !137, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2298, file: !31, line: 364, baseType: !18, size: 32, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2298, file: !31, line: 367, baseType: !2303, size: 448, offset: 128)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !31, line: 319, size: 448, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2303, file: !31, line: 320, baseType: !1370, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2303, file: !31, line: 321, baseType: !2307, size: 384, offset: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2308, line: 40, size: 384, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2309 = !{!2310}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2307, file: !2308, line: 41, baseType: !2311, size: 384, align: 64)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 384, align: 64, elements: !2312)
!2312 = !{!2313}
!2313 = !DISubrange(count: 2)
!2314 = !{!2315}
!2315 = !DISubrange(count: 7)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1371, file: !31, line: 463, baseType: !2317, size: 192, offset: 6592)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2318, line: 8, size: 192, elements: !2319)
!2318 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2319 = !{!2320, !2321, !2323}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2317, file: !2318, line: 10, baseType: !18, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2317, file: !2318, line: 11, baseType: !2322, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2317, file: !2318, line: 12, baseType: !2324, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2326, line: 59, size: 48, elements: !2327)
!2326 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2327 = !{!2328, !2331, !2332, !2333, !2334, !2335}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2325, file: !2326, line: 60, baseType: !2329, size: 16)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !144, line: 18, baseType: !2330)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !146, line: 23, baseType: !941)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2325, file: !2326, line: 61, baseType: !2329, size: 16, offset: 16)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2325, file: !2326, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2325, file: !2326, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2325, file: !2326, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2325, file: !2326, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1371, file: !31, line: 465, baseType: !136, size: 64, offset: 6784)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1371, file: !31, line: 469, baseType: !18, size: 32, offset: 6848)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1371, file: !31, line: 470, baseType: !258, size: 128, offset: 6912)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1371, file: !31, line: 471, baseType: !2340, size: 64, offset: 7040)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2342, line: 33, size: 96, elements: !2343)
!2342 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2343 = !{!2344, !2345, !2346, !2347}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2341, file: !2342, line: 37, baseType: !142, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2341, file: !2342, line: 43, baseType: !142, size: 32, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2341, file: !2342, line: 45, baseType: !209, size: 16, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2341, file: !2342, line: 47, baseType: !209, size: 16, offset: 80)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1371, file: !31, line: 476, baseType: !2349, size: 64, offset: 7104)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !31, line: 378, size: 256, elements: !2351)
!2351 = !{!2352, !2368, !2369, !2370}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2350, file: !31, line: 379, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2355, line: 204, baseType: !2356)
!2355 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2355, line: 197, size: 192, elements: !2357)
!2357 = !{!2358, !2360, !2361, !2362, !2364, !2366}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2356, file: !2355, line: 198, baseType: !2359, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2355, line: 21, baseType: !145)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2356, file: !2355, line: 199, baseType: !201, size: 8, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2356, file: !2355, line: 200, baseType: !201, size: 8, offset: 40)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2356, file: !2355, line: 201, baseType: !2363, size: 16, offset: 48)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2355, line: 17, baseType: !208)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2356, file: !2355, line: 202, baseType: !2365, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2355, line: 16, baseType: !275)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2356, file: !2355, line: 203, baseType: !2367, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2355, line: 22, baseType: !275)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2350, file: !31, line: 380, baseType: !18, size: 32, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2350, file: !31, line: 381, baseType: !243, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2350, file: !31, line: 382, baseType: !243, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1371, file: !31, line: 477, baseType: !2350, size: 256, offset: 7168)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1371, file: !31, line: 480, baseType: !2373, size: 64, offset: 7424)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !31, line: 480, flags: DIFlagFwdDecl)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1371, file: !31, line: 483, baseType: !2376, size: 64, offset: 7488)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !31, line: 483, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1371, file: !31, line: 488, baseType: !243, size: 64, offset: 7552)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1371, file: !31, line: 492, baseType: !137, size: 64, offset: 7616)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1371, file: !31, line: 493, baseType: !18, size: 32, offset: 7680)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1371, file: !31, line: 495, baseType: !137, size: 64, offset: 7744)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1371, file: !31, line: 496, baseType: !18, size: 32, offset: 7808)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1371, file: !31, line: 499, baseType: !18, size: 32, offset: 7840)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1371, file: !31, line: 500, baseType: !2385, size: 64, offset: 7872)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2387, line: 45, baseType: !2388)
!2387 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1371, file: !31, line: 503, baseType: !18, size: 32, offset: 7936)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1371, file: !31, line: 504, baseType: !2391, size: 64, offset: 8000)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2394, line: 96, size: 192, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2395 = !{!2396, !2397, !2462, !2465}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2393, file: !2394, line: 97, baseType: !18, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2393, file: !2394, line: 98, baseType: !2398, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2394, line: 24, size: 3072, elements: !2400)
!2400 = !{!2401, !2403, !2404, !2405, !2406, !2420, !2421, !2422, !2423, !2435, !2447, !2448, !2459, !2460, !2461}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2399, file: !2394, line: 26, baseType: !2402, size: 128)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 128, elements: !2312)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2399, file: !2394, line: 27, baseType: !2402, size: 128, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2399, file: !2394, line: 28, baseType: !142, size: 32, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2399, file: !2394, line: 31, baseType: !171, size: 32, align: 512, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2399, file: !2394, line: 32, baseType: !2407, size: 960, offset: 576)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2408, line: 206, size: 960, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2409 = !{!2410, !2411, !2414, !2416, !2417, !2419}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2407, file: !2408, line: 207, baseType: !268, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2407, file: !2408, line: 208, baseType: !2412, size: 256, offset: 64)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2413, size: 256, elements: !831)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2407, file: !2408, line: 209, baseType: !2415, size: 256, offset: 320)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !831)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2407, file: !2408, line: 213, baseType: !141, size: 64, offset: 576)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2407, file: !2408, line: 215, baseType: !2418, size: 256, offset: 640)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, elements: !831)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2407, file: !2408, line: 216, baseType: !199, size: 8, offset: 896)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2399, file: !2394, line: 33, baseType: !136, size: 64, offset: 1536)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2399, file: !2394, line: 34, baseType: !136, size: 64, offset: 1600)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2399, file: !2394, line: 35, baseType: !217, size: 8, offset: 1664)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2399, file: !2394, line: 36, baseType: !2424, size: 320, offset: 1728)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2425, line: 11, size: 320, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2426 = !{!2427, !2428, !2429, !2434}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2424, file: !2425, line: 16, baseType: !826, size: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2424, file: !2425, line: 17, baseType: !136, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2424, file: !2425, line: 18, baseType: !2430, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2424, file: !2425, line: 19, baseType: !143, size: 32, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2399, file: !2394, line: 37, baseType: !2436, size: 256, offset: 2048)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2437, line: 98, size: 256, elements: !2438)
!2437 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2438 = !{!2439, !2440, !2441}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2436, file: !2437, line: 99, baseType: !418, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2436, file: !2437, line: 100, baseType: !258, size: 128, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2436, file: !2437, line: 101, baseType: !2442, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2437, line: 21, baseType: !2443)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2399, file: !2394, line: 38, baseType: !265, size: 128, align: 64, offset: 2304)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2399, file: !2394, line: 39, baseType: !2449, size: 64, offset: 2432)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2394, line: 49, size: 768, elements: !2451)
!2451 = !{!2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2450, file: !2394, line: 50, baseType: !171, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2450, file: !2394, line: 51, baseType: !2415, size: 256, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2450, file: !2394, line: 53, baseType: !2415, size: 256, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2450, file: !2394, line: 54, baseType: !136, size: 64, offset: 576)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2450, file: !2394, line: 55, baseType: !2449, size: 64, offset: 640)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2450, file: !2394, line: 56, baseType: !142, size: 32, offset: 704)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2450, file: !2394, line: 57, baseType: !142, size: 32, offset: 736)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2399, file: !2394, line: 40, baseType: !136, size: 64, offset: 2496)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2399, file: !2394, line: 42, baseType: !142, size: 32, offset: 2560)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2399, file: !2394, line: 43, baseType: !2392, size: 64, offset: 2624)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2393, file: !2394, line: 99, baseType: !2463, offset: 128)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2464, line: 211, elements: !762)
!2464 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2393, file: !2394, line: 100, baseType: !2466, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2394, line: 63, size: 3008, elements: !2468)
!2468 = !{!2469, !2470, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2500}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2467, file: !2394, line: 64, baseType: !2449, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2467, file: !2394, line: 65, baseType: !2471, size: 192, offset: 64)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, size: 192, elements: !810)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2467, file: !2394, line: 67, baseType: !142, size: 32, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2467, file: !2394, line: 68, baseType: !414, size: 256, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2467, file: !2394, line: 69, baseType: !171, size: 32, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2467, file: !2394, line: 70, baseType: !414, size: 256, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2467, file: !2394, line: 71, baseType: !136, size: 64, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2467, file: !2394, line: 72, baseType: !136, size: 64, offset: 960)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2467, file: !2394, line: 73, baseType: !136, size: 64, offset: 1024)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2467, file: !2394, line: 74, baseType: !136, size: 64, offset: 1088)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2467, file: !2394, line: 75, baseType: !136, size: 64, offset: 1152)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2467, file: !2394, line: 76, baseType: !136, size: 64, offset: 1216)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2467, file: !2394, line: 77, baseType: !136, size: 64, offset: 1280)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2467, file: !2394, line: 78, baseType: !136, size: 64, offset: 1344)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2467, file: !2394, line: 79, baseType: !217, size: 8, offset: 1408)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2467, file: !2394, line: 80, baseType: !136, size: 64, offset: 1472)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2467, file: !2394, line: 81, baseType: !414, size: 256, offset: 1536)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2467, file: !2394, line: 82, baseType: !1591, size: 256, offset: 1792)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2467, file: !2394, line: 84, baseType: !191, size: 32, offset: 2048)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2467, file: !2394, line: 87, baseType: !136, size: 64, offset: 2112)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2467, file: !2394, line: 88, baseType: !136, size: 64, offset: 2176)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2467, file: !2394, line: 89, baseType: !2492, size: 704, offset: 2240)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2437, line: 111, size: 704, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2499}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2492, file: !2437, line: 112, baseType: !2436, size: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2492, file: !2437, line: 113, baseType: !2424, size: 320, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2492, file: !2437, line: 116, baseType: !2497, size: 64, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2437, line: 18, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2492, file: !2437, line: 117, baseType: !142, size: 32, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2467, file: !2394, line: 90, baseType: !2392, size: 64, offset: 2944)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1371, file: !31, line: 515, baseType: !2502, size: 64, offset: 8064)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2504, line: 117, size: 128, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2505 = !{!2506, !2507, !2508}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2503, file: !2504, line: 118, baseType: !905, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2503, file: !2504, line: 119, baseType: !905, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2503, file: !2504, line: 120, baseType: !141, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1371, file: !31, line: 516, baseType: !18, size: 32, offset: 8128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1371, file: !31, line: 519, baseType: !18, size: 32, offset: 8160)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1371, file: !31, line: 520, baseType: !2512, size: 64, offset: 8192)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1371, file: !31, line: 523, baseType: !2514, size: 64, offset: 8256)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !31, line: 523, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1371, file: !31, line: 524, baseType: !18, size: 32, offset: 8320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1371, file: !31, line: 525, baseType: !2519, size: 64, offset: 8384)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !31, line: 525, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1371, file: !31, line: 526, baseType: !18, size: 32, offset: 8448)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1371, file: !31, line: 533, baseType: !137, size: 64, offset: 8512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1371, file: !31, line: 534, baseType: !18, size: 32, offset: 8576)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1371, file: !31, line: 535, baseType: !140, size: 64, offset: 8640)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1371, file: !31, line: 536, baseType: !18, size: 32, offset: 8704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1371, file: !31, line: 539, baseType: !142, size: 32, offset: 8736)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1371, file: !31, line: 540, baseType: !2529, size: 64, offset: 8768)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2531, line: 32, size: 64, elements: !2532)
!2531 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2532 = !{!2533, !2534}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2530, file: !2531, line: 33, baseType: !905, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2530, file: !2531, line: 34, baseType: !905, size: 32, offset: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1371, file: !31, line: 563, baseType: !258, size: 128, offset: 8832)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1371, file: !31, line: 565, baseType: !258, size: 128, offset: 8960)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1371, file: !31, line: 568, baseType: !2538, size: 64, offset: 9088)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1371, file: !31, line: 570, baseType: !191, size: 32, offset: 9152)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1347, file: !75, line: 2382, baseType: !1346, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1347, file: !75, line: 2383, baseType: !822, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1347, file: !75, line: 2385, baseType: !2545, offset: 576)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2464, line: 206, elements: !762)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1347, file: !75, line: 2386, baseType: !2545, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1347, file: !75, line: 2387, baseType: !2545, offset: 576)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1347, file: !75, line: 2388, baseType: !2549, offset: 576)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2545, elements: !810)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1347, file: !75, line: 2390, baseType: !2545, offset: 576)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1347, file: !75, line: 2391, baseType: !2545, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1347, file: !75, line: 2392, baseType: !2545, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1347, file: !75, line: 2393, baseType: !2545, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1338, file: !75, line: 1197, baseType: !2555, size: 64, offset: 384)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2557)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !75, line: 2057, size: 1664, elements: !2558)
!2558 = !{!2559, !2563, !2567, !2568, !2572, !2576, !2580, !2581, !2582, !2586, !2590, !2594, !2595, !2596, !2602, !2606, !2607, !2611, !2612, !2613, !2614, !2618, !2622, !2669, !2684, !2685}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2557, file: !75, line: 2058, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!1126, !1337}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2557, file: !75, line: 2059, baseType: !2564, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !1126}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2557, file: !75, line: 2060, baseType: !2564, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2557, file: !75, line: 2062, baseType: !2569, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null, !1126, !142}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2557, file: !75, line: 2063, baseType: !2573, size: 64, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!142, !1126, !1802}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2557, file: !75, line: 2064, baseType: !2577, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!142, !1126}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2557, file: !75, line: 2065, baseType: !2564, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2557, file: !75, line: 2066, baseType: !1366, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2557, file: !75, line: 2067, baseType: !2583, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!142, !1337, !142}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2557, file: !75, line: 2068, baseType: !2587, size: 64, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!142, !1337, !74}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2557, file: !75, line: 2069, baseType: !2591, size: 64, offset: 640)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!142, !1337}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2557, file: !75, line: 2070, baseType: !2587, size: 64, offset: 704)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2557, file: !75, line: 2071, baseType: !2591, size: 64, offset: 768)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2557, file: !75, line: 2072, baseType: !2597, size: 64, offset: 832)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!142, !1091, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !75, line: 62, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2557, file: !75, line: 2073, baseType: !2603, size: 64, offset: 896)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!142, !1337, !2322, !243}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2557, file: !75, line: 2074, baseType: !1366, size: 64, offset: 960)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2557, file: !75, line: 2076, baseType: !2608, size: 64, offset: 1024)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!142, !2084, !1091}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2557, file: !75, line: 2077, baseType: !2608, size: 64, offset: 1088)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2557, file: !75, line: 2078, baseType: !2608, size: 64, offset: 1152)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2557, file: !75, line: 2079, baseType: !2608, size: 64, offset: 1216)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2557, file: !75, line: 2081, baseType: !2615, size: 64, offset: 1280)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!1279, !1337, !142, !243, !1282, !784}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2557, file: !75, line: 2082, baseType: !2619, size: 64, offset: 1344)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!1279, !1337, !142, !223, !1282, !784}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2557, file: !75, line: 2083, baseType: !2623, size: 64, offset: 1408)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!2626, !1126}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 296, size: 1664, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2654, !2655, !2656}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2628, file: !80, line: 297, baseType: !826, size: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2628, file: !80, line: 298, baseType: !258, size: 128, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2628, file: !80, line: 299, baseType: !258, size: 128, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2628, file: !80, line: 300, baseType: !258, size: 128, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2628, file: !80, line: 301, baseType: !414, size: 256, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2628, file: !80, line: 302, baseType: !171, size: 32, offset: 768)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2628, file: !80, line: 303, baseType: !191, size: 32, offset: 800)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2628, file: !80, line: 304, baseType: !1337, size: 64, offset: 832)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2628, file: !80, line: 305, baseType: !2639, size: 64, offset: 896)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !2640)
!2640 = !{!2641, !2653}
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !2639, file: !80, line: 69, baseType: !2642, size: 32)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2639, file: !80, line: 69, size: 32, elements: !2643)
!2643 = !{!2644, !2645, !2646}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2642, file: !80, line: 70, baseType: !854, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2642, file: !80, line: 71, baseType: !872, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2642, file: !80, line: 72, baseType: !2647, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2648, line: 24, baseType: !2649)
!2648 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2648, line: 22, size: 32, elements: !2650)
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2649, file: !2648, line: 23, baseType: !2652, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2648, line: 20, baseType: !860)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2639, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2628, file: !80, line: 306, baseType: !784, size: 64, offset: 960)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2628, file: !80, line: 307, baseType: !136, size: 64, offset: 1024)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2628, file: !80, line: 308, baseType: !2657, size: 576, offset: 1088)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !2658)
!2658 = !{!2659, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2657, file: !80, line: 206, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !253)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2657, file: !80, line: 207, baseType: !2660, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2657, file: !80, line: 208, baseType: !2660, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2657, file: !80, line: 209, baseType: !2660, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2657, file: !80, line: 210, baseType: !2660, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2657, file: !80, line: 211, baseType: !2660, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2657, file: !80, line: 212, baseType: !2660, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2657, file: !80, line: 213, baseType: !929, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2657, file: !80, line: 214, baseType: !929, size: 64, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2557, file: !75, line: 2085, baseType: !2670, size: 64, offset: 1472)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!141, !1337, !2673}
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2675, line: 15, size: 256, elements: !2676)
!2675 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2676 = !{!2677, !2678, !2679, !2680, !2681}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2674, file: !2675, line: 16, baseType: !147, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2674, file: !2675, line: 19, baseType: !142, size: 32, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2674, file: !2675, line: 26, baseType: !136, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2674, file: !2675, line: 33, baseType: !136, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2674, file: !2675, line: 36, baseType: !2682, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !46, line: 33, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2557, file: !75, line: 2087, baseType: !2670, size: 64, offset: 1536)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2557, file: !75, line: 2089, baseType: !1366, size: 64, offset: 1600)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1338, file: !75, line: 1198, baseType: !2687, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2689)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 324, size: 704, elements: !2690)
!2690 = !{!2691, !2695, !2699, !2703, !2704, !2705, !2706, !2707, !2712, !2717, !2721}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2689, file: !80, line: 325, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!142, !2627}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2689, file: !80, line: 326, baseType: !2696, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!2627, !1337, !142}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2689, file: !80, line: 327, baseType: !2700, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !2627}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2689, file: !80, line: 328, baseType: !2692, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2689, file: !80, line: 329, baseType: !2692, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2689, file: !80, line: 330, baseType: !2692, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2689, file: !80, line: 331, baseType: !2583, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2689, file: !80, line: 334, baseType: !2708, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!2711, !1126}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2689, file: !80, line: 335, baseType: !2713, size: 64, offset: 512)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!142, !1126, !2716}
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2689, file: !80, line: 337, baseType: !2718, size: 64, offset: 576)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!142, !1126, !2711}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2689, file: !80, line: 339, baseType: !2722, size: 64, offset: 640)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!142, !1337, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1338, file: !75, line: 1199, baseType: !2727, size: 64, offset: 512)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2729)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 430, size: 704, elements: !2730)
!2730 = !{!2731, !2735, !2736, !2740, !2741, !2742, !2757, !2780, !2784, !2785, !2808}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2729, file: !80, line: 431, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!142, !1337, !142, !142, !1248}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2729, file: !80, line: 432, baseType: !2583, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2729, file: !80, line: 433, baseType: !2737, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!142, !1337, !18}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2729, file: !80, line: 434, baseType: !2737, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2729, file: !80, line: 435, baseType: !2583, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2729, file: !80, line: 436, baseType: !2743, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!142, !1337, !142, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 417, size: 256, elements: !2748)
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2747, file: !80, line: 418, baseType: !142, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2747, file: !80, line: 419, baseType: !18, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2747, file: !80, line: 420, baseType: !18, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2747, file: !80, line: 422, baseType: !18, size: 32, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2747, file: !80, line: 423, baseType: !18, size: 32, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2747, file: !80, line: 424, baseType: !18, size: 32, offset: 160)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2747, file: !80, line: 425, baseType: !18, size: 32, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2747, file: !80, line: 426, baseType: !18, size: 32, offset: 224)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2729, file: !80, line: 437, baseType: !2758, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!142, !1337, !2639, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 345, size: 960, elements: !2763)
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2762, file: !80, line: 346, baseType: !142, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2762, file: !80, line: 347, baseType: !274, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2762, file: !80, line: 348, baseType: !274, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2762, file: !80, line: 349, baseType: !274, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2762, file: !80, line: 350, baseType: !274, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2762, file: !80, line: 351, baseType: !274, size: 64, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2762, file: !80, line: 352, baseType: !274, size: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2762, file: !80, line: 353, baseType: !251, size: 64, offset: 448)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2762, file: !80, line: 355, baseType: !251, size: 64, offset: 512)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2762, file: !80, line: 356, baseType: !142, size: 32, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2762, file: !80, line: 357, baseType: !142, size: 32, offset: 608)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2762, file: !80, line: 358, baseType: !274, size: 64, offset: 640)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2762, file: !80, line: 359, baseType: !274, size: 64, offset: 704)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2762, file: !80, line: 360, baseType: !274, size: 64, offset: 768)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2762, file: !80, line: 361, baseType: !251, size: 64, offset: 832)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2762, file: !80, line: 362, baseType: !142, size: 32, offset: 896)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2729, file: !80, line: 438, baseType: !2781, size: 64, offset: 448)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!142, !1337, !2725, !2761}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2729, file: !80, line: 440, baseType: !2758, size: 64, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2729, file: !80, line: 441, baseType: !2786, size: 64, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!142, !1337, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 411, size: 1408, elements: !2791)
!2791 = !{!2792, !2793}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2790, file: !80, line: 412, baseType: !18, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2790, file: !80, line: 413, baseType: !2794, size: 1344, offset: 64)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2795, size: 1344, elements: !810)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 397, size: 448, elements: !2796)
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2807}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2795, file: !80, line: 398, baseType: !18, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2795, file: !80, line: 399, baseType: !18, size: 32, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2795, file: !80, line: 401, baseType: !18, size: 32, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2795, file: !80, line: 402, baseType: !18, size: 32, offset: 96)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2795, file: !80, line: 403, baseType: !18, size: 32, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2795, file: !80, line: 404, baseType: !18, size: 32, offset: 160)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2795, file: !80, line: 405, baseType: !18, size: 32, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2795, file: !80, line: 406, baseType: !276, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2795, file: !80, line: 407, baseType: !2806, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !135, line: 132, baseType: !274)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2795, file: !80, line: 408, baseType: !2806, size: 64, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2729, file: !80, line: 442, baseType: !2737, size: 64, offset: 640)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1338, file: !75, line: 1200, baseType: !2810, size: 64, offset: 576)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2812)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !75, line: 54, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1338, file: !75, line: 1201, baseType: !136, size: 64, offset: 640)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1338, file: !75, line: 1202, baseType: !136, size: 64, offset: 704)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1338, file: !75, line: 1203, baseType: !136, size: 64, offset: 768)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1338, file: !75, line: 1204, baseType: !1091, size: 64, offset: 832)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1338, file: !75, line: 1205, baseType: !913, size: 320, offset: 896)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1338, file: !75, line: 1206, baseType: !142, size: 32, offset: 1216)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1338, file: !75, line: 1207, baseType: !191, size: 32, offset: 1248)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1338, file: !75, line: 1209, baseType: !137, size: 64, offset: 1280)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1338, file: !75, line: 1211, baseType: !2822, size: 64, offset: 1344)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2825)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !75, line: 1211, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1338, file: !75, line: 1223, baseType: !2827, size: 64, offset: 1408)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1103, line: 34, size: 64, elements: !2828)
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2827, file: !1103, line: 35, baseType: !1106, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1338, file: !75, line: 1224, baseType: !258, size: 128, offset: 1472)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1338, file: !75, line: 1225, baseType: !2832, size: 64, offset: 1600)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !75, line: 1225, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1338, file: !75, line: 1226, baseType: !2835, size: 64, offset: 1664)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !75, line: 1226, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1338, file: !75, line: 1227, baseType: !2838, size: 64, offset: 1728)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !75, line: 50, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1338, file: !75, line: 1228, baseType: !2841, size: 64, offset: 1792)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !75, line: 1228, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1338, file: !75, line: 1229, baseType: !826, size: 128, offset: 1856)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1338, file: !75, line: 1230, baseType: !18, size: 32, offset: 1984)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1338, file: !75, line: 1231, baseType: !2846, size: 2496, offset: 2048)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 521, size: 2496, elements: !2847)
!2847 = !{!2848, !2849, !2850, !2852, !2884}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2846, file: !80, line: 522, baseType: !18, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2846, file: !80, line: 523, baseType: !913, size: 320, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2846, file: !80, line: 524, baseType: !2851, size: 192, offset: 384)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 192, elements: !810)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2846, file: !80, line: 525, baseType: !2853, size: 1728, offset: 576)
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2854, size: 1728, elements: !810)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !2855)
!2855 = !{!2856, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2854, file: !80, line: 223, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 445, size: 256, elements: !2859)
!2859 = !{!2860, !2861, !2874, !2875}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2858, file: !80, line: 446, baseType: !142, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2858, file: !80, line: 447, baseType: !2862, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2864)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 312, size: 512, elements: !2865)
!2865 = !{!2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2864, file: !80, line: 313, baseType: !2583, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2864, file: !80, line: 314, baseType: !2583, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2864, file: !80, line: 315, baseType: !2583, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2864, file: !80, line: 316, baseType: !2583, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2864, file: !80, line: 317, baseType: !2692, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2864, file: !80, line: 318, baseType: !2692, size: 64, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2864, file: !80, line: 319, baseType: !2692, size: 64, offset: 384)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2864, file: !80, line: 320, baseType: !2722, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2858, file: !80, line: 448, baseType: !1370, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2858, file: !80, line: 449, baseType: !2857, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2854, file: !80, line: 224, baseType: !142, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2854, file: !80, line: 226, baseType: !258, size: 128, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2854, file: !80, line: 227, baseType: !136, size: 64, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2854, file: !80, line: 228, baseType: !18, size: 32, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2854, file: !80, line: 229, baseType: !18, size: 32, offset: 352)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2854, file: !80, line: 230, baseType: !2660, size: 64, offset: 384)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2854, file: !80, line: 231, baseType: !2660, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2854, file: !80, line: 232, baseType: !137, size: 64, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2846, file: !80, line: 526, baseType: !2885, size: 192, offset: 2304)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2862, size: 192, elements: !810)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1338, file: !75, line: 1233, baseType: !2887, size: 2368, offset: 4544)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !75, line: 1184, size: 2368, elements: !2888)
!2888 = !{!2889, !2890, !2891}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2887, file: !75, line: 1185, baseType: !209, size: 16)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2887, file: !75, line: 1186, baseType: !209, size: 16, offset: 16)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2887, file: !75, line: 1187, baseType: !2892, size: 2304, offset: 64)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 2304, elements: !810)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2894, line: 12, size: 768, elements: !2895)
!2894 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2895 = !{!2896, !2904, !2905, !2910, !2911}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2893, file: !2894, line: 13, baseType: !2897, size: 384)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2898, line: 17, size: 384, elements: !2899)
!2898 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2899 = !{!2900, !2901, !2902, !2903}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2897, file: !2898, line: 18, baseType: !142, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2897, file: !2898, line: 19, baseType: !142, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2897, file: !2898, line: 20, baseType: !835, size: 192, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2897, file: !2898, line: 22, baseType: !265, size: 128, align: 64, offset: 256)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2893, file: !2894, line: 14, baseType: !2274, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2893, file: !2894, line: 15, baseType: !2906, size: 64, offset: 448)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2907, line: 16, size: 64, elements: !2908)
!2907 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2908 = !{!2909}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2906, file: !2907, line: 17, baseType: !437, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2893, file: !2894, line: 16, baseType: !835, size: 192, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2893, file: !2894, line: 17, baseType: !191, size: 32, offset: 704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1338, file: !75, line: 1240, baseType: !137, size: 64, offset: 6912)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1338, file: !75, line: 1243, baseType: !143, size: 32, offset: 6976)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1338, file: !75, line: 1245, baseType: !929, size: 64, offset: 7040)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1338, file: !75, line: 1246, baseType: !929, size: 64, offset: 7104)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1338, file: !75, line: 1248, baseType: !145, size: 32, offset: 7168)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1338, file: !75, line: 1249, baseType: !2918, size: 64, offset: 7232)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !75, line: 634, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1338, file: !75, line: 1252, baseType: !2921, size: 256, offset: 7296)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !2922)
!2922 = !{!2923}
!2923 = !DISubrange(count: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1338, file: !75, line: 1253, baseType: !2925, size: 128, offset: 7552)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2926, line: 21, baseType: !2927)
!2926 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2926, line: 19, size: 128, elements: !2928)
!2928 = !{!2929}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2927, file: !2926, line: 20, baseType: !2930, size: 128)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 128, elements: !2931)
!2931 = !{!2932}
!2932 = !DISubrange(count: 16)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1338, file: !75, line: 1255, baseType: !18, size: 32, offset: 7680)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1338, file: !75, line: 1261, baseType: !414, size: 256, offset: 7744)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1338, file: !75, line: 1267, baseType: !223, size: 64, offset: 8000)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1338, file: !75, line: 1269, baseType: !2937, size: 64, offset: 8064)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2939)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1093, line: 128, size: 1024, align: 512, elements: !2940)
!2940 = !{!2941, !2945, !2946, !2953, !2959, !2963, !2967, !2971, !2972, !2976, !2980, !2985, !2989}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2939, file: !1093, line: 129, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!142, !1091, !18}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2939, file: !1093, line: 130, baseType: !2942, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2939, file: !1093, line: 131, baseType: !2947, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!142, !2950, !2952}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2939, file: !1093, line: 132, baseType: !2954, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!142, !2950, !18, !223, !2957}
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1111)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2939, file: !1093, line: 134, baseType: !2960, size: 64, offset: 256)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!142, !2950}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2939, file: !1093, line: 135, baseType: !2964, size: 64, offset: 320)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!142, !1091}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2939, file: !1093, line: 136, baseType: !2968, size: 64, offset: 384)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{null, !1091}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2939, file: !1093, line: 137, baseType: !2968, size: 64, offset: 448)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2939, file: !1093, line: 138, baseType: !2973, size: 64, offset: 512)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !1091, !1126}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2939, file: !1093, line: 139, baseType: !2977, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!243, !1091, !243, !142}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2939, file: !1093, line: 140, baseType: !2981, size: 64, offset: 640)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!1086, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2939, file: !1093, line: 141, baseType: !2986, size: 64, offset: 704)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!142, !1248, !217}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2939, file: !1093, line: 142, baseType: !2990, size: 64, offset: 768)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!1091, !1091, !2993}
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1127)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1338, file: !75, line: 1271, baseType: !2996, size: 448, offset: 8128)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2675, line: 63, size: 448, elements: !2997)
!2997 = !{!2998, !3003, !3004, !3005, !3006, !3007, !3008}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2996, file: !2675, line: 64, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!136, !3002, !2673}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2996, file: !2675, line: 66, baseType: !2999, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2996, file: !2675, line: 69, baseType: !141, size: 64, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2996, file: !2675, line: 70, baseType: !142, size: 32, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2996, file: !2675, line: 71, baseType: !18, size: 32, offset: 224)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2996, file: !2675, line: 74, baseType: !258, size: 128, offset: 256)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2996, file: !2675, line: 85, baseType: !3009, size: 64, offset: 384)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1338, file: !75, line: 1274, baseType: !418, size: 64, offset: 8576)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1338, file: !75, line: 1280, baseType: !418, size: 64, offset: 8640)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1338, file: !75, line: 1283, baseType: !142, size: 32, offset: 8704)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1338, file: !75, line: 1286, baseType: !1982, size: 32, offset: 8736)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1338, file: !75, line: 1289, baseType: !2497, size: 64, offset: 8768)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1338, file: !75, line: 1290, baseType: !822, size: 64, offset: 8832)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1338, file: !75, line: 1297, baseType: !1053, size: 64, offset: 8896)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1338, file: !75, line: 1304, baseType: !3018, size: 64, offset: 8960)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3019, line: 49, size: 64, elements: !3020)
!3019 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3018, file: !3019, line: 50, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3019, line: 41, size: 512, align: 512, elements: !3024)
!3024 = !{!3025, !3026, !3031}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3023, file: !3019, line: 43, baseType: !171, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3023, file: !3019, line: 45, baseType: !3027, size: 192, offset: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3019, line: 29, size: 192, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3027, file: !3019, line: 30, baseType: !258, size: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3027, file: !3019, line: 32, baseType: !141, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3023, file: !3019, line: 46, baseType: !141, size: 64, offset: 256)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1338, file: !75, line: 1305, baseType: !3018, size: 64, offset: 9024)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1338, file: !75, line: 1306, baseType: !265, size: 128, align: 64, offset: 9088)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1338, file: !75, line: 1307, baseType: !2436, size: 256, offset: 9216)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1338, file: !75, line: 1309, baseType: !414, size: 256, offset: 9472)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1338, file: !75, line: 1314, baseType: !142, size: 32, offset: 9728)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1338, file: !75, line: 1317, baseType: !171, size: 32, align: 512, offset: 10240)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1338, file: !75, line: 1318, baseType: !258, size: 128, offset: 10304)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1338, file: !75, line: 1320, baseType: !171, size: 32, offset: 10432)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1338, file: !75, line: 1321, baseType: !258, size: 128, offset: 10496)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1127, file: !75, line: 656, baseType: !1487, size: 64, offset: 512)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1127, file: !75, line: 659, baseType: !137, size: 64, offset: 576)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1127, file: !75, line: 663, baseType: !136, size: 64, offset: 640)
!3044 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !75, line: 671, baseType: !3045, size: 32, offset: 704)
!3045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !75, line: 671, size: 32, elements: !3046)
!3046 = !{!3047, !3049}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3045, file: !75, line: 672, baseType: !3048, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3045, file: !75, line: 673, baseType: !18, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1127, file: !75, line: 675, baseType: !1201, size: 32, offset: 736)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1127, file: !75, line: 676, baseType: !784, size: 64, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1127, file: !75, line: 677, baseType: !1237, size: 128, offset: 832)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1127, file: !75, line: 678, baseType: !1237, size: 128, offset: 960)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1127, file: !75, line: 679, baseType: !1237, size: 128, offset: 1088)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1127, file: !75, line: 680, baseType: !171, size: 32, offset: 1216)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1127, file: !75, line: 681, baseType: !209, size: 16, offset: 1248)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1127, file: !75, line: 682, baseType: !199, size: 8, offset: 1264)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1127, file: !75, line: 683, baseType: !199, size: 8, offset: 1272)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1127, file: !75, line: 684, baseType: !2806, size: 64, offset: 1280)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1127, file: !75, line: 691, baseType: !136, size: 64, offset: 1344)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1127, file: !75, line: 692, baseType: !913, size: 320, offset: 1408)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1127, file: !75, line: 694, baseType: !136, size: 64, offset: 1728)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1127, file: !75, line: 695, baseType: !136, size: 64, offset: 1792)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1127, file: !75, line: 697, baseType: !826, size: 128, offset: 1856)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1127, file: !75, line: 698, baseType: !258, size: 128, offset: 1984)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1127, file: !75, line: 707, baseType: !258, size: 128, offset: 2112)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1127, file: !75, line: 708, baseType: !258, size: 128, offset: 2240)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !75, line: 709, baseType: !3069, size: 128, offset: 2368)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !75, line: 709, size: 128, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3069, file: !75, line: 710, baseType: !822, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3069, file: !75, line: 711, baseType: !265, size: 128, align: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1127, file: !75, line: 713, baseType: !420, size: 64, offset: 2496)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1127, file: !75, line: 714, baseType: !420, size: 64, offset: 2560)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1127, file: !75, line: 715, baseType: !191, size: 32, offset: 2624)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1127, file: !75, line: 716, baseType: !191, size: 32, offset: 2656)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1127, file: !75, line: 717, baseType: !191, size: 32, offset: 2688)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1127, file: !75, line: 719, baseType: !191, size: 32, offset: 2720)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !75, line: 721, baseType: !3080, size: 64, offset: 2752)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !75, line: 721, size: 64, elements: !3081)
!3081 = !{!3082, !3208}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3080, file: !75, line: 722, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3085)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !75, line: 1914, size: 2112, elements: !3086)
!3086 = !{!3087, !3088, !3092, !3096, !3100, !3101, !3102, !3108, !3121, !3125, !3129, !3130, !3134, !3135, !3139, !3144, !3145, !3149, !3153, !3159, !3160, !3164, !3165, !3171, !3175, !3176, !3181, !3185, !3189, !3193, !3197, !3198, !3204}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3085, file: !75, line: 1915, baseType: !1370, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3085, file: !75, line: 1916, baseType: !3089, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!784, !769, !784, !142}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3085, file: !75, line: 1917, baseType: !3093, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!1279, !769, !243, !1282, !2105}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3085, file: !75, line: 1918, baseType: !3097, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!1279, !769, !223, !1282, !2105}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3085, file: !75, line: 1919, baseType: !1916, size: 64, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3085, file: !75, line: 1920, baseType: !1916, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3085, file: !75, line: 1921, baseType: !3103, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!142, !1919, !3106, !18}
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !75, line: 53, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3085, file: !75, line: 1923, baseType: !3109, size: 64, offset: 448)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!142, !769, !3112}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !75, line: 1858, size: 128, elements: !3114)
!3114 = !{!3115, !3120}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3113, file: !75, line: 1859, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !75, line: 1855, baseType: !3117)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!217, !3112, !223, !142, !784, !274, !18}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3113, file: !75, line: 1860, baseType: !784, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3085, file: !75, line: 1924, baseType: !3122, size: 64, offset: 512)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!2152, !769, !2154}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3085, file: !75, line: 1925, baseType: !3126, size: 64, offset: 576)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!141, !769, !18, !136}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3085, file: !75, line: 1926, baseType: !3126, size: 64, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3085, file: !75, line: 1927, baseType: !3131, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!142, !769, !1626}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3085, file: !75, line: 1928, baseType: !136, size: 64, offset: 768)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3085, file: !75, line: 1929, baseType: !3136, size: 64, offset: 832)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!142, !1126, !769}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3085, file: !75, line: 1930, baseType: !3140, size: 64, offset: 896)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!142, !769, !3143}
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !75, line: 1061, baseType: !137)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3085, file: !75, line: 1931, baseType: !3136, size: 64, offset: 960)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3085, file: !75, line: 1932, baseType: !3146, size: 64, offset: 1024)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!142, !769, !784, !784, !142}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3085, file: !75, line: 1933, baseType: !3150, size: 64, offset: 1088)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!142, !142, !769, !142}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3085, file: !75, line: 1934, baseType: !3154, size: 64, offset: 1152)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!142, !769, !142, !3157}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !75, line: 1063, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3085, file: !75, line: 1935, baseType: !766, size: 64, offset: 1216)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3085, file: !75, line: 1936, baseType: !3161, size: 64, offset: 1280)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!142, !142}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3085, file: !75, line: 1937, baseType: !3154, size: 64, offset: 1344)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3085, file: !75, line: 1938, baseType: !3166, size: 64, offset: 1408)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!1279, !3169, !769, !2105, !1282, !18}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !439, line: 59, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3085, file: !75, line: 1939, baseType: !3172, size: 64, offset: 1472)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!1279, !769, !2105, !3169, !1282, !18}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3085, file: !75, line: 1940, baseType: !1972, size: 64, offset: 1536)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3085, file: !75, line: 1941, baseType: !3177, size: 64, offset: 1600)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!142, !769, !142, !3180, !1893}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3085, file: !75, line: 1942, baseType: !3182, size: 64, offset: 1664)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!141, !769, !142, !784, !784}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3085, file: !75, line: 1944, baseType: !3186, size: 64, offset: 1728)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !2084, !769}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3085, file: !75, line: 1948, baseType: !3190, size: 64, offset: 1792)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!1279, !769, !784, !769, !784, !1282, !18}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3085, file: !75, line: 1950, baseType: !3194, size: 64, offset: 1856)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!784, !769, !784, !769, !784, !784, !18}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3085, file: !75, line: 1953, baseType: !3146, size: 64, offset: 1920)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3085, file: !75, line: 1954, baseType: !3199, size: 64, offset: 1984)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!142, !3202, !18}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !75, line: 1911, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3085, file: !75, line: 1955, baseType: !3205, size: 64, offset: 2048)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!142, !3202, !3106, !18}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3080, file: !75, line: 723, baseType: !2564, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1127, file: !75, line: 725, baseType: !3210, size: 64, offset: 2816)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !75, line: 725, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1127, file: !75, line: 726, baseType: !1488, size: 1536, align: 64, offset: 2880)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1127, file: !75, line: 727, baseType: !258, size: 128, offset: 4416)
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !75, line: 728, baseType: !3215, size: 64, offset: 4544)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !75, line: 728, size: 64, elements: !3216)
!3216 = !{!3217, !3218, !3221, !3222}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3215, file: !75, line: 729, baseType: !3169, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3215, file: !75, line: 730, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !75, line: 730, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3215, file: !75, line: 731, baseType: !243, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3215, file: !75, line: 732, baseType: !18, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1127, file: !75, line: 735, baseType: !145, size: 32, offset: 4608)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1127, file: !75, line: 738, baseType: !145, size: 32, offset: 4640)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1127, file: !75, line: 739, baseType: !2918, size: 64, offset: 4672)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1127, file: !75, line: 750, baseType: !137, size: 64, offset: 4736)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1092, file: !1093, line: 91, baseType: !3228, size: 256, offset: 448)
!3228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !2922)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1092, file: !1093, line: 94, baseType: !3230, size: 64, offset: 704)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3231, line: 25, size: 64, elements: !3232)
!3231 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3232 = !{!3233}
!3233 = !DIDerivedType(tag: DW_TAG_member, scope: !3230, file: !3231, line: 26, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3230, file: !3231, line: 26, size: 64, elements: !3235)
!3235 = !{!3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3234, file: !3231, line: 28, baseType: !275, size: 64, align: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, scope: !3234, file: !3231, line: 30, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3234, file: !3231, line: 30, size: 64, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3238, file: !3231, line: 31, baseType: !171, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3238, file: !3231, line: 32, baseType: !142, size: 32, offset: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1092, file: !1093, line: 95, baseType: !2937, size: 64, offset: 768)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1092, file: !1093, line: 96, baseType: !1337, size: 64, offset: 832)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1092, file: !1093, line: 97, baseType: !136, size: 64, offset: 896)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1092, file: !1093, line: 98, baseType: !137, size: 64, offset: 960)
!3246 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1093, line: 100, baseType: !3247, size: 128, offset: 1024)
!3247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !1093, line: 100, size: 128, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3247, file: !1093, line: 101, baseType: !258, size: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3247, file: !1093, line: 102, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1092, file: !1093, line: 104, baseType: !258, size: 128, offset: 1152)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1092, file: !1093, line: 105, baseType: !258, size: 128, offset: 1280)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1092, file: !1093, line: 113, baseType: !3255, size: 128, offset: 1408)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !1093, line: 109, size: 128, elements: !3256)
!3256 = !{!3257, !3258, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3255, file: !1093, line: 110, baseType: !826, size: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3255, file: !1093, line: 111, baseType: !1102, size: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3255, file: !1093, line: 112, baseType: !265, size: 128, align: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1087, file: !1088, line: 72, baseType: !1337, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1087, file: !1088, line: 73, baseType: !142, size: 32, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1087, file: !1088, line: 74, baseType: !1166, size: 64, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1082, file: !1083, line: 10, baseType: !1091, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !770, file: !75, line: 1015, baseType: !1126, size: 64, offset: 1344)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !770, file: !75, line: 1016, baseType: !3083, size: 64, offset: 1408)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !770, file: !75, line: 1018, baseType: !274, size: 64, offset: 1472)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !770, file: !75, line: 1020, baseType: !137, size: 64, offset: 1536)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !770, file: !75, line: 1023, baseType: !137, size: 64, offset: 1600)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !770, file: !75, line: 1027, baseType: !3270, size: 64, offset: 1664)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !770, file: !75, line: 1029, baseType: !1487, size: 64, offset: 1728)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !770, file: !75, line: 1030, baseType: !1982, size: 32, offset: 1792)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !770, file: !75, line: 1031, baseType: !1982, size: 32, offset: 1824)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !745, file: !46, line: 756, baseType: !136, size: 64, offset: 704)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !745, file: !46, line: 757, baseType: !136, size: 64, offset: 768)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !745, file: !46, line: 760, baseType: !136, size: 64, offset: 832)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !745, file: !46, line: 761, baseType: !136, size: 64, offset: 896)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !745, file: !46, line: 763, baseType: !136, size: 64, offset: 960)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !745, file: !46, line: 764, baseType: !3280, size: 64, offset: 1024)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1641, line: 299, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1641, line: 299, size: 64, elements: !3283)
!3283 = !{!3284}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3282, file: !1641, line: 299, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1646, line: 18, baseType: !136)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !745, file: !46, line: 773, baseType: !191, size: 32, offset: 1088)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !745, file: !46, line: 785, baseType: !191, size: 32, offset: 1120)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !745, file: !46, line: 795, baseType: !3289, size: 64, offset: 1152)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !46, line: 726, size: 128, elements: !3291)
!3291 = !{!3292, !3293}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3290, file: !46, line: 727, baseType: !274, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3290, file: !46, line: 728, baseType: !142, size: 32, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !745, file: !46, line: 801, baseType: !136, size: 64, offset: 1216)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !745, file: !46, line: 804, baseType: !418, size: 64, offset: 1280)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !745, file: !46, line: 806, baseType: !142, size: 32, offset: 1344)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !745, file: !46, line: 808, baseType: !171, size: 32, offset: 1376)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !745, file: !46, line: 823, baseType: !913, size: 320, offset: 1408)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !745, file: !46, line: 825, baseType: !258, size: 128, offset: 1728)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !745, file: !46, line: 845, baseType: !142, size: 32, offset: 1856)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !745, file: !46, line: 849, baseType: !136, size: 64, offset: 1920)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !745, file: !46, line: 850, baseType: !136, size: 64, offset: 1984)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !745, file: !46, line: 852, baseType: !136, size: 64, offset: 2048)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !745, file: !46, line: 853, baseType: !136, size: 64, offset: 2112)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !745, file: !46, line: 854, baseType: !420, size: 64, offset: 2176)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !745, file: !46, line: 855, baseType: !136, size: 64, offset: 2240)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !745, file: !46, line: 856, baseType: !136, size: 64, offset: 2304)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !745, file: !46, line: 857, baseType: !136, size: 64, offset: 2368)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !745, file: !46, line: 858, baseType: !136, size: 64, offset: 2432)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !745, file: !46, line: 865, baseType: !615, size: 32, offset: 2496)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !745, file: !46, line: 867, baseType: !171, size: 32, offset: 2528)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !745, file: !46, line: 869, baseType: !136, size: 64, offset: 2560)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !745, file: !46, line: 869, baseType: !136, size: 64, offset: 2624)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !745, file: !46, line: 869, baseType: !136, size: 64, offset: 2688)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !745, file: !46, line: 869, baseType: !136, size: 64, offset: 2752)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !745, file: !46, line: 870, baseType: !136, size: 64, offset: 2816)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !745, file: !46, line: 870, baseType: !136, size: 64, offset: 2880)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !745, file: !46, line: 870, baseType: !136, size: 64, offset: 2944)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !745, file: !46, line: 871, baseType: !136, size: 64, offset: 3008)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !745, file: !46, line: 871, baseType: !136, size: 64, offset: 3072)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !745, file: !46, line: 871, baseType: !136, size: 64, offset: 3136)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !745, file: !46, line: 871, baseType: !136, size: 64, offset: 3200)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !745, file: !46, line: 873, baseType: !3324, size: 3328, offset: 3264)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 3328, elements: !3325)
!3325 = !{!3326}
!3326 = !DISubrange(count: 52)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !745, file: !46, line: 875, baseType: !3328, size: 1280, offset: 6592)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 1280, elements: !831)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !745, file: !46, line: 877, baseType: !3330, size: 64, offset: 7872)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !46, line: 877, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !745, file: !46, line: 880, baseType: !3333, size: 1088, offset: 7936)
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3334, line: 72, baseType: !3335)
!3334 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3334, line: 23, size: 1088, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3344, !3345, !3346, !3347, !3372, !3373, !3374}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3335, file: !3334, line: 28, baseType: !274, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3335, file: !3334, line: 38, baseType: !420, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3335, file: !3334, line: 40, baseType: !136, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3335, file: !3334, line: 43, baseType: !913, size: 320, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3335, file: !3334, line: 44, baseType: !3342, size: 64, offset: 512)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3334, line: 44, flags: DIFlagFwdDecl)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3335, file: !3334, line: 48, baseType: !136, size: 64, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3335, file: !3334, line: 59, baseType: !414, size: 256, offset: 640)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3335, file: !3334, line: 60, baseType: !137, size: 64, offset: 896)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3335, file: !3334, line: 61, baseType: !3348, size: 64, offset: 960)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3350)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3351, line: 13, size: 1216, elements: !3352)
!3351 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3350, file: !3351, line: 14, baseType: !137, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3350, file: !3351, line: 15, baseType: !136, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3350, file: !3351, line: 17, baseType: !136, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3350, file: !3351, line: 17, baseType: !136, size: 64, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3350, file: !3351, line: 18, baseType: !136, size: 64, offset: 256)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3350, file: !3351, line: 18, baseType: !136, size: 64, offset: 320)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3350, file: !3351, line: 19, baseType: !388, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3350, file: !3351, line: 21, baseType: !141, size: 64, offset: 448)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3350, file: !3351, line: 23, baseType: !141, size: 64, offset: 512)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3350, file: !3351, line: 24, baseType: !141, size: 64, offset: 576)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3350, file: !3351, line: 25, baseType: !141, size: 64, offset: 640)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3350, file: !3351, line: 26, baseType: !141, size: 64, offset: 704)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3350, file: !3351, line: 27, baseType: !141, size: 64, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3350, file: !3351, line: 28, baseType: !141, size: 64, offset: 832)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3350, file: !3351, line: 29, baseType: !141, size: 64, offset: 896)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3350, file: !3351, line: 30, baseType: !141, size: 64, offset: 960)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3350, file: !3351, line: 31, baseType: !141, size: 64, offset: 1024)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3350, file: !3351, line: 32, baseType: !141, size: 64, offset: 1088)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3350, file: !3351, line: 33, baseType: !141, size: 64, offset: 1152)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3335, file: !3334, line: 63, baseType: !191, size: 32, offset: 1024)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3335, file: !3334, line: 69, baseType: !207, size: 16, offset: 1056)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3335, file: !3334, line: 70, baseType: !2329, size: 16, offset: 1072)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !46, line: 882, baseType: !136, size: 64, offset: 9024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !745, file: !46, line: 885, baseType: !171, size: 32, offset: 9088)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !745, file: !46, line: 886, baseType: !3378, size: 64, offset: 9152)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !46, line: 732, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !745, file: !46, line: 901, baseType: !1053, size: 64, offset: 9216)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !745, file: !46, line: 904, baseType: !769, size: 64, offset: 9280)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !745, file: !46, line: 906, baseType: !3383, size: 64, offset: 9344)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !46, line: 906, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !745, file: !46, line: 930, baseType: !191, size: 32, offset: 9408)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !745, file: !46, line: 933, baseType: !191, size: 32, offset: 9440)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !745, file: !46, line: 935, baseType: !3388, size: 64, offset: 9472)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !92, line: 103, size: 64, elements: !3389)
!3389 = !{!3390}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3388, file: !92, line: 104, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !92, line: 101, flags: DIFlagFwdDecl)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !745, file: !46, line: 940, baseType: !418, size: 64, offset: 9536)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !745, file: !46, line: 942, baseType: !2436, size: 256, offset: 9600)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !742, file: !46, line: 986, baseType: !3396, offset: 10240)
!3396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !850)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !438, file: !439, line: 882, baseType: !741, size: 64, offset: 9792)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !438, file: !439, line: 884, baseType: !142, size: 32, offset: 9856)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !438, file: !439, line: 885, baseType: !142, size: 32, offset: 9888)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !438, file: !439, line: 886, baseType: !142, size: 32, offset: 9920)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !438, file: !439, line: 888, baseType: !142, size: 32, offset: 9952)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !438, file: !439, line: 890, baseType: !136, size: 64, offset: 9984)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !438, file: !439, line: 893, baseType: !18, size: 32, offset: 10048)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !438, file: !439, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !438, file: !439, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !438, file: !439, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !438, file: !439, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !438, file: !439, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !438, file: !439, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !438, file: !439, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !438, file: !439, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !438, file: !439, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !438, file: !439, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !438, file: !439, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !438, file: !439, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !438, file: !439, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !438, file: !439, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !438, file: !439, line: 969, baseType: !136, size: 64, offset: 10176)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !438, file: !439, line: 971, baseType: !3420, size: 448, offset: 10240)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !86, line: 25, size: 448, elements: !3421)
!3421 = !{!3422, !3423, !3428}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3420, file: !86, line: 26, baseType: !136, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3420, file: !86, line: 27, baseType: !3424, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!141, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !86, line: 28, baseType: !3429, size: 320, offset: 128)
!3429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3420, file: !86, line: 28, size: 320, elements: !3430)
!3430 = !{!3431, !3441, !3466}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3429, file: !86, line: 37, baseType: !3432, size: 320)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3429, file: !86, line: 30, size: 320, elements: !3433)
!3433 = !{!3434, !3436, !3437, !3438, !3439, !3440}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3432, file: !86, line: 31, baseType: !3435, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3432, file: !86, line: 32, baseType: !143, size: 32, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3432, file: !86, line: 33, baseType: !143, size: 32, offset: 96)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3432, file: !86, line: 34, baseType: !143, size: 32, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3432, file: !86, line: 35, baseType: !274, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3432, file: !86, line: 36, baseType: !3435, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3429, file: !86, line: 47, baseType: !3442, size: 192)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3429, file: !86, line: 39, size: 192, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3465}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3442, file: !86, line: 40, baseType: !606, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3442, file: !86, line: 41, baseType: !85, size: 32, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3442, file: !86, line: 42, baseType: !3447, size: 64, offset: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3442, file: !86, line: 42, size: 64, elements: !3448)
!3448 = !{!3449, !3457}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3447, file: !86, line: 43, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3452, line: 7, size: 128, elements: !3453)
!3452 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3453 = !{!3454, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3451, file: !3452, line: 8, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !608, line: 93, baseType: !253)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3451, file: !3452, line: 9, baseType: !253, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3447, file: !86, line: 44, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3460, line: 7, size: 64, elements: !3461)
!3460 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3461 = !{!3462, !3464}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3459, file: !3460, line: 8, baseType: !3463, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3460, line: 5, baseType: !905)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3459, file: !3460, line: 9, baseType: !905, size: 32, offset: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3442, file: !86, line: 46, baseType: !274, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3429, file: !86, line: 55, baseType: !3467, size: 256)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3429, file: !86, line: 49, size: 256, elements: !3468)
!3468 = !{!3469, !3472, !3473, !3474, !3475}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3467, file: !86, line: 50, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !86, line: 14, flags: DIFlagFwdDecl)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3467, file: !86, line: 51, baseType: !142, size: 32, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3467, file: !86, line: 52, baseType: !142, size: 32, offset: 96)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3467, file: !86, line: 53, baseType: !136, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3467, file: !86, line: 54, baseType: !136, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !438, file: !439, line: 973, baseType: !3477, size: 32, offset: 10688)
!3477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !135, line: 27, baseType: !3478)
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !608, line: 28, baseType: !142)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !438, file: !439, line: 974, baseType: !3477, size: 32, offset: 10720)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !438, file: !439, line: 978, baseType: !136, size: 64, offset: 10752)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !438, file: !439, line: 987, baseType: !437, size: 64, offset: 10816)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !438, file: !439, line: 990, baseType: !437, size: 64, offset: 10880)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !438, file: !439, line: 995, baseType: !258, size: 128, offset: 10944)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !438, file: !439, line: 996, baseType: !258, size: 128, offset: 11072)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !438, file: !439, line: 997, baseType: !437, size: 64, offset: 11200)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !438, file: !439, line: 1005, baseType: !258, size: 128, offset: 11264)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !438, file: !439, line: 1006, baseType: !258, size: 128, offset: 11392)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !438, file: !439, line: 1009, baseType: !814, size: 64, offset: 11520)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !438, file: !439, line: 1010, baseType: !3490, size: 512, offset: 11584)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 512, elements: !831)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !438, file: !439, line: 1011, baseType: !258, size: 128, offset: 12096)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !438, file: !439, line: 1012, baseType: !258, size: 128, offset: 12224)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !438, file: !439, line: 1014, baseType: !2185, size: 64, offset: 12352)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !438, file: !439, line: 1017, baseType: !2322, size: 64, offset: 12416)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !438, file: !439, line: 1020, baseType: !2322, size: 64, offset: 12480)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !438, file: !439, line: 1023, baseType: !137, size: 64, offset: 12544)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !438, file: !439, line: 1025, baseType: !274, size: 64, offset: 12608)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !438, file: !439, line: 1026, baseType: !274, size: 64, offset: 12672)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !438, file: !439, line: 1031, baseType: !274, size: 64, offset: 12736)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !438, file: !439, line: 1032, baseType: !3501, size: 192, offset: 12800)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !439, line: 324, size: 192, elements: !3502)
!3502 = !{!3503, !3504, !3505}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3501, file: !439, line: 326, baseType: !274, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3501, file: !439, line: 327, baseType: !274, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3501, file: !439, line: 328, baseType: !425, size: 32, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !438, file: !439, line: 1041, baseType: !136, size: 64, offset: 12992)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !438, file: !439, line: 1042, baseType: !136, size: 64, offset: 13056)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !438, file: !439, line: 1045, baseType: !274, size: 64, offset: 13120)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !438, file: !439, line: 1048, baseType: !274, size: 64, offset: 13184)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !438, file: !439, line: 1051, baseType: !136, size: 64, offset: 13248)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !438, file: !439, line: 1052, baseType: !136, size: 64, offset: 13312)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !438, file: !439, line: 1055, baseType: !3513, size: 640, offset: 13376)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3514, line: 132, size: 640, elements: !3515)
!3514 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3515 = !{!3516, !3522, !3523}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3513, file: !3514, line: 133, baseType: !3517, size: 576)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3518, size: 576, elements: !810)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3514, line: 117, size: 192, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3518, file: !3514, line: 118, baseType: !274, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3518, file: !3514, line: 119, baseType: !621, size: 128, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3513, file: !3514, line: 134, baseType: !18, size: 32, offset: 576)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3513, file: !3514, line: 135, baseType: !18, size: 32, offset: 608)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !438, file: !439, line: 1058, baseType: !3525, size: 448, offset: 14016)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3514, line: 144, size: 448, elements: !3526)
!3526 = !{!3527, !3528, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3525, file: !3514, line: 145, baseType: !265, size: 128, align: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3525, file: !3514, line: 146, baseType: !414, size: 256, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3525, file: !3514, line: 147, baseType: !18, size: 32, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !438, file: !439, line: 1064, baseType: !864, size: 64, offset: 14464)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !438, file: !439, line: 1067, baseType: !864, size: 64, offset: 14528)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !438, file: !439, line: 1070, baseType: !864, size: 64, offset: 14592)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !438, file: !439, line: 1074, baseType: !897, size: 64, offset: 14656)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !438, file: !439, line: 1084, baseType: !3535, size: 128, offset: 14720)
!3535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2931)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !438, file: !439, line: 1086, baseType: !3537, size: 64, offset: 14848)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !439, line: 55, flags: DIFlagFwdDecl)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !438, file: !439, line: 1089, baseType: !3540, size: 64, offset: 14912)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3541, line: 12, size: 64, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3542 = !{!3543}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3540, file: !3541, line: 13, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3541, line: 8, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !438, file: !439, line: 1090, baseType: !3547, size: 128, offset: 14976)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3548, line: 13, size: 128, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3549 = !{!3550}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3547, file: !3548, line: 14, baseType: !258, size: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !438, file: !439, line: 1097, baseType: !3552, size: 64, offset: 15104)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !439, line: 50, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !438, file: !439, line: 1100, baseType: !3555, size: 64, offset: 15168)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !439, line: 1100, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !438, file: !439, line: 1103, baseType: !3558, size: 64, offset: 15232)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !439, line: 53, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !438, file: !439, line: 1107, baseType: !3561, size: 64, offset: 15296)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !439, line: 56, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !438, file: !439, line: 1110, baseType: !3564, size: 64, offset: 15360)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3566, line: 93, size: 8768, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3615, !3624, !3625, !3627, !3628, !3629, !3632, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3670, !3671, !3678, !3688, !3691, !3692, !3695, !3696, !3697, !3698, !3699, !3700}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3565, file: !3566, line: 94, baseType: !284, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3565, file: !3566, line: 95, baseType: !191, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3565, file: !3566, line: 96, baseType: !142, size: 32, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3565, file: !3566, line: 97, baseType: !142, size: 32, offset: 96)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3565, file: !3566, line: 98, baseType: !258, size: 128, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3565, file: !3566, line: 100, baseType: !835, size: 192, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3565, file: !3566, line: 103, baseType: !437, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3565, file: !3566, line: 106, baseType: !3576, size: 192, offset: 512)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1058, line: 32, size: 192, elements: !3577)
!3577 = !{!3578, !3579}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3576, file: !1058, line: 33, baseType: !258, size: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3576, file: !1058, line: 34, baseType: !3580, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3581, line: 25, baseType: !3582)
!3581 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3581, line: 23, size: 64, elements: !3583)
!3583 = !{!3584}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3582, file: !3581, line: 24, baseType: !692, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3565, file: !3566, line: 109, baseType: !822, size: 64, offset: 704)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3565, file: !3566, line: 112, baseType: !142, size: 32, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3565, file: !3566, line: 114, baseType: !142, size: 32, offset: 800)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3565, file: !3566, line: 115, baseType: !437, size: 64, offset: 832)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3565, file: !3566, line: 118, baseType: !142, size: 32, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3565, file: !3566, line: 119, baseType: !18, size: 32, offset: 928)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3565, file: !3566, line: 121, baseType: !3592, size: 64, offset: 960)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3566, line: 80, size: 448, elements: !3594)
!3594 = !{!3595, !3596, !3602}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3593, file: !3566, line: 81, baseType: !191, size: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3593, file: !3566, line: 82, baseType: !3597, size: 128, offset: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3566, line: 75, size: 128, elements: !3598)
!3598 = !{!3599, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3597, file: !3566, line: 76, baseType: !437, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3597, file: !3566, line: 77, baseType: !3601, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3593, file: !3566, line: 83, baseType: !1591, size: 256, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3565, file: !3566, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3565, file: !3566, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3565, file: !3566, line: 138, baseType: !18, size: 32, offset: 1056)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3565, file: !3566, line: 139, baseType: !258, size: 128, offset: 1088)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3565, file: !3566, line: 142, baseType: !561, size: 512, offset: 1216)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3565, file: !3566, line: 143, baseType: !249, size: 64, offset: 1728)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3565, file: !3566, line: 150, baseType: !3610, size: 256, offset: 1792)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3611, size: 256, elements: !2312)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3566, line: 38, size: 128, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3611, file: !3566, line: 39, baseType: !274, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3611, file: !3566, line: 40, baseType: !274, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3565, file: !3566, line: 156, baseType: !3616, size: 192, offset: 2048)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3566, line: 66, size: 192, elements: !3617)
!3617 = !{!3618}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3616, file: !3566, line: 67, baseType: !3619, size: 192)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3566, line: 47, size: 192, elements: !3620)
!3620 = !{!3621, !3622, !3623}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3619, file: !3566, line: 48, baseType: !420, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3619, file: !3566, line: 49, baseType: !420, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3619, file: !3566, line: 50, baseType: !420, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3565, file: !3566, line: 160, baseType: !3513, size: 640, offset: 2240)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3565, file: !3566, line: 163, baseType: !3626, size: 256, offset: 2880)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 256, elements: !831)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3565, file: !3566, line: 169, baseType: !814, size: 64, offset: 3136)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3565, file: !3566, line: 172, baseType: !142, size: 32, offset: 3200)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3565, file: !3566, line: 174, baseType: !3630, size: 64, offset: 3264)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3566, line: 174, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3565, file: !3566, line: 185, baseType: !3633, size: 64, offset: 3328)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !611, line: 860, baseType: !3634)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 853, size: 64, elements: !3635)
!3635 = !{!3636, !3637}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3634, file: !611, line: 858, baseType: !1097, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3634, file: !611, line: 859, baseType: !171, size: 32, offset: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3565, file: !3566, line: 186, baseType: !274, size: 64, offset: 3392)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3565, file: !3566, line: 186, baseType: !274, size: 64, offset: 3456)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3565, file: !3566, line: 186, baseType: !274, size: 64, offset: 3520)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3565, file: !3566, line: 186, baseType: !274, size: 64, offset: 3584)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3565, file: !3566, line: 187, baseType: !274, size: 64, offset: 3648)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3565, file: !3566, line: 188, baseType: !274, size: 64, offset: 3712)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3565, file: !3566, line: 189, baseType: !3501, size: 192, offset: 3776)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3565, file: !3566, line: 190, baseType: !136, size: 64, offset: 3968)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3565, file: !3566, line: 190, baseType: !136, size: 64, offset: 4032)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3565, file: !3566, line: 190, baseType: !136, size: 64, offset: 4096)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3565, file: !3566, line: 190, baseType: !136, size: 64, offset: 4160)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3565, file: !3566, line: 191, baseType: !136, size: 64, offset: 4224)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3565, file: !3566, line: 191, baseType: !136, size: 64, offset: 4288)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3565, file: !3566, line: 191, baseType: !136, size: 64, offset: 4352)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3565, file: !3566, line: 191, baseType: !136, size: 64, offset: 4416)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3565, file: !3566, line: 192, baseType: !136, size: 64, offset: 4480)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3565, file: !3566, line: 192, baseType: !136, size: 64, offset: 4544)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3565, file: !3566, line: 192, baseType: !136, size: 64, offset: 4608)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3565, file: !3566, line: 192, baseType: !136, size: 64, offset: 4672)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3565, file: !3566, line: 193, baseType: !136, size: 64, offset: 4736)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3565, file: !3566, line: 193, baseType: !136, size: 64, offset: 4800)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3565, file: !3566, line: 194, baseType: !3660, size: 448, offset: 4864)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3661, line: 12, size: 448, elements: !3662)
!3661 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668, !3669}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3660, file: !3661, line: 15, baseType: !274, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3660, file: !3661, line: 17, baseType: !274, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3660, file: !3661, line: 19, baseType: !274, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3660, file: !3661, line: 21, baseType: !274, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3660, file: !3661, line: 29, baseType: !274, size: 64, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3660, file: !3661, line: 35, baseType: !274, size: 64, offset: 320)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3660, file: !3661, line: 44, baseType: !274, size: 64, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3565, file: !3566, line: 202, baseType: !276, size: 64, offset: 5312)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3565, file: !3566, line: 213, baseType: !3672, size: 2048, offset: 5376)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3673, size: 2048, elements: !2931)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3674, line: 43, size: 128, elements: !3675)
!3674 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3675 = !{!3676, !3677}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3673, file: !3674, line: 44, baseType: !1284, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3673, file: !3674, line: 45, baseType: !1284, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3565, file: !3566, line: 216, baseType: !3679, size: 448, offset: 7424)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3566, line: 30, size: 448, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3684, !3685, !3686, !3687}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3679, file: !3566, line: 31, baseType: !142, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3679, file: !3566, line: 32, baseType: !141, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3679, file: !3566, line: 33, baseType: !136, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3679, file: !3566, line: 34, baseType: !274, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3679, file: !3566, line: 34, baseType: !274, size: 64, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3679, file: !3566, line: 35, baseType: !136, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3679, file: !3566, line: 35, baseType: !136, size: 64, offset: 384)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3565, file: !3566, line: 219, baseType: !3689, size: 64, offset: 7872)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3566, line: 219, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3565, file: !3566, line: 222, baseType: !18, size: 32, offset: 7936)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3565, file: !3566, line: 223, baseType: !3693, size: 64, offset: 8000)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3566, line: 223, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3565, file: !3566, line: 230, baseType: !217, size: 8, offset: 8064)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3565, file: !3566, line: 231, baseType: !941, size: 16, offset: 8080)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3565, file: !3566, line: 232, baseType: !941, size: 16, offset: 8096)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3565, file: !3566, line: 234, baseType: !741, size: 64, offset: 8128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3565, file: !3566, line: 237, baseType: !414, size: 256, offset: 8192)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3565, file: !3566, line: 243, baseType: !913, size: 320, offset: 8448)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !438, file: !439, line: 1111, baseType: !3702, size: 64, offset: 15424)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3566, line: 20, size: 16640, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3708}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3703, file: !3566, line: 21, baseType: !171, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3703, file: !3566, line: 22, baseType: !284, size: 32, offset: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3703, file: !3566, line: 23, baseType: !835, size: 192, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3703, file: !3566, line: 24, baseType: !3709, size: 16384, offset: 256)
!3709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3710, size: 16384, elements: !1426)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1058, line: 51, size: 256, elements: !3711)
!3711 = !{!3712}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3710, file: !1058, line: 52, baseType: !3713, size: 256)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1058, line: 37, size: 256, elements: !3714)
!3714 = !{!3715, !3722, !3723, !3727}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3713, file: !1058, line: 39, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3717, line: 83, baseType: !3718)
!3717 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3717, line: 82, baseType: !3720)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !142}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3713, file: !1058, line: 40, baseType: !136, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3713, file: !1058, line: 46, baseType: !3724, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3717, line: 86, baseType: !3725)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3717, line: 85, baseType: !2539)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3713, file: !1058, line: 48, baseType: !3580, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !438, file: !439, line: 1112, baseType: !3580, size: 64, offset: 15488)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !438, file: !439, line: 1113, baseType: !3580, size: 64, offset: 15552)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !438, file: !439, line: 1115, baseType: !3580, size: 64, offset: 15616)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !438, file: !439, line: 1116, baseType: !3576, size: 192, offset: 15680)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !438, file: !439, line: 1117, baseType: !136, size: 64, offset: 15872)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !438, file: !439, line: 1118, baseType: !1282, size: 64, offset: 15936)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !438, file: !439, line: 1119, baseType: !18, size: 32, offset: 16000)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !438, file: !439, line: 1121, baseType: !268, size: 64, offset: 16064)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !438, file: !439, line: 1125, baseType: !3737, size: 64, offset: 16128)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !439, line: 43, flags: DIFlagFwdDecl)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !438, file: !439, line: 1127, baseType: !854, size: 32, offset: 16192)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !438, file: !439, line: 1128, baseType: !18, size: 32, offset: 16224)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !438, file: !439, line: 1130, baseType: !3742, size: 128, offset: 16256)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3743, line: 37, size: 128, elements: !3744)
!3743 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3744 = !{!3745, !3746, !3747}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3742, file: !3743, line: 38, baseType: !142, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3742, file: !3743, line: 39, baseType: !191, size: 32, offset: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3742, file: !3743, line: 40, baseType: !3748, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3743, line: 24, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !438, file: !439, line: 1131, baseType: !3751, size: 256, offset: 16384)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3752, line: 12, size: 256, elements: !3753)
!3752 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3753 = !{!3754, !3755, !3756, !3757}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3751, file: !3752, line: 13, baseType: !243, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3751, file: !3752, line: 14, baseType: !136, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3751, file: !3752, line: 15, baseType: !136, size: 64, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3751, file: !3752, line: 16, baseType: !217, size: 8, offset: 192)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !438, file: !439, line: 1134, baseType: !274, size: 64, offset: 16640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !438, file: !439, line: 1135, baseType: !274, size: 64, offset: 16704)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !438, file: !439, line: 1138, baseType: !171, size: 32, offset: 16768)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !438, file: !439, line: 1141, baseType: !425, size: 32, offset: 16800)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !438, file: !439, line: 1143, baseType: !3763, size: 64, offset: 16832)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !439, line: 735, size: 64, elements: !3764)
!3764 = !{!3765}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3763, file: !439, line: 736, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !438, file: !439, line: 1147, baseType: !624, size: 128, offset: 16896)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !438, file: !439, line: 1149, baseType: !437, size: 64, offset: 17024)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !438, file: !439, line: 1151, baseType: !3770, size: 64, offset: 17088)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !439, line: 1151, flags: DIFlagFwdDecl)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !438, file: !439, line: 1188, baseType: !137, size: 64, offset: 17152)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !438, file: !439, line: 1191, baseType: !3774, size: 64, offset: 17216)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !439, line: 44, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !438, file: !439, line: 1194, baseType: !3777, size: 64, offset: 17280)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !439, line: 45, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !438, file: !439, line: 1197, baseType: !3780, size: 64, offset: 17344)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !439, line: 61, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !438, file: !439, line: 1199, baseType: !3783, size: 64, offset: 17408)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3785, line: 99, size: 128, elements: !3786)
!3785 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3786 = !{!3787, !3788, !3789}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3784, file: !3785, line: 100, baseType: !418, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3784, file: !3785, line: 101, baseType: !191, size: 32, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3784, file: !3785, line: 103, baseType: !209, size: 16, offset: 96)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !438, file: !439, line: 1202, baseType: !3791, size: 64, offset: 17472)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !439, line: 48, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !438, file: !439, line: 1205, baseType: !136, size: 64, offset: 17536)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !438, file: !439, line: 1206, baseType: !3795, size: 64, offset: 17600)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1058, line: 14, baseType: !3797)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1058, line: 12, size: 384, elements: !3798)
!3798 = !{!3799}
!3799 = !DIDerivedType(tag: DW_TAG_member, scope: !3797, file: !1058, line: 13, baseType: !3800, size: 384)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3797, file: !1058, line: 13, size: 384, elements: !3801)
!3801 = !{!3802, !3803, !3804, !3805}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3800, file: !1058, line: 13, baseType: !142, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3800, file: !1058, line: 13, baseType: !142, size: 32, offset: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3800, file: !1058, line: 13, baseType: !142, size: 32, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3800, file: !1058, line: 13, baseType: !3806, size: 256, offset: 128)
!3806 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3807, line: 37, size: 256, elements: !3808)
!3807 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3808 = !{!3809, !3814, !3827, !3833, !3842, !3869, !3874}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3806, file: !3807, line: 42, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3807, line: 39, size: 64, elements: !3811)
!3811 = !{!3812, !3813}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3810, file: !3807, line: 40, baseType: !3478, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3810, file: !3807, line: 41, baseType: !860, size: 32, offset: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3806, file: !3807, line: 50, baseType: !3815, size: 192)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3807, line: 45, size: 192, elements: !3816)
!3816 = !{!3817, !3819, !3820, !3826}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3815, file: !3807, line: 46, baseType: !3818, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !608, line: 95, baseType: !142)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3815, file: !3807, line: 47, baseType: !142, size: 32, offset: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3815, file: !3807, line: 48, baseType: !3821, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3807, line: 11, baseType: !3822)
!3822 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3807, line: 8, size: 64, elements: !3823)
!3823 = !{!3824, !3825}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3822, file: !3807, line: 9, baseType: !142, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3822, file: !3807, line: 10, baseType: !137, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3815, file: !3807, line: 49, baseType: !142, size: 32, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3806, file: !3807, line: 57, baseType: !3828, size: 128)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3807, line: 53, size: 128, elements: !3829)
!3829 = !{!3830, !3831, !3832}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3828, file: !3807, line: 54, baseType: !3478, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3828, file: !3807, line: 55, baseType: !860, size: 32, offset: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3828, file: !3807, line: 56, baseType: !3821, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3806, file: !3807, line: 66, baseType: !3834, size: 256)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3807, line: 60, size: 256, elements: !3835)
!3835 = !{!3836, !3837, !3838, !3839, !3841}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3834, file: !3807, line: 61, baseType: !3478, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3834, file: !3807, line: 62, baseType: !860, size: 32, offset: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3834, file: !3807, line: 63, baseType: !142, size: 32, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3834, file: !3807, line: 64, baseType: !3840, size: 64, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !608, line: 94, baseType: !1281)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3834, file: !3807, line: 65, baseType: !3840, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3806, file: !3807, line: 105, baseType: !3843, size: 256)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3807, line: 69, size: 256, elements: !3844)
!3844 = !{!3845, !3846}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3843, file: !3807, line: 70, baseType: !137, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, scope: !3843, file: !3807, line: 79, baseType: !3847, size: 192, offset: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3843, file: !3807, line: 79, size: 192, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3858, !3863}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3847, file: !3807, line: 81, baseType: !142, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3847, file: !3807, line: 86, baseType: !941, size: 16)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3847, file: !3807, line: 92, baseType: !3852, size: 192)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3807, line: 88, size: 192, elements: !3853)
!3853 = !{!3854, !3856, !3857}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3852, file: !3807, line: 89, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !602)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3852, file: !3807, line: 90, baseType: !137, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3852, file: !3807, line: 91, baseType: !137, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3847, file: !3807, line: 97, baseType: !3859, size: 96)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3807, line: 94, size: 96, elements: !3860)
!3860 = !{!3861, !3862}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3859, file: !3807, line: 95, baseType: !3855, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3859, file: !3807, line: 96, baseType: !145, size: 32, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3847, file: !3807, line: 103, baseType: !3864, size: 128)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !3807, line: 99, size: 128, elements: !3865)
!3865 = !{!3866, !3867, !3868}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3864, file: !3807, line: 100, baseType: !136, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3864, file: !3807, line: 101, baseType: !145, size: 32, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3864, file: !3807, line: 102, baseType: !145, size: 32, offset: 96)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3806, file: !3807, line: 111, baseType: !3870, size: 128)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3807, line: 108, size: 128, elements: !3871)
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3870, file: !3807, line: 109, baseType: !141, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3870, file: !3807, line: 110, baseType: !142, size: 32, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3806, file: !3807, line: 118, baseType: !3875, size: 128)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !3807, line: 114, size: 128, elements: !3876)
!3876 = !{!3877, !3878, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3875, file: !3807, line: 115, baseType: !137, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3875, file: !3807, line: 116, baseType: !142, size: 32, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3875, file: !3807, line: 117, baseType: !18, size: 32, offset: 96)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !438, file: !439, line: 1208, baseType: !3660, size: 448, offset: 17664)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !438, file: !439, line: 1215, baseType: !274, size: 64, offset: 18112)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !438, file: !439, line: 1217, baseType: !274, size: 64, offset: 18176)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !438, file: !439, line: 1219, baseType: !274, size: 64, offset: 18240)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !438, file: !439, line: 1223, baseType: !3885, size: 64, offset: 18304)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3886, line: 99, baseType: !3887)
!3886 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3886, line: 99, size: 64, elements: !3888)
!3888 = !{!3889}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3887, file: !3886, line: 99, baseType: !692, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !438, file: !439, line: 1225, baseType: !1097, size: 32, offset: 18368)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !438, file: !439, line: 1226, baseType: !142, size: 32, offset: 18400)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !438, file: !439, line: 1227, baseType: !142, size: 32, offset: 18432)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !438, file: !439, line: 1231, baseType: !3894, size: 64, offset: 18496)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !439, line: 1231, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !438, file: !439, line: 1233, baseType: !258, size: 128, offset: 18560)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !438, file: !439, line: 1240, baseType: !3898, size: 64, offset: 18688)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !439, line: 62, flags: DIFlagFwdDecl)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !438, file: !439, line: 1242, baseType: !3901, size: 64, offset: 18752)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !439, line: 1242, flags: DIFlagFwdDecl)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !438, file: !439, line: 1244, baseType: !258, size: 128, offset: 18816)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !438, file: !439, line: 1245, baseType: !3905, size: 64, offset: 18944)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !439, line: 51, flags: DIFlagFwdDecl)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !438, file: !439, line: 1246, baseType: !414, size: 256, offset: 19008)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !438, file: !439, line: 1247, baseType: !18, size: 32, offset: 19264)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !438, file: !439, line: 1250, baseType: !3910, size: 64, offset: 19328)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !439, line: 57, flags: DIFlagFwdDecl)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !438, file: !439, line: 1251, baseType: !414, size: 256, offset: 19392)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !438, file: !439, line: 1252, baseType: !258, size: 128, offset: 19648)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !438, file: !439, line: 1259, baseType: !1719, size: 64, offset: 19776)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !438, file: !439, line: 1260, baseType: !941, size: 16, offset: 19840)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !438, file: !439, line: 1261, baseType: !941, size: 16, offset: 19856)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !438, file: !439, line: 1314, baseType: !3918, size: 64, offset: 19904)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3920, line: 62, size: 256, align: 256, elements: !3921)
!3920 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927, !3928}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3919, file: !3920, line: 75, baseType: !145, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3919, file: !3920, line: 90, baseType: !145, size: 32, offset: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3919, file: !3920, line: 112, baseType: !275, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3919, file: !3920, line: 132, baseType: !145, size: 32, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3919, file: !3920, line: 140, baseType: !145, size: 32, offset: 160)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3919, file: !3920, line: 149, baseType: !145, size: 32, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3919, file: !3920, line: 154, baseType: !3929, offset: 224)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !850)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !438, file: !439, line: 1315, baseType: !143, size: 32, offset: 19968)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !438, file: !439, line: 1316, baseType: !143, size: 32, offset: 20000)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !438, file: !439, line: 1321, baseType: !136, size: 64, offset: 20032)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !438, file: !439, line: 1325, baseType: !142, size: 32, offset: 20096)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !438, file: !439, line: 1326, baseType: !142, size: 32, offset: 20128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !438, file: !439, line: 1327, baseType: !142, size: 32, offset: 20160)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !438, file: !439, line: 1328, baseType: !142, size: 32, offset: 20192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !438, file: !439, line: 1329, baseType: !265, size: 128, align: 64, offset: 20224)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !438, file: !439, line: 1332, baseType: !3939, size: 128, offset: 20352)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3940, line: 51, size: 128, elements: !3941)
!3940 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3941 = !{!3942, !3947, !3948}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3939, file: !3940, line: 60, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3944, line: 7, size: 64, elements: !3945)
!3944 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3945 = !{!3946}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3943, file: !3944, line: 12, baseType: !689, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3939, file: !3940, line: 63, baseType: !217, size: 8, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3939, file: !3940, line: 70, baseType: !217, size: 8, offset: 72)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !438, file: !439, line: 1335, baseType: !3169, size: 64, offset: 20480)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !438, file: !439, line: 1337, baseType: !3951, size: 128, offset: 20544)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3940, line: 39, size: 128, elements: !3952)
!3952 = !{!3953, !3954, !3955}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3951, file: !3940, line: 40, baseType: !1507, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3951, file: !3940, line: 42, baseType: !145, size: 32, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3951, file: !3940, line: 43, baseType: !145, size: 32, offset: 96)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !438, file: !439, line: 1340, baseType: !3957, size: 64, offset: 20672)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !439, line: 69, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !438, file: !439, line: 1351, baseType: !142, size: 32, offset: 20736)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !438, file: !439, line: 1352, baseType: !142, size: 32, offset: 20768)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !438, file: !439, line: 1354, baseType: !136, size: 64, offset: 20800)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !438, file: !439, line: 1364, baseType: !274, size: 64, offset: 20864)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !438, file: !439, line: 1365, baseType: !274, size: 64, offset: 20928)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !438, file: !439, line: 1412, baseType: !136, size: 64, offset: 20992)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !438, file: !439, line: 1453, baseType: !3966, size: 64, offset: 21056)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !439, line: 1453, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !438, file: !439, line: 1457, baseType: !3969, size: 64, offset: 21120)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !92, line: 61, size: 576, elements: !3971)
!3971 = !{!3972, !3973, !3992, !3995, !3996, !4029, !4039}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3970, file: !92, line: 62, baseType: !91, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, scope: !3970, file: !92, line: 64, baseType: !3974, size: 192, offset: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3970, file: !92, line: 64, size: 192, elements: !3975)
!3975 = !{!3976, !3987}
!3976 = !DIDerivedType(tag: DW_TAG_member, scope: !3974, file: !92, line: 65, baseType: !3977, size: 192)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3974, file: !92, line: 65, size: 192, elements: !3978)
!3978 = !{!3979, !3986}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3977, file: !92, line: 66, baseType: !3980, size: 128)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3981, line: 50, size: 128, elements: !3982)
!3981 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3980, file: !3981, line: 52, baseType: !136, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3980, file: !3981, line: 54, baseType: !18, size: 32, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3980, file: !3981, line: 55, baseType: !18, size: 32, offset: 96)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3977, file: !92, line: 67, baseType: !136, size: 64, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, scope: !3974, file: !92, line: 70, baseType: !3988, size: 192)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3974, file: !92, line: 70, size: 192, elements: !3989)
!3989 = !{!3990, !3991}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3988, file: !92, line: 71, baseType: !265, size: 128, align: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3988, file: !92, line: 72, baseType: !136, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3970, file: !92, line: 76, baseType: !3993, size: 64, offset: 256)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !92, line: 76, flags: DIFlagFwdDecl)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3970, file: !92, line: 77, baseType: !136, size: 64, offset: 320)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3970, file: !92, line: 79, baseType: !3997, size: 64, offset: 384)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3981, line: 25, size: 256, elements: !3999)
!3999 = !{!4000, !4006, !4010}
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !3998, file: !3981, line: 26, baseType: !4001, size: 128)
!4001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3998, file: !3981, line: 26, size: 128, elements: !4002)
!4002 = !{!4003, !4005}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4001, file: !3981, line: 27, baseType: !4004, size: 128)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 128, elements: !2931)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4001, file: !3981, line: 28, baseType: !4004, size: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3998, file: !3981, line: 31, baseType: !4007, size: 64, offset: 128)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4009)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3981, line: 23, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_member, scope: !3998, file: !3981, line: 33, baseType: !4011, size: 64, offset: 192)
!4011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3998, file: !3981, line: 33, size: 64, elements: !4012)
!4012 = !{!4013, !4019, !4024}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4011, file: !3981, line: 38, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4011, file: !3981, line: 34, size: 64, elements: !4015)
!4015 = !{!4016, !4017, !4018}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4014, file: !3981, line: 35, baseType: !905, size: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4014, file: !3981, line: 36, baseType: !199, size: 8, offset: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4014, file: !3981, line: 37, baseType: !199, size: 8, offset: 40)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4011, file: !3981, line: 42, baseType: !4020, size: 16)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4011, file: !3981, line: 39, size: 16, elements: !4021)
!4021 = !{!4022, !4023}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4020, file: !3981, line: 40, baseType: !199, size: 8)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4020, file: !3981, line: 41, baseType: !199, size: 8, offset: 8)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4011, file: !3981, line: 46, baseType: !4025, size: 16)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4011, file: !3981, line: 43, size: 16, elements: !4026)
!4026 = !{!4027, !4028}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4025, file: !3981, line: 44, baseType: !199, size: 8)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4025, file: !3981, line: 45, baseType: !199, size: 8, offset: 8)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3970, file: !92, line: 81, baseType: !4030, size: 64, offset: 448)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !92, line: 85, size: 384, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4038}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4031, file: !92, line: 86, baseType: !3993, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4031, file: !92, line: 87, baseType: !136, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4031, file: !92, line: 88, baseType: !136, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4031, file: !92, line: 89, baseType: !136, size: 64, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4031, file: !92, line: 90, baseType: !217, size: 8, offset: 256)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4031, file: !92, line: 92, baseType: !4030, size: 64, offset: 320)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3970, file: !92, line: 82, baseType: !18, size: 32, offset: 512)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !438, file: !439, line: 1463, baseType: !4041, offset: 21184)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !439, line: 739, elements: !762)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !438, file: !439, line: 1470, baseType: !265, size: 128, align: 64, offset: 21184)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !438, file: !439, line: 1471, baseType: !284, size: 32, offset: 21312)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !438, file: !439, line: 1472, baseType: !142, size: 32, offset: 21344)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !438, file: !439, line: 1474, baseType: !437, size: 64, offset: 21376)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !438, file: !439, line: 1475, baseType: !2424, size: 320, offset: 21440)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !438, file: !439, line: 1478, baseType: !4048, size: 64, offset: 21760)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4050, line: 49, size: 512, elements: !4051)
!4050 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4061}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4049, file: !4050, line: 50, baseType: !4048, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4049, file: !4050, line: 51, baseType: !137, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4049, file: !4050, line: 52, baseType: !136, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4049, file: !4050, line: 53, baseType: !136, size: 64, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4049, file: !4050, line: 54, baseType: !1892, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4049, file: !4050, line: 56, baseType: !18, size: 32, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4049, file: !4050, line: 58, baseType: !18, size: 32, offset: 352)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4049, file: !4050, line: 59, baseType: !4060, size: 64, offset: 384)
!4060 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !135, line: 159, baseType: !274)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4049, file: !4050, line: 60, baseType: !388, size: 64, offset: 448)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !438, file: !439, line: 1482, baseType: !284, size: 32, offset: 21824)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !438, file: !439, line: 1489, baseType: !137, size: 64, offset: 21888)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !438, file: !439, line: 1504, baseType: !137, size: 64, offset: 21952)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !438, file: !439, line: 1505, baseType: !275, size: 64, offset: 22016)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !438, file: !439, line: 1506, baseType: !274, size: 64, offset: 22080)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !438, file: !439, line: 1507, baseType: !275, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !438, file: !439, line: 1508, baseType: !275, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !438, file: !439, line: 1509, baseType: !275, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !438, file: !439, line: 1510, baseType: !265, size: 128, align: 64, offset: 22208)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !438, file: !439, line: 1511, baseType: !142, size: 32, offset: 22336)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !438, file: !439, line: 1515, baseType: !4073, size: 64, offset: 22400)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !461, line: 56, size: 64, elements: !4074)
!4074 = !{!4075}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4073, file: !461, line: 57, baseType: !464, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !438, file: !439, line: 1518, baseType: !4073, size: 64, offset: 22464)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !438, file: !439, line: 1528, baseType: !265, size: 128, align: 64, offset: 22528)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !438, file: !439, line: 1552, baseType: !4079, size: 35328, offset: 23040)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4080, line: 430, size: 35328, elements: !4081)
!4080 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4081 = !{!4082, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4111, !4112, !4113, !4114, !4115, !4116, !4119, !4120, !4121, !4122}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4079, file: !4080, line: 432, baseType: !4083, size: 192)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4084, size: 192, elements: !810)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4085, line: 16, size: 64, elements: !4086)
!4085 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4086 = !{!4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4084, file: !4085, line: 17, baseType: !207, size: 16)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4084, file: !4085, line: 18, baseType: !207, size: 16, offset: 16)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4084, file: !4085, line: 19, baseType: !207, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4084, file: !4085, line: 19, baseType: !207, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4084, file: !4085, line: 19, baseType: !207, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4084, file: !4085, line: 19, baseType: !207, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4084, file: !4085, line: 19, baseType: !207, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4084, file: !4085, line: 20, baseType: !207, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4084, file: !4085, line: 20, baseType: !207, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4084, file: !4085, line: 20, baseType: !207, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4084, file: !4085, line: 20, baseType: !207, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4084, file: !4085, line: 20, baseType: !207, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4084, file: !4085, line: 20, baseType: !207, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4079, file: !4080, line: 436, baseType: !136, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4079, file: !4080, line: 440, baseType: !209, size: 16, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4079, file: !4080, line: 441, baseType: !209, size: 16, offset: 272)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4079, file: !4080, line: 442, baseType: !209, size: 16, offset: 288)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4079, file: !4080, line: 443, baseType: !209, size: 16, offset: 304)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4079, file: !4080, line: 447, baseType: !136, size: 64, offset: 320)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4079, file: !4080, line: 448, baseType: !136, size: 64, offset: 384)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4079, file: !4080, line: 459, baseType: !4108, size: 256, offset: 448)
!4108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4109, size: 256, elements: !831)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4080, line: 428, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4079, file: !4080, line: 461, baseType: !136, size: 64, offset: 704)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4079, file: !4080, line: 463, baseType: !136, size: 64, offset: 768)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4079, file: !4080, line: 465, baseType: !136, size: 64, offset: 832)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4079, file: !4080, line: 466, baseType: !136, size: 64, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4079, file: !4080, line: 467, baseType: !136, size: 64, offset: 960)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4079, file: !4080, line: 473, baseType: !4117, size: 64, offset: 1024)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4080, line: 10, flags: DIFlagFwdDecl)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4079, file: !4080, line: 480, baseType: !136, size: 64, offset: 1088)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4079, file: !4080, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4079, file: !4080, line: 491, baseType: !143, size: 32, offset: 1184)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4079, file: !4080, line: 501, baseType: !4123, size: 33792, offset: 1536)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4124, line: 448, size: 33792, elements: !4125)
!4124 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4125 = !{!4126, !4127, !4128, !4290, !4291, !4297, !4298}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4123, file: !4124, line: 461, baseType: !18, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4123, file: !4124, line: 468, baseType: !136, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4123, file: !4124, line: 476, baseType: !4129, size: 64, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4124, line: 356, size: 33280, align: 512, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4130, file: !4124, line: 358, baseType: !18, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4130, file: !4124, line: 361, baseType: !18, size: 32, offset: 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4130, file: !4124, line: 364, baseType: !274, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4130, file: !4124, line: 367, baseType: !274, size: 64, offset: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4130, file: !4124, line: 370, baseType: !274, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4130, file: !4124, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4130, file: !4124, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4130, file: !4124, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4130, file: !4124, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4130, file: !4124, line: 397, baseType: !4142, size: 32768, offset: 512)
!4142 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4124, line: 348, size: 32768, elements: !4143)
!4143 = !{!4144, !4159, !4196, !4273, !4286}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4142, file: !4124, line: 349, baseType: !4145, size: 896)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4124, line: 12, size: 896, elements: !4146)
!4146 = !{!4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4158}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4145, file: !4124, line: 13, baseType: !143, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4145, file: !4124, line: 14, baseType: !143, size: 32, offset: 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4145, file: !4124, line: 15, baseType: !143, size: 32, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4145, file: !4124, line: 16, baseType: !143, size: 32, offset: 96)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4145, file: !4124, line: 17, baseType: !143, size: 32, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4145, file: !4124, line: 18, baseType: !143, size: 32, offset: 160)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4145, file: !4124, line: 19, baseType: !143, size: 32, offset: 192)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4145, file: !4124, line: 22, baseType: !4155, size: 640, offset: 224)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !4156)
!4156 = !{!4157}
!4157 = !DISubrange(count: 20)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4145, file: !4124, line: 25, baseType: !143, size: 32, offset: 864)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4142, file: !4124, line: 350, baseType: !4160, size: 4096, align: 128)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4124, line: 34, size: 4096, align: 128, elements: !4161)
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4181, !4182, !4183, !4185, !4187, !4191}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4160, file: !4124, line: 35, baseType: !207, size: 16)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4160, file: !4124, line: 36, baseType: !207, size: 16, offset: 16)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4160, file: !4124, line: 37, baseType: !207, size: 16, offset: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4160, file: !4124, line: 38, baseType: !207, size: 16, offset: 48)
!4166 = !DIDerivedType(tag: DW_TAG_member, scope: !4160, file: !4124, line: 39, baseType: !4167, size: 128, offset: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4160, file: !4124, line: 39, size: 128, elements: !4168)
!4168 = !{!4169, !4174}
!4169 = !DIDerivedType(tag: DW_TAG_member, scope: !4167, file: !4124, line: 40, baseType: !4170, size: 128)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4167, file: !4124, line: 40, size: 128, elements: !4171)
!4171 = !{!4172, !4173}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4170, file: !4124, line: 41, baseType: !274, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4170, file: !4124, line: 42, baseType: !274, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, scope: !4167, file: !4124, line: 44, baseType: !4175, size: 128)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4167, file: !4124, line: 44, size: 128, elements: !4176)
!4176 = !{!4177, !4178, !4179, !4180}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4175, file: !4124, line: 45, baseType: !143, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4175, file: !4124, line: 46, baseType: !143, size: 32, offset: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4175, file: !4124, line: 47, baseType: !143, size: 32, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4175, file: !4124, line: 48, baseType: !143, size: 32, offset: 96)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4160, file: !4124, line: 51, baseType: !143, size: 32, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4160, file: !4124, line: 52, baseType: !143, size: 32, offset: 224)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4160, file: !4124, line: 55, baseType: !4184, size: 1024, offset: 256)
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1024, elements: !2922)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4160, file: !4124, line: 58, baseType: !4186, size: 2048, offset: 1280)
!4186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2048, elements: !1426)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4160, file: !4124, line: 60, baseType: !4188, size: 384, offset: 3328)
!4188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 384, elements: !4189)
!4189 = !{!4190}
!4190 = !DISubrange(count: 12)
!4191 = !DIDerivedType(tag: DW_TAG_member, scope: !4160, file: !4124, line: 62, baseType: !4192, size: 384, offset: 3712)
!4192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4160, file: !4124, line: 62, size: 384, elements: !4193)
!4193 = !{!4194, !4195}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4192, file: !4124, line: 63, baseType: !4188, size: 384)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4192, file: !4124, line: 64, baseType: !4188, size: 384)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4142, file: !4124, line: 351, baseType: !4197, size: 1088)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4124, line: 79, size: 1088, elements: !4198)
!4198 = !{!4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4272}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4197, file: !4124, line: 80, baseType: !143, size: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4197, file: !4124, line: 81, baseType: !143, size: 32, offset: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4197, file: !4124, line: 82, baseType: !143, size: 32, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4197, file: !4124, line: 83, baseType: !143, size: 32, offset: 96)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4197, file: !4124, line: 84, baseType: !143, size: 32, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4197, file: !4124, line: 85, baseType: !143, size: 32, offset: 160)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4197, file: !4124, line: 86, baseType: !143, size: 32, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4197, file: !4124, line: 88, baseType: !4155, size: 640, offset: 224)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4197, file: !4124, line: 89, baseType: !199, size: 8, offset: 864)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4197, file: !4124, line: 90, baseType: !199, size: 8, offset: 872)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4197, file: !4124, line: 91, baseType: !199, size: 8, offset: 880)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4197, file: !4124, line: 92, baseType: !199, size: 8, offset: 888)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4197, file: !4124, line: 93, baseType: !199, size: 8, offset: 896)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4197, file: !4124, line: 94, baseType: !199, size: 8, offset: 904)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4197, file: !4124, line: 95, baseType: !4214, size: 64, offset: 960)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4216, line: 11, size: 128, elements: !4217)
!4216 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4217 = !{!4218, !4219}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4215, file: !4216, line: 12, baseType: !141, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4215, file: !4216, line: 13, baseType: !4220, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4222, line: 103, size: 1344, elements: !4223)
!4222 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4223 = !{!4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4252, !4253, !4254}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4221, file: !4222, line: 109, baseType: !136, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4221, file: !4222, line: 110, baseType: !136, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4221, file: !4222, line: 111, baseType: !136, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4221, file: !4222, line: 112, baseType: !136, size: 64, offset: 192)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4221, file: !4222, line: 113, baseType: !136, size: 64, offset: 256)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4221, file: !4222, line: 114, baseType: !136, size: 64, offset: 320)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4221, file: !4222, line: 117, baseType: !136, size: 64, offset: 384)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4221, file: !4222, line: 118, baseType: !136, size: 64, offset: 448)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4221, file: !4222, line: 119, baseType: !136, size: 64, offset: 512)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4221, file: !4222, line: 120, baseType: !136, size: 64, offset: 576)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4221, file: !4222, line: 121, baseType: !136, size: 64, offset: 640)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4221, file: !4222, line: 122, baseType: !136, size: 64, offset: 704)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4221, file: !4222, line: 123, baseType: !136, size: 64, offset: 768)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4221, file: !4222, line: 124, baseType: !136, size: 64, offset: 832)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4221, file: !4222, line: 125, baseType: !136, size: 64, offset: 896)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4221, file: !4222, line: 139, baseType: !136, size: 64, offset: 960)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4221, file: !4222, line: 142, baseType: !136, size: 64, offset: 1024)
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4221, file: !4222, line: 144, baseType: !4242, size: 64, offset: 1088)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4221, file: !4222, line: 144, size: 64, elements: !4243)
!4243 = !{!4244, !4245, !4246}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4242, file: !4222, line: 146, baseType: !207, size: 16)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4242, file: !4222, line: 148, baseType: !274, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4242, file: !4222, line: 150, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4222, line: 59, size: 64, elements: !4248)
!4248 = !{!4249, !4250, !4251}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4247, file: !4222, line: 61, baseType: !274, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4247, file: !4222, line: 63, baseType: !274, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4247, file: !4222, line: 65, baseType: !274, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4221, file: !4222, line: 153, baseType: !136, size: 64, offset: 1152)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4221, file: !4222, line: 154, baseType: !136, size: 64, offset: 1216)
!4254 = !DIDerivedType(tag: DW_TAG_member, scope: !4221, file: !4222, line: 156, baseType: !4255, size: 64, offset: 1280)
!4255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4221, file: !4222, line: 156, size: 64, elements: !4256)
!4256 = !{!4257, !4258, !4259}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4255, file: !4222, line: 158, baseType: !207, size: 16)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4255, file: !4222, line: 160, baseType: !274, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4255, file: !4222, line: 162, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4222, line: 69, size: 64, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4260, file: !4222, line: 71, baseType: !274, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4260, file: !4222, line: 73, baseType: !274, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4260, file: !4222, line: 75, baseType: !274, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4260, file: !4222, line: 77, baseType: !274, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4260, file: !4222, line: 80, baseType: !274, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4260, file: !4222, line: 83, baseType: !274, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4260, file: !4222, line: 86, baseType: !274, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4260, file: !4222, line: 88, baseType: !274, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4260, file: !4222, line: 93, baseType: !274, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4260, file: !4222, line: 100, baseType: !274, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4197, file: !4124, line: 96, baseType: !143, size: 32, offset: 1024)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4142, file: !4124, line: 352, baseType: !4274, size: 4608, align: 512)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4124, line: 333, size: 4608, align: 512, elements: !4275)
!4275 = !{!4276, !4277, !4284}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4274, file: !4124, line: 334, baseType: !4160, size: 4096, align: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4274, file: !4124, line: 335, baseType: !4278, size: 512, offset: 4096)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4124, line: 312, size: 512, elements: !4279)
!4279 = !{!4280, !4281, !4282}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4278, file: !4124, line: 313, baseType: !274, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4278, file: !4124, line: 314, baseType: !274, size: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4278, file: !4124, line: 315, baseType: !4283, size: 384, offset: 128)
!4283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 384, elements: !959)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4274, file: !4124, line: 336, baseType: !4285, offset: 4608)
!4285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !850)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4142, file: !4124, line: 353, baseType: !4287, size: 32768)
!4287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 32768, elements: !4288)
!4288 = !{!4289}
!4289 = !DISubrange(count: 4096)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4123, file: !4124, line: 484, baseType: !4129, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4123, file: !4124, line: 491, baseType: !4292, size: 128, offset: 256)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4124, line: 404, size: 128, elements: !4293)
!4293 = !{!4294, !4295, !4296}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4292, file: !4124, line: 424, baseType: !274, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4292, file: !4124, line: 432, baseType: !18, size: 32, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4292, file: !4124, line: 440, baseType: !18, size: 32, offset: 96)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4123, file: !4124, line: 498, baseType: !4292, size: 128, offset: 384)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4123, file: !4124, line: 508, baseType: !4130, size: 33280, align: 512, offset: 512)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !434, file: !411, line: 57, baseType: !136, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !434, file: !411, line: 58, baseType: !18, size: 32, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !434, file: !411, line: 59, baseType: !209, size: 16, offset: 160)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !434, file: !411, line: 60, baseType: !209, size: 16, offset: 176)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !407, file: !99, line: 178, baseType: !4304, size: 64, offset: 320)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !99, line: 50, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_moved", scope: !397, file: !398, line: 185, baseType: !4307, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !135, line: 113, baseType: !274)
!4308 = !{!4309, !4310, !4311, !4312, !4313}
!4309 = !DILocalVariable(name: "deps", arg: 1, scope: !390, file: !14, line: 132, type: !393)
!4310 = !DILocalVariable(name: "ctx", arg: 2, scope: !390, file: !14, line: 132, type: !395)
!4311 = !DILocalVariable(name: "fences", scope: !390, file: !14, line: 134, type: !290)
!4312 = !DILocalVariable(name: "i", scope: !390, file: !14, line: 135, type: !18)
!4313 = !DILocalVariable(name: "ret", scope: !390, file: !14, line: 136, type: !142)
!4314 = !DILocation(line: 132, column: 44, scope: !390)
!4315 = !DILocation(line: 132, column: 82, scope: !390)
!4316 = !DILocation(line: 134, column: 2, scope: !390)
!4317 = !DILocation(line: 134, column: 21, scope: !390)
!4318 = !DILocation(line: 134, column: 30, scope: !390)
!4319 = !DILocation(line: 134, column: 36, scope: !390)
!4320 = !DILocation(line: 135, column: 2, scope: !390)
!4321 = !DILocation(line: 135, column: 15, scope: !390)
!4322 = !DILocation(line: 136, column: 2, scope: !390)
!4323 = !DILocation(line: 136, column: 6, scope: !390)
!4324 = !DILocation(line: 138, column: 9, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !390, file: !14, line: 138, column: 2)
!4326 = !DILocation(line: 138, column: 7, scope: !4325)
!4327 = !DILocation(line: 138, column: 14, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4325, file: !14, line: 138, column: 2)
!4329 = !DILocation(line: 138, column: 18, scope: !4328)
!4330 = !DILocation(line: 138, column: 24, scope: !4328)
!4331 = !DILocation(line: 138, column: 16, scope: !4328)
!4332 = !DILocation(line: 138, column: 2, scope: !4325)
!4333 = !DILocation(line: 139, column: 7, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !14, line: 139, column: 7)
!4335 = distinct !DILexicalBlock(scope: !4328, file: !14, line: 138, column: 49)
!4336 = !DILocation(line: 139, column: 12, scope: !4334)
!4337 = !{i8 0, i8 2}
!4338 = !DILocation(line: 139, column: 24, scope: !4334)
!4339 = !DILocation(line: 139, column: 51, scope: !4334)
!4340 = !DILocation(line: 139, column: 50, scope: !4334)
!4341 = !DILocation(line: 139, column: 28, scope: !4334)
!4342 = !DILocation(line: 139, column: 7, scope: !4335)
!4343 = !DILocation(line: 140, column: 8, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4334, file: !14, line: 139, column: 60)
!4345 = !DILocation(line: 141, column: 4, scope: !4344)
!4346 = !DILocation(line: 144, column: 25, scope: !4335)
!4347 = !DILocation(line: 144, column: 24, scope: !4335)
!4348 = !DILocation(line: 144, column: 33, scope: !4335)
!4349 = !DILocation(line: 144, column: 38, scope: !4335)
!4350 = !DILocation(line: 144, column: 9, scope: !4335)
!4351 = !DILocation(line: 144, column: 7, scope: !4335)
!4352 = !DILocation(line: 145, column: 8, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4335, file: !14, line: 145, column: 7)
!4354 = !DILocation(line: 145, column: 7, scope: !4335)
!4355 = !DILocation(line: 146, column: 12, scope: !4353)
!4356 = !DILocation(line: 146, column: 11, scope: !4353)
!4357 = !DILocation(line: 146, column: 21, scope: !4353)
!4358 = !DILocation(line: 146, column: 8, scope: !4353)
!4359 = !DILocation(line: 146, column: 4, scope: !4353)
!4360 = !DILocation(line: 147, column: 7, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4335, file: !14, line: 147, column: 7)
!4362 = !DILocation(line: 147, column: 7, scope: !4335)
!4363 = !DILocation(line: 148, column: 4, scope: !4361)
!4364 = !DILocation(line: 149, column: 2, scope: !4335)
!4365 = !DILocation(line: 138, column: 34, scope: !4328)
!4366 = !DILocation(line: 138, column: 39, scope: !4328)
!4367 = !DILocation(line: 138, column: 2, scope: !4328)
!4368 = distinct !{!4368, !4332, !4369, !361, !362}
!4369 = !DILocation(line: 149, column: 2, scope: !4325)
!4370 = !DILocation(line: 151, column: 9, scope: !390)
!4371 = !DILocation(line: 152, column: 1, scope: !390)
!4372 = !DILocation(line: 151, column: 2, scope: !390)
!4373 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !2, file: !2, line: 449, type: !228, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4374)
!4374 = !{!4375}
!4375 = !DILocalVariable(name: "fence", arg: 1, scope: !4373, file: !2, line: 449, type: !166)
!4376 = !DILocation(line: 449, column: 41, scope: !4373)
!4377 = !DILocation(line: 451, column: 6, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4373, file: !2, line: 451, column: 6)
!4379 = !DILocation(line: 451, column: 6, scope: !4373)
!4380 = !DILocation(line: 452, column: 3, scope: !4378)
!4381 = !DILocation(line: 454, column: 6, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4373, file: !2, line: 454, column: 6)
!4383 = !DILocation(line: 454, column: 13, scope: !4382)
!4384 = !DILocation(line: 454, column: 18, scope: !4382)
!4385 = !DILocation(line: 454, column: 27, scope: !4382)
!4386 = !DILocation(line: 454, column: 30, scope: !4382)
!4387 = !DILocation(line: 454, column: 37, scope: !4382)
!4388 = !DILocation(line: 454, column: 42, scope: !4382)
!4389 = !DILocation(line: 454, column: 51, scope: !4382)
!4390 = !DILocation(line: 454, column: 6, scope: !4373)
!4391 = !DILocation(line: 455, column: 20, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4382, file: !2, line: 454, column: 59)
!4393 = !DILocation(line: 455, column: 3, scope: !4392)
!4394 = !DILocation(line: 456, column: 3, scope: !4392)
!4395 = !DILocation(line: 459, column: 2, scope: !4373)
!4396 = !DILocation(line: 460, column: 1, scope: !4373)
!4397 = distinct !DISubprogram(name: "dma_fence_wait", scope: !2, file: !2, line: 627, type: !4398, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4400)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!141, !166, !217}
!4400 = !{!4401, !4402, !4403}
!4401 = !DILocalVariable(name: "fence", arg: 1, scope: !4397, file: !2, line: 627, type: !166)
!4402 = !DILocalVariable(name: "intr", arg: 2, scope: !4397, file: !2, line: 627, type: !217)
!4403 = !DILocalVariable(name: "ret", scope: !4397, file: !2, line: 629, type: !141)
!4404 = !DILocation(line: 627, column: 60, scope: !4397)
!4405 = !DILocation(line: 627, column: 72, scope: !4397)
!4406 = !DILocation(line: 629, column: 2, scope: !4397)
!4407 = !DILocation(line: 629, column: 14, scope: !4397)
!4408 = !DILocation(line: 635, column: 31, scope: !4397)
!4409 = !DILocation(line: 635, column: 38, scope: !4397)
!4410 = !DILocation(line: 635, column: 8, scope: !4397)
!4411 = !DILocation(line: 635, column: 6, scope: !4397)
!4412 = !DILocation(line: 637, column: 9, scope: !4397)
!4413 = !DILocation(line: 637, column: 13, scope: !4397)
!4414 = !DILocation(line: 637, column: 19, scope: !4397)
!4415 = !DILocation(line: 638, column: 1, scope: !4397)
!4416 = !DILocation(line: 637, column: 2, scope: !4397)
!4417 = distinct !DISubprogram(name: "i915_deps_add_dependency", scope: !14, file: !14, line: 176, type: !4418, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!142, !161, !166, !395}
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426}
!4421 = !DILocalVariable(name: "deps", arg: 1, scope: !4417, file: !14, line: 176, type: !161)
!4422 = !DILocalVariable(name: "fence", arg: 2, scope: !4417, file: !14, line: 177, type: !166)
!4423 = !DILocalVariable(name: "ctx", arg: 3, scope: !4417, file: !14, line: 178, type: !395)
!4424 = !DILocalVariable(name: "i", scope: !4417, file: !14, line: 180, type: !18)
!4425 = !DILocalVariable(name: "ret", scope: !4417, file: !14, line: 181, type: !142)
!4426 = !DILocalVariable(name: "entry", scope: !4427, file: !14, line: 194, type: !166)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !14, line: 193, column: 39)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !14, line: 193, column: 2)
!4429 = distinct !DILexicalBlock(scope: !4417, file: !14, line: 193, column: 2)
!4430 = !DILocation(line: 176, column: 48, scope: !4417)
!4431 = !DILocation(line: 177, column: 27, scope: !4417)
!4432 = !DILocation(line: 178, column: 41, scope: !4417)
!4433 = !DILocation(line: 180, column: 2, scope: !4417)
!4434 = !DILocation(line: 180, column: 15, scope: !4417)
!4435 = !DILocation(line: 181, column: 2, scope: !4417)
!4436 = !DILocation(line: 181, column: 6, scope: !4417)
!4437 = !DILocation(line: 183, column: 7, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4417, file: !14, line: 183, column: 6)
!4439 = !DILocation(line: 183, column: 6, scope: !4417)
!4440 = !DILocation(line: 184, column: 3, scope: !4438)
!4441 = !DILocation(line: 186, column: 28, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4417, file: !14, line: 186, column: 6)
!4443 = !DILocation(line: 186, column: 6, scope: !4442)
!4444 = !DILocation(line: 186, column: 6, scope: !4417)
!4445 = !DILocation(line: 187, column: 9, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4442, file: !14, line: 186, column: 36)
!4447 = !DILocation(line: 187, column: 16, scope: !4446)
!4448 = !DILocation(line: 187, column: 7, scope: !4446)
!4449 = !DILocation(line: 188, column: 7, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4446, file: !14, line: 188, column: 7)
!4451 = !DILocation(line: 188, column: 7, scope: !4446)
!4452 = !DILocation(line: 189, column: 19, scope: !4450)
!4453 = !DILocation(line: 189, column: 4, scope: !4450)
!4454 = !DILocation(line: 190, column: 10, scope: !4446)
!4455 = !DILocation(line: 190, column: 3, scope: !4446)
!4456 = !DILocation(line: 193, column: 9, scope: !4429)
!4457 = !DILocation(line: 193, column: 7, scope: !4429)
!4458 = !DILocation(line: 193, column: 14, scope: !4428)
!4459 = !DILocation(line: 193, column: 18, scope: !4428)
!4460 = !DILocation(line: 193, column: 24, scope: !4428)
!4461 = !DILocation(line: 193, column: 16, scope: !4428)
!4462 = !DILocation(line: 193, column: 2, scope: !4429)
!4463 = !DILocation(line: 194, column: 3, scope: !4427)
!4464 = !DILocation(line: 194, column: 21, scope: !4427)
!4465 = !DILocation(line: 194, column: 29, scope: !4427)
!4466 = !DILocation(line: 194, column: 35, scope: !4427)
!4467 = !DILocation(line: 194, column: 42, scope: !4427)
!4468 = !DILocation(line: 196, column: 8, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4427, file: !14, line: 196, column: 7)
!4470 = !DILocation(line: 196, column: 15, scope: !4469)
!4471 = !DILocation(line: 196, column: 23, scope: !4469)
!4472 = !DILocation(line: 196, column: 26, scope: !4469)
!4473 = !DILocation(line: 196, column: 33, scope: !4469)
!4474 = !DILocation(line: 196, column: 44, scope: !4469)
!4475 = !DILocation(line: 196, column: 51, scope: !4469)
!4476 = !DILocation(line: 196, column: 41, scope: !4469)
!4477 = !DILocation(line: 196, column: 7, scope: !4427)
!4478 = !DILocation(line: 197, column: 4, scope: !4469)
!4479 = !DILocation(line: 199, column: 26, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4427, file: !14, line: 199, column: 7)
!4481 = !DILocation(line: 199, column: 33, scope: !4480)
!4482 = !DILocation(line: 199, column: 7, scope: !4480)
!4483 = !DILocation(line: 199, column: 7, scope: !4427)
!4484 = !DILocation(line: 200, column: 18, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4480, file: !14, line: 199, column: 41)
!4486 = !DILocation(line: 200, column: 4, scope: !4485)
!4487 = !DILocation(line: 201, column: 36, scope: !4485)
!4488 = !DILocation(line: 201, column: 22, scope: !4485)
!4489 = !DILocation(line: 201, column: 4, scope: !4485)
!4490 = !DILocation(line: 201, column: 10, scope: !4485)
!4491 = !DILocation(line: 201, column: 17, scope: !4485)
!4492 = !DILocation(line: 201, column: 20, scope: !4485)
!4493 = !DILocation(line: 202, column: 3, scope: !4485)
!4494 = !DILocation(line: 204, column: 3, scope: !4427)
!4495 = !DILocation(line: 205, column: 2, scope: !4428)
!4496 = !DILocation(line: 193, column: 34, scope: !4428)
!4497 = !DILocation(line: 193, column: 2, scope: !4428)
!4498 = distinct !{!4498, !4462, !4499, !361, !362}
!4499 = !DILocation(line: 205, column: 2, scope: !4429)
!4500 = !DILocation(line: 207, column: 24, scope: !4417)
!4501 = !DILocation(line: 207, column: 30, scope: !4417)
!4502 = !DILocation(line: 207, column: 37, scope: !4417)
!4503 = !DILocation(line: 207, column: 9, scope: !4417)
!4504 = !DILocation(line: 207, column: 2, scope: !4417)
!4505 = !DILocation(line: 208, column: 1, scope: !4417)
!4506 = distinct !DISubprogram(name: "dma_fence_is_later", scope: !2, file: !2, line: 492, type: !4507, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4509)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!217, !166, !166}
!4509 = !{!4510, !4511, !4512, !4515}
!4510 = !DILocalVariable(name: "f1", arg: 1, scope: !4506, file: !2, line: 492, type: !166)
!4511 = !DILocalVariable(name: "f2", arg: 2, scope: !4506, file: !2, line: 493, type: !166)
!4512 = !DILocalVariable(name: "__ret_warn_on", scope: !4513, file: !2, line: 495, type: !142)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !2, line: 495, column: 6)
!4514 = distinct !DILexicalBlock(scope: !4506, file: !2, line: 495, column: 6)
!4515 = !DILocalVariable(name: "__flags", scope: !4516, file: !2, line: 495, type: !142)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !2, line: 495, column: 6)
!4517 = distinct !DILexicalBlock(scope: !4513, file: !2, line: 495, column: 6)
!4518 = !DILocation(line: 492, column: 57, scope: !4506)
!4519 = !DILocation(line: 493, column: 29, scope: !4506)
!4520 = !DILocation(line: 495, column: 6, scope: !4513)
!4521 = !DILocation(line: 495, column: 6, scope: !4517)
!4522 = !DILocation(line: 495, column: 6, scope: !4516)
!4523 = !DILocation(line: 495, column: 6, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4516, file: !2, line: 495, column: 6)
!4525 = !DILocation(line: 495, column: 6, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4516, file: !2, line: 495, column: 6)
!4527 = !{i64 2150828443, i64 2150828472, i64 2150828518, i64 2150828576, i64 2150828630, i64 2150828684, i64 2150828739, i64 2150828770, i64 2150829078, i64 2150829084, i64 2150829131, i64 2150829154, i64 2150829180}
!4528 = !DILocation(line: 495, column: 6, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4516, file: !2, line: 495, column: 6)
!4530 = !DILocation(line: 495, column: 6, scope: !4514)
!4531 = !DILocation(line: 495, column: 6, scope: !4506)
!4532 = !DILocation(line: 496, column: 3, scope: !4514)
!4533 = !DILocation(line: 498, column: 30, scope: !4506)
!4534 = !DILocation(line: 498, column: 34, scope: !4506)
!4535 = !DILocation(line: 498, column: 41, scope: !4506)
!4536 = !DILocation(line: 498, column: 45, scope: !4506)
!4537 = !DILocation(line: 498, column: 52, scope: !4506)
!4538 = !DILocation(line: 498, column: 56, scope: !4506)
!4539 = !DILocation(line: 498, column: 9, scope: !4506)
!4540 = !DILocation(line: 498, column: 2, scope: !4506)
!4541 = !DILocation(line: 499, column: 1, scope: !4506)
!4542 = distinct !DISubprogram(name: "dma_fence_get", scope: !2, file: !2, line: 305, type: !4543, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!166, !166}
!4545 = !{!4546}
!4546 = !DILocalVariable(name: "fence", arg: 1, scope: !4542, file: !2, line: 305, type: !166)
!4547 = !DILocation(line: 305, column: 65, scope: !4542)
!4548 = !DILocation(line: 307, column: 6, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4542, file: !2, line: 307, column: 6)
!4550 = !DILocation(line: 307, column: 6, scope: !4542)
!4551 = !DILocation(line: 308, column: 13, scope: !4549)
!4552 = !DILocation(line: 308, column: 20, scope: !4549)
!4553 = !DILocation(line: 308, column: 3, scope: !4549)
!4554 = !DILocation(line: 309, column: 9, scope: !4542)
!4555 = !DILocation(line: 309, column: 2, scope: !4542)
!4556 = distinct !DISubprogram(name: "i915_deps_grow", scope: !14, file: !14, line: 75, type: !4418, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4557)
!4557 = !{!4558, !4559, !4560, !4561, !4562, !4565, !4566, !4568, !4569, !4571, !4572}
!4558 = !DILocalVariable(name: "deps", arg: 1, scope: !4556, file: !14, line: 75, type: !161)
!4559 = !DILocalVariable(name: "fence", arg: 2, scope: !4556, file: !14, line: 75, type: !166)
!4560 = !DILocalVariable(name: "ctx", arg: 3, scope: !4556, file: !14, line: 76, type: !395)
!4561 = !DILocalVariable(name: "ret", scope: !4556, file: !14, line: 78, type: !142)
!4562 = !DILocalVariable(name: "new_size", scope: !4563, file: !14, line: 81, type: !18)
!4563 = distinct !DILexicalBlock(scope: !4564, file: !14, line: 80, column: 43)
!4564 = distinct !DILexicalBlock(scope: !4556, file: !14, line: 80, column: 6)
!4565 = !DILocalVariable(name: "new_fences", scope: !4563, file: !14, line: 82, type: !290)
!4566 = !DILocalVariable(name: "__UNIQUE_ID___x296", scope: !4567, file: !14, line: 84, type: !18)
!4567 = distinct !DILexicalBlock(scope: !4563, file: !14, line: 84, column: 14)
!4568 = !DILocalVariable(name: "__UNIQUE_ID___y297", scope: !4567, file: !14, line: 84, type: !18)
!4569 = !DILocalVariable(name: "__tmp", scope: !4570, file: !14, line: 91, type: !290)
!4570 = distinct !DILexicalBlock(scope: !4563, file: !14, line: 91, column: 3)
!4571 = !DILabel(scope: !4556, name: "sync", file: !14, line: 99)
!4572 = !DILabel(scope: !4556, name: "unref", file: !14, line: 115)
!4573 = !DILocation(line: 75, column: 45, scope: !4556)
!4574 = !DILocation(line: 75, column: 69, scope: !4556)
!4575 = !DILocation(line: 76, column: 38, scope: !4556)
!4576 = !DILocation(line: 78, column: 2, scope: !4556)
!4577 = !DILocation(line: 78, column: 6, scope: !4556)
!4578 = !DILocation(line: 80, column: 6, scope: !4564)
!4579 = !DILocation(line: 80, column: 12, scope: !4564)
!4580 = !DILocation(line: 80, column: 24, scope: !4564)
!4581 = !DILocation(line: 80, column: 30, scope: !4564)
!4582 = !DILocation(line: 80, column: 21, scope: !4564)
!4583 = !DILocation(line: 80, column: 6, scope: !4556)
!4584 = !DILocation(line: 81, column: 3, scope: !4563)
!4585 = !DILocation(line: 81, column: 16, scope: !4563)
!4586 = !DILocation(line: 81, column: 31, scope: !4563)
!4587 = !DILocation(line: 81, column: 37, scope: !4563)
!4588 = !DILocation(line: 81, column: 29, scope: !4563)
!4589 = !DILocation(line: 82, column: 3, scope: !4563)
!4590 = !DILocation(line: 82, column: 22, scope: !4563)
!4591 = !DILocation(line: 84, column: 14, scope: !4567)
!4592 = !DILocation(line: 84, column: 14, scope: !4563)
!4593 = !DILocation(line: 84, column: 12, scope: !4563)
!4594 = !DILocation(line: 85, column: 30, scope: !4563)
!4595 = !DILocation(line: 85, column: 61, scope: !4563)
!4596 = !DILocation(line: 85, column: 67, scope: !4563)
!4597 = !DILocation(line: 85, column: 16, scope: !4563)
!4598 = !DILocation(line: 85, column: 14, scope: !4563)
!4599 = !DILocation(line: 86, column: 8, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4563, file: !14, line: 86, column: 7)
!4601 = !DILocation(line: 86, column: 7, scope: !4563)
!4602 = !DILocation(line: 87, column: 4, scope: !4600)
!4603 = !DILocation(line: 89, column: 10, scope: !4563)
!4604 = !DILocation(line: 89, column: 22, scope: !4563)
!4605 = !DILocation(line: 89, column: 28, scope: !4563)
!4606 = !DILocation(line: 90, column: 10, scope: !4563)
!4607 = !DILocation(line: 90, column: 16, scope: !4563)
!4608 = !DILocation(line: 90, column: 28, scope: !4563)
!4609 = !DILocation(line: 89, column: 3, scope: !4563)
!4610 = !DILocation(line: 91, column: 3, scope: !4563)
!4611 = !DILocation(line: 91, column: 3, scope: !4570)
!4612 = !DILocation(line: 92, column: 7, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4563, file: !14, line: 92, column: 7)
!4614 = !DILocation(line: 92, column: 22, scope: !4613)
!4615 = !DILocation(line: 92, column: 28, scope: !4613)
!4616 = !DILocation(line: 92, column: 18, scope: !4613)
!4617 = !DILocation(line: 92, column: 7, scope: !4563)
!4618 = !DILocation(line: 93, column: 10, scope: !4613)
!4619 = !DILocation(line: 93, column: 4, scope: !4613)
!4620 = !DILocation(line: 94, column: 23, scope: !4563)
!4621 = !DILocation(line: 94, column: 3, scope: !4563)
!4622 = !DILocation(line: 94, column: 9, scope: !4563)
!4623 = !DILocation(line: 94, column: 21, scope: !4563)
!4624 = !DILocation(line: 95, column: 2, scope: !4564)
!4625 = !DILocation(line: 95, column: 2, scope: !4563)
!4626 = !DILocation(line: 96, column: 49, scope: !4556)
!4627 = !DILocation(line: 96, column: 35, scope: !4556)
!4628 = !DILocation(line: 96, column: 2, scope: !4556)
!4629 = !DILocation(line: 96, column: 8, scope: !4556)
!4630 = !DILocation(line: 96, column: 15, scope: !4556)
!4631 = !DILocation(line: 96, column: 21, scope: !4556)
!4632 = !DILocation(line: 96, column: 29, scope: !4556)
!4633 = !DILocation(line: 96, column: 33, scope: !4556)
!4634 = !DILocation(line: 97, column: 2, scope: !4556)
!4635 = !DILocation(line: 99, column: 1, scope: !4556)
!4636 = !DILocation(line: 100, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4556, file: !14, line: 100, column: 6)
!4638 = !DILocation(line: 100, column: 11, scope: !4637)
!4639 = !DILocation(line: 100, column: 23, scope: !4637)
!4640 = !DILocation(line: 100, column: 49, scope: !4637)
!4641 = !DILocation(line: 100, column: 27, scope: !4637)
!4642 = !DILocation(line: 100, column: 6, scope: !4556)
!4643 = !DILocation(line: 101, column: 7, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4637, file: !14, line: 100, column: 57)
!4645 = !DILocation(line: 102, column: 3, scope: !4644)
!4646 = !DILocation(line: 105, column: 23, scope: !4556)
!4647 = !DILocation(line: 105, column: 30, scope: !4556)
!4648 = !DILocation(line: 105, column: 35, scope: !4556)
!4649 = !DILocation(line: 105, column: 8, scope: !4556)
!4650 = !DILocation(line: 105, column: 6, scope: !4556)
!4651 = !DILocation(line: 106, column: 6, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4556, file: !14, line: 106, column: 6)
!4653 = !DILocation(line: 106, column: 6, scope: !4556)
!4654 = !DILocation(line: 107, column: 3, scope: !4652)
!4655 = !DILocation(line: 109, column: 8, scope: !4556)
!4656 = !DILocation(line: 109, column: 15, scope: !4556)
!4657 = !DILocation(line: 109, column: 6, scope: !4556)
!4658 = !DILocation(line: 110, column: 6, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4556, file: !14, line: 110, column: 6)
!4660 = !DILocation(line: 110, column: 6, scope: !4556)
!4661 = !DILocation(line: 111, column: 3, scope: !4659)
!4662 = !DILocation(line: 113, column: 2, scope: !4556)
!4663 = !DILocation(line: 115, column: 1, scope: !4556)
!4664 = !DILocation(line: 116, column: 17, scope: !4556)
!4665 = !DILocation(line: 116, column: 2, scope: !4556)
!4666 = !DILocation(line: 117, column: 9, scope: !4556)
!4667 = !DILocation(line: 117, column: 2, scope: !4556)
!4668 = !DILocation(line: 118, column: 1, scope: !4556)
!4669 = distinct !DISubprogram(name: "i915_deps_add_resv", scope: !14, file: !14, line: 222, type: !4670, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4672)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!142, !161, !406, !395}
!4672 = !{!4673, !4674, !4675, !4676, !4687, !4688}
!4673 = !DILocalVariable(name: "deps", arg: 1, scope: !4669, file: !14, line: 222, type: !161)
!4674 = !DILocalVariable(name: "resv", arg: 2, scope: !4669, file: !14, line: 222, type: !406)
!4675 = !DILocalVariable(name: "ctx", arg: 3, scope: !4669, file: !14, line: 223, type: !395)
!4676 = !DILocalVariable(name: "iter", scope: !4669, file: !14, line: 225, type: !4677)
!4677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_iter", file: !99, line: 193, size: 384, elements: !4678)
!4678 = !{!4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !4677, file: !99, line: 195, baseType: !406, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4677, file: !99, line: 198, baseType: !98, size: 32, offset: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !4677, file: !99, line: 201, baseType: !166, size: 64, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "fence_usage", scope: !4677, file: !99, line: 204, baseType: !98, size: 32, offset: 192)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4677, file: !99, line: 207, baseType: !18, size: 32, offset: 224)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !4677, file: !99, line: 210, baseType: !4304, size: 64, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !4677, file: !99, line: 213, baseType: !18, size: 32, offset: 320)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "is_restarted", scope: !4677, file: !99, line: 216, baseType: !217, size: 8, offset: 352)
!4687 = !DILocalVariable(name: "fence", scope: !4669, file: !14, line: 226, type: !166)
!4688 = !DILocalVariable(name: "ret", scope: !4689, file: !14, line: 230, type: !142)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !14, line: 229, column: 71)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !14, line: 229, column: 2)
!4691 = distinct !DILexicalBlock(scope: !4669, file: !14, line: 229, column: 2)
!4692 = !DILocation(line: 222, column: 42, scope: !4669)
!4693 = !DILocation(line: 222, column: 65, scope: !4669)
!4694 = !DILocation(line: 223, column: 42, scope: !4669)
!4695 = !DILocation(line: 225, column: 2, scope: !4669)
!4696 = !DILocation(line: 225, column: 23, scope: !4669)
!4697 = !DILocation(line: 226, column: 2, scope: !4669)
!4698 = !DILocation(line: 226, column: 20, scope: !4669)
!4699 = !DILocation(line: 228, column: 2, scope: !4669)
!4700 = !DILocation(line: 228, column: 2, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4669, file: !14, line: 228, column: 2)
!4702 = !DILocation(line: 229, column: 2, scope: !4691)
!4703 = !DILocation(line: 229, column: 2, scope: !4690)
!4704 = !DILocation(line: 230, column: 3, scope: !4689)
!4705 = !DILocation(line: 230, column: 7, scope: !4689)
!4706 = !DILocation(line: 230, column: 38, scope: !4689)
!4707 = !DILocation(line: 230, column: 44, scope: !4689)
!4708 = !DILocation(line: 230, column: 51, scope: !4689)
!4709 = !DILocation(line: 230, column: 13, scope: !4689)
!4710 = !DILocation(line: 232, column: 7, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4689, file: !14, line: 232, column: 7)
!4712 = !DILocation(line: 232, column: 7, scope: !4689)
!4713 = !DILocation(line: 233, column: 11, scope: !4711)
!4714 = !DILocation(line: 233, column: 4, scope: !4711)
!4715 = !DILocation(line: 234, column: 2, scope: !4690)
!4716 = !DILocation(line: 234, column: 2, scope: !4689)
!4717 = distinct !{!4717, !4702, !4718, !361, !362}
!4718 = !DILocation(line: 234, column: 2, scope: !4691)
!4719 = !DILocation(line: 236, column: 2, scope: !4669)
!4720 = !DILocation(line: 237, column: 1, scope: !4669)
!4721 = distinct !DISubprogram(name: "dma_resv_iter_begin", scope: !99, file: !99, line: 230, type: !4722, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4725)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !4724, !406, !98}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4725 = !{!4726, !4727, !4728}
!4726 = !DILocalVariable(name: "cursor", arg: 1, scope: !4721, file: !99, line: 230, type: !4724)
!4727 = !DILocalVariable(name: "obj", arg: 2, scope: !4721, file: !99, line: 231, type: !406)
!4728 = !DILocalVariable(name: "usage", arg: 3, scope: !4721, file: !99, line: 232, type: !98)
!4729 = !DILocation(line: 230, column: 62, scope: !4721)
!4730 = !DILocation(line: 231, column: 29, scope: !4721)
!4731 = !DILocation(line: 232, column: 32, scope: !4721)
!4732 = !DILocation(line: 234, column: 16, scope: !4721)
!4733 = !DILocation(line: 234, column: 2, scope: !4721)
!4734 = !DILocation(line: 234, column: 10, scope: !4721)
!4735 = !DILocation(line: 234, column: 14, scope: !4721)
!4736 = !DILocation(line: 235, column: 18, scope: !4721)
!4737 = !DILocation(line: 235, column: 2, scope: !4721)
!4738 = !DILocation(line: 235, column: 10, scope: !4721)
!4739 = !DILocation(line: 235, column: 16, scope: !4721)
!4740 = !DILocation(line: 236, column: 2, scope: !4721)
!4741 = !DILocation(line: 236, column: 10, scope: !4721)
!4742 = !DILocation(line: 236, column: 16, scope: !4721)
!4743 = !DILocation(line: 237, column: 1, scope: !4721)
!4744 = distinct !DISubprogram(name: "dma_resv_usage_rw", scope: !99, file: !99, line: 126, type: !4745, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4747)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!98, !217}
!4747 = !{!4748}
!4748 = !DILocalVariable(name: "write", arg: 1, scope: !4744, file: !99, line: 126, type: !217)
!4749 = !DILocation(line: 126, column: 58, scope: !4744)
!4750 = !DILocation(line: 135, column: 9, scope: !4744)
!4751 = !DILocation(line: 135, column: 2, scope: !4744)
!4752 = !DISubprogram(name: "dma_resv_iter_first", scope: !99, file: !99, line: 221, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!166, !4724}
!4755 = !DISubprogram(name: "dma_resv_iter_next", scope: !99, file: !99, line: 222, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4756 = distinct !DISubprogram(name: "kref_put", scope: !281, file: !281, line: 62, type: !4757, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4763)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!142, !4759, !4760}
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{null, !4759}
!4763 = !{!4764, !4765}
!4764 = !DILocalVariable(name: "kref", arg: 1, scope: !4756, file: !281, line: 62, type: !4759)
!4765 = !DILocalVariable(name: "release", arg: 2, scope: !4756, file: !281, line: 62, type: !4760)
!4766 = !DILocation(line: 62, column: 41, scope: !4756)
!4767 = !DILocation(line: 62, column: 54, scope: !4756)
!4768 = !DILocation(line: 64, column: 29, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4756, file: !281, line: 64, column: 6)
!4770 = !DILocation(line: 64, column: 35, scope: !4769)
!4771 = !DILocation(line: 64, column: 6, scope: !4769)
!4772 = !DILocation(line: 64, column: 6, scope: !4756)
!4773 = !DILocation(line: 65, column: 3, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4769, file: !281, line: 64, column: 46)
!4775 = !DILocation(line: 65, column: 11, scope: !4774)
!4776 = !DILocation(line: 66, column: 3, scope: !4774)
!4777 = !DILocation(line: 68, column: 2, scope: !4756)
!4778 = !DILocation(line: 69, column: 1, scope: !4756)
!4779 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !111, file: !111, line: 331, type: !4780, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4783)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!217, !4782}
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!4783 = !{!4784}
!4784 = !DILocalVariable(name: "r", arg: 1, scope: !4779, file: !111, line: 331, type: !4782)
!4785 = !DILocation(line: 331, column: 67, scope: !4779)
!4786 = !DILocation(line: 333, column: 33, scope: !4779)
!4787 = !DILocation(line: 333, column: 9, scope: !4779)
!4788 = !DILocation(line: 333, column: 2, scope: !4779)
!4789 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !111, file: !111, line: 313, type: !4790, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4792)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!217, !4782, !2322}
!4792 = !{!4793, !4794}
!4793 = !DILocalVariable(name: "r", arg: 1, scope: !4789, file: !111, line: 313, type: !4782)
!4794 = !DILocalVariable(name: "oldp", arg: 2, scope: !4789, file: !111, line: 313, type: !2322)
!4795 = !DILocation(line: 313, column: 69, scope: !4789)
!4796 = !DILocation(line: 313, column: 77, scope: !4789)
!4797 = !DILocation(line: 315, column: 36, scope: !4789)
!4798 = !DILocation(line: 315, column: 39, scope: !4789)
!4799 = !DILocation(line: 315, column: 9, scope: !4789)
!4800 = !DILocation(line: 315, column: 2, scope: !4789)
!4801 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !111, file: !111, line: 270, type: !4802, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!217, !142, !4782, !2322}
!4804 = !{!4805, !4806, !4807, !4808}
!4805 = !DILocalVariable(name: "i", arg: 1, scope: !4801, file: !111, line: 270, type: !142)
!4806 = !DILocalVariable(name: "r", arg: 2, scope: !4801, file: !111, line: 270, type: !4782)
!4807 = !DILocalVariable(name: "oldp", arg: 3, scope: !4801, file: !111, line: 270, type: !2322)
!4808 = !DILocalVariable(name: "old", scope: !4801, file: !111, line: 272, type: !142)
!4809 = !DILocation(line: 270, column: 61, scope: !4801)
!4810 = !DILocation(line: 270, column: 76, scope: !4801)
!4811 = !DILocation(line: 270, column: 84, scope: !4801)
!4812 = !DILocation(line: 272, column: 2, scope: !4801)
!4813 = !DILocation(line: 272, column: 6, scope: !4801)
!4814 = !DILocation(line: 272, column: 37, scope: !4801)
!4815 = !DILocation(line: 272, column: 41, scope: !4801)
!4816 = !DILocation(line: 272, column: 44, scope: !4801)
!4817 = !DILocation(line: 272, column: 12, scope: !4801)
!4818 = !DILocation(line: 274, column: 6, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4801, file: !111, line: 274, column: 6)
!4820 = !DILocation(line: 274, column: 6, scope: !4801)
!4821 = !DILocation(line: 275, column: 11, scope: !4819)
!4822 = !DILocation(line: 275, column: 4, scope: !4819)
!4823 = !DILocation(line: 275, column: 9, scope: !4819)
!4824 = !DILocation(line: 275, column: 3, scope: !4819)
!4825 = !DILocation(line: 277, column: 6, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4801, file: !111, line: 277, column: 6)
!4827 = !DILocation(line: 277, column: 13, scope: !4826)
!4828 = !DILocation(line: 277, column: 10, scope: !4826)
!4829 = !DILocation(line: 277, column: 6, scope: !4801)
!4830 = !DILocation(line: 278, column: 3, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4826, file: !111, line: 277, column: 16)
!4832 = !DILocation(line: 278, column: 3, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4831, file: !111, line: 278, column: 3)
!4834 = !DILocation(line: 278, column: 3, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4833, file: !111, line: 278, column: 3)
!4836 = !DILocation(line: 278, column: 3, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4833, file: !111, line: 278, column: 3)
!4838 = !DILocation(line: 278, column: 3, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4837, file: !111, line: 278, column: 3)
!4840 = !{i64 2149830647}
!4841 = !DILocation(line: 279, column: 3, scope: !4831)
!4842 = !DILocation(line: 282, column: 6, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4801, file: !111, line: 282, column: 6)
!4844 = !DILocation(line: 282, column: 6, scope: !4801)
!4845 = !DILocation(line: 283, column: 26, scope: !4843)
!4846 = !DILocation(line: 283, column: 3, scope: !4843)
!4847 = !DILocation(line: 285, column: 2, scope: !4801)
!4848 = !DILocation(line: 286, column: 1, scope: !4801)
!4849 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4850, file: !4850, line: 397, type: !4851, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4854)
!4850 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!142, !142, !4853}
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!4854 = !{!4855, !4856}
!4855 = !DILocalVariable(name: "i", arg: 1, scope: !4849, file: !4850, line: 397, type: !142)
!4856 = !DILocalVariable(name: "v", arg: 2, scope: !4849, file: !4850, line: 397, type: !4853)
!4857 = !DILocation(line: 397, column: 30, scope: !4849)
!4858 = !DILocation(line: 397, column: 43, scope: !4849)
!4859 = !DILocation(line: 399, column: 2, scope: !4849)
!4860 = !DILocation(line: 399, column: 2, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4849, file: !4850, line: 399, column: 2)
!4862 = !DILocation(line: 400, column: 31, scope: !4849)
!4863 = !DILocation(line: 400, column: 2, scope: !4849)
!4864 = !DILocation(line: 401, column: 38, scope: !4849)
!4865 = !DILocation(line: 401, column: 41, scope: !4849)
!4866 = !DILocation(line: 401, column: 9, scope: !4849)
!4867 = !DILocation(line: 401, column: 2, scope: !4849)
!4868 = !DISubprogram(name: "refcount_warn_saturate", scope: !111, file: !111, line: 127, type: !4869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{null, !4782, !110}
!4871 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4872, file: !4872, line: 94, type: !4873, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4878)
!4872 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !4875, !1282}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4877)
!4877 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4878 = !{!4879, !4880}
!4879 = !DILocalVariable(name: "v", arg: 1, scope: !4871, file: !4872, line: 94, type: !4875)
!4880 = !DILocalVariable(name: "size", arg: 2, scope: !4871, file: !4872, line: 94, type: !1282)
!4881 = !DILocation(line: 94, column: 79, scope: !4871)
!4882 = !DILocation(line: 94, column: 89, scope: !4871)
!4883 = !DILocation(line: 96, column: 20, scope: !4871)
!4884 = !DILocation(line: 96, column: 23, scope: !4871)
!4885 = !DILocation(line: 96, column: 2, scope: !4871)
!4886 = !DILocation(line: 97, column: 2, scope: !4871)
!4887 = !DILocation(line: 98, column: 1, scope: !4871)
!4888 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !4889, file: !4889, line: 928, type: !4851, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4890)
!4889 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4890 = !{!4891, !4892}
!4891 = !DILocalVariable(name: "i", arg: 1, scope: !4888, file: !4889, line: 928, type: !142)
!4892 = !DILocalVariable(name: "v", arg: 2, scope: !4888, file: !4889, line: 928, type: !4853)
!4893 = !DILocation(line: 928, column: 34, scope: !4888)
!4894 = !DILocation(line: 928, column: 47, scope: !4888)
!4895 = !DILocation(line: 936, column: 31, scope: !4888)
!4896 = !DILocation(line: 936, column: 34, scope: !4888)
!4897 = !DILocation(line: 936, column: 9, scope: !4888)
!4898 = !DILocation(line: 936, column: 2, scope: !4888)
!4899 = distinct !DISubprogram(name: "kasan_check_write", scope: !4900, file: !4900, line: 44, type: !4901, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4903)
!4900 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!217, !4875, !18}
!4903 = !{!4904, !4905}
!4904 = !DILocalVariable(name: "p", arg: 1, scope: !4899, file: !4900, line: 44, type: !4875)
!4905 = !DILocalVariable(name: "size", arg: 2, scope: !4899, file: !4900, line: 44, type: !18)
!4906 = !DILocation(line: 44, column: 59, scope: !4899)
!4907 = !DILocation(line: 44, column: 75, scope: !4899)
!4908 = !DILocation(line: 46, column: 2, scope: !4899)
!4909 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4910, file: !4910, line: 229, type: !4911, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4913)
!4910 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4911 = !DISubroutineType(types: !4912)
!4912 = !{null, !4875, !1282, !142}
!4913 = !{!4914, !4915, !4916}
!4914 = !DILocalVariable(name: "ptr", arg: 1, scope: !4909, file: !4910, line: 229, type: !4875)
!4915 = !DILocalVariable(name: "size", arg: 2, scope: !4909, file: !4910, line: 229, type: !1282)
!4916 = !DILocalVariable(name: "type", arg: 3, scope: !4909, file: !4910, line: 230, type: !142)
!4917 = !DILocation(line: 229, column: 60, scope: !4909)
!4918 = !DILocation(line: 229, column: 72, scope: !4909)
!4919 = !DILocation(line: 230, column: 15, scope: !4909)
!4920 = !DILocation(line: 230, column: 23, scope: !4909)
!4921 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4922, file: !4922, line: 101, type: !4851, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4923)
!4922 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4923 = !{!4924, !4925, !4926}
!4924 = !DILocalVariable(name: "i", arg: 1, scope: !4921, file: !4922, line: 101, type: !142)
!4925 = !DILocalVariable(name: "v", arg: 2, scope: !4921, file: !4922, line: 101, type: !4853)
!4926 = !DILocalVariable(name: "__ret", scope: !4927, file: !4922, line: 103, type: !142)
!4927 = distinct !DILexicalBlock(scope: !4921, file: !4922, line: 103, column: 9)
!4928 = !DILocation(line: 101, column: 54, scope: !4921)
!4929 = !DILocation(line: 101, column: 67, scope: !4921)
!4930 = !DILocation(line: 103, column: 9, scope: !4927)
!4931 = !{i64 2148886331, i64 2148886370, i64 2148886391, i64 2148886428, i64 2148886451, i64 2148886460}
!4932 = !DILocation(line: 103, column: 9, scope: !4921)
!4933 = !DILocation(line: 103, column: 2, scope: !4921)
!4934 = distinct !DISubprogram(name: "const_test_bit", scope: !4935, file: !4935, line: 166, type: !4936, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4941)
!4935 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!217, !136, !4938}
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4940)
!4940 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!4941 = !{!4942, !4943, !4944, !4945, !4946}
!4942 = !DILocalVariable(name: "nr", arg: 1, scope: !4934, file: !4935, line: 166, type: !136)
!4943 = !DILocalVariable(name: "addr", arg: 2, scope: !4934, file: !4935, line: 166, type: !4938)
!4944 = !DILocalVariable(name: "p", scope: !4934, file: !4935, line: 168, type: !138)
!4945 = !DILocalVariable(name: "mask", scope: !4934, file: !4935, line: 169, type: !136)
!4946 = !DILocalVariable(name: "val", scope: !4934, file: !4935, line: 170, type: !136)
!4947 = !DILocation(line: 166, column: 30, scope: !4934)
!4948 = !DILocation(line: 166, column: 64, scope: !4934)
!4949 = !DILocation(line: 168, column: 2, scope: !4934)
!4950 = !DILocation(line: 168, column: 23, scope: !4934)
!4951 = !DILocation(line: 168, column: 50, scope: !4934)
!4952 = !DILocation(line: 168, column: 57, scope: !4934)
!4953 = !DILocation(line: 168, column: 55, scope: !4934)
!4954 = !DILocation(line: 169, column: 2, scope: !4934)
!4955 = !DILocation(line: 169, column: 16, scope: !4934)
!4956 = !DILocation(line: 169, column: 23, scope: !4934)
!4957 = !DILocation(line: 170, column: 2, scope: !4934)
!4958 = !DILocation(line: 170, column: 16, scope: !4934)
!4959 = !DILocation(line: 170, column: 23, scope: !4934)
!4960 = !DILocation(line: 170, column: 22, scope: !4934)
!4961 = !DILocation(line: 172, column: 12, scope: !4934)
!4962 = !DILocation(line: 172, column: 18, scope: !4934)
!4963 = !DILocation(line: 172, column: 16, scope: !4934)
!4964 = !DILocation(line: 172, column: 10, scope: !4934)
!4965 = !DILocation(line: 172, column: 9, scope: !4934)
!4966 = !DILocation(line: 173, column: 1, scope: !4934)
!4967 = !DILocation(line: 172, column: 2, scope: !4934)
!4968 = distinct !DISubprogram(name: "_test_bit", scope: !4969, file: !4969, line: 139, type: !4936, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4970)
!4969 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4970 = !{!4971, !4972}
!4971 = !DILocalVariable(name: "nr", arg: 1, scope: !4968, file: !4969, line: 139, type: !136)
!4972 = !DILocalVariable(name: "addr", arg: 2, scope: !4968, file: !4969, line: 139, type: !4938)
!4973 = !DILocation(line: 139, column: 25, scope: !4968)
!4974 = !DILocation(line: 139, column: 59, scope: !4968)
!4975 = !DILocation(line: 141, column: 25, scope: !4968)
!4976 = !DILocation(line: 141, column: 32, scope: !4968)
!4977 = !DILocation(line: 141, column: 30, scope: !4968)
!4978 = !DILocation(line: 141, column: 2, scope: !4968)
!4979 = !DILocation(line: 142, column: 23, scope: !4968)
!4980 = !DILocation(line: 142, column: 27, scope: !4968)
!4981 = !DILocation(line: 142, column: 9, scope: !4968)
!4982 = !DILocation(line: 142, column: 2, scope: !4968)
!4983 = !DISubprogram(name: "dma_fence_signal", scope: !2, file: !2, line: 390, type: !4984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!142, !166}
!4986 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4872, file: !4872, line: 66, type: !4873, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4987)
!4987 = !{!4988, !4989}
!4988 = !DILocalVariable(name: "v", arg: 1, scope: !4986, file: !4872, line: 66, type: !4875)
!4989 = !DILocalVariable(name: "size", arg: 2, scope: !4986, file: !4872, line: 66, type: !1282)
!4990 = !DILocation(line: 66, column: 73, scope: !4986)
!4991 = !DILocation(line: 66, column: 83, scope: !4986)
!4992 = !DILocation(line: 68, column: 19, scope: !4986)
!4993 = !DILocation(line: 68, column: 22, scope: !4986)
!4994 = !DILocation(line: 68, column: 2, scope: !4986)
!4995 = !DILocation(line: 69, column: 2, scope: !4986)
!4996 = !DILocation(line: 70, column: 1, scope: !4986)
!4997 = distinct !DISubprogram(name: "arch_test_bit", scope: !4998, file: !4998, line: 237, type: !4936, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !4999)
!4998 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4999 = !{!5000, !5001}
!5000 = !DILocalVariable(name: "nr", arg: 1, scope: !4997, file: !4998, line: 237, type: !136)
!5001 = !DILocalVariable(name: "addr", arg: 2, scope: !4997, file: !4998, line: 237, type: !4938)
!5002 = !DILocation(line: 237, column: 29, scope: !4997)
!5003 = !DILocation(line: 237, column: 63, scope: !4997)
!5004 = !DILocation(line: 239, column: 30, scope: !4997)
!5005 = !DILocation(line: 239, column: 9, scope: !4997)
!5006 = !DILocation(line: 239, column: 54, scope: !4997)
!5007 = !DILocation(line: 239, column: 58, scope: !4997)
!5008 = !DILocation(line: 239, column: 36, scope: !4997)
!5009 = !DILocation(line: 240, column: 26, scope: !4997)
!5010 = !DILocation(line: 240, column: 30, scope: !4997)
!5011 = !DILocation(line: 240, column: 8, scope: !4997)
!5012 = !DILocation(line: 239, column: 2, scope: !4997)
!5013 = distinct !DISubprogram(name: "kasan_check_read", scope: !4900, file: !4900, line: 40, type: !4901, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5014)
!5014 = !{!5015, !5016}
!5015 = !DILocalVariable(name: "p", arg: 1, scope: !5013, file: !4900, line: 40, type: !4875)
!5016 = !DILocalVariable(name: "size", arg: 2, scope: !5013, file: !4900, line: 40, type: !18)
!5017 = !DILocation(line: 40, column: 58, scope: !5013)
!5018 = !DILocation(line: 40, column: 74, scope: !5013)
!5019 = !DILocation(line: 42, column: 2, scope: !5013)
!5020 = distinct !DISubprogram(name: "constant_test_bit", scope: !4998, file: !4998, line: 204, type: !5021, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5023)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!217, !141, !4938}
!5023 = !{!5024, !5025}
!5024 = !DILocalVariable(name: "nr", arg: 1, scope: !5020, file: !4998, line: 204, type: !141)
!5025 = !DILocalVariable(name: "addr", arg: 2, scope: !5020, file: !4998, line: 204, type: !4938)
!5026 = !DILocation(line: 204, column: 52, scope: !5020)
!5027 = !DILocation(line: 204, column: 86, scope: !5020)
!5028 = !DILocation(line: 206, column: 19, scope: !5020)
!5029 = !DILocation(line: 206, column: 22, scope: !5020)
!5030 = !DILocation(line: 206, column: 15, scope: !5020)
!5031 = !DILocation(line: 207, column: 4, scope: !5020)
!5032 = !DILocation(line: 207, column: 9, scope: !5020)
!5033 = !DILocation(line: 207, column: 12, scope: !5020)
!5034 = !DILocation(line: 206, column: 44, scope: !5020)
!5035 = !DILocation(line: 207, column: 37, scope: !5020)
!5036 = !DILocation(line: 206, column: 2, scope: !5020)
!5037 = distinct !DISubprogram(name: "variable_test_bit", scope: !4998, file: !4998, line: 224, type: !5021, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5038)
!5038 = !{!5039, !5040, !5041}
!5039 = !DILocalVariable(name: "nr", arg: 1, scope: !5037, file: !4998, line: 224, type: !141)
!5040 = !DILocalVariable(name: "addr", arg: 2, scope: !5037, file: !4998, line: 224, type: !4938)
!5041 = !DILocalVariable(name: "oldbit", scope: !5037, file: !4998, line: 226, type: !217)
!5042 = !DILocation(line: 224, column: 52, scope: !5037)
!5043 = !DILocation(line: 224, column: 86, scope: !5037)
!5044 = !DILocation(line: 226, column: 2, scope: !5037)
!5045 = !DILocation(line: 226, column: 7, scope: !5037)
!5046 = !DILocation(line: 231, column: 33, scope: !5037)
!5047 = !DILocation(line: 231, column: 46, scope: !5037)
!5048 = !DILocation(line: 228, column: 2, scope: !5037)
!5049 = !{i64 2148050155, i64 2148050229}
!5050 = !DILocation(line: 233, column: 9, scope: !5037)
!5051 = !DILocation(line: 234, column: 1, scope: !5037)
!5052 = !DILocation(line: 233, column: 2, scope: !5037)
!5053 = !DISubprogram(name: "dma_fence_wait_timeout", scope: !2, file: !2, line: 605, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5054 = distinct !DISubprogram(name: "__dma_fence_is_later", scope: !2, file: !2, line: 471, type: !5055, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5057)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!217, !274, !274, !212}
!5057 = !{!5058, !5059, !5060}
!5058 = !DILocalVariable(name: "f1", arg: 1, scope: !5054, file: !2, line: 471, type: !274)
!5059 = !DILocalVariable(name: "f2", arg: 2, scope: !5054, file: !2, line: 471, type: !274)
!5060 = !DILocalVariable(name: "ops", arg: 3, scope: !5054, file: !2, line: 472, type: !212)
!5061 = !DILocation(line: 471, column: 45, scope: !5054)
!5062 = !DILocation(line: 471, column: 53, scope: !5054)
!5063 = !DILocation(line: 472, column: 34, scope: !5054)
!5064 = !DILocation(line: 478, column: 6, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5054, file: !2, line: 478, column: 6)
!5066 = !DILocation(line: 478, column: 11, scope: !5065)
!5067 = !DILocation(line: 478, column: 6, scope: !5054)
!5068 = !DILocation(line: 479, column: 10, scope: !5065)
!5069 = !DILocation(line: 479, column: 15, scope: !5065)
!5070 = !DILocation(line: 479, column: 13, scope: !5065)
!5071 = !DILocation(line: 479, column: 3, scope: !5065)
!5072 = !DILocation(line: 481, column: 15, scope: !5054)
!5073 = !DILocation(line: 481, column: 35, scope: !5054)
!5074 = !DILocation(line: 481, column: 33, scope: !5054)
!5075 = !DILocation(line: 481, column: 54, scope: !5054)
!5076 = !DILocation(line: 481, column: 2, scope: !5054)
!5077 = !DILocation(line: 482, column: 1, scope: !5054)
!5078 = distinct !DISubprogram(name: "kref_get", scope: !281, file: !281, line: 43, type: !4761, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5079)
!5079 = !{!5080}
!5080 = !DILocalVariable(name: "kref", arg: 1, scope: !5078, file: !281, line: 43, type: !4759)
!5081 = !DILocation(line: 43, column: 42, scope: !5078)
!5082 = !DILocation(line: 45, column: 16, scope: !5078)
!5083 = !DILocation(line: 45, column: 22, scope: !5078)
!5084 = !DILocation(line: 45, column: 2, scope: !5078)
!5085 = !DILocation(line: 46, column: 1, scope: !5078)
!5086 = distinct !DISubprogram(name: "refcount_inc", scope: !111, file: !111, line: 265, type: !5087, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5089)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{null, !4782}
!5089 = !{!5090}
!5090 = !DILocalVariable(name: "r", arg: 1, scope: !5086, file: !111, line: 265, type: !4782)
!5091 = !DILocation(line: 265, column: 45, scope: !5086)
!5092 = !DILocation(line: 267, column: 17, scope: !5086)
!5093 = !DILocation(line: 267, column: 2, scope: !5086)
!5094 = !DILocation(line: 268, column: 1, scope: !5086)
!5095 = distinct !DISubprogram(name: "__refcount_inc", scope: !111, file: !111, line: 248, type: !5096, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5098)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{null, !4782, !2322}
!5098 = !{!5099, !5100}
!5099 = !DILocalVariable(name: "r", arg: 1, scope: !5095, file: !111, line: 248, type: !4782)
!5100 = !DILocalVariable(name: "oldp", arg: 2, scope: !5095, file: !111, line: 248, type: !2322)
!5101 = !DILocation(line: 248, column: 47, scope: !5095)
!5102 = !DILocation(line: 248, column: 55, scope: !5095)
!5103 = !DILocation(line: 250, column: 20, scope: !5095)
!5104 = !DILocation(line: 250, column: 23, scope: !5095)
!5105 = !DILocation(line: 250, column: 2, scope: !5095)
!5106 = !DILocation(line: 251, column: 1, scope: !5095)
!5107 = distinct !DISubprogram(name: "__refcount_add", scope: !111, file: !111, line: 191, type: !5108, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5110)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{null, !142, !4782, !2322}
!5110 = !{!5111, !5112, !5113, !5114}
!5111 = !DILocalVariable(name: "i", arg: 1, scope: !5107, file: !111, line: 191, type: !142)
!5112 = !DILocalVariable(name: "r", arg: 2, scope: !5107, file: !111, line: 191, type: !4782)
!5113 = !DILocalVariable(name: "oldp", arg: 3, scope: !5107, file: !111, line: 191, type: !2322)
!5114 = !DILocalVariable(name: "old", scope: !5107, file: !111, line: 193, type: !142)
!5115 = !DILocation(line: 191, column: 39, scope: !5107)
!5116 = !DILocation(line: 191, column: 54, scope: !5107)
!5117 = !DILocation(line: 191, column: 62, scope: !5107)
!5118 = !DILocation(line: 193, column: 2, scope: !5107)
!5119 = !DILocation(line: 193, column: 6, scope: !5107)
!5120 = !DILocation(line: 193, column: 37, scope: !5107)
!5121 = !DILocation(line: 193, column: 41, scope: !5107)
!5122 = !DILocation(line: 193, column: 44, scope: !5107)
!5123 = !DILocation(line: 193, column: 12, scope: !5107)
!5124 = !DILocation(line: 195, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5107, file: !111, line: 195, column: 6)
!5126 = !DILocation(line: 195, column: 6, scope: !5107)
!5127 = !DILocation(line: 196, column: 11, scope: !5125)
!5128 = !DILocation(line: 196, column: 4, scope: !5125)
!5129 = !DILocation(line: 196, column: 9, scope: !5125)
!5130 = !DILocation(line: 196, column: 3, scope: !5125)
!5131 = !DILocation(line: 198, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5107, file: !111, line: 198, column: 6)
!5133 = !DILocation(line: 198, column: 6, scope: !5107)
!5134 = !DILocation(line: 199, column: 26, scope: !5132)
!5135 = !DILocation(line: 199, column: 3, scope: !5132)
!5136 = !DILocation(line: 200, column: 11, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5132, file: !111, line: 200, column: 11)
!5138 = !DILocation(line: 200, column: 11, scope: !5132)
!5139 = !DILocation(line: 201, column: 26, scope: !5137)
!5140 = !DILocation(line: 201, column: 3, scope: !5137)
!5141 = !DILocation(line: 202, column: 1, scope: !5107)
!5142 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4850, file: !4850, line: 250, type: !4851, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5143)
!5143 = !{!5144, !5145}
!5144 = !DILocalVariable(name: "i", arg: 1, scope: !5142, file: !4850, line: 250, type: !142)
!5145 = !DILocalVariable(name: "v", arg: 2, scope: !5142, file: !4850, line: 250, type: !4853)
!5146 = !DILocation(line: 250, column: 30, scope: !5142)
!5147 = !DILocation(line: 250, column: 43, scope: !5142)
!5148 = !DILocation(line: 252, column: 31, scope: !5142)
!5149 = !DILocation(line: 252, column: 2, scope: !5142)
!5150 = !DILocation(line: 253, column: 38, scope: !5142)
!5151 = !DILocation(line: 253, column: 41, scope: !5142)
!5152 = !DILocation(line: 253, column: 9, scope: !5142)
!5153 = !DILocation(line: 253, column: 2, scope: !5142)
!5154 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4889, file: !4889, line: 731, type: !4851, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5155)
!5155 = !{!5156, !5157}
!5156 = !DILocalVariable(name: "i", arg: 1, scope: !5154, file: !4889, line: 731, type: !142)
!5157 = !DILocalVariable(name: "v", arg: 2, scope: !5154, file: !4889, line: 731, type: !4853)
!5158 = !DILocation(line: 731, column: 34, scope: !5154)
!5159 = !DILocation(line: 731, column: 47, scope: !5154)
!5160 = !DILocation(line: 736, column: 31, scope: !5154)
!5161 = !DILocation(line: 736, column: 34, scope: !5154)
!5162 = !DILocation(line: 736, column: 9, scope: !5154)
!5163 = !DILocation(line: 736, column: 2, scope: !5154)
!5164 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4922, file: !4922, line: 95, type: !4851, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5165)
!5165 = !{!5166, !5167, !5168}
!5166 = !DILocalVariable(name: "i", arg: 1, scope: !5164, file: !4922, line: 95, type: !142)
!5167 = !DILocalVariable(name: "v", arg: 2, scope: !5164, file: !4922, line: 95, type: !4853)
!5168 = !DILocalVariable(name: "__ret", scope: !5169, file: !4922, line: 97, type: !142)
!5169 = distinct !DILexicalBlock(scope: !5164, file: !4922, line: 97, column: 9)
!5170 = !DILocation(line: 95, column: 54, scope: !5164)
!5171 = !DILocation(line: 95, column: 67, scope: !5164)
!5172 = !DILocation(line: 97, column: 9, scope: !5169)
!5173 = !{i64 2148884146, i64 2148884185, i64 2148884206, i64 2148884243, i64 2148884266, i64 2148884275}
!5174 = !DILocation(line: 97, column: 9, scope: !5164)
!5175 = !DILocation(line: 97, column: 2, scope: !5164)
!5176 = distinct !DISubprogram(name: "kmalloc_array", scope: !9, file: !9, line: 629, type: !5177, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5179)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!137, !1282, !1282, !147}
!5179 = !{!5180, !5181, !5182, !5183}
!5180 = !DILocalVariable(name: "n", arg: 1, scope: !5176, file: !9, line: 629, type: !1282)
!5181 = !DILocalVariable(name: "size", arg: 2, scope: !5176, file: !9, line: 629, type: !1282)
!5182 = !DILocalVariable(name: "flags", arg: 3, scope: !5176, file: !9, line: 629, type: !147)
!5183 = !DILocalVariable(name: "bytes", scope: !5176, file: !9, line: 631, type: !1282)
!5184 = !DILocation(line: 629, column: 61, scope: !5176)
!5185 = !DILocation(line: 629, column: 71, scope: !5176)
!5186 = !DILocation(line: 629, column: 83, scope: !5176)
!5187 = !DILocation(line: 631, column: 2, scope: !5176)
!5188 = !DILocation(line: 631, column: 9, scope: !5176)
!5189 = !DILocation(line: 633, column: 6, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5176, file: !9, line: 633, column: 6)
!5191 = !DILocation(line: 633, column: 6, scope: !5176)
!5192 = !DILocation(line: 634, column: 3, scope: !5190)
!5193 = !DILocation(line: 635, column: 27, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5176, file: !9, line: 635, column: 6)
!5195 = !DILocation(line: 635, column: 6, scope: !5194)
!5196 = !DILocation(line: 635, column: 30, scope: !5194)
!5197 = !DILocation(line: 635, column: 54, scope: !5194)
!5198 = !DILocation(line: 635, column: 33, scope: !5194)
!5199 = !DILocation(line: 635, column: 6, scope: !5176)
!5200 = !DILocation(line: 636, column: 18, scope: !5194)
!5201 = !DILocation(line: 636, column: 25, scope: !5194)
!5202 = !DILocation(line: 636, column: 10, scope: !5194)
!5203 = !DILocation(line: 636, column: 3, scope: !5194)
!5204 = !DILocation(line: 637, column: 19, scope: !5176)
!5205 = !DILocation(line: 637, column: 26, scope: !5176)
!5206 = !DILocation(line: 637, column: 9, scope: !5176)
!5207 = !DILocation(line: 637, column: 2, scope: !5176)
!5208 = !DILocation(line: 638, column: 1, scope: !5176)
!5209 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5210, file: !5210, line: 51, type: !5211, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5213)
!5210 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!217, !217}
!5213 = !{!5214}
!5214 = !DILocalVariable(name: "overflow", arg: 1, scope: !5209, file: !5210, line: 51, type: !217)
!5215 = !DILocation(line: 51, column: 60, scope: !5209)
!5216 = !DILocation(line: 53, column: 9, scope: !5209)
!5217 = !DILocation(line: 53, column: 2, scope: !5209)
!5218 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !5219, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5221)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!137, !1282, !147}
!5221 = !{!5222, !5223, !5224}
!5222 = !DILocalVariable(name: "size", arg: 1, scope: !5218, file: !9, line: 591, type: !1282)
!5223 = !DILocalVariable(name: "flags", arg: 2, scope: !5218, file: !9, line: 591, type: !147)
!5224 = !DILocalVariable(name: "index", scope: !5225, file: !9, line: 594, type: !18)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !9, line: 593, column: 42)
!5226 = distinct !DILexicalBlock(scope: !5218, file: !9, line: 593, column: 6)
!5227 = !DILocation(line: 591, column: 61, scope: !5218)
!5228 = !DILocation(line: 591, column: 73, scope: !5218)
!5229 = !DILocation(line: 593, column: 27, scope: !5226)
!5230 = !DILocation(line: 593, column: 6, scope: !5226)
!5231 = !DILocation(line: 593, column: 33, scope: !5226)
!5232 = !DILocation(line: 593, column: 36, scope: !5226)
!5233 = !DILocation(line: 593, column: 6, scope: !5218)
!5234 = !DILocation(line: 594, column: 3, scope: !5225)
!5235 = !DILocation(line: 594, column: 16, scope: !5225)
!5236 = !DILocation(line: 596, column: 7, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5225, file: !9, line: 596, column: 7)
!5238 = !DILocation(line: 596, column: 12, scope: !5237)
!5239 = !DILocation(line: 596, column: 7, scope: !5225)
!5240 = !DILocation(line: 597, column: 25, scope: !5237)
!5241 = !DILocation(line: 597, column: 31, scope: !5237)
!5242 = !DILocation(line: 597, column: 11, scope: !5237)
!5243 = !DILocation(line: 597, column: 4, scope: !5237)
!5244 = !DILocation(line: 599, column: 11, scope: !5225)
!5245 = !DILocation(line: 599, column: 9, scope: !5225)
!5246 = !DILocation(line: 601, column: 33, scope: !5225)
!5247 = !DILocation(line: 601, column: 40, scope: !5225)
!5248 = !DILocation(line: 601, column: 20, scope: !5225)
!5249 = !DILocation(line: 601, column: 5, scope: !5225)
!5250 = !DILocation(line: 601, column: 51, scope: !5225)
!5251 = !DILocation(line: 602, column: 5, scope: !5225)
!5252 = !DILocation(line: 602, column: 12, scope: !5225)
!5253 = !DILocation(line: 600, column: 10, scope: !5225)
!5254 = !DILocation(line: 600, column: 3, scope: !5225)
!5255 = !DILocation(line: 603, column: 2, scope: !5226)
!5256 = !DILocation(line: 604, column: 19, scope: !5218)
!5257 = !DILocation(line: 604, column: 25, scope: !5218)
!5258 = !DILocation(line: 604, column: 9, scope: !5218)
!5259 = !DILocation(line: 604, column: 2, scope: !5218)
!5260 = !DILocation(line: 605, column: 1, scope: !5218)
!5261 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !5219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5262 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !5219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5263 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !5264, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5266)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!18, !1282, !217}
!5266 = !{!5267, !5268}
!5267 = !DILocalVariable(name: "size", arg: 1, scope: !5263, file: !9, line: 444, type: !1282)
!5268 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5263, file: !9, line: 445, type: !217)
!5269 = !DILocation(line: 444, column: 60, scope: !5263)
!5270 = !DILocation(line: 445, column: 16, scope: !5263)
!5271 = !DILocation(line: 447, column: 7, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 447, column: 6)
!5273 = !DILocation(line: 447, column: 6, scope: !5263)
!5274 = !DILocation(line: 448, column: 3, scope: !5272)
!5275 = !DILocation(line: 450, column: 6, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 450, column: 6)
!5277 = !DILocation(line: 450, column: 11, scope: !5276)
!5278 = !DILocation(line: 450, column: 6, scope: !5263)
!5279 = !DILocation(line: 451, column: 3, scope: !5276)
!5280 = !DILocation(line: 453, column: 32, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 453, column: 6)
!5282 = !DILocation(line: 453, column: 37, scope: !5281)
!5283 = !DILocation(line: 453, column: 42, scope: !5281)
!5284 = !DILocation(line: 453, column: 45, scope: !5281)
!5285 = !DILocation(line: 453, column: 50, scope: !5281)
!5286 = !DILocation(line: 453, column: 6, scope: !5263)
!5287 = !DILocation(line: 454, column: 3, scope: !5281)
!5288 = !DILocation(line: 455, column: 32, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 455, column: 6)
!5290 = !DILocation(line: 455, column: 37, scope: !5289)
!5291 = !DILocation(line: 455, column: 43, scope: !5289)
!5292 = !DILocation(line: 455, column: 46, scope: !5289)
!5293 = !DILocation(line: 455, column: 51, scope: !5289)
!5294 = !DILocation(line: 455, column: 6, scope: !5263)
!5295 = !DILocation(line: 456, column: 3, scope: !5289)
!5296 = !DILocation(line: 457, column: 6, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 457, column: 6)
!5298 = !DILocation(line: 457, column: 11, scope: !5297)
!5299 = !DILocation(line: 457, column: 6, scope: !5263)
!5300 = !DILocation(line: 457, column: 26, scope: !5297)
!5301 = !DILocation(line: 458, column: 6, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 458, column: 6)
!5303 = !DILocation(line: 458, column: 11, scope: !5302)
!5304 = !DILocation(line: 458, column: 6, scope: !5263)
!5305 = !DILocation(line: 458, column: 26, scope: !5302)
!5306 = !DILocation(line: 459, column: 6, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 459, column: 6)
!5308 = !DILocation(line: 459, column: 11, scope: !5307)
!5309 = !DILocation(line: 459, column: 6, scope: !5263)
!5310 = !DILocation(line: 459, column: 26, scope: !5307)
!5311 = !DILocation(line: 460, column: 6, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 460, column: 6)
!5313 = !DILocation(line: 460, column: 11, scope: !5312)
!5314 = !DILocation(line: 460, column: 6, scope: !5263)
!5315 = !DILocation(line: 460, column: 26, scope: !5312)
!5316 = !DILocation(line: 461, column: 6, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 461, column: 6)
!5318 = !DILocation(line: 461, column: 11, scope: !5317)
!5319 = !DILocation(line: 461, column: 6, scope: !5263)
!5320 = !DILocation(line: 461, column: 26, scope: !5317)
!5321 = !DILocation(line: 462, column: 6, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 462, column: 6)
!5323 = !DILocation(line: 462, column: 11, scope: !5322)
!5324 = !DILocation(line: 462, column: 6, scope: !5263)
!5325 = !DILocation(line: 462, column: 26, scope: !5322)
!5326 = !DILocation(line: 463, column: 6, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 463, column: 6)
!5328 = !DILocation(line: 463, column: 11, scope: !5327)
!5329 = !DILocation(line: 463, column: 6, scope: !5263)
!5330 = !DILocation(line: 463, column: 26, scope: !5327)
!5331 = !DILocation(line: 464, column: 6, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 464, column: 6)
!5333 = !DILocation(line: 464, column: 11, scope: !5332)
!5334 = !DILocation(line: 464, column: 6, scope: !5263)
!5335 = !DILocation(line: 464, column: 26, scope: !5332)
!5336 = !DILocation(line: 465, column: 6, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 465, column: 6)
!5338 = !DILocation(line: 465, column: 11, scope: !5337)
!5339 = !DILocation(line: 465, column: 6, scope: !5263)
!5340 = !DILocation(line: 465, column: 26, scope: !5337)
!5341 = !DILocation(line: 466, column: 6, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 466, column: 6)
!5343 = !DILocation(line: 466, column: 11, scope: !5342)
!5344 = !DILocation(line: 466, column: 6, scope: !5263)
!5345 = !DILocation(line: 466, column: 26, scope: !5342)
!5346 = !DILocation(line: 467, column: 6, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 467, column: 6)
!5348 = !DILocation(line: 467, column: 11, scope: !5347)
!5349 = !DILocation(line: 467, column: 6, scope: !5263)
!5350 = !DILocation(line: 467, column: 26, scope: !5347)
!5351 = !DILocation(line: 468, column: 6, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 468, column: 6)
!5353 = !DILocation(line: 468, column: 11, scope: !5352)
!5354 = !DILocation(line: 468, column: 6, scope: !5263)
!5355 = !DILocation(line: 468, column: 26, scope: !5352)
!5356 = !DILocation(line: 469, column: 6, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 469, column: 6)
!5358 = !DILocation(line: 469, column: 11, scope: !5357)
!5359 = !DILocation(line: 469, column: 6, scope: !5263)
!5360 = !DILocation(line: 469, column: 26, scope: !5357)
!5361 = !DILocation(line: 470, column: 6, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 470, column: 6)
!5363 = !DILocation(line: 470, column: 11, scope: !5362)
!5364 = !DILocation(line: 470, column: 6, scope: !5263)
!5365 = !DILocation(line: 470, column: 26, scope: !5362)
!5366 = !DILocation(line: 471, column: 6, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 471, column: 6)
!5368 = !DILocation(line: 471, column: 11, scope: !5367)
!5369 = !DILocation(line: 471, column: 6, scope: !5263)
!5370 = !DILocation(line: 471, column: 26, scope: !5367)
!5371 = !DILocation(line: 472, column: 6, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 472, column: 6)
!5373 = !DILocation(line: 472, column: 11, scope: !5372)
!5374 = !DILocation(line: 472, column: 6, scope: !5263)
!5375 = !DILocation(line: 472, column: 26, scope: !5372)
!5376 = !DILocation(line: 473, column: 6, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 473, column: 6)
!5378 = !DILocation(line: 473, column: 11, scope: !5377)
!5379 = !DILocation(line: 473, column: 6, scope: !5263)
!5380 = !DILocation(line: 473, column: 26, scope: !5377)
!5381 = !DILocation(line: 474, column: 6, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 474, column: 6)
!5383 = !DILocation(line: 474, column: 11, scope: !5382)
!5384 = !DILocation(line: 474, column: 6, scope: !5263)
!5385 = !DILocation(line: 474, column: 27, scope: !5382)
!5386 = !DILocation(line: 475, column: 6, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 475, column: 6)
!5388 = !DILocation(line: 475, column: 11, scope: !5387)
!5389 = !DILocation(line: 475, column: 6, scope: !5263)
!5390 = !DILocation(line: 475, column: 32, scope: !5387)
!5391 = !DILocation(line: 477, column: 50, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5263, file: !9, line: 477, column: 6)
!5393 = !DILocation(line: 477, column: 6, scope: !5263)
!5394 = !DILocation(line: 478, column: 3, scope: !5392)
!5395 = !DILocation(line: 478, column: 3, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5397, file: !9, line: 478, column: 3)
!5397 = distinct !DILexicalBlock(scope: !5392, file: !9, line: 478, column: 3)
!5398 = !{i32 -2143020679}
!5399 = !DILocation(line: 478, column: 3, scope: !5397)
!5400 = !DILocation(line: 480, column: 3, scope: !5392)
!5401 = !DILocation(line: 480, column: 3, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5392, file: !9, line: 480, column: 3)
!5403 = !DILocation(line: 480, column: 3, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5402, file: !9, line: 480, column: 3)
!5405 = !DILocation(line: 480, column: 3, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5402, file: !9, line: 480, column: 3)
!5407 = !{i64 2151946820, i64 2151946849, i64 2151946895, i64 2151946953, i64 2151947007, i64 2151947061, i64 2151947116, i64 2151947147}
!5408 = !DILocation(line: 483, column: 2, scope: !5263)
!5409 = !DILocation(line: 484, column: 1, scope: !5263)
!5410 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !5411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!137, !5413, !147, !1282}
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5415, line: 11, flags: DIFlagFwdDecl)
!5415 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5416 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !5417, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !5419)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!124, !147, !136}
!5419 = !{!5420, !5421}
!5420 = !DILocalVariable(name: "flags", arg: 1, scope: !5416, file: !9, line: 401, type: !147)
!5421 = !DILocalVariable(name: "caller", arg: 2, scope: !5416, file: !9, line: 401, type: !136)
!5422 = !DILocation(line: 401, column: 67, scope: !5416)
!5423 = !DILocation(line: 401, column: 88, scope: !5416)
!5424 = !DILocation(line: 407, column: 6, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5416, file: !9, line: 407, column: 6)
!5426 = !DILocation(line: 407, column: 6, scope: !5416)
!5427 = !DILocation(line: 413, column: 3, scope: !5425)
!5428 = !DILocation(line: 423, column: 38, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5416, file: !9, line: 423, column: 6)
!5430 = !DILocation(line: 423, column: 44, scope: !5429)
!5431 = !DILocation(line: 423, column: 6, scope: !5416)
!5432 = !DILocation(line: 424, column: 3, scope: !5429)
!5433 = !DILocation(line: 426, column: 3, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5416, file: !9, line: 425, column: 6)
!5435 = !DILocation(line: 429, column: 1, scope: !5416)
!5436 = !DISubprogram(name: "__compiletime_assert_177", scope: !9, file: !9, line: 478, type: !2539, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
