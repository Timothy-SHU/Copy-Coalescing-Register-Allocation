; ModuleID = 'drivers/gpu/drm/i915/i915_scatterlist.c'
source_filename = "drivers/gpu/drm/i915/i915_scatterlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_refct_sgt_ops = type { ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.i915_refct_sgt = type { %struct.kref, %struct.sg_table, i64, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i64, ptr, ptr }
%struct.ttm_resource = type { i64, i64, i32, i32, %struct.ttm_bus_placement, ptr, %struct.list_head }
%struct.ttm_bus_placement = type { ptr, i64, i8, i32 }
%struct.i915_ttm_buddy_resource = type { %struct.ttm_resource, %struct.list_head, i64, i64, ptr }
%struct.drm_buddy_block = type { i64, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.drm_buddy = type { ptr, ptr, i32, i32, i64, i64, i64 }

@rsgt_ops = internal constant %struct.i915_refct_sgt_ops { ptr @i915_refct_sgt_release }, align 8, !dbg !0
@.str = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/i915/i915_scatterlist.c\00", align 1, !dbg !4174
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/scatterlist.h\00", align 1, !dbg !4179
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4184

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @i915_sg_trim(ptr noundef %orig_st) #0 align 16 !dbg !4198 {
entry:
  %retval = alloca i1, align 1
  %orig_st.addr = alloca ptr, align 8
  %new_st = alloca %struct.sg_table, align 8
  %sg = alloca ptr, align 8
  %new_sg = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %orig_st, ptr %orig_st.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig_st.addr, metadata !4203, metadata !DIExpression()), !dbg !4208
  call void @llvm.lifetime.start.p0(i64 16, ptr %new_st) #13, !dbg !4209
  call void @llvm.dbg.declare(metadata ptr %new_st, metadata !4204, metadata !DIExpression()), !dbg !4210
  call void @llvm.lifetime.start.p0(i64 8, ptr %sg) #13, !dbg !4211
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !4205, metadata !DIExpression()), !dbg !4212
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_sg) #13, !dbg !4211
  call void @llvm.dbg.declare(metadata ptr %new_sg, metadata !4206, metadata !DIExpression()), !dbg !4213
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !4214
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4207, metadata !DIExpression()), !dbg !4215
  %0 = load ptr, ptr %orig_st.addr, align 8, !dbg !4216
  %nents = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 1, !dbg !4218
  %1 = load i32, ptr %nents, align 8, !dbg !4218
  %2 = load ptr, ptr %orig_st.addr, align 8, !dbg !4219
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 2, !dbg !4220
  %3 = load i32, ptr %orig_nents, align 4, !dbg !4220
  %cmp = icmp eq i32 %1, %3, !dbg !4221
  br i1 %cmp, label %if.then, label %if.end, !dbg !4222

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4223

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %orig_st.addr, align 8, !dbg !4224
  %nents1 = getelementptr inbounds %struct.sg_table, ptr %4, i32 0, i32 1, !dbg !4226
  %5 = load i32, ptr %nents1, align 8, !dbg !4226
  %call = call i32 @sg_alloc_table(ptr noundef %new_st, i32 noundef %5, i32 noundef 11456) #14, !dbg !4227
  %tobool = icmp ne i32 %call, 0, !dbg !4227
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !4228

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !4229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4229

if.end3:                                          ; preds = %if.end
  %sgl = getelementptr inbounds %struct.sg_table, ptr %new_st, i32 0, i32 0, !dbg !4230
  %6 = load ptr, ptr %sgl, align 8, !dbg !4230
  store ptr %6, ptr %new_sg, align 8, !dbg !4231
  store i32 0, ptr %i, align 4, !dbg !4232
  %7 = load ptr, ptr %orig_st.addr, align 8, !dbg !4232
  %sgl4 = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 0, !dbg !4232
  %8 = load ptr, ptr %sgl4, align 8, !dbg !4232
  store ptr %8, ptr %sg, align 8, !dbg !4232
  br label %for.cond, !dbg !4232

for.cond:                                         ; preds = %for.inc, %if.end3
  %9 = load i32, ptr %i, align 4, !dbg !4234
  %10 = load ptr, ptr %orig_st.addr, align 8, !dbg !4234
  %nents5 = getelementptr inbounds %struct.sg_table, ptr %10, i32 0, i32 1, !dbg !4234
  %11 = load i32, ptr %nents5, align 8, !dbg !4234
  %cmp6 = icmp ult i32 %9, %11, !dbg !4234
  br i1 %cmp6, label %for.body, label %for.end, !dbg !4232

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %new_sg, align 8, !dbg !4236
  %13 = load ptr, ptr %sg, align 8, !dbg !4238
  %call7 = call ptr @sg_page(ptr noundef %13) #14, !dbg !4239
  %14 = load ptr, ptr %sg, align 8, !dbg !4240
  %length = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2, !dbg !4241
  %15 = load i32, ptr %length, align 4, !dbg !4241
  call void @sg_set_page(ptr noundef %12, ptr noundef %call7, i32 noundef %15, i32 noundef 0) #14, !dbg !4242
  %16 = load ptr, ptr %sg, align 8, !dbg !4243
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 3, !dbg !4243
  %17 = load i64, ptr %dma_address, align 8, !dbg !4243
  %18 = load ptr, ptr %new_sg, align 8, !dbg !4244
  %dma_address8 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 3, !dbg !4244
  store i64 %17, ptr %dma_address8, align 8, !dbg !4245
  %19 = load ptr, ptr %sg, align 8, !dbg !4246
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 4, !dbg !4246
  %20 = load i32, ptr %dma_length, align 8, !dbg !4246
  %21 = load ptr, ptr %new_sg, align 8, !dbg !4247
  %dma_length9 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 4, !dbg !4247
  store i32 %20, ptr %dma_length9, align 8, !dbg !4248
  %22 = load ptr, ptr %new_sg, align 8, !dbg !4249
  %call10 = call ptr @sg_next(ptr noundef %22) #14, !dbg !4250
  store ptr %call10, ptr %new_sg, align 8, !dbg !4251
  br label %for.inc, !dbg !4252

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !4234
  %inc = add i32 %23, 1, !dbg !4234
  store i32 %inc, ptr %i, align 4, !dbg !4234
  %24 = load ptr, ptr %sg, align 8, !dbg !4234
  %call11 = call ptr @sg_next(ptr noundef %24) #14, !dbg !4234
  store ptr %call11, ptr %sg, align 8, !dbg !4234
  br label %for.cond, !dbg !4234, !llvm.loop !4253

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %orig_st.addr, align 8, !dbg !4257
  call void @sg_free_table(ptr noundef %25) #14, !dbg !4258
  %26 = load ptr, ptr %orig_st.addr, align 8, !dbg !4259
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %new_st, i64 16, i1 false), !dbg !4260
  store i1 true, ptr %retval, align 1, !dbg !4261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4261

cleanup:                                          ; preds = %for.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !4262
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_sg) #13, !dbg !4262
  call void @llvm.lifetime.end.p0(i64 8, ptr %sg) #13, !dbg !4262
  call void @llvm.lifetime.end.p0(i64 16, ptr %new_st) #13, !dbg !4262
  %27 = load i1, ptr %retval, align 1, !dbg !4262
  ret i1 %27, !dbg !4262
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4263 dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_set_page(ptr noundef %sg, ptr noundef %page, i32 noundef %len, i32 noundef %offset) #4 align 16 !dbg !4266 {
entry:
  %sg.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !4270, metadata !DIExpression()), !dbg !4274
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4271, metadata !DIExpression()), !dbg !4275
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4272, metadata !DIExpression()), !dbg !4276
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4273, metadata !DIExpression()), !dbg !4277
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !4278
  %1 = load ptr, ptr %page.addr, align 8, !dbg !4279
  call void @sg_assign_page(ptr noundef %0, ptr noundef %1) #14, !dbg !4280
  %2 = load i32, ptr %offset.addr, align 4, !dbg !4281
  %3 = load ptr, ptr %sg.addr, align 8, !dbg !4282
  %offset1 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 1, !dbg !4283
  store i32 %2, ptr %offset1, align 8, !dbg !4284
  %4 = load i32, ptr %len.addr, align 4, !dbg !4285
  %5 = load ptr, ptr %sg.addr, align 8, !dbg !4286
  %length = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 2, !dbg !4287
  store i32 %4, ptr %length, align 4, !dbg !4288
  ret void, !dbg !4289
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sg_page(ptr noundef %sg) #4 align 16 !dbg !4290 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !4294, metadata !DIExpression()), !dbg !4295
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !4296
  %page_link = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !4297
  %1 = load i64, ptr %page_link, align 8, !dbg !4297
  %and = and i64 %1, -4, !dbg !4298
  %2 = inttoptr i64 %and to ptr, !dbg !4299
  ret ptr %2, !dbg !4300
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4301 dso_local ptr @sg_next(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4304 dso_local void @sg_free_table(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_refct_sgt_init(ptr noundef %rsgt, i64 noundef %size) #0 align 16 !dbg !4307 {
entry:
  %rsgt.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %rsgt, ptr %rsgt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsgt.addr, metadata !4311, metadata !DIExpression()), !dbg !4313
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4312, metadata !DIExpression()), !dbg !4314
  %0 = load ptr, ptr %rsgt.addr, align 8, !dbg !4315
  %1 = load i64, ptr %size.addr, align 8, !dbg !4316
  call void @__i915_refct_sgt_init(ptr noundef %0, i64 noundef %1, ptr noundef @rsgt_ops) #14, !dbg !4317
  ret void, !dbg !4318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__i915_refct_sgt_init(ptr noundef %rsgt, i64 noundef %size, ptr noundef %ops) #4 align 16 !dbg !4319 {
entry:
  %rsgt.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ops.addr = alloca ptr, align 8
  store ptr %rsgt, ptr %rsgt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsgt.addr, metadata !4323, metadata !DIExpression()), !dbg !4326
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4324, metadata !DIExpression()), !dbg !4327
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !4325, metadata !DIExpression()), !dbg !4328
  %0 = load ptr, ptr %rsgt.addr, align 8, !dbg !4329
  %kref = getelementptr inbounds %struct.i915_refct_sgt, ptr %0, i32 0, i32 0, !dbg !4330
  call void @kref_init(ptr noundef %kref) #14, !dbg !4331
  %1 = load ptr, ptr %rsgt.addr, align 8, !dbg !4332
  %table = getelementptr inbounds %struct.i915_refct_sgt, ptr %1, i32 0, i32 1, !dbg !4333
  %sgl = getelementptr inbounds %struct.sg_table, ptr %table, i32 0, i32 0, !dbg !4334
  store ptr null, ptr %sgl, align 8, !dbg !4335
  %2 = load i64, ptr %size.addr, align 8, !dbg !4336
  %3 = load ptr, ptr %rsgt.addr, align 8, !dbg !4337
  %size1 = getelementptr inbounds %struct.i915_refct_sgt, ptr %3, i32 0, i32 2, !dbg !4338
  store i64 %2, ptr %size1, align 8, !dbg !4339
  %4 = load ptr, ptr %ops.addr, align 8, !dbg !4340
  %5 = load ptr, ptr %rsgt.addr, align 8, !dbg !4341
  %ops2 = getelementptr inbounds %struct.i915_refct_sgt, ptr %5, i32 0, i32 3, !dbg !4342
  store ptr %4, ptr %ops2, align 8, !dbg !4343
  ret void, !dbg !4344
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @i915_rsgt_from_mm_node(ptr noundef %node, i64 noundef %region_start, i32 noundef %page_alignment) #0 align 16 !dbg !4345 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %region_start.addr = alloca i64, align 8
  %page_alignment.addr = alloca i32, align 4
  %max_segment = alloca i32, align 4
  %segment_pages = alloca i32, align 4
  %block_size = alloca i64, align 8
  %offset = alloca i64, align 8
  %prev_end = alloca i64, align 8
  %rsgt = alloca ptr, align 8
  %st = alloca ptr, align 8
  %sg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %v = alloca i32, align 4
  %tmp = alloca i8, align 1
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i64, align 8
  %__flags = alloca i32, align 4
  %tmp30 = alloca i64, align 8
  %_tmp42 = alloca i64, align 8
  %__base47 = alloca i32, align 4
  %__rem48 = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  %tmp55 = alloca i64, align 8
  %len = alloca i64, align 8
  %__UNIQUE_ID___x302 = alloca i64, align 8
  %__UNIQUE_ID___y303 = alloca i64, align 8
  %tmp82 = alloca i64, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4381, metadata !DIExpression()), !dbg !4417
  store i64 %region_start, ptr %region_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_start.addr, metadata !4382, metadata !DIExpression()), !dbg !4418
  store i32 %page_alignment, ptr %page_alignment.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %page_alignment.addr, metadata !4383, metadata !DIExpression()), !dbg !4419
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_segment) #13, !dbg !4420
  call void @llvm.dbg.declare(metadata ptr %max_segment, metadata !4384, metadata !DIExpression()), !dbg !4421
  %0 = load i32, ptr %page_alignment.addr, align 4, !dbg !4422
  %sub = sub i32 %0, 1, !dbg !4422
  %not = xor i32 %sub, -1, !dbg !4422
  %and = and i32 -1, %not, !dbg !4422
  store i32 %and, ptr %max_segment, align 4, !dbg !4421
  call void @llvm.lifetime.start.p0(i64 4, ptr %segment_pages) #13, !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %segment_pages, metadata !4386, metadata !DIExpression()), !dbg !4424
  %1 = load i32, ptr %max_segment, align 4, !dbg !4425
  %shr = lshr i32 %1, 12, !dbg !4426
  store i32 %shr, ptr %segment_pages, align 4, !dbg !4424
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_size) #13, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %block_size, metadata !4387, metadata !DIExpression()), !dbg !4428
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #13, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !4388, metadata !DIExpression()), !dbg !4429
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_end) #13, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %prev_end, metadata !4389, metadata !DIExpression()), !dbg !4430
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsgt) #13, !dbg !4431
  call void @llvm.dbg.declare(metadata ptr %rsgt, metadata !4390, metadata !DIExpression()), !dbg !4432
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #13, !dbg !4433
  call void @llvm.dbg.declare(metadata ptr %st, metadata !4391, metadata !DIExpression()), !dbg !4434
  call void @llvm.lifetime.start.p0(i64 8, ptr %sg) #13, !dbg !4435
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !4392, metadata !DIExpression()), !dbg !4436
  %call = call noalias ptr @kmalloc(i64 noundef 40, i32 noundef 3264) #15, !dbg !4437
  store ptr %call, ptr %rsgt, align 8, !dbg !4438
  %2 = load ptr, ptr %rsgt, align 8, !dbg !4439
  %tobool = icmp ne ptr %2, null, !dbg !4439
  br i1 %tobool, label %if.end, label %if.then, !dbg !4441

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !4442
  store ptr %call1, ptr %retval, align 8, !dbg !4443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4443

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rsgt, align 8, !dbg !4444
  %4 = load ptr, ptr %node.addr, align 8, !dbg !4445
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %4, i32 0, i32 2, !dbg !4446
  %5 = load i64, ptr %size, align 8, !dbg !4446
  %shl = shl i64 %5, 12, !dbg !4447
  call void @i915_refct_sgt_init(ptr noundef %3, i64 noundef %shl) #14, !dbg !4448
  %6 = load ptr, ptr %rsgt, align 8, !dbg !4449
  %table = getelementptr inbounds %struct.i915_refct_sgt, ptr %6, i32 0, i32 1, !dbg !4450
  store ptr %table, ptr %st, align 8, !dbg !4451
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4452
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4393, metadata !DIExpression()), !dbg !4452
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #13, !dbg !4453
  call void @llvm.dbg.declare(metadata ptr %v, metadata !4396, metadata !DIExpression()), !dbg !4453
  store i32 0, ptr %v, align 4, !dbg !4453
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #13, !dbg !4454
  call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !4398, metadata !DIExpression()), !dbg !4454
  %7 = load ptr, ptr %node.addr, align 8, !dbg !4454
  %size2 = getelementptr inbounds %struct.drm_mm_node, ptr %7, i32 0, i32 2, !dbg !4454
  %8 = load i64, ptr %size2, align 8, !dbg !4454
  %9 = load i32, ptr %segment_pages, align 4, !dbg !4454
  %conv = zext i32 %9 to i64, !dbg !4454
  %add = add i64 %8, %conv, !dbg !4454
  %sub3 = sub i64 %add, 1, !dbg !4454
  store i64 %sub3, ptr %_tmp, align 8, !dbg !4454
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #13, !dbg !4455
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !4400, metadata !DIExpression()), !dbg !4455
  %10 = load i32, ptr %segment_pages, align 4, !dbg !4455
  store i32 %10, ptr %__base, align 4, !dbg !4455
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #13, !dbg !4455
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !4402, metadata !DIExpression()), !dbg !4455
  %11 = load i64, ptr %_tmp, align 8, !dbg !4455
  %12 = load i32, ptr %__base, align 4, !dbg !4455
  %conv4 = zext i32 %12 to i64, !dbg !4455
  %rem = urem i64 %11, %conv4, !dbg !4455
  %conv5 = trunc i64 %rem to i32, !dbg !4455
  store i32 %conv5, ptr %__rem, align 4, !dbg !4455
  %13 = load i64, ptr %_tmp, align 8, !dbg !4455
  %14 = load i32, ptr %__base, align 4, !dbg !4455
  %conv6 = zext i32 %14 to i64, !dbg !4455
  %div = udiv i64 %13, %conv6, !dbg !4455
  store i64 %div, ptr %_tmp, align 8, !dbg !4455
  %15 = load i32, ptr %__rem, align 4, !dbg !4455
  store i32 %15, ptr %tmp7, align 4, !dbg !4455
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #13, !dbg !4454
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #13, !dbg !4454
  %16 = load i32, ptr %tmp7, align 4, !dbg !4455
  %17 = load i64, ptr %_tmp, align 8, !dbg !4454
  store i64 %17, ptr %tmp8, align 8, !dbg !4454
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #13, !dbg !4453
  %18 = load i64, ptr %tmp8, align 8, !dbg !4454
  %19 = load i32, ptr %v, align 4, !dbg !4453
  %20 = zext i32 %19 to i64, !dbg !4453
  %21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 %20), !dbg !4453
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !4453
  %23 = extractvalue { i64, i1 } %21, 0, !dbg !4453
  %24 = trunc i64 %23 to i32, !dbg !4453
  %25 = zext i32 %24 to i64, !dbg !4453
  %26 = icmp ne i64 %23, %25, !dbg !4453
  %27 = or i1 %22, %26, !dbg !4453
  store i32 %24, ptr %v, align 4, !dbg !4453
  %call9 = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %27) #14, !dbg !4453
  %frombool = zext i1 %call9 to i8, !dbg !4453
  store i8 %frombool, ptr %tmp, align 1, !dbg !4453
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #13, !dbg !4452
  %28 = load i8, ptr %tmp, align 1, !dbg !4453, !range !4456, !noundef !1000
  %tobool10 = trunc i8 %28 to i1, !dbg !4453
  %lnot = xor i1 %tobool10, true, !dbg !4452
  %lnot11 = xor i1 %lnot, true, !dbg !4452
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !4452
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4452
  %29 = load i32, ptr %__ret_warn_on, align 4, !dbg !4457
  %tobool12 = icmp ne i32 %29, 0, !dbg !4457
  %lnot13 = xor i1 %tobool12, true, !dbg !4457
  %lnot15 = xor i1 %lnot13, true, !dbg !4457
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !4457
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !4457
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !4457
  %tobool18 = icmp ne i64 %expval, 0, !dbg !4457
  br i1 %tobool18, label %if.then19, label %if.end29, !dbg !4452

if.then19:                                        ; preds = %if.end
  br label %do.body, !dbg !4457

do.body:                                          ; preds = %if.then19
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !4458
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4403, metadata !DIExpression()), !dbg !4458
  store i32 2305, ptr %__flags, align 4, !dbg !4458
  br label %do.body20, !dbg !4458

do.body20:                                        ; preds = %do.body
  br label %do.cond, !dbg !4459

do.cond:                                          ; preds = %do.body20
  br label %do.end, !dbg !4459

do.end:                                           ; preds = %do.cond
  br label %do.body21, !dbg !4458

do.body21:                                        ; preds = %do.end
  %30 = load i32, ptr %__flags, align 4, !dbg !4461
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 101, i32 %30, i64 12) #13, !dbg !4461, !srcloc !4463
  br label %do.cond22, !dbg !4461

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !4461

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !4458

do.body24:                                        ; preds = %do.end23
  br label %do.cond25, !dbg !4464

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4464

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !4457
  br label %do.cond27, !dbg !4458

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !4458

do.end28:                                         ; preds = %do.cond27
  br label %if.end29, !dbg !4458

if.end29:                                         ; preds = %do.end28, %if.end
  %31 = load i32, ptr %__ret_warn_on, align 4, !dbg !4452
  %tobool31 = icmp ne i32 %31, 0, !dbg !4452
  %lnot32 = xor i1 %tobool31, true, !dbg !4452
  %lnot34 = xor i1 %lnot32, true, !dbg !4452
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !4452
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !4452
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !4452
  store i64 %expval37, ptr %tmp30, align 8, !dbg !4457
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4466
  %32 = load i64, ptr %tmp30, align 8, !dbg !4452
  %tobool38 = icmp ne i64 %32, 0, !dbg !4466
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !4467

if.then39:                                        ; preds = %if.end29
  %33 = load ptr, ptr %rsgt, align 8, !dbg !4468
  call void @i915_refct_sgt_put(ptr noundef %33) #14, !dbg !4470
  %call40 = call ptr @ERR_PTR(i64 noundef -7) #14, !dbg !4471
  store ptr %call40, ptr %retval, align 8, !dbg !4472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4472

if.end41:                                         ; preds = %if.end29
  %34 = load ptr, ptr %st, align 8, !dbg !4473
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp42) #13, !dbg !4474
  call void @llvm.dbg.declare(metadata ptr %_tmp42, metadata !4406, metadata !DIExpression()), !dbg !4474
  %35 = load ptr, ptr %node.addr, align 8, !dbg !4474
  %size43 = getelementptr inbounds %struct.drm_mm_node, ptr %35, i32 0, i32 2, !dbg !4474
  %36 = load i64, ptr %size43, align 8, !dbg !4474
  %37 = load i32, ptr %segment_pages, align 4, !dbg !4474
  %conv44 = zext i32 %37 to i64, !dbg !4474
  %add45 = add i64 %36, %conv44, !dbg !4474
  %sub46 = sub i64 %add45, 1, !dbg !4474
  store i64 %sub46, ptr %_tmp42, align 8, !dbg !4474
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base47) #13, !dbg !4475
  call void @llvm.dbg.declare(metadata ptr %__base47, metadata !4409, metadata !DIExpression()), !dbg !4475
  %38 = load i32, ptr %segment_pages, align 4, !dbg !4475
  store i32 %38, ptr %__base47, align 4, !dbg !4475
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem48) #13, !dbg !4475
  call void @llvm.dbg.declare(metadata ptr %__rem48, metadata !4411, metadata !DIExpression()), !dbg !4475
  %39 = load i64, ptr %_tmp42, align 8, !dbg !4475
  %40 = load i32, ptr %__base47, align 4, !dbg !4475
  %conv49 = zext i32 %40 to i64, !dbg !4475
  %rem50 = urem i64 %39, %conv49, !dbg !4475
  %conv51 = trunc i64 %rem50 to i32, !dbg !4475
  store i32 %conv51, ptr %__rem48, align 4, !dbg !4475
  %41 = load i64, ptr %_tmp42, align 8, !dbg !4475
  %42 = load i32, ptr %__base47, align 4, !dbg !4475
  %conv52 = zext i32 %42 to i64, !dbg !4475
  %div53 = udiv i64 %41, %conv52, !dbg !4475
  store i64 %div53, ptr %_tmp42, align 8, !dbg !4475
  %43 = load i32, ptr %__rem48, align 4, !dbg !4475
  store i32 %43, ptr %tmp54, align 4, !dbg !4475
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem48) #13, !dbg !4474
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base47) #13, !dbg !4474
  %44 = load i32, ptr %tmp54, align 4, !dbg !4475
  %45 = load i64, ptr %_tmp42, align 8, !dbg !4474
  store i64 %45, ptr %tmp55, align 8, !dbg !4474
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp42) #13, !dbg !4476
  %46 = load i64, ptr %tmp55, align 8, !dbg !4474
  %conv56 = trunc i64 %46 to i32, !dbg !4476
  %call57 = call i32 @sg_alloc_table(ptr noundef %34, i32 noundef %conv56, i32 noundef 3264) #14, !dbg !4477
  %tobool58 = icmp ne i32 %call57, 0, !dbg !4477
  br i1 %tobool58, label %if.then59, label %if.end61, !dbg !4478

if.then59:                                        ; preds = %if.end41
  %47 = load ptr, ptr %rsgt, align 8, !dbg !4479
  call void @i915_refct_sgt_put(ptr noundef %47) #14, !dbg !4481
  %call60 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !4482
  store ptr %call60, ptr %retval, align 8, !dbg !4483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4483

if.end61:                                         ; preds = %if.end41
  %48 = load ptr, ptr %st, align 8, !dbg !4484
  %sgl = getelementptr inbounds %struct.sg_table, ptr %48, i32 0, i32 0, !dbg !4485
  %49 = load ptr, ptr %sgl, align 8, !dbg !4485
  store ptr %49, ptr %sg, align 8, !dbg !4486
  %50 = load ptr, ptr %st, align 8, !dbg !4487
  %nents = getelementptr inbounds %struct.sg_table, ptr %50, i32 0, i32 1, !dbg !4488
  store i32 0, ptr %nents, align 8, !dbg !4489
  store i64 -1, ptr %prev_end, align 8, !dbg !4490
  %51 = load ptr, ptr %node.addr, align 8, !dbg !4491
  %size62 = getelementptr inbounds %struct.drm_mm_node, ptr %51, i32 0, i32 2, !dbg !4492
  %52 = load i64, ptr %size62, align 8, !dbg !4492
  %shl63 = shl i64 %52, 12, !dbg !4493
  store i64 %shl63, ptr %block_size, align 8, !dbg !4494
  %53 = load ptr, ptr %node.addr, align 8, !dbg !4495
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %53, i32 0, i32 1, !dbg !4496
  %54 = load i64, ptr %start, align 8, !dbg !4496
  %shl64 = shl i64 %54, 12, !dbg !4497
  store i64 %shl64, ptr %offset, align 8, !dbg !4498
  br label %while.cond, !dbg !4499

while.cond:                                       ; preds = %cond.end, %if.end61
  %55 = load i64, ptr %block_size, align 8, !dbg !4500
  %tobool65 = icmp ne i64 %55, 0, !dbg !4499
  br i1 %tobool65, label %while.body, label %while.end, !dbg !4499

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #13, !dbg !4501
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4412, metadata !DIExpression()), !dbg !4502
  %56 = load i64, ptr %offset, align 8, !dbg !4503
  %57 = load i64, ptr %prev_end, align 8, !dbg !4505
  %cmp = icmp ne i64 %56, %57, !dbg !4506
  br i1 %cmp, label %if.then69, label %lor.lhs.false, !dbg !4507

lor.lhs.false:                                    ; preds = %while.body
  %58 = load ptr, ptr %sg, align 8, !dbg !4508
  %length = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 2, !dbg !4509
  %59 = load i32, ptr %length, align 4, !dbg !4509
  %60 = load i32, ptr %max_segment, align 4, !dbg !4510
  %cmp67 = icmp uge i32 %59, %60, !dbg !4511
  br i1 %cmp67, label %if.then69, label %if.end78, !dbg !4512

if.then69:                                        ; preds = %lor.lhs.false, %while.body
  %61 = load ptr, ptr %st, align 8, !dbg !4513
  %nents70 = getelementptr inbounds %struct.sg_table, ptr %61, i32 0, i32 1, !dbg !4516
  %62 = load i32, ptr %nents70, align 8, !dbg !4516
  %tobool71 = icmp ne i32 %62, 0, !dbg !4513
  br i1 %tobool71, label %if.then72, label %if.end74, !dbg !4517

if.then72:                                        ; preds = %if.then69
  %63 = load ptr, ptr %sg, align 8, !dbg !4518
  %call73 = call ptr @__sg_next(ptr noundef %63) #14, !dbg !4519
  store ptr %call73, ptr %sg, align 8, !dbg !4520
  br label %if.end74, !dbg !4521

if.end74:                                         ; preds = %if.then72, %if.then69
  %64 = load i64, ptr %region_start.addr, align 8, !dbg !4522
  %65 = load i64, ptr %offset, align 8, !dbg !4523
  %add75 = add i64 %64, %65, !dbg !4524
  %66 = load ptr, ptr %sg, align 8, !dbg !4525
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %66, i32 0, i32 3, !dbg !4525
  store i64 %add75, ptr %dma_address, align 8, !dbg !4526
  %67 = load ptr, ptr %sg, align 8, !dbg !4527
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %67, i32 0, i32 4, !dbg !4527
  store i32 0, ptr %dma_length, align 8, !dbg !4528
  %68 = load ptr, ptr %sg, align 8, !dbg !4529
  %length76 = getelementptr inbounds %struct.scatterlist, ptr %68, i32 0, i32 2, !dbg !4530
  store i32 0, ptr %length76, align 4, !dbg !4531
  %69 = load ptr, ptr %st, align 8, !dbg !4532
  %nents77 = getelementptr inbounds %struct.sg_table, ptr %69, i32 0, i32 1, !dbg !4533
  %70 = load i32, ptr %nents77, align 8, !dbg !4534
  %inc = add i32 %70, 1, !dbg !4534
  store i32 %inc, ptr %nents77, align 8, !dbg !4534
  br label %if.end78, !dbg !4535

if.end78:                                         ; preds = %if.end74, %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x302) #13, !dbg !4536
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x302, metadata !4414, metadata !DIExpression()), !dbg !4536
  %71 = load i64, ptr %block_size, align 8, !dbg !4536
  store i64 %71, ptr %__UNIQUE_ID___x302, align 8, !dbg !4536
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y303) #13, !dbg !4536
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y303, metadata !4416, metadata !DIExpression()), !dbg !4536
  %72 = load i32, ptr %max_segment, align 4, !dbg !4536
  %73 = load ptr, ptr %sg, align 8, !dbg !4536
  %length79 = getelementptr inbounds %struct.scatterlist, ptr %73, i32 0, i32 2, !dbg !4536
  %74 = load i32, ptr %length79, align 4, !dbg !4536
  %sub80 = sub i32 %72, %74, !dbg !4536
  %conv81 = zext i32 %sub80 to i64, !dbg !4536
  store i64 %conv81, ptr %__UNIQUE_ID___y303, align 8, !dbg !4536
  %75 = load i64, ptr %__UNIQUE_ID___x302, align 8, !dbg !4536
  %76 = load i64, ptr %__UNIQUE_ID___y303, align 8, !dbg !4536
  %cmp83 = icmp ult i64 %75, %76, !dbg !4536
  br i1 %cmp83, label %cond.true, label %cond.false, !dbg !4536

cond.true:                                        ; preds = %if.end78
  %77 = load i64, ptr %__UNIQUE_ID___x302, align 8, !dbg !4536
  br label %cond.end, !dbg !4536

cond.false:                                       ; preds = %if.end78
  %78 = load i64, ptr %__UNIQUE_ID___y303, align 8, !dbg !4536
  br label %cond.end, !dbg !4536

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %77, %cond.true ], [ %78, %cond.false ], !dbg !4536
  store i64 %cond, ptr %tmp82, align 8, !dbg !4536
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y303) #13, !dbg !4537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x302) #13, !dbg !4537
  %79 = load i64, ptr %tmp82, align 8, !dbg !4536
  store i64 %79, ptr %len, align 8, !dbg !4538
  %80 = load i64, ptr %len, align 8, !dbg !4539
  %81 = load ptr, ptr %sg, align 8, !dbg !4540
  %length85 = getelementptr inbounds %struct.scatterlist, ptr %81, i32 0, i32 2, !dbg !4541
  %82 = load i32, ptr %length85, align 4, !dbg !4542
  %conv86 = zext i32 %82 to i64, !dbg !4542
  %add87 = add i64 %conv86, %80, !dbg !4542
  %conv88 = trunc i64 %add87 to i32, !dbg !4542
  store i32 %conv88, ptr %length85, align 4, !dbg !4542
  %83 = load i64, ptr %len, align 8, !dbg !4543
  %84 = load ptr, ptr %sg, align 8, !dbg !4544
  %dma_length89 = getelementptr inbounds %struct.scatterlist, ptr %84, i32 0, i32 4, !dbg !4544
  %85 = load i32, ptr %dma_length89, align 8, !dbg !4545
  %conv90 = zext i32 %85 to i64, !dbg !4545
  %add91 = add i64 %conv90, %83, !dbg !4545
  %conv92 = trunc i64 %add91 to i32, !dbg !4545
  store i32 %conv92, ptr %dma_length89, align 8, !dbg !4545
  %86 = load i64, ptr %len, align 8, !dbg !4546
  %87 = load i64, ptr %offset, align 8, !dbg !4547
  %add93 = add i64 %87, %86, !dbg !4547
  store i64 %add93, ptr %offset, align 8, !dbg !4547
  %88 = load i64, ptr %len, align 8, !dbg !4548
  %89 = load i64, ptr %block_size, align 8, !dbg !4549
  %sub94 = sub i64 %89, %88, !dbg !4549
  store i64 %sub94, ptr %block_size, align 8, !dbg !4549
  %90 = load i64, ptr %offset, align 8, !dbg !4550
  store i64 %90, ptr %prev_end, align 8, !dbg !4551
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #13, !dbg !4552
  br label %while.cond, !dbg !4499, !llvm.loop !4553

while.end:                                        ; preds = %while.cond
  %91 = load ptr, ptr %sg, align 8, !dbg !4554
  call void @sg_mark_end(ptr noundef %91) #14, !dbg !4555
  %92 = load ptr, ptr %st, align 8, !dbg !4556
  %call95 = call zeroext i1 @i915_sg_trim(ptr noundef %92) #14, !dbg !4557
  %93 = load ptr, ptr %rsgt, align 8, !dbg !4558
  store ptr %93, ptr %retval, align 8, !dbg !4559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4559

cleanup:                                          ; preds = %while.end, %if.then59, %if.then39, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sg) #13, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #13, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsgt) #13, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_end) #13, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #13, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_size) #13, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 4, ptr %segment_pages) #13, !dbg !4560
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_segment) #13, !dbg !4560
  %94 = load ptr, ptr %retval, align 8, !dbg !4560
  ret ptr %94, !dbg !4560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4561 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4565, metadata !DIExpression()), !dbg !4570
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4566, metadata !DIExpression()), !dbg !4571
  %0 = load i64, ptr %size.addr, align 8, !dbg !4572
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4573
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4574

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4575
  %tobool = icmp ne i64 %2, 0, !dbg !4575
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4576

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !4577
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4567, metadata !DIExpression()), !dbg !4578
  %3 = load i64, ptr %size.addr, align 8, !dbg !4579
  %cmp = icmp ugt i64 %3, 8192, !dbg !4581
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4582

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4583
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4584
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !4585
  store ptr %call, ptr %retval, align 8, !dbg !4586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4586

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4587
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !4587
  store i32 %call2, ptr %index, align 4, !dbg !4588
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4589
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4590
  %9 = ptrtoint ptr %8 to i64, !dbg !4590
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !4591
  %idxprom = zext i32 %call3 to i64, !dbg !4592
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4592
  %10 = load i32, ptr %index, align 4, !dbg !4593
  %idxprom4 = zext i32 %10 to i64, !dbg !4592
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4592
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4592
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4594
  %13 = load i64, ptr %size.addr, align 8, !dbg !4595
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !4596
  store ptr %call6, ptr %retval, align 8, !dbg !4597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4597

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !4598
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4599
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4600
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !4601
  store ptr %call8, ptr %retval, align 8, !dbg !4602
  br label %return, !dbg !4602

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4603
  ret ptr %16, !dbg !4603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !4604 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  %0 = load i64, ptr %error.addr, align 8, !dbg !4611
  %1 = inttoptr i64 %0 to ptr, !dbg !4612
  ret ptr %1, !dbg !4613
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !4614 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4621, !range !4456, !noundef !1000
  %tobool = trunc i8 %0 to i1, !dbg !4621
  %lnot = xor i1 %tobool, true, !dbg !4621
  %lnot1 = xor i1 %lnot, true, !dbg !4621
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4621
  %conv = sext i32 %lnot.ext to i64, !dbg !4621
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4621
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4621
  ret i1 %tobool2, !dbg !4622
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_refct_sgt_put(ptr noundef %rsgt) #4 align 16 !dbg !4623 {
entry:
  %rsgt.addr = alloca ptr, align 8
  store ptr %rsgt, ptr %rsgt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsgt.addr, metadata !4627, metadata !DIExpression()), !dbg !4628
  %0 = load ptr, ptr %rsgt.addr, align 8, !dbg !4629
  %tobool = icmp ne ptr %0, null, !dbg !4629
  br i1 %tobool, label %if.then, label %if.end, !dbg !4631

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rsgt.addr, align 8, !dbg !4632
  %kref = getelementptr inbounds %struct.i915_refct_sgt, ptr %1, i32 0, i32 0, !dbg !4633
  %2 = load ptr, ptr %rsgt.addr, align 8, !dbg !4634
  %ops = getelementptr inbounds %struct.i915_refct_sgt, ptr %2, i32 0, i32 3, !dbg !4635
  %3 = load ptr, ptr %ops, align 8, !dbg !4635
  %release = getelementptr inbounds %struct.i915_refct_sgt_ops, ptr %3, i32 0, i32 0, !dbg !4636
  %4 = load ptr, ptr %release, align 8, !dbg !4636
  %call = call i32 @kref_put(ptr noundef %kref, ptr noundef %4) #14, !dbg !4637
  br label %if.end, !dbg !4637

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__sg_next(ptr noundef %sg) #4 align 16 !dbg !4639 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !4641, metadata !DIExpression()), !dbg !4642
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !4643
  %call = call zeroext i1 @sg_is_last(ptr noundef %0) #14, !dbg !4644
  br i1 %call, label %cond.true, label %cond.false, !dbg !4644

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4644

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %sg.addr, align 8, !dbg !4645
  %call1 = call ptr @____sg_next(ptr noundef %1) #14, !dbg !4646
  br label %cond.end, !dbg !4644

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call1, %cond.false ], !dbg !4644
  ret ptr %cond, !dbg !4647
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_mark_end(ptr noundef %sg) #4 align 16 !dbg !4648 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !4654
  %page_link = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !4655
  %1 = load i64, ptr %page_link, align 8, !dbg !4656
  %or = or i64 %1, 2, !dbg !4656
  store i64 %or, ptr %page_link, align 8, !dbg !4656
  %2 = load ptr, ptr %sg.addr, align 8, !dbg !4657
  %page_link1 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 0, !dbg !4658
  %3 = load i64, ptr %page_link1, align 8, !dbg !4659
  %and = and i64 %3, -2, !dbg !4659
  store i64 %and, ptr %page_link1, align 8, !dbg !4659
  ret void, !dbg !4660
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @i915_rsgt_from_buddy_resource(ptr noundef %res, i64 noundef %region_start, i32 noundef %page_alignment) #0 align 16 !dbg !4661 {
entry:
  %retval = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %region_start.addr = alloca i64, align 8
  %page_alignment.addr = alloca i32, align 4
  %bman_res = alloca ptr, align 8
  %size = alloca i64, align 8
  %max_segment = alloca i32, align 4
  %mm = alloca ptr, align 8
  %blocks = alloca ptr, align 8
  %block = alloca ptr, align 8
  %rsgt = alloca ptr, align 8
  %sg = alloca ptr, align 8
  %st = alloca ptr, align 8
  %prev_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %v = alloca i32, align 4
  %tmp = alloca i8, align 1
  %__flags = alloca i32, align 4
  %tmp28 = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp50 = alloca ptr, align 8
  %block_size = alloca i64, align 8
  %offset = alloca i64, align 8
  %__UNIQUE_ID___x304 = alloca i64, align 8
  %__UNIQUE_ID___y305 = alloca i64, align 8
  %tmp55 = alloca i64, align 8
  %len = alloca i64, align 8
  %__UNIQUE_ID___x306 = alloca i64, align 8
  %__UNIQUE_ID___y307 = alloca i64, align 8
  %tmp77 = alloca i64, align 8
  %__mptr94 = alloca ptr, align 8
  %tmp97 = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4666, metadata !DIExpression()), !dbg !4705
  store i64 %region_start, ptr %region_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_start.addr, metadata !4667, metadata !DIExpression()), !dbg !4706
  store i32 %page_alignment, ptr %page_alignment.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %page_alignment.addr, metadata !4668, metadata !DIExpression()), !dbg !4707
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman_res) #13, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %bman_res, metadata !4669, metadata !DIExpression()), !dbg !4709
  %0 = load ptr, ptr %res.addr, align 8, !dbg !4710
  %call = call ptr @to_ttm_buddy_resource(ptr noundef %0) #14, !dbg !4711
  store ptr %call, ptr %bman_res, align 8, !dbg !4709
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !4712
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4670, metadata !DIExpression()), !dbg !4713
  %1 = load ptr, ptr %res.addr, align 8, !dbg !4714
  %size1 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 1, !dbg !4715
  %2 = load i64, ptr %size1, align 8, !dbg !4715
  store i64 %2, ptr %size, align 8, !dbg !4713
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_segment) #13, !dbg !4716
  call void @llvm.dbg.declare(metadata ptr %max_segment, metadata !4672, metadata !DIExpression()), !dbg !4717
  %3 = load i32, ptr %page_alignment.addr, align 4, !dbg !4718
  %sub = sub i32 %3, 1, !dbg !4718
  %not = xor i32 %sub, -1, !dbg !4718
  %and = and i32 -1, %not, !dbg !4718
  store i32 %and, ptr %max_segment, align 4, !dbg !4717
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #13, !dbg !4719
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !4673, metadata !DIExpression()), !dbg !4720
  %4 = load ptr, ptr %bman_res, align 8, !dbg !4721
  %mm2 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %4, i32 0, i32 4, !dbg !4722
  %5 = load ptr, ptr %mm2, align 8, !dbg !4722
  store ptr %5, ptr %mm, align 8, !dbg !4720
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocks) #13, !dbg !4723
  call void @llvm.dbg.declare(metadata ptr %blocks, metadata !4674, metadata !DIExpression()), !dbg !4724
  %6 = load ptr, ptr %bman_res, align 8, !dbg !4725
  %blocks3 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %6, i32 0, i32 1, !dbg !4726
  store ptr %blocks3, ptr %blocks, align 8, !dbg !4724
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #13, !dbg !4727
  call void @llvm.dbg.declare(metadata ptr %block, metadata !4675, metadata !DIExpression()), !dbg !4728
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsgt) #13, !dbg !4729
  call void @llvm.dbg.declare(metadata ptr %rsgt, metadata !4676, metadata !DIExpression()), !dbg !4730
  call void @llvm.lifetime.start.p0(i64 8, ptr %sg) #13, !dbg !4731
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !4677, metadata !DIExpression()), !dbg !4732
  call void @llvm.lifetime.start.p0(i64 8, ptr %st) #13, !dbg !4733
  call void @llvm.dbg.declare(metadata ptr %st, metadata !4678, metadata !DIExpression()), !dbg !4734
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_end) #13, !dbg !4735
  call void @llvm.dbg.declare(metadata ptr %prev_end, metadata !4679, metadata !DIExpression()), !dbg !4736
  %call4 = call noalias ptr @kmalloc(i64 noundef 40, i32 noundef 3264) #15, !dbg !4737
  store ptr %call4, ptr %rsgt, align 8, !dbg !4738
  %7 = load ptr, ptr %rsgt, align 8, !dbg !4739
  %tobool = icmp ne ptr %7, null, !dbg !4739
  br i1 %tobool, label %if.end, label %if.then, !dbg !4741

if.then:                                          ; preds = %entry
  %call5 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !4742
  store ptr %call5, ptr %retval, align 8, !dbg !4743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4743

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %rsgt, align 8, !dbg !4744
  %9 = load i64, ptr %size, align 8, !dbg !4745
  call void @i915_refct_sgt_init(ptr noundef %8, i64 noundef %9) #14, !dbg !4746
  %10 = load ptr, ptr %rsgt, align 8, !dbg !4747
  %table = getelementptr inbounds %struct.i915_refct_sgt, ptr %10, i32 0, i32 1, !dbg !4748
  store ptr %table, ptr %st, align 8, !dbg !4749
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4750
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4680, metadata !DIExpression()), !dbg !4750
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #13, !dbg !4751
  call void @llvm.dbg.declare(metadata ptr %v, metadata !4683, metadata !DIExpression()), !dbg !4751
  store i32 0, ptr %v, align 4, !dbg !4751
  %11 = load ptr, ptr %res.addr, align 8, !dbg !4751
  %size6 = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 1, !dbg !4751
  %12 = load i64, ptr %size6, align 8, !dbg !4751
  %add = add i64 %12, 4096, !dbg !4751
  %sub7 = sub i64 %add, 1, !dbg !4751
  %shr = lshr i64 %sub7, 12, !dbg !4751
  %13 = load i32, ptr %v, align 4, !dbg !4751
  %14 = zext i32 %13 to i64, !dbg !4751
  %15 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %shr, i64 %14), !dbg !4751
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4751
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4751
  %18 = trunc i64 %17 to i32, !dbg !4751
  %19 = zext i32 %18 to i64, !dbg !4751
  %20 = icmp ne i64 %17, %19, !dbg !4751
  %21 = or i1 %16, %20, !dbg !4751
  store i32 %18, ptr %v, align 4, !dbg !4751
  %call8 = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %21) #14, !dbg !4751
  %frombool = zext i1 %call8 to i8, !dbg !4751
  store i8 %frombool, ptr %tmp, align 1, !dbg !4751
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #13, !dbg !4750
  %22 = load i8, ptr %tmp, align 1, !dbg !4751, !range !4456, !noundef !1000
  %tobool9 = trunc i8 %22 to i1, !dbg !4751
  %lnot = xor i1 %tobool9, true, !dbg !4750
  %lnot10 = xor i1 %lnot, true, !dbg !4750
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4750
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4750
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !4752
  %tobool11 = icmp ne i32 %23, 0, !dbg !4752
  %lnot12 = xor i1 %tobool11, true, !dbg !4752
  %lnot14 = xor i1 %lnot12, true, !dbg !4752
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !4752
  %conv = sext i32 %lnot.ext15 to i64, !dbg !4752
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4752
  %tobool16 = icmp ne i64 %expval, 0, !dbg !4752
  br i1 %tobool16, label %if.then17, label %if.end27, !dbg !4750

if.then17:                                        ; preds = %if.end
  br label %do.body, !dbg !4752

do.body:                                          ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !4753
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4685, metadata !DIExpression()), !dbg !4753
  store i32 2305, ptr %__flags, align 4, !dbg !4753
  br label %do.body18, !dbg !4753

do.body18:                                        ; preds = %do.body
  br label %do.cond, !dbg !4754

do.cond:                                          ; preds = %do.body18
  br label %do.end, !dbg !4754

do.end:                                           ; preds = %do.cond
  br label %do.body19, !dbg !4753

do.body19:                                        ; preds = %do.end
  %24 = load i32, ptr %__flags, align 4, !dbg !4756
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 188, i32 %24, i64 12) #13, !dbg !4756, !srcloc !4758
  br label %do.cond20, !dbg !4756

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !4756

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !4753

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !4759

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !4759

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !4752
  br label %do.cond25, !dbg !4753

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !4753

do.end26:                                         ; preds = %do.cond25
  br label %if.end27, !dbg !4753

if.end27:                                         ; preds = %do.end26, %if.end
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !4750
  %tobool29 = icmp ne i32 %25, 0, !dbg !4750
  %lnot30 = xor i1 %tobool29, true, !dbg !4750
  %lnot32 = xor i1 %lnot30, true, !dbg !4750
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !4750
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !4750
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !4750
  store i64 %expval35, ptr %tmp28, align 8, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !4761
  %26 = load i64, ptr %tmp28, align 8, !dbg !4750
  %tobool36 = icmp ne i64 %26, 0, !dbg !4761
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !4762

if.then37:                                        ; preds = %if.end27
  %27 = load ptr, ptr %rsgt, align 8, !dbg !4763
  call void @i915_refct_sgt_put(ptr noundef %27) #14, !dbg !4765
  %call38 = call ptr @ERR_PTR(i64 noundef -7) #14, !dbg !4766
  store ptr %call38, ptr %retval, align 8, !dbg !4767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4767

if.end39:                                         ; preds = %if.end27
  %28 = load ptr, ptr %st, align 8, !dbg !4768
  %29 = load ptr, ptr %res.addr, align 8, !dbg !4770
  %size40 = getelementptr inbounds %struct.ttm_resource, ptr %29, i32 0, i32 1, !dbg !4770
  %30 = load i64, ptr %size40, align 8, !dbg !4770
  %add41 = add i64 %30, 4096, !dbg !4770
  %sub42 = sub i64 %add41, 1, !dbg !4770
  %shr43 = lshr i64 %sub42, 12, !dbg !4770
  %conv44 = trunc i64 %shr43 to i32, !dbg !4770
  %call45 = call i32 @sg_alloc_table(ptr noundef %28, i32 noundef %conv44, i32 noundef 3264) #14, !dbg !4771
  %tobool46 = icmp ne i32 %call45, 0, !dbg !4771
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !4772

if.then47:                                        ; preds = %if.end39
  %31 = load ptr, ptr %rsgt, align 8, !dbg !4773
  call void @i915_refct_sgt_put(ptr noundef %31) #14, !dbg !4775
  %call48 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !4776
  store ptr %call48, ptr %retval, align 8, !dbg !4777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4777

if.end49:                                         ; preds = %if.end39
  %32 = load ptr, ptr %st, align 8, !dbg !4778
  %sgl = getelementptr inbounds %struct.sg_table, ptr %32, i32 0, i32 0, !dbg !4779
  %33 = load ptr, ptr %sgl, align 8, !dbg !4779
  store ptr %33, ptr %sg, align 8, !dbg !4780
  %34 = load ptr, ptr %st, align 8, !dbg !4781
  %nents = getelementptr inbounds %struct.sg_table, ptr %34, i32 0, i32 1, !dbg !4782
  store i32 0, ptr %nents, align 8, !dbg !4783
  store i64 -1, ptr %prev_end, align 8, !dbg !4784
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4688, metadata !DIExpression()), !dbg !4785
  %35 = load ptr, ptr %blocks, align 8, !dbg !4785
  %next = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 0, !dbg !4785
  %36 = load ptr, ptr %next, align 8, !dbg !4785
  store ptr %36, ptr %__mptr, align 8, !dbg !4785
  %37 = load ptr, ptr %__mptr, align 8, !dbg !4785
  %add.ptr = getelementptr i8, ptr %37, i64 -40, !dbg !4785
  store ptr %add.ptr, ptr %tmp50, align 8, !dbg !4785
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !4786
  %38 = load ptr, ptr %tmp50, align 8, !dbg !4785
  store ptr %38, ptr %block, align 8, !dbg !4786
  br label %for.cond, !dbg !4786

for.cond:                                         ; preds = %for.inc, %if.end49
  %39 = load ptr, ptr %block, align 8, !dbg !4787
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %39, i32 0, i32 5, !dbg !4787
  %40 = load ptr, ptr %blocks, align 8, !dbg !4787
  %cmp = icmp eq ptr %link, %40, !dbg !4787
  %lnot52 = xor i1 %cmp, true, !dbg !4787
  br i1 %lnot52, label %for.body, label %for.end, !dbg !4786

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_size) #13, !dbg !4788
  call void @llvm.dbg.declare(metadata ptr %block_size, metadata !4691, metadata !DIExpression()), !dbg !4789
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #13, !dbg !4788
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !4694, metadata !DIExpression()), !dbg !4790
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x304) #13, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x304, metadata !4695, metadata !DIExpression()), !dbg !4791
  %41 = load i64, ptr %size, align 8, !dbg !4791
  store i64 %41, ptr %__UNIQUE_ID___x304, align 8, !dbg !4791
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y305) #13, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y305, metadata !4697, metadata !DIExpression()), !dbg !4791
  %42 = load ptr, ptr %mm, align 8, !dbg !4791
  %43 = load ptr, ptr %block, align 8, !dbg !4791
  %call54 = call i64 @drm_buddy_block_size(ptr noundef %42, ptr noundef %43) #14, !dbg !4791
  store i64 %call54, ptr %__UNIQUE_ID___y305, align 8, !dbg !4791
  %44 = load i64, ptr %__UNIQUE_ID___x304, align 8, !dbg !4791
  %45 = load i64, ptr %__UNIQUE_ID___y305, align 8, !dbg !4791
  %cmp56 = icmp ult i64 %44, %45, !dbg !4791
  br i1 %cmp56, label %cond.true, label %cond.false, !dbg !4791

cond.true:                                        ; preds = %for.body
  %46 = load i64, ptr %__UNIQUE_ID___x304, align 8, !dbg !4791
  br label %cond.end, !dbg !4791

cond.false:                                       ; preds = %for.body
  %47 = load i64, ptr %__UNIQUE_ID___y305, align 8, !dbg !4791
  br label %cond.end, !dbg !4791

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %46, %cond.true ], [ %47, %cond.false ], !dbg !4791
  store i64 %cond, ptr %tmp55, align 8, !dbg !4791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y305) #13, !dbg !4792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x304) #13, !dbg !4792
  %48 = load i64, ptr %tmp55, align 8, !dbg !4791
  store i64 %48, ptr %block_size, align 8, !dbg !4793
  %49 = load ptr, ptr %block, align 8, !dbg !4794
  %call58 = call i64 @drm_buddy_block_offset(ptr noundef %49) #14, !dbg !4795
  store i64 %call58, ptr %offset, align 8, !dbg !4796
  br label %while.cond, !dbg !4797

while.cond:                                       ; preds = %cond.end82, %cond.end
  %50 = load i64, ptr %block_size, align 8, !dbg !4798
  %tobool59 = icmp ne i64 %50, 0, !dbg !4797
  br i1 %tobool59, label %while.body, label %while.end, !dbg !4797

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #13, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4698, metadata !DIExpression()), !dbg !4800
  %51 = load i64, ptr %offset, align 8, !dbg !4801
  %52 = load i64, ptr %prev_end, align 8, !dbg !4803
  %cmp60 = icmp ne i64 %51, %52, !dbg !4804
  br i1 %cmp60, label %if.then64, label %lor.lhs.false, !dbg !4805

lor.lhs.false:                                    ; preds = %while.body
  %53 = load ptr, ptr %sg, align 8, !dbg !4806
  %length = getelementptr inbounds %struct.scatterlist, ptr %53, i32 0, i32 2, !dbg !4807
  %54 = load i32, ptr %length, align 4, !dbg !4807
  %55 = load i32, ptr %max_segment, align 4, !dbg !4808
  %cmp62 = icmp uge i32 %54, %55, !dbg !4809
  br i1 %cmp62, label %if.then64, label %if.end73, !dbg !4810

if.then64:                                        ; preds = %lor.lhs.false, %while.body
  %56 = load ptr, ptr %st, align 8, !dbg !4811
  %nents65 = getelementptr inbounds %struct.sg_table, ptr %56, i32 0, i32 1, !dbg !4814
  %57 = load i32, ptr %nents65, align 8, !dbg !4814
  %tobool66 = icmp ne i32 %57, 0, !dbg !4811
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !4815

if.then67:                                        ; preds = %if.then64
  %58 = load ptr, ptr %sg, align 8, !dbg !4816
  %call68 = call ptr @__sg_next(ptr noundef %58) #14, !dbg !4817
  store ptr %call68, ptr %sg, align 8, !dbg !4818
  br label %if.end69, !dbg !4819

if.end69:                                         ; preds = %if.then67, %if.then64
  %59 = load i64, ptr %region_start.addr, align 8, !dbg !4820
  %60 = load i64, ptr %offset, align 8, !dbg !4821
  %add70 = add i64 %59, %60, !dbg !4822
  %61 = load ptr, ptr %sg, align 8, !dbg !4823
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 3, !dbg !4823
  store i64 %add70, ptr %dma_address, align 8, !dbg !4824
  %62 = load ptr, ptr %sg, align 8, !dbg !4825
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %62, i32 0, i32 4, !dbg !4825
  store i32 0, ptr %dma_length, align 8, !dbg !4826
  %63 = load ptr, ptr %sg, align 8, !dbg !4827
  %length71 = getelementptr inbounds %struct.scatterlist, ptr %63, i32 0, i32 2, !dbg !4828
  store i32 0, ptr %length71, align 4, !dbg !4829
  %64 = load ptr, ptr %st, align 8, !dbg !4830
  %nents72 = getelementptr inbounds %struct.sg_table, ptr %64, i32 0, i32 1, !dbg !4831
  %65 = load i32, ptr %nents72, align 8, !dbg !4832
  %inc = add i32 %65, 1, !dbg !4832
  store i32 %inc, ptr %nents72, align 8, !dbg !4832
  br label %if.end73, !dbg !4833

if.end73:                                         ; preds = %if.end69, %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x306) #13, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x306, metadata !4700, metadata !DIExpression()), !dbg !4834
  %66 = load i64, ptr %block_size, align 8, !dbg !4834
  store i64 %66, ptr %__UNIQUE_ID___x306, align 8, !dbg !4834
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y307) #13, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y307, metadata !4702, metadata !DIExpression()), !dbg !4834
  %67 = load i32, ptr %max_segment, align 4, !dbg !4834
  %68 = load ptr, ptr %sg, align 8, !dbg !4834
  %length74 = getelementptr inbounds %struct.scatterlist, ptr %68, i32 0, i32 2, !dbg !4834
  %69 = load i32, ptr %length74, align 4, !dbg !4834
  %sub75 = sub i32 %67, %69, !dbg !4834
  %conv76 = zext i32 %sub75 to i64, !dbg !4834
  store i64 %conv76, ptr %__UNIQUE_ID___y307, align 8, !dbg !4834
  %70 = load i64, ptr %__UNIQUE_ID___x306, align 8, !dbg !4834
  %71 = load i64, ptr %__UNIQUE_ID___y307, align 8, !dbg !4834
  %cmp78 = icmp ult i64 %70, %71, !dbg !4834
  br i1 %cmp78, label %cond.true80, label %cond.false81, !dbg !4834

cond.true80:                                      ; preds = %if.end73
  %72 = load i64, ptr %__UNIQUE_ID___x306, align 8, !dbg !4834
  br label %cond.end82, !dbg !4834

cond.false81:                                     ; preds = %if.end73
  %73 = load i64, ptr %__UNIQUE_ID___y307, align 8, !dbg !4834
  br label %cond.end82, !dbg !4834

cond.end82:                                       ; preds = %cond.false81, %cond.true80
  %cond83 = phi i64 [ %72, %cond.true80 ], [ %73, %cond.false81 ], !dbg !4834
  store i64 %cond83, ptr %tmp77, align 8, !dbg !4834
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y307) #13, !dbg !4835
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x306) #13, !dbg !4835
  %74 = load i64, ptr %tmp77, align 8, !dbg !4834
  store i64 %74, ptr %len, align 8, !dbg !4836
  %75 = load i64, ptr %len, align 8, !dbg !4837
  %76 = load ptr, ptr %sg, align 8, !dbg !4838
  %length84 = getelementptr inbounds %struct.scatterlist, ptr %76, i32 0, i32 2, !dbg !4839
  %77 = load i32, ptr %length84, align 4, !dbg !4840
  %conv85 = zext i32 %77 to i64, !dbg !4840
  %add86 = add i64 %conv85, %75, !dbg !4840
  %conv87 = trunc i64 %add86 to i32, !dbg !4840
  store i32 %conv87, ptr %length84, align 4, !dbg !4840
  %78 = load i64, ptr %len, align 8, !dbg !4841
  %79 = load ptr, ptr %sg, align 8, !dbg !4842
  %dma_length88 = getelementptr inbounds %struct.scatterlist, ptr %79, i32 0, i32 4, !dbg !4842
  %80 = load i32, ptr %dma_length88, align 8, !dbg !4843
  %conv89 = zext i32 %80 to i64, !dbg !4843
  %add90 = add i64 %conv89, %78, !dbg !4843
  %conv91 = trunc i64 %add90 to i32, !dbg !4843
  store i32 %conv91, ptr %dma_length88, align 8, !dbg !4843
  %81 = load i64, ptr %len, align 8, !dbg !4844
  %82 = load i64, ptr %offset, align 8, !dbg !4845
  %add92 = add i64 %82, %81, !dbg !4845
  store i64 %add92, ptr %offset, align 8, !dbg !4845
  %83 = load i64, ptr %len, align 8, !dbg !4846
  %84 = load i64, ptr %block_size, align 8, !dbg !4847
  %sub93 = sub i64 %84, %83, !dbg !4847
  store i64 %sub93, ptr %block_size, align 8, !dbg !4847
  %85 = load i64, ptr %offset, align 8, !dbg !4848
  store i64 %85, ptr %prev_end, align 8, !dbg !4849
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #13, !dbg !4850
  br label %while.cond, !dbg !4797, !llvm.loop !4851

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #13, !dbg !4852
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_size) #13, !dbg !4852
  br label %for.inc, !dbg !4853

for.inc:                                          ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr94) #13, !dbg !4854
  call void @llvm.dbg.declare(metadata ptr %__mptr94, metadata !4703, metadata !DIExpression()), !dbg !4854
  %86 = load ptr, ptr %block, align 8, !dbg !4854
  %link95 = getelementptr inbounds %struct.drm_buddy_block, ptr %86, i32 0, i32 5, !dbg !4854
  %next96 = getelementptr inbounds %struct.list_head, ptr %link95, i32 0, i32 0, !dbg !4854
  %87 = load ptr, ptr %next96, align 8, !dbg !4854
  store ptr %87, ptr %__mptr94, align 8, !dbg !4854
  %88 = load ptr, ptr %__mptr94, align 8, !dbg !4854
  %add.ptr98 = getelementptr i8, ptr %88, i64 -40, !dbg !4854
  store ptr %add.ptr98, ptr %tmp97, align 8, !dbg !4854
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr94) #13, !dbg !4787
  %89 = load ptr, ptr %tmp97, align 8, !dbg !4854
  store ptr %89, ptr %block, align 8, !dbg !4787
  br label %for.cond, !dbg !4787, !llvm.loop !4855

for.end:                                          ; preds = %for.cond
  %90 = load ptr, ptr %sg, align 8, !dbg !4857
  call void @sg_mark_end(ptr noundef %90) #14, !dbg !4858
  %91 = load ptr, ptr %st, align 8, !dbg !4859
  %call99 = call zeroext i1 @i915_sg_trim(ptr noundef %91) #14, !dbg !4860
  %92 = load ptr, ptr %rsgt, align 8, !dbg !4861
  store ptr %92, ptr %retval, align 8, !dbg !4862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4862

cleanup:                                          ; preds = %for.end, %if.then47, %if.then37, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_end) #13, !dbg !4863
  call void @llvm.lifetime.end.p0(i64 8, ptr %st) #13, !dbg !4863
  call void @llvm.lifetime.end.p0(i64 8, ptr %sg) #13, !dbg !4863
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsgt) #13, !dbg !4863
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #13, !dbg !4863
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocks) #13, !dbg !4863
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #13, !dbg !4863
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_segment) #13, !dbg !4863
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !4863
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman_res) #13, !dbg !4863
  %93 = load ptr, ptr %retval, align 8, !dbg !4863
  ret ptr %93, !dbg !4863
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_ttm_buddy_resource(ptr noundef %res) #4 align 16 !dbg !4864 {
entry:
  %res.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4868, metadata !DIExpression()), !dbg !4871
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !4872
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4869, metadata !DIExpression()), !dbg !4872
  %0 = load ptr, ptr %res.addr, align 8, !dbg !4872
  store ptr %0, ptr %__mptr, align 8, !dbg !4872
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4872
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4872
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4872
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !4873
  %2 = load ptr, ptr %tmp, align 8, !dbg !4872
  ret ptr %2, !dbg !4874
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_buddy_block_size(ptr noundef %mm, ptr noundef %block) #4 align 16 !dbg !4875 {
entry:
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4879, metadata !DIExpression()), !dbg !4881
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !4880, metadata !DIExpression()), !dbg !4882
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4883
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %0, i32 0, i32 4, !dbg !4884
  %1 = load i64, ptr %chunk_size, align 8, !dbg !4884
  %2 = load ptr, ptr %block.addr, align 8, !dbg !4885
  %call = call i32 @drm_buddy_block_order(ptr noundef %2) #14, !dbg !4886
  %sh_prom = zext i32 %call to i64, !dbg !4887
  %shl = shl i64 %1, %sh_prom, !dbg !4887
  ret i64 %shl, !dbg !4888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_buddy_block_offset(ptr noundef %block) #4 align 16 !dbg !4889 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !4893, metadata !DIExpression()), !dbg !4894
  %0 = load ptr, ptr %block.addr, align 8, !dbg !4895
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !4896
  %1 = load i64, ptr %header, align 8, !dbg !4896
  %and = and i64 %1, -4096, !dbg !4897
  ret i64 %and, !dbg !4898
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sg_assign_page(ptr noundef %sg, ptr noundef %page) #4 align 16 !dbg !4899 {
entry:
  %sg.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %page_link = alloca i64, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !4903, metadata !DIExpression()), !dbg !4906
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !4904, metadata !DIExpression()), !dbg !4907
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_link) #13, !dbg !4908
  call void @llvm.dbg.declare(metadata ptr %page_link, metadata !4905, metadata !DIExpression()), !dbg !4909
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !4910
  %page_link1 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !4911
  %1 = load i64, ptr %page_link1, align 8, !dbg !4911
  %and = and i64 %1, 3, !dbg !4912
  store i64 %and, ptr %page_link, align 8, !dbg !4909
  br label %do.body, !dbg !4913

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !dbg !4914
  %3 = ptrtoint ptr %2 to i64, !dbg !4914
  %and2 = and i64 %3, 3, !dbg !4914
  %tobool = icmp ne i64 %and2, 0, !dbg !4914
  %lnot = xor i1 %tobool, true, !dbg !4914
  %lnot3 = xor i1 %lnot, true, !dbg !4914
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4914
  %conv = sext i32 %lnot.ext to i64, !dbg !4914
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4914
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4914
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4917

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !4914

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !4918

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !4920

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4920

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !4918

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 115, i32 0, i64 12) #13, !dbg !4922, !srcloc !4924
  br label %do.cond8, !dbg !4922

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4922

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !4918

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !4918

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !4918

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !4917

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !4917

do.end13:                                         ; preds = %do.cond12
  %4 = load i64, ptr %page_link, align 8, !dbg !4925
  %5 = load ptr, ptr %page.addr, align 8, !dbg !4926
  %6 = ptrtoint ptr %5 to i64, !dbg !4927
  %or = or i64 %4, %6, !dbg !4928
  %7 = load ptr, ptr %sg.addr, align 8, !dbg !4929
  %page_link14 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 0, !dbg !4930
  store i64 %or, ptr %page_link14, align 8, !dbg !4931
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_link) #13, !dbg !4932
  ret void, !dbg !4932
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_init(ptr noundef %kref) #4 align 16 !dbg !4933 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !4935, metadata !DIExpression()), !dbg !4936
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !4937
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !4938
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #14, !dbg !4939
  ret void, !dbg !4940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #4 align 16 !dbg !4941 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4946, metadata !DIExpression()), !dbg !4948
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4947, metadata !DIExpression()), !dbg !4949
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4950
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !4951
  %1 = load i32, ptr %n.addr, align 4, !dbg !4952
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #14, !dbg !4953
  ret void, !dbg !4954
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #8 align 16 !dbg !4955 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4961, metadata !DIExpression()), !dbg !4963
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4962, metadata !DIExpression()), !dbg !4964
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4965
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4966
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4967
  %2 = load i32, ptr %i.addr, align 4, !dbg !4968
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #14, !dbg !4969
  ret void, !dbg !4970
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !4971 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4979, metadata !DIExpression()), !dbg !4981
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4980, metadata !DIExpression()), !dbg !4982
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4983
  %1 = load i64, ptr %size.addr, align 8, !dbg !4984
  %conv = trunc i64 %1 to i32, !dbg !4984
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4985
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4986
  %3 = load i64, ptr %size.addr, align 8, !dbg !4986
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !4986
  ret void, !dbg !4987
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #8 align 16 !dbg !4988 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4991, metadata !DIExpression()), !dbg !4993
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4992, metadata !DIExpression()), !dbg !4994
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4995
  %1 = load i32, ptr %i.addr, align 4, !dbg !4996
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #14, !dbg !4997
  ret void, !dbg !4998
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !4999 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5004, metadata !DIExpression()), !dbg !5006
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5005, metadata !DIExpression()), !dbg !5007
  ret i1 true, !dbg !5008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5009 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5014, metadata !DIExpression()), !dbg !5017
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5015, metadata !DIExpression()), !dbg !5018
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5016, metadata !DIExpression()), !dbg !5019
  ret void, !dbg !5020
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #8 align 16 !dbg !5021 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5024, metadata !DIExpression()), !dbg !5026
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5025, metadata !DIExpression()), !dbg !5027
  br label %do.body, !dbg !5028

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !5029
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5029
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5029
  store volatile i32 %0, ptr %counter, align 4, !dbg !5029
  br label %do.end, !dbg !5029

do.end:                                           ; preds = %do.body
  ret void, !dbg !5031
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_refct_sgt_release(ptr noundef %ref) #0 align 16 !dbg !5032 {
entry:
  %ref.addr = alloca ptr, align 8
  %rsgt = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !5034, metadata !DIExpression()), !dbg !5038
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsgt) #13, !dbg !5039
  call void @llvm.dbg.declare(metadata ptr %rsgt, metadata !5035, metadata !DIExpression()), !dbg !5040
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5041
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5036, metadata !DIExpression()), !dbg !5041
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !5041
  store ptr %0, ptr %__mptr, align 8, !dbg !5041
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5041
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5041
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5041
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5042
  %2 = load ptr, ptr %tmp, align 8, !dbg !5041
  store ptr %2, ptr %rsgt, align 8, !dbg !5040
  %3 = load ptr, ptr %rsgt, align 8, !dbg !5043
  %table = getelementptr inbounds %struct.i915_refct_sgt, ptr %3, i32 0, i32 1, !dbg !5044
  call void @sg_free_table(ptr noundef %table) #14, !dbg !5045
  %4 = load ptr, ptr %rsgt, align 8, !dbg !5046
  call void @kfree(ptr noundef %4) #14, !dbg !5047
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsgt) #13, !dbg !5048
  ret void, !dbg !5048
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5049 dso_local void @kfree(ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5052 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !5053 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5057, metadata !DIExpression()), !dbg !5059
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5058, metadata !DIExpression()), !dbg !5060
  %0 = load i64, ptr %size.addr, align 8, !dbg !5061
  %tobool = icmp ne i64 %0, 0, !dbg !5061
  br i1 %tobool, label %if.end, label %if.then, !dbg !5063

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5064
  br label %return, !dbg !5064

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5065
  %cmp = icmp ule i64 %1, 8, !dbg !5067
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5068

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5069
  br label %return, !dbg !5069

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5070
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5072
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5073

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5074
  %cmp4 = icmp ule i64 %3, 96, !dbg !5075
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5076

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5077
  br label %return, !dbg !5077

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5078
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5080
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5081

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5082
  %cmp9 = icmp ule i64 %5, 192, !dbg !5083
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5084

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5085
  br label %return, !dbg !5085

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5086
  %cmp12 = icmp ule i64 %6, 8, !dbg !5088
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5089

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5090
  br label %return, !dbg !5090

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5091
  %cmp15 = icmp ule i64 %7, 16, !dbg !5093
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5094

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5095
  br label %return, !dbg !5095

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5096
  %cmp18 = icmp ule i64 %8, 32, !dbg !5098
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5099

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5100
  br label %return, !dbg !5100

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5101
  %cmp21 = icmp ule i64 %9, 64, !dbg !5103
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5104

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5105
  br label %return, !dbg !5105

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5106
  %cmp24 = icmp ule i64 %10, 128, !dbg !5108
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5109

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5111
  %cmp27 = icmp ule i64 %11, 256, !dbg !5113
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5114

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5116
  %cmp30 = icmp ule i64 %12, 512, !dbg !5118
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5119

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5121
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5123
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5124

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5125
  br label %return, !dbg !5125

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5126
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5128
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5129

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5131
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5133
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5134

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5135
  br label %return, !dbg !5135

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5136
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5138
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5139

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5140
  br label %return, !dbg !5140

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5141
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5143
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5144

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5145
  br label %return, !dbg !5145

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5146
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5148
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5149

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5150
  br label %return, !dbg !5150

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5151
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5153
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5154

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5156
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5158
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5159

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5161
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5163
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5164

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5165
  br label %return, !dbg !5165

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5166
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5168
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5169

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5171
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5173
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5174

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5175
  br label %return, !dbg !5175

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5176
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5178
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5179

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5180
  br label %return, !dbg !5180

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5181, !range !4456, !noundef !1000
  %tobool69 = trunc i8 %25 to i1, !dbg !5181
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5183

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5184

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #17, !dbg !5185, !srcloc !5188
  unreachable, !dbg !5185

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5189

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5190

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5191

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5193

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5191

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #13, !dbg !5195, !srcloc !5197
  br label %do.end75, !dbg !5195

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5191

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5198
  br label %return, !dbg !5198

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5199
  ret i32 %26, !dbg !5199
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5200 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !5206 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5210, metadata !DIExpression()), !dbg !5212
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5211, metadata !DIExpression()), !dbg !5213
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5214
  %and = and i32 %0, 17, !dbg !5214
  %cmp = icmp eq i32 %and, 0, !dbg !5214
  %lnot = xor i1 %cmp, true, !dbg !5214
  %lnot1 = xor i1 %lnot, true, !dbg !5214
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5214
  %conv = sext i32 %lnot.ext to i64, !dbg !5214
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5214
  %tobool = icmp ne i64 %expval, 0, !dbg !5214
  br i1 %tobool, label %if.then, label %if.end, !dbg !5216

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5217
  br label %return, !dbg !5217

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5218
  %and2 = and i32 %1, 1, !dbg !5220
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5220
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5221

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5222
  br label %return, !dbg !5222

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5223
  br label %return, !dbg !5223

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5225
  ret i32 %2, !dbg !5225
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5226 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5227 dso_local void @__compiletime_assert_206() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #4 align 16 !dbg !5228 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !5232, metadata !DIExpression()), !dbg !5234
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !5233, metadata !DIExpression()), !dbg !5235
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !5236
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !5238
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #14, !dbg !5239
  br i1 %call, label %if.then, label %if.end, !dbg !5240

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !5241
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !5243
  call void %1(ptr noundef %2) #14, !dbg !5241
  store i32 1, ptr %retval, align 4, !dbg !5244
  br label %return, !dbg !5244

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5245
  br label %return, !dbg !5245

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !5246
  ret i32 %3, !dbg !5246
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !5247 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5253
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #14, !dbg !5254
  ret i1 %call, !dbg !5255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !5256 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5260, metadata !DIExpression()), !dbg !5262
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5261, metadata !DIExpression()), !dbg !5263
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5264
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5265
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #14, !dbg !5266
  ret i1 %call, !dbg !5267
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !5268 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5272, metadata !DIExpression()), !dbg !5276
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5273, metadata !DIExpression()), !dbg !5277
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5274, metadata !DIExpression()), !dbg !5278
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #13, !dbg !5279
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5275, metadata !DIExpression()), !dbg !5280
  %0 = load i32, ptr %i.addr, align 4, !dbg !5281
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5282
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5283
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #14, !dbg !5284
  store i32 %call, ptr %old, align 4, !dbg !5280
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5285
  %tobool = icmp ne ptr %2, null, !dbg !5285
  br i1 %tobool, label %if.then, label %if.end, !dbg !5287

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5288
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5289
  store i32 %3, ptr %4, align 4, !dbg !5290
  br label %if.end, !dbg !5291

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5292
  %6 = load i32, ptr %i.addr, align 4, !dbg !5294
  %cmp = icmp eq i32 %5, %6, !dbg !5295
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5296

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5297

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5299

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5301

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5301

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5299

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5303

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5305

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5305

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !5303, !srcloc !5307
  br label %do.cond7, !dbg !5303

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5303

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5299

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5299

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5308

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5309
  %cmp12 = icmp slt i32 %7, 0, !dbg !5309
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5309

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5309
  %9 = load i32, ptr %i.addr, align 4, !dbg !5309
  %sub = sub i32 %8, %9, !dbg !5309
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5309
  br label %lor.end, !dbg !5309

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5309
  %lnot14 = xor i1 %lnot, true, !dbg !5309
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5309
  %conv = sext i32 %lnot.ext to i64, !dbg !5309
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5309
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5309
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5311

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5312
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #14, !dbg !5313
  br label %if.end17, !dbg !5313

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5314

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #13, !dbg !5315
  %12 = load i1, ptr %retval, align 1, !dbg !5315
  ret i1 %12, !dbg !5315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !5316 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5320, metadata !DIExpression()), !dbg !5322
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5321, metadata !DIExpression()), !dbg !5323
  br label %do.body, !dbg !5324

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5325

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5327
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5328
  %1 = load i32, ptr %i.addr, align 4, !dbg !5329
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5330
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #14, !dbg !5331
  ret i32 %call, !dbg !5332
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5333 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !5336 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5338, metadata !DIExpression()), !dbg !5340
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5339, metadata !DIExpression()), !dbg !5341
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5342
  %1 = load i64, ptr %size.addr, align 8, !dbg !5343
  %conv = trunc i64 %1 to i32, !dbg !5343
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !5344
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5345
  %3 = load i64, ptr %size.addr, align 8, !dbg !5345
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !5345
  ret void, !dbg !5346
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !5347 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5349, metadata !DIExpression()), !dbg !5351
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5350, metadata !DIExpression()), !dbg !5352
  %0 = load i32, ptr %i.addr, align 4, !dbg !5353
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5354
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #14, !dbg !5355
  ret i32 %call, !dbg !5356
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #8 align 16 !dbg !5357 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5359, metadata !DIExpression()), !dbg !5363
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5360, metadata !DIExpression()), !dbg !5364
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !5365
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5361, metadata !DIExpression()), !dbg !5365
  %0 = load i32, ptr %i.addr, align 4, !dbg !5365
  %sub = sub i32 0, %0, !dbg !5365
  store i32 %sub, ptr %__ret, align 4, !dbg !5365
  %1 = load i32, ptr %__ret, align 4, !dbg !5365
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5365
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5365
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !5365, !srcloc !5366
  store i32 %3, ptr %__ret, align 4, !dbg !5365
  %4 = load i32, ptr %__ret, align 4, !dbg !5365
  store i32 %4, ptr %tmp, align 4, !dbg !5365
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !5367
  %5 = load i32, ptr %tmp, align 4, !dbg !5365
  ret i32 %5, !dbg !5368
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @sg_is_last(ptr noundef %sg) #4 align 16 !dbg !5369 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !5375
  %call = call i32 @__sg_flags(ptr noundef %0) #14, !dbg !5376
  %conv = zext i32 %call to i64, !dbg !5376
  %and = and i64 %conv, 2, !dbg !5377
  %tobool = icmp ne i64 %and, 0, !dbg !5376
  ret i1 %tobool, !dbg !5378
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @____sg_next(ptr noundef %sg) #4 align 16 !dbg !5379 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !5383
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %0, i32 1, !dbg !5383
  store ptr %incdec.ptr, ptr %sg.addr, align 8, !dbg !5383
  %1 = load ptr, ptr %sg.addr, align 8, !dbg !5384
  %call = call zeroext i1 @sg_is_chain(ptr noundef %1) #14, !dbg !5384
  %lnot = xor i1 %call, true, !dbg !5384
  %lnot1 = xor i1 %lnot, true, !dbg !5384
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5384
  %conv = sext i32 %lnot.ext to i64, !dbg !5384
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5384
  %tobool = icmp ne i64 %expval, 0, !dbg !5384
  br i1 %tobool, label %if.then, label %if.end, !dbg !5386

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sg.addr, align 8, !dbg !5387
  %call2 = call ptr @sg_chain_ptr(ptr noundef %2) #14, !dbg !5388
  store ptr %call2, ptr %sg.addr, align 8, !dbg !5389
  br label %if.end, !dbg !5390

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %sg.addr, align 8, !dbg !5391
  ret ptr %3, !dbg !5392
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__sg_flags(ptr noundef %sg) #4 align 16 !dbg !5393 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !5399
  %page_link = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !5400
  %1 = load i64, ptr %page_link, align 8, !dbg !5400
  %and = and i64 %1, 3, !dbg !5401
  %conv = trunc i64 %and to i32, !dbg !5399
  ret i32 %conv, !dbg !5402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @sg_is_chain(ptr noundef %sg) #4 align 16 !dbg !5403 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !5407
  %call = call i32 @__sg_flags(ptr noundef %0) #14, !dbg !5408
  %conv = zext i32 %call to i64, !dbg !5408
  %and = and i64 %conv, 1, !dbg !5409
  %tobool = icmp ne i64 %and, 0, !dbg !5408
  ret i1 %tobool, !dbg !5410
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sg_chain_ptr(ptr noundef %sg) #4 align 16 !dbg !5411 {
entry:
  %sg.addr = alloca ptr, align 8
  store ptr %sg, ptr %sg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sg.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  %0 = load ptr, ptr %sg.addr, align 8, !dbg !5415
  %page_link = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 0, !dbg !5416
  %1 = load i64, ptr %page_link, align 8, !dbg !5416
  %and = and i64 %1, -4, !dbg !5417
  %2 = inttoptr i64 %and to ptr, !dbg !5418
  ret ptr %2, !dbg !5419
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_buddy_block_order(ptr noundef %block) #4 align 16 !dbg !5420 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  %0 = load ptr, ptr %block.addr, align 8, !dbg !5426
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !5427
  %1 = load i64, ptr %header, align 8, !dbg !5427
  %and = and i64 %1, 63, !dbg !5428
  %conv = trunc i64 %and to i32, !dbg !5426
  ret i32 %conv, !dbg !5429
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196}
!llvm.ident = !{!4197}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rsgt_ops", scope: !2, file: !3, line: 52, type: !4127, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_scatterlist.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_scatterlist\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_scatterlist.ll drivers/gpu/drm/i915/i915_scatterlist.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !116, globals: !4173, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/i915/i915_scatterlist.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71c43b6e3ee28bd327e681b89641299f")
!4 = !{!5, !11, !17, !24, !32, !48, !54, !59, !65, !70, !76, !83, !90, !98, !108}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !12, line: 33, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "ttm_uncached", value: 0)
!15 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!16 = !DIEnumerator(name: "ttm_cached", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !18, line: 312, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !25, line: 9, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!28 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!29 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!30 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!31 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !33, line: 1325, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!36 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!37 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!38 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!39 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!40 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!41 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!42 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!43 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!44 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!45 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!46 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!47 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !49, line: 26, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!52 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!53 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !55, line: 2052, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!58 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !60, line: 54, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "USRQUOTA", value: 0)
!63 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!64 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !66, line: 65, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!69 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !71, line: 16, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "TT_NONE", value: 0)
!74 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!75 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !77, line: 51, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!80 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!81 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!82 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !84, line: 15, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!87 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!88 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!89 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !91, line: 68, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!94 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!95 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!96 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!97 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !99, line: 364, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!100 = !{!101, !102, !103, !104, !105, !106, !107}
!101 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!103 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!104 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!105 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!106 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!107 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !109, line: 119, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!112 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!113 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!114 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!115 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!116 = !{!117, !7, !119, !120, !125, !121, !127, !128, !144, !145, !4100, !4102, !4112, !4135, !292}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !118, line: 154, baseType: !7)
!118 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!119 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !118, line: 113, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !122, line: 23, baseType: !123)
!122 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !124, line: 31, baseType: !119)
!124 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !118, line: 164, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !118, line: 159, baseType: !121)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_buddy_block", file: !130, line: 28, size: 576, elements: !131)
!130 = !DIFile(filename: "./include/drm/drm_buddy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109808cb06339c76f8642650a0d3b9a")
!131 = !{!132, !133, !134, !135, !136, !137, !143}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !129, file: !130, line: 37, baseType: !121, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !129, file: !130, line: 39, baseType: !128, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !129, file: !130, line: 40, baseType: !128, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !129, file: !130, line: 41, baseType: !128, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !129, file: !130, line: 43, baseType: !127, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !129, file: !130, line: 51, baseType: !138, size: 128, offset: 320)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !118, line: 190, size: 128, elements: !139)
!139 = !{!140, !142}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !118, line: 191, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !138, file: !118, line: 191, baseType: !141, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_link", scope: !129, file: !130, line: 52, baseType: !138, size: 128, offset: 448)
!144 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !33, line: 74, size: 512, align: 128, elements: !147)
!147 = !{!148, !149, !4094, !4099}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !33, line: 75, baseType: !144, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !33, line: 83, baseType: !150, size: 320, offset: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !33, line: 83, size: 320, elements: !151)
!151 = !{!152, !4000, !4014, !4018, !4093}
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !33, line: 84, baseType: !153, size: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !33, line: 84, size: 320, elements: !154)
!154 = !{!155, !166, !3994, !3999}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !33, line: 90, baseType: !156, size: 128)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !33, line: 90, size: 128, elements: !157)
!157 = !{!158, !159, !164, !165}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !156, file: !33, line: 91, baseType: !138, size: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !33, line: 94, baseType: !160, size: 128)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !33, line: 94, size: 128, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !160, file: !33, line: 96, baseType: !127, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !160, file: !33, line: 98, baseType: !7, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !156, file: !33, line: 102, baseType: !138, size: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !156, file: !33, line: 103, baseType: !138, size: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !153, file: !33, line: 106, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !55, line: 472, size: 1536, align: 64, elements: !169)
!169 = !{!170, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3988, !3989, !3990, !3991, !3992, !3993}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !168, file: !55, line: 473, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !55, line: 641, size: 4800, elements: !173)
!173 = !{!174, !177, !178, !187, !188, !195, !196, !199, !200, !3767, !3768, !3769, !3770, !3771, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3811, !3814, !3815, !3816, !3825, !3826, !3827, !3828}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !172, file: !55, line: 642, baseType: !175, size: 16)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !118, line: 24, baseType: !176)
!176 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !172, file: !55, line: 643, baseType: !176, size: 16, offset: 16)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !172, file: !55, line: 644, baseType: !179, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !180, line: 23, baseType: !181)
!180 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 21, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !180, line: 22, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !118, line: 37, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !186, line: 49, baseType: !7)
!186 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !172, file: !55, line: 645, baseType: !138, size: 128, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !172, file: !55, line: 646, baseType: !189, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !180, line: 28, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 26, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !190, file: !180, line: 27, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !118, line: 38, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !186, line: 50, baseType: !7)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !172, file: !55, line: 647, baseType: !7, size: 32, offset: 224)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !172, file: !55, line: 650, baseType: !197, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !55, line: 607, flags: DIFlagFwdDecl)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !172, file: !55, line: 651, baseType: !197, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !172, file: !55, line: 654, baseType: !201, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !55, line: 1966, size: 2048, align: 512, elements: !204)
!204 = !{!205, !3595, !3605, !3609, !3613, !3617, !3621, !3625, !3629, !3633, !3637, !3638, !3642, !3646, !3683, !3712, !3716, !3722, !3726, !3730, !3734, !3738, !3742, !3748, !3752}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !203, file: !55, line: 1967, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !171, !209, !7}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !211, line: 82, size: 1536, elements: !212)
!211 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!212 = !{!213, !214, !224, !232, !233, !251, !252, !256, !308, !3578, !3579, !3580, !3581, !3587, !3588, !3589}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !210, file: !211, line: 84, baseType: !7, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !210, file: !211, line: 85, baseType: !215, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !216, line: 275, baseType: !217)
!216 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !216, line: 275, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !217, file: !216, line: 275, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !216, line: 69, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !216, line: 64, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !221, file: !216, line: 65, baseType: !7, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !210, file: !211, line: 86, baseType: !225, size: 128, offset: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !226, line: 38, size: 128, elements: !227)
!226 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!227 = !{!228, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !226, line: 39, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !225, file: !226, line: 39, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !210, file: !211, line: 87, baseType: !209, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !210, file: !211, line: 88, baseType: !234, size: 128, offset: 256)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !211, line: 49, size: 128, elements: !235)
!235 = !{!236, !247}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !211, line: 50, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !211, line: 50, size: 64, elements: !238)
!238 = !{!239, !246}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !211, line: 51, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !211, line: 51, size: 64, elements: !241)
!241 = !{!242, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !240, file: !211, line: 52, baseType: !243, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !122, line: 21, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !124, line: 27, baseType: !7)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !240, file: !211, line: 52, baseType: !243, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !237, file: !211, line: 54, baseType: !121, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !211, line: 56, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !210, file: !211, line: 89, baseType: !171, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !210, file: !211, line: 91, baseType: !253, size: 256, offset: 448)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 256, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !210, file: !211, line: 94, baseType: !257, size: 64, offset: 704)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !258, line: 25, size: 64, elements: !259)
!258 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !257, file: !258, line: 26, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !257, file: !258, line: 26, size: 64, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !261, file: !258, line: 28, baseType: !123, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !258, line: 30, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !261, file: !258, line: 30, size: 64, elements: !266)
!266 = !{!267, !307}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !265, file: !258, line: 31, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !269, line: 29, baseType: !270)
!269 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !269, line: 17, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !269, line: 18, baseType: !273, size: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !269, line: 18, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !273, file: !269, line: 19, baseType: !276, size: 32)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !277, line: 14, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !276, file: !277, line: 15, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !281, line: 44, baseType: !282)
!281 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !281, line: 14, size: 32, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !281, line: 15, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !281, line: 15, size: 32, elements: !286)
!286 = !{!287, !293, !300}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !281, line: 16, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !118, line: 174, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 172, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !289, file: !118, line: 173, baseType: !292, size: 32)
!292 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !281, line: 24, baseType: !294, size: 16)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !281, line: 24, size: 16, elements: !295)
!295 = !{!296, !299}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !294, file: !281, line: 25, baseType: !297, size: 8)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !122, line: 17, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !124, line: 21, baseType: !250)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !294, file: !281, line: 26, baseType: !297, size: 8, offset: 8)
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !281, line: 28, baseType: !301, size: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !281, line: 28, size: 32, elements: !302)
!302 = !{!303, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !301, file: !281, line: 29, baseType: !304, size: 16)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !122, line: 19, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !124, line: 24, baseType: !176)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !301, file: !281, line: 30, baseType: !304, size: 16, offset: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !265, file: !258, line: 32, baseType: !292, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !210, file: !211, line: 95, baseType: !309, size: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !211, line: 128, size: 1024, align: 512, elements: !312)
!312 = !{!313, !317, !318, !325, !334, !338, !342, !346, !347, !351, !356, !3568, !3572}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !311, file: !211, line: 129, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!292, !209, !7}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !311, file: !211, line: 130, baseType: !314, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !311, file: !211, line: 131, baseType: !319, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!292, !322, !324}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !311, file: !211, line: 132, baseType: !326, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!292, !322, !7, !329, !332}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !311, file: !211, line: 134, baseType: !335, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!292, !322}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !311, file: !211, line: 135, baseType: !339, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!292, !209}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !311, file: !211, line: 136, baseType: !343, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !209}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !311, file: !211, line: 137, baseType: !343, size: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !311, file: !211, line: 138, baseType: !348, size: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !209, !171}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !311, file: !211, line: 139, baseType: !352, size: 64, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !209, !355, !292}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !311, file: !211, line: 140, baseType: !357, size: 64, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !3567}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !362, line: 70, size: 256, elements: !363)
!362 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!363 = !{!364, !365, !3563, !3564}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !361, file: !362, line: 71, baseType: !209, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !361, file: !362, line: 72, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !55, line: 1190, size: 10752, elements: !368)
!368 = !{!369, !370, !373, !374, !375, !379, !1946, !2080, !2120, !2205, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2222, !2226, !2227, !2230, !2233, !2236, !2239, !2240, !2241, !2282, !3496, !3497, !3498, !3499, !3500, !3501, !3504, !3506, !3513, !3514, !3515, !3516, !3517, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !367, file: !55, line: 1191, baseType: !138, size: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !367, file: !55, line: 1192, baseType: !371, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !118, line: 21, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !118, line: 18, baseType: !243)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !367, file: !55, line: 1193, baseType: !250, size: 8, offset: 160)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !367, file: !55, line: 1194, baseType: !144, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !367, file: !55, line: 1195, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !118, line: 52, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !186, line: 88, baseType: !378)
!378 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !367, file: !55, line: 1196, baseType: !380, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !55, line: 2366, size: 576, elements: !382)
!382 = !{!383, !384, !385, !391, !395, !399, !403, !1934, !1935, !1936, !1938, !1939, !1940, !1942, !1943, !1944, !1945}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !55, line: 2367, baseType: !329, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !381, file: !55, line: 2368, baseType: !292, size: 32, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !381, file: !55, line: 2376, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!292, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !362, line: 21, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !381, file: !55, line: 2377, baseType: !392, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !55, line: 75, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !381, file: !55, line: 2378, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!209, !380, !292, !329, !127}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !381, file: !55, line: 2380, baseType: !400, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !366}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !381, file: !55, line: 2381, baseType: !404, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !18, line: 402, size: 9216, align: 512, elements: !406)
!406 = !{!407, !408, !409, !413, !1590, !1616, !1617, !1618, !1619, !1623, !1626, !1627, !1628, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1696, !1700, !1720, !1738, !1739, !1740, !1741, !1750, !1773, !1774, !1777, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1791, !1792, !1892, !1900, !1901, !1902, !1904, !1908, !1909, !1913, !1914, !1915, !1916, !1918, !1919, !1920, !1927, !1928, !1929, !1933}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !405, file: !18, line: 403, baseType: !17, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !405, file: !18, line: 406, baseType: !138, size: 128, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !18, line: 409, baseType: !410, size: 448, offset: 192)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 448, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 56)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !405, file: !18, line: 417, baseType: !414, size: 768, offset: 640)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !18, line: 45, size: 768, elements: !415)
!415 = !{!416, !1573, !1574, !1575, !1578}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !414, file: !18, line: 46, baseType: !417, size: 512)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !418, line: 64, size: 512, elements: !419)
!418 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!419 = !{!420, !421, !422, !424, !470, !1468, !1563, !1568, !1569, !1570, !1571, !1572}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !417, file: !418, line: 65, baseType: !329, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !417, file: !418, line: 66, baseType: !138, size: 128, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !417, file: !418, line: 67, baseType: !423, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !417, file: !418, line: 68, baseType: !425, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !418, line: 168, size: 768, elements: !427)
!427 = !{!428, !429, !430, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !426, file: !418, line: 169, baseType: !138, size: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !426, file: !418, line: 170, baseType: !268, size: 32, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !426, file: !418, line: 171, baseType: !417, size: 512, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !426, file: !418, line: 172, baseType: !432, size: 64, offset: 704)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !418, line: 133, size: 192, elements: !435)
!435 = !{!436, !443, !448}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !434, file: !418, line: 134, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!292, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !434, file: !418, line: 135, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!329, !441}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !434, file: !418, line: 136, baseType: !449, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!292, !441, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !418, line: 125, size: 20736, elements: !455)
!455 = !{!456, !460, !464, !465, !469}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !454, file: !418, line: 126, baseType: !457, size: 192)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 192, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 3)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !454, file: !418, line: 127, baseType: !461, size: 4096, offset: 192)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 4096, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !454, file: !418, line: 128, baseType: !292, size: 32, offset: 4288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !454, file: !418, line: 129, baseType: !466, size: 16384, offset: 4320)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 16384, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 2048)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !454, file: !418, line: 130, baseType: !292, size: 32, offset: 20704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !417, file: !418, line: 69, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !418, line: 116, size: 384, elements: !474)
!474 = !{!475, !479, !505, !1427, !1458, !1462}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !473, file: !418, line: 117, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !423}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !473, file: !418, line: 118, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !483, line: 254, size: 128, elements: !484)
!483 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!484 = !{!485, !498}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !482, file: !483, line: 255, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !423, !493, !355}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !118, line: 66, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !186, line: 73, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !186, line: 15, baseType: !492)
!492 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !483, line: 30, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !494, file: !483, line: 31, baseType: !329, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !494, file: !483, line: 32, baseType: !175, size: 16, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !482, file: !483, line: 256, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!489, !423, !493, !329, !502}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 61, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !186, line: 72, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !186, line: 16, baseType: !144)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !473, file: !418, line: 119, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !483, line: 84, size: 320, elements: !510)
!510 = !{!511, !512, !516, !1423, !1425}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !483, line: 85, baseType: !329, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !509, file: !483, line: 86, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!175, !423, !493, !292}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !509, file: !483, line: 88, baseType: !517, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!175, !423, !520, !292}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !483, line: 175, size: 512, elements: !522)
!522 = !{!523, !524, !525, !526, !530, !1418, !1419}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !521, file: !483, line: 176, baseType: !494, size: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !521, file: !483, line: 177, baseType: !502, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !521, file: !483, line: 178, baseType: !127, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !521, file: !483, line: 179, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!167}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !521, file: !483, line: 180, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!489, !534, !423, !520, !355, !376, !502}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !55, line: 994, size: 1856, align: 64, elements: !536)
!536 = !{!537, !556, !557, !559, !568, !581, !582, !583, !654, !866, !875, !881, !882, !1408, !1409, !1410, !1411, !1413, !1414, !1417}
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !55, line: 995, baseType: !538, size: 128)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !55, line: 995, size: 128, elements: !539)
!539 = !{!540, !546, !555}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !538, file: !55, line: 996, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !542, line: 60, size: 64, elements: !543)
!542 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !542, line: 61, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !538, file: !55, line: 997, baseType: !547, size: 128, align: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !118, line: 232, size: 128, align: 64, elements: !548)
!548 = !{!549, !551}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !118, line: 233, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !547, file: !118, line: 234, baseType: !552, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !550}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !538, file: !55, line: 998, baseType: !7, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !535, file: !55, line: 1005, baseType: !268, size: 32, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !535, file: !55, line: 1006, baseType: !558, size: 32, offset: 160)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !118, line: 156, baseType: !7)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !535, file: !55, line: 1007, baseType: !560, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !561, line: 13, baseType: !562)
!561 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !118, line: 181, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 179, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !563, file: !118, line: 180, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !122, line: 22, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !124, line: 30, baseType: !378)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !535, file: !55, line: 1008, baseType: !569, size: 256, offset: 256)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !570, line: 66, size: 256, elements: !571)
!570 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!571 = !{!572, !573, !575, !580}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !569, file: !570, line: 67, baseType: !560, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !569, file: !570, line: 68, baseType: !574, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !277, line: 23, baseType: !276)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !569, file: !570, line: 70, baseType: !576, size: 32, offset: 96)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !577, line: 15, size: 32, elements: !578)
!577 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !576, file: !577, line: 20, baseType: !288, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !569, file: !570, line: 72, baseType: !138, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !535, file: !55, line: 1009, baseType: !376, size: 64, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !535, file: !55, line: 1010, baseType: !7, size: 32, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !535, file: !55, line: 1011, baseType: !584, size: 256, offset: 640)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !55, line: 948, size: 256, elements: !585)
!585 = !{!586, !607, !650, !651, !652, !653}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !584, file: !55, line: 949, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !588, line: 34, baseType: !589)
!588 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 25, size: 64, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !589, file: !588, line: 26, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !593, line: 27, baseType: !594)
!593 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !593, line: 13, size: 64, elements: !595)
!595 = !{!596, !606}
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !593, line: 14, baseType: !597, size: 32)
!597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !594, file: !593, line: 14, size: 32, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !597, file: !593, line: 15, baseType: !288, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !593, line: 16, baseType: !601, size: 32)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !597, file: !593, line: 16, size: 32, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !601, file: !593, line: 18, baseType: !297, size: 8)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !601, file: !593, line: 19, baseType: !605, size: 24, offset: 8)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 24, elements: !458)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !594, file: !593, line: 26, baseType: !280, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !584, file: !55, line: 950, baseType: !608, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !25, line: 59, size: 768, elements: !610)
!610 = !{!611, !616, !617, !618, !631, !632, !639, !640}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !609, file: !25, line: 61, baseType: !612, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !109, line: 113, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !109, line: 111, size: 32, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !613, file: !109, line: 112, baseType: !288, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !609, file: !25, line: 62, baseType: !7, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !609, file: !25, line: 63, baseType: !268, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !609, file: !25, line: 65, baseType: !619, size: 256, offset: 128)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 256, elements: !629)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !118, line: 194, size: 64, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !620, file: !118, line: 195, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !118, line: 198, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !118, line: 199, baseType: !623, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !624, file: !118, line: 199, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!629 = !{!630}
!630 = !DISubrange(count: 4)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !609, file: !25, line: 66, baseType: !620, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !609, file: !25, line: 68, baseType: !633, size: 192, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !634, line: 41, baseType: !635)
!634 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !634, line: 37, size: 192, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !635, file: !634, line: 38, baseType: !268, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !635, file: !634, line: 39, baseType: !138, size: 128, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !609, file: !25, line: 69, baseType: !547, size: 128, align: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !609, file: !25, line: 70, baseType: !641, offset: 768)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, elements: !648)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !25, line: 54, size: 128, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !642, file: !25, line: 55, baseType: !292, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !642, file: !25, line: 56, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !25, line: 56, flags: DIFlagFwdDecl)
!648 = !{!649}
!649 = !DISubrange(count: -1)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !584, file: !55, line: 951, baseType: !24, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !584, file: !55, line: 952, baseType: !179, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !584, file: !55, line: 952, baseType: !179, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !584, file: !55, line: 953, baseType: !292, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !535, file: !55, line: 1012, baseType: !655, size: 64, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !658, line: 110, size: 1472, elements: !659)
!658 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !676, !677, !678, !679, !680, !681, !811, !812, !813, !814, !815, !846, !849, !853, !861}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !657, file: !658, line: 111, baseType: !560, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !657, file: !658, line: 112, baseType: !179, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !657, file: !658, line: 113, baseType: !189, size: 32, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !657, file: !658, line: 114, baseType: !179, size: 32, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !657, file: !658, line: 115, baseType: !189, size: 32, offset: 160)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !657, file: !658, line: 116, baseType: !179, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !657, file: !658, line: 117, baseType: !189, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !657, file: !658, line: 118, baseType: !179, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !657, file: !658, line: 119, baseType: !189, size: 32, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !657, file: !658, line: 120, baseType: !7, size: 32, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !657, file: !658, line: 121, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !672, line: 24, baseType: !673)
!672 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 24, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !673, file: !672, line: 24, baseType: !121, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !657, file: !658, line: 122, baseType: !671, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !657, file: !658, line: 123, baseType: !671, size: 64, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !657, file: !658, line: 124, baseType: !671, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !657, file: !658, line: 125, baseType: !671, size: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !657, file: !658, line: 127, baseType: !250, size: 8, offset: 704)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !657, file: !658, line: 129, baseType: !682, size: 64, offset: 768)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !684, line: 195, size: 1728, elements: !685)
!684 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!685 = !{!686, !687, !692, !704, !713, !716, !717, !724, !725, !726, !727, !730, !731, !732, !734, !735, !775, !796}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !683, file: !684, line: 196, baseType: !612, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !683, file: !684, line: 197, baseType: !688, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !684, line: 28, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !118, line: 104, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !122, line: 20, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !124, line: 26, baseType: !292)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !684, line: 198, baseType: !693, size: 192, offset: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !684, line: 198, size: 192, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !693, file: !684, line: 199, baseType: !138, size: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !693, file: !684, line: 200, baseType: !697, size: 192, align: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !698, line: 5, size: 192, align: 64, elements: !699)
!698 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!699 = !{!700, !701, !703}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !697, file: !698, line: 6, baseType: !144, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !697, file: !698, line: 7, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !697, file: !698, line: 8, baseType: !702, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !683, file: !684, line: 205, baseType: !705, size: 320, offset: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !706, line: 48, size: 320, elements: !707)
!706 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!707 = !{!708, !709, !710, !711, !712}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !705, file: !706, line: 49, baseType: !560, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !705, file: !706, line: 55, baseType: !560, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !705, file: !706, line: 57, baseType: !576, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !705, file: !706, line: 59, baseType: !574, size: 32, offset: 160)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !705, file: !706, line: 60, baseType: !138, size: 128, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !683, file: !684, line: 206, baseType: !714, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !684, line: 206, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !683, file: !684, line: 207, baseType: !127, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !684, line: 208, baseType: !718, size: 64, offset: 704)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !684, line: 208, size: 64, elements: !719)
!719 = !{!720, !723}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !718, file: !684, line: 209, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !722, line: 8, baseType: !567)
!722 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!723 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !718, file: !684, line: 210, baseType: !721, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !683, file: !684, line: 212, baseType: !721, size: 64, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !683, file: !684, line: 213, baseType: !179, size: 32, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !683, file: !684, line: 214, baseType: !189, size: 32, offset: 864)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !683, file: !684, line: 215, baseType: !728, size: 32, offset: 896)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !684, line: 31, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !118, line: 110, baseType: !243)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !683, file: !684, line: 216, baseType: !176, size: 16, offset: 928)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !683, file: !684, line: 217, baseType: !176, size: 16, offset: 944)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !683, file: !684, line: 221, baseType: !733, size: 16, offset: 960)
!733 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !684, line: 228, baseType: !144, size: 64, offset: 1024)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !684, line: 245, baseType: !736, size: 320, offset: 1088)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !684, line: 245, size: 320, elements: !737)
!737 = !{!738, !767}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !736, file: !684, line: 246, baseType: !739, size: 320)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !684, line: 114, size: 320, elements: !740)
!740 = !{!741, !742, !754, !757, !766}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !739, file: !684, line: 116, baseType: !144, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !684, line: 117, baseType: !743, size: 64, offset: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !684, line: 117, size: 64, elements: !744)
!744 = !{!745, !753}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !684, line: 118, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !684, line: 118, size: 64, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !746, file: !684, line: 120, baseType: !304, size: 16)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !746, file: !684, line: 121, baseType: !750, size: 48, offset: 16)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 48, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 6)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !743, file: !684, line: 127, baseType: !144, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !684, line: 129, baseType: !755, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !684, line: 102, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !739, file: !684, line: 130, baseType: !758, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !684, line: 108, size: 192, elements: !760)
!760 = !{!761, !762, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !759, file: !684, line: 109, baseType: !547, size: 128, align: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !759, file: !684, line: 110, baseType: !612, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !759, file: !684, line: 111, baseType: !764, size: 8, offset: 160)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !118, line: 35, baseType: !765)
!765 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !739, file: !684, line: 131, baseType: !329, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !684, line: 247, baseType: !768, size: 320)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !684, line: 247, size: 320, elements: !769)
!769 = !{!770, !771, !772, !773, !774}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !768, file: !684, line: 248, baseType: !144, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !768, file: !684, line: 249, baseType: !144, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !684, line: 250, baseType: !755, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !768, file: !684, line: 251, baseType: !758, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !768, file: !684, line: 252, baseType: !355, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !684, line: 260, baseType: !776, size: 256, offset: 1408)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !684, line: 260, size: 256, elements: !777)
!777 = !{!778, !784}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !776, file: !684, line: 261, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !684, line: 134, size: 256, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !779, file: !684, line: 135, baseType: !127, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !779, file: !684, line: 136, baseType: !783, size: 256)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !629)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !684, line: 262, baseType: !785, size: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !776, file: !684, line: 262, size: 256, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !785, file: !684, line: 264, baseType: !138, size: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !785, file: !684, line: 265, baseType: !789, size: 128, offset: 128)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !790, line: 22, size: 128, elements: !791)
!790 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!791 = !{!792, !795}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !789, file: !790, line: 23, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !790, line: 23, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !789, file: !790, line: 24, baseType: !144, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !683, file: !684, line: 280, baseType: !797, size: 64, offset: 1664)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !684, line: 176, size: 192, elements: !799)
!799 = !{!800, !809, !810}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !798, file: !684, line: 177, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !684, line: 171, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!292, !682, !805, !807, !682}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !798, file: !684, line: 178, baseType: !682, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !798, file: !684, line: 179, baseType: !755, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !657, file: !658, line: 130, baseType: !682, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !657, file: !658, line: 131, baseType: !682, size: 64, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !657, file: !658, line: 132, baseType: !682, size: 64, offset: 960)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !657, file: !658, line: 135, baseType: !127, size: 64, offset: 1024)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !657, file: !658, line: 137, baseType: !816, size: 64, offset: 1088)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !818, line: 14, size: 1088, elements: !819)
!818 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!819 = !{!820, !821, !830, !831, !832, !833, !834, !835}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !817, file: !818, line: 15, baseType: !612, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !817, file: !818, line: 17, baseType: !822, size: 320, offset: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !823, line: 22, size: 320, elements: !824)
!823 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!824 = !{!825, !826, !827, !828}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !822, file: !823, line: 23, baseType: !574, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !822, file: !823, line: 24, baseType: !566, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !822, file: !823, line: 26, baseType: !138, size: 128, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !822, file: !823, line: 28, baseType: !829, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !817, file: !818, line: 19, baseType: !144, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !817, file: !818, line: 20, baseType: !560, size: 64, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !817, file: !818, line: 23, baseType: !624, size: 128, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !817, file: !818, line: 24, baseType: !179, size: 32, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !817, file: !818, line: 29, baseType: !560, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !817, file: !818, line: 36, baseType: !836, size: 320, offset: 768)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !837, line: 15, size: 320, elements: !838)
!837 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!838 = !{!839, !840, !841, !842, !843, !844, !845}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !836, file: !837, line: 16, baseType: !574, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !836, file: !837, line: 18, baseType: !292, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !836, file: !837, line: 19, baseType: !292, size: 32, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !836, file: !837, line: 20, baseType: !292, size: 32, offset: 96)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !836, file: !837, line: 21, baseType: !292, size: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !836, file: !837, line: 22, baseType: !144, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !837, line: 23, baseType: !144, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !657, file: !658, line: 138, baseType: !847, size: 64, offset: 1152)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !33, line: 901, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !657, file: !658, line: 139, baseType: !850, size: 64, offset: 1216)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !852, line: 16, flags: DIFlagFwdDecl)
!852 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!853 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !657, file: !658, line: 140, baseType: !854, size: 64, offset: 1280)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !658, line: 25, size: 64, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !855, file: !658, line: 26, baseType: !288, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !855, file: !658, line: 27, baseType: !292, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !855, file: !658, line: 28, baseType: !860, offset: 64)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, elements: !648)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 142, baseType: !862, size: 128, offset: 1344)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 142, size: 128, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !862, file: !658, line: 143, baseType: !292, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !862, file: !658, line: 144, baseType: !547, size: 128, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !535, file: !55, line: 1013, baseType: !867, size: 256, offset: 960)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !55, line: 970, size: 256, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !867, file: !55, line: 971, baseType: !144, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !867, file: !55, line: 972, baseType: !7, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !867, file: !55, line: 973, baseType: !7, size: 32, offset: 96)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !867, file: !55, line: 974, baseType: !7, size: 32, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !867, file: !55, line: 975, baseType: !7, size: 32, offset: 160)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !867, file: !55, line: 976, baseType: !376, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !535, file: !55, line: 1014, baseType: !876, size: 128, offset: 1216)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !877, line: 8, size: 128, elements: !878)
!877 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !876, file: !877, line: 9, baseType: !360, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !876, file: !877, line: 10, baseType: !209, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !535, file: !55, line: 1015, baseType: !171, size: 64, offset: 1344)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !535, file: !55, line: 1016, baseType: !883, size: 64, offset: 1408)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !55, line: 1914, size: 2112, elements: !886)
!886 = !{!887, !888, !892, !897, !901, !929, !930, !936, !949, !957, !961, !962, !1291, !1292, !1296, !1301, !1302, !1306, !1310, !1316, !1317, !1321, !1322, !1329, !1333, !1337, !1343, !1347, !1389, !1393, !1397, !1398, !1404}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !885, file: !55, line: 1915, baseType: !404, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !885, file: !55, line: 1916, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!376, !534, !376, !292}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !885, file: !55, line: 1917, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!489, !534, !355, !502, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !885, file: !55, line: 1918, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!489, !534, !329, !502, !896}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !885, file: !55, line: 1919, baseType: !902, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!489, !905, !927}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !55, line: 373, size: 384, elements: !907)
!907 = !{!908, !909, !910, !914, !915, !916, !917}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !906, file: !55, line: 374, baseType: !534, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !906, file: !55, line: 375, baseType: !376, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !906, file: !55, line: 376, baseType: !911, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !905, !492}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !906, file: !55, line: 377, baseType: !127, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !906, file: !55, line: 378, baseType: !292, size: 32, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !906, file: !55, line: 379, baseType: !304, size: 16, offset: 288)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !55, line: 380, baseType: !918, size: 64, offset: 320)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !55, line: 380, size: 64, elements: !919)
!919 = !{!920, !923}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !918, file: !55, line: 386, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !55, line: 386, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !918, file: !55, line: 395, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!489, !127}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !55, line: 69, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !885, file: !55, line: 1920, baseType: !902, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !885, file: !55, line: 1921, baseType: !931, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!292, !905, !934, !7}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !55, line: 53, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !885, file: !55, line: 1923, baseType: !937, size: 64, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!292, !534, !940}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !55, line: 1858, size: 128, elements: !942)
!942 = !{!943, !948}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !941, file: !55, line: 1859, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !55, line: 1855, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!764, !940, !329, !292, !376, !121, !7}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !941, file: !55, line: 1860, baseType: !376, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !885, file: !55, line: 1924, baseType: !950, size: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!953, !534, !955}
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !954, line: 59, baseType: !7)
!954 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !55, line: 61, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !885, file: !55, line: 1925, baseType: !958, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!492, !534, !7, !144}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !885, file: !55, line: 1926, baseType: !958, size: 64, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !885, file: !55, line: 1927, baseType: !963, size: 64, offset: 704)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!292, !534, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !33, line: 625, size: 1344, elements: !968)
!968 = !{!969, !978, !1147, !1153, !1160, !1161, !1166, !1167, !1172, !1173, !1176, !1284, !1285, !1286, !1287, !1288, !1289}
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !33, line: 628, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !33, line: 628, size: 128, elements: !971)
!971 = !{!972, !977}
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !33, line: 629, baseType: !973, size: 128)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !33, line: 629, size: 128, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !973, file: !33, line: 631, baseType: !144, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !973, file: !33, line: 632, baseType: !144, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !970, file: !33, line: 635, baseType: !547, size: 128, align: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !967, file: !33, line: 639, baseType: !979, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !33, line: 733, size: 10240, elements: !981)
!981 = !{!982, !1145}
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !33, line: 734, baseType: !983, size: 10240)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !980, file: !33, line: 734, size: 10240, elements: !984)
!984 = !{!985, !989, !1003, !1007, !1008, !1009, !1010, !1011, !1012, !1021, !1022, !1023, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1062, !1064, !1067, !1114, !1115, !1116, !1119, !1120, !1121, !1124, !1125, !1126, !1132, !1133}
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !983, file: !33, line: 739, baseType: !986, size: 512, align: 512)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !983, file: !33, line: 739, size: 512, align: 512, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !986, file: !33, line: 747, baseType: !288, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !983, file: !33, line: 750, baseType: !990, size: 128, offset: 512)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !991, line: 218, size: 128, elements: !992)
!991 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!992 = !{!993, !1001, !1002}
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !991, line: 219, baseType: !994, size: 32)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !991, line: 219, size: 32, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !994, file: !991, line: 220, baseType: !268, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !994, file: !991, line: 221, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !991, line: 197, baseType: !999)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !991, line: 197, elements: !1000)
!1000 = !{}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !990, file: !991, line: 223, baseType: !7, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !990, file: !991, line: 224, baseType: !127, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !983, file: !33, line: 752, baseType: !1004, size: 64, offset: 640)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!144, !534, !144, !144, !144, !144}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !983, file: !33, line: 756, baseType: !144, size: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !983, file: !33, line: 757, baseType: !144, size: 64, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !983, file: !33, line: 760, baseType: !144, size: 64, offset: 832)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !983, file: !33, line: 761, baseType: !144, size: 64, offset: 896)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !983, file: !33, line: 763, baseType: !144, size: 64, offset: 960)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !983, file: !33, line: 764, baseType: !1013, size: 64, offset: 1024)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1015, line: 299, baseType: !1016)
!1015 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1015, line: 299, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1016, file: !1015, line: 299, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1020, line: 18, baseType: !144)
!1020 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !983, file: !33, line: 773, baseType: !288, size: 32, offset: 1088)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !983, file: !33, line: 785, baseType: !288, size: 32, offset: 1120)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !983, file: !33, line: 795, baseType: !1024, size: 64, offset: 1152)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !33, line: 726, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1025, file: !33, line: 727, baseType: !121, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1025, file: !33, line: 728, baseType: !292, size: 32, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !983, file: !33, line: 801, baseType: !144, size: 64, offset: 1216)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !983, file: !33, line: 804, baseType: !560, size: 64, offset: 1280)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !983, file: !33, line: 806, baseType: !292, size: 32, offset: 1344)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !983, file: !33, line: 808, baseType: !268, size: 32, offset: 1376)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !983, file: !33, line: 823, baseType: !705, size: 320, offset: 1408)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !983, file: !33, line: 825, baseType: !138, size: 128, offset: 1728)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !983, file: !33, line: 845, baseType: !292, size: 32, offset: 1856)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !983, file: !33, line: 849, baseType: !144, size: 64, offset: 1920)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !983, file: !33, line: 850, baseType: !144, size: 64, offset: 1984)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !983, file: !33, line: 852, baseType: !144, size: 64, offset: 2048)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !983, file: !33, line: 853, baseType: !144, size: 64, offset: 2112)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !983, file: !33, line: 854, baseType: !562, size: 64, offset: 2176)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !983, file: !33, line: 855, baseType: !144, size: 64, offset: 2240)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !983, file: !33, line: 856, baseType: !144, size: 64, offset: 2304)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !983, file: !33, line: 857, baseType: !144, size: 64, offset: 2368)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !983, file: !33, line: 858, baseType: !144, size: 64, offset: 2432)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !983, file: !33, line: 865, baseType: !220, size: 32, offset: 2496)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !983, file: !33, line: 867, baseType: !268, size: 32, offset: 2528)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !983, file: !33, line: 869, baseType: !144, size: 64, offset: 2560)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !983, file: !33, line: 869, baseType: !144, size: 64, offset: 2624)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !983, file: !33, line: 869, baseType: !144, size: 64, offset: 2688)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !983, file: !33, line: 869, baseType: !144, size: 64, offset: 2752)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !983, file: !33, line: 870, baseType: !144, size: 64, offset: 2816)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !983, file: !33, line: 870, baseType: !144, size: 64, offset: 2880)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !983, file: !33, line: 870, baseType: !144, size: 64, offset: 2944)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !983, file: !33, line: 871, baseType: !144, size: 64, offset: 3008)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !983, file: !33, line: 871, baseType: !144, size: 64, offset: 3072)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !983, file: !33, line: 871, baseType: !144, size: 64, offset: 3136)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !983, file: !33, line: 871, baseType: !144, size: 64, offset: 3200)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !983, file: !33, line: 873, baseType: !1059, size: 3328, offset: 3264)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 3328, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 52)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !983, file: !33, line: 875, baseType: !1063, size: 1280, offset: 6592)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 1280, elements: !629)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !983, file: !33, line: 877, baseType: !1065, size: 64, offset: 7872)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !33, line: 877, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !983, file: !33, line: 880, baseType: !1068, size: 1088, offset: 7936)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1069, line: 72, baseType: !1070)
!1069 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1069, line: 23, size: 1088, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1079, !1080, !1081, !1082, !1109, !1110, !1111}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1070, file: !1069, line: 28, baseType: !121, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1070, file: !1069, line: 38, baseType: !562, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1070, file: !1069, line: 40, baseType: !144, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1070, file: !1069, line: 43, baseType: !705, size: 320, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1070, file: !1069, line: 44, baseType: !1077, size: 64, offset: 512)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1069, line: 44, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !1069, line: 48, baseType: !144, size: 64, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1070, file: !1069, line: 59, baseType: !569, size: 256, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1070, file: !1069, line: 60, baseType: !127, size: 64, offset: 896)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1070, file: !1069, line: 61, baseType: !1083, size: 64, offset: 960)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1086, line: 13, size: 1216, elements: !1087)
!1086 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1085, file: !1086, line: 14, baseType: !127, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1085, file: !1086, line: 15, baseType: !144, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1085, file: !1086, line: 17, baseType: !144, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1085, file: !1086, line: 17, baseType: !144, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1085, file: !1086, line: 18, baseType: !144, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1085, file: !1086, line: 18, baseType: !144, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1085, file: !1086, line: 19, baseType: !1095, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1085, file: !1086, line: 21, baseType: !492, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1085, file: !1086, line: 23, baseType: !492, size: 64, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1085, file: !1086, line: 24, baseType: !492, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1085, file: !1086, line: 25, baseType: !492, size: 64, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1085, file: !1086, line: 26, baseType: !492, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1085, file: !1086, line: 27, baseType: !492, size: 64, offset: 768)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1085, file: !1086, line: 28, baseType: !492, size: 64, offset: 832)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1085, file: !1086, line: 29, baseType: !492, size: 64, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1085, file: !1086, line: 30, baseType: !492, size: 64, offset: 960)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1085, file: !1086, line: 31, baseType: !492, size: 64, offset: 1024)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1085, file: !1086, line: 32, baseType: !492, size: 64, offset: 1088)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1085, file: !1086, line: 33, baseType: !492, size: 64, offset: 1152)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1070, file: !1069, line: 63, baseType: !288, size: 32, offset: 1024)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1070, file: !1069, line: 69, baseType: !304, size: 16, offset: 1056)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1070, file: !1069, line: 70, baseType: !1112, size: 16, offset: 1072)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !122, line: 18, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !124, line: 23, baseType: !733)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !983, file: !33, line: 882, baseType: !144, size: 64, offset: 9024)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !983, file: !33, line: 885, baseType: !268, size: 32, offset: 9088)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !983, file: !33, line: 886, baseType: !1117, size: 64, offset: 9152)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !33, line: 732, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !983, file: !33, line: 901, baseType: !847, size: 64, offset: 9216)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !983, file: !33, line: 904, baseType: !534, size: 64, offset: 9280)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !983, file: !33, line: 906, baseType: !1122, size: 64, offset: 9344)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !33, line: 906, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !983, file: !33, line: 930, baseType: !288, size: 32, offset: 9408)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !983, file: !33, line: 933, baseType: !288, size: 32, offset: 9440)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !983, file: !33, line: 935, baseType: !1127, size: 64, offset: 9472)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !77, line: 103, size: 64, elements: !1128)
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1127, file: !77, line: 104, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !77, line: 101, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !983, file: !33, line: 940, baseType: !560, size: 64, offset: 9536)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !983, file: !33, line: 942, baseType: !1134, size: 256, offset: 9600)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1135, line: 98, size: 256, elements: !1136)
!1135 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1134, file: !1135, line: 99, baseType: !560, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1134, file: !1135, line: 100, baseType: !138, size: 128, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1134, file: !1135, line: 101, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1135, line: 21, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !1144}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !980, file: !33, line: 986, baseType: !1146, offset: 10240)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, elements: !648)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !967, file: !33, line: 640, baseType: !1148, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1015, line: 297, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1015, line: 297, size: 64, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1149, file: !1015, line: 297, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1020, line: 19, baseType: !144)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !33, line: 646, baseType: !1154, size: 64, offset: 256)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !33, line: 646, size: 64, elements: !1155)
!1155 = !{!1156, !1159}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1154, file: !33, line: 647, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !33, line: 542, baseType: !144)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1154, file: !33, line: 648, baseType: !1158, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !967, file: !33, line: 666, baseType: !292, size: 32, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !967, file: !33, line: 667, baseType: !1162, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !33, line: 579, size: 320, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1163, file: !33, line: 580, baseType: !705, size: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !967, file: !33, line: 670, baseType: !764, size: 8, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !967, file: !33, line: 681, baseType: !1168, size: 256, offset: 512)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !33, line: 678, size: 256, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1168, file: !33, line: 679, baseType: !697, size: 192, align: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1168, file: !33, line: 680, baseType: !144, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !967, file: !33, line: 689, baseType: !138, size: 128, offset: 768)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !967, file: !33, line: 691, baseType: !1174, size: 64, offset: 896)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !33, line: 691, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !967, file: !33, line: 694, baseType: !1177, size: 64, offset: 960)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1180, line: 563, size: 1024, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1181 = !{!1182, !1186, !1187, !1191, !1195, !1199, !1248, !1252, !1256, !1260, !1261, !1262, !1266, !1270, !1276, !1280}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1179, file: !1180, line: 564, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !966}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1179, file: !1180, line: 569, baseType: !1183, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1179, file: !1180, line: 571, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!292, !966, !144}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1179, file: !1180, line: 572, baseType: !1192, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!292, !966}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1179, file: !1180, line: 578, baseType: !1196, size: 64, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!292, !966, !144, !144, !144}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1179, file: !1180, line: 580, baseType: !1200, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !33, line: 1184, baseType: !7)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1180, line: 512, size: 896, elements: !1206)
!1206 = !{!1207, !1215, !1216, !1223, !1230, !1240, !1241, !1242, !1244, !1246}
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1180, line: 513, baseType: !1208, size: 320)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1205, file: !1180, line: 513, size: 320, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1208, file: !1180, line: 514, baseType: !966, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1208, file: !1180, line: 515, baseType: !117, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1208, file: !1180, line: 516, baseType: !144, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1208, file: !1180, line: 517, baseType: !144, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1208, file: !1180, line: 518, baseType: !144, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1205, file: !1180, line: 520, baseType: !32, size: 32, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1205, file: !1180, line: 522, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1020, line: 22, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 22, size: 64, elements: !1220)
!1220 = !{!1221}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1219, file: !1020, line: 22, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1020, line: 15, baseType: !144)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1205, file: !1180, line: 524, baseType: !1224, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1015, line: 372, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1015, line: 372, size: 64, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1226, file: !1015, line: 372, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1020, line: 16, baseType: !144)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1180, line: 527, baseType: !1231, size: 64, offset: 512)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1180, line: 527, size: 64, elements: !1232)
!1232 = !{!1233, !1239}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1231, file: !1180, line: 528, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1020, line: 21, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 21, size: 64, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1235, file: !1020, line: 21, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1020, line: 14, baseType: !144)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1231, file: !1180, line: 529, baseType: !1218, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1205, file: !1180, line: 534, baseType: !145, size: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1205, file: !1180, line: 535, baseType: !145, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1205, file: !1180, line: 541, baseType: !1243, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1205, file: !1180, line: 545, baseType: !1245, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1205, file: !1180, line: 549, baseType: !1247, size: 64, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1015, line: 520, baseType: !145)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1179, file: !1180, line: 581, baseType: !1249, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!1203, !1204, !7}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1179, file: !1180, line: 582, baseType: !1253, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1203, !1204, !144, !144}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1179, file: !1180, line: 584, baseType: !1257, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!144, !966}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1179, file: !1180, line: 588, baseType: !1200, size: 64, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1179, file: !1180, line: 591, baseType: !1200, size: 64, offset: 640)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1179, file: !1180, line: 597, baseType: !1263, size: 64, offset: 704)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!292, !966, !144, !127, !292, !292}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1179, file: !1180, line: 603, baseType: !1267, size: 64, offset: 768)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!329, !966}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1179, file: !1180, line: 613, baseType: !1271, size: 64, offset: 832)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!292, !966, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !33, line: 717, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1179, file: !1180, line: 625, baseType: !1277, size: 64, offset: 896)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!1274, !966, !144}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1179, file: !1180, line: 633, baseType: !1281, size: 64, offset: 960)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!145, !966, !144}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !967, file: !33, line: 697, baseType: !144, size: 64, offset: 1024)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !967, file: !33, line: 699, baseType: !534, size: 64, offset: 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !967, file: !33, line: 700, baseType: !127, size: 64, offset: 1152)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !967, file: !33, line: 711, baseType: !560, size: 64, offset: 1216)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !967, file: !33, line: 717, baseType: !1274, size: 64, offset: 1280)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !967, file: !33, line: 722, baseType: !1290, offset: 1344)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !33, line: 570, elements: !1000)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !885, file: !55, line: 1928, baseType: !144, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !885, file: !55, line: 1929, baseType: !1293, size: 64, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!292, !171, !534}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !885, file: !55, line: 1930, baseType: !1297, size: 64, offset: 896)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!292, !534, !1300}
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !55, line: 1061, baseType: !127)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !885, file: !55, line: 1931, baseType: !1293, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !885, file: !55, line: 1932, baseType: !1303, size: 64, offset: 1024)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!292, !534, !376, !376, !292}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !885, file: !55, line: 1933, baseType: !1307, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!292, !292, !534, !292}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !885, file: !55, line: 1934, baseType: !1311, size: 64, offset: 1152)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!292, !534, !292, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !55, line: 1063, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !885, file: !55, line: 1935, baseType: !1004, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !885, file: !55, line: 1936, baseType: !1318, size: 64, offset: 1280)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!292, !292}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !885, file: !55, line: 1937, baseType: !1311, size: 64, offset: 1344)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !885, file: !55, line: 1938, baseType: !1323, size: 64, offset: 1408)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!489, !1326, !534, !896, !502, !7}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1328, line: 59, flags: DIFlagFwdDecl)
!1328 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !885, file: !55, line: 1939, baseType: !1330, size: 64, offset: 1472)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!489, !534, !896, !1326, !502, !7}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !885, file: !55, line: 1940, baseType: !1334, size: 64, offset: 1536)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !534}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !885, file: !55, line: 1941, baseType: !1338, size: 64, offset: 1600)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!292, !534, !292, !1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !885, file: !55, line: 1942, baseType: !1344, size: 64, offset: 1664)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!492, !534, !292, !376, !376}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !885, file: !55, line: 1944, baseType: !1348, size: 64, offset: 1728)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1351, !534}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1353, line: 17, size: 960, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1384, !1385, !1388}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1352, file: !1353, line: 18, baseType: !355, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1352, file: !1353, line: 19, baseType: !502, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1352, file: !1353, line: 20, baseType: !502, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1352, file: !1353, line: 21, baseType: !502, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1352, file: !1353, line: 22, baseType: !502, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1352, file: !1353, line: 23, baseType: !376, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1352, file: !1353, line: 24, baseType: !376, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !1353, line: 25, baseType: !569, size: 256, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1352, file: !1353, line: 26, baseType: !1364, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1353, line: 32, size: 256, elements: !1367)
!1367 = !{!1368, !1372, !1376, !1380}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1366, file: !1353, line: 33, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!127, !1351, !896}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1366, file: !1353, line: 34, baseType: !1373, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !1351, !127}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1366, file: !1353, line: 35, baseType: !1377, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!127, !1351, !127, !896}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1366, file: !1353, line: 36, baseType: !1381, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!292, !1351, !127}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1352, file: !1353, line: 27, baseType: !292, size: 32, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1352, file: !1353, line: 28, baseType: !1386, size: 64, offset: 832)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1352, file: !1353, line: 29, baseType: !127, size: 64, offset: 896)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !885, file: !55, line: 1948, baseType: !1390, size: 64, offset: 1792)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!489, !534, !376, !534, !376, !502, !7}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !885, file: !55, line: 1950, baseType: !1394, size: 64, offset: 1856)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!376, !534, !376, !534, !376, !376, !7}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !885, file: !55, line: 1953, baseType: !1303, size: 64, offset: 1920)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !885, file: !55, line: 1954, baseType: !1399, size: 64, offset: 1984)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!292, !1402, !7}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !55, line: 1911, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !885, file: !55, line: 1955, baseType: !1405, size: 64, offset: 2048)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!292, !1402, !934, !7}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !535, file: !55, line: 1018, baseType: !121, size: 64, offset: 1472)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !535, file: !55, line: 1020, baseType: !127, size: 64, offset: 1536)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !535, file: !55, line: 1023, baseType: !127, size: 64, offset: 1600)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !535, file: !55, line: 1027, baseType: !1412, size: 64, offset: 1664)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !535, file: !55, line: 1029, baseType: !167, size: 64, offset: 1728)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !535, file: !55, line: 1030, baseType: !1415, size: 32, offset: 1792)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1416, line: 8, baseType: !243)
!1416 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !535, file: !55, line: 1031, baseType: !1415, size: 32, offset: 1824)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !521, file: !483, line: 182, baseType: !531, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !521, file: !483, line: 184, baseType: !1420, size: 64, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!292, !534, !423, !520, !966}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !509, file: !483, line: 90, baseType: !1424, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !509, file: !483, line: 91, baseType: !1426, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !473, file: !418, line: 120, baseType: !1428, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1431, !441}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !49, line: 39, size: 384, elements: !1434)
!1434 = !{!1435, !1436, !1440, !1444, !1450, !1454}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1433, file: !49, line: 40, baseType: !48, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1433, file: !49, line: 41, baseType: !1437, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!764}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1433, file: !49, line: 42, baseType: !1441, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!127}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1433, file: !49, line: 43, baseType: !1445, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1095, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !49, line: 19, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1433, file: !49, line: 44, baseType: !1451, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1095}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1433, file: !49, line: 45, baseType: !1455, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !127}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !473, file: !418, line: 121, baseType: !1459, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1095, !441}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !473, file: !418, line: 122, baseType: !1463, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !441, !1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !417, file: !418, line: 70, baseType: !1469, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1471, line: 190, size: 1152, elements: !1472)
!1471 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1555, !1556, !1557, !1558, !1559, !1562}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1470, file: !1471, line: 191, baseType: !288, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1470, file: !1471, line: 192, baseType: !288, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1470, file: !1471, line: 202, baseType: !1469, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1470, file: !1471, line: 203, baseType: !329, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1470, file: !1471, line: 205, baseType: !697, size: 192, align: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1470, file: !1471, line: 207, baseType: !1095, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1470, file: !1471, line: 208, baseType: !7, size: 32, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !1471, line: 209, baseType: !1481, size: 256, offset: 512)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1470, file: !1471, line: 209, size: 256, elements: !1482)
!1482 = !{!1483, !1495, !1499}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1481, file: !1471, line: 210, baseType: !1484, size: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1471, line: 153, size: 256, elements: !1485)
!1485 = !{!1486, !1487, !1491, !1494}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1484, file: !1471, line: 154, baseType: !144, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1484, file: !1471, line: 156, baseType: !1488, size: 64, offset: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !698, line: 12, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1488, file: !698, line: 13, baseType: !702, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1484, file: !1471, line: 162, baseType: !1492, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1471, line: 162, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1484, file: !1471, line: 167, baseType: !144, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1481, file: !1471, line: 211, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1471, line: 170, size: 64, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1496, file: !1471, line: 171, baseType: !1469, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1481, file: !1471, line: 212, baseType: !1500, size: 256)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1471, line: 174, size: 256, elements: !1501)
!1501 = !{!1502, !1550, !1553, !1554}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1500, file: !1471, line: 175, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1471, line: 271, size: 768, elements: !1506)
!1506 = !{!1507, !1527, !1531, !1532, !1533, !1534, !1535, !1539, !1540, !1541, !1542, !1546}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1505, file: !1471, line: 276, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!292, !1511}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1471, line: 251, size: 1216, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1512, file: !1471, line: 253, baseType: !1469, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1512, file: !1471, line: 254, baseType: !534, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1512, file: !1471, line: 255, baseType: !1351, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1512, file: !1471, line: 256, baseType: !127, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1512, file: !1471, line: 259, baseType: !569, size: 256, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1512, file: !1471, line: 260, baseType: !569, size: 256, offset: 512)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1512, file: !1471, line: 261, baseType: !292, size: 32, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1512, file: !1471, line: 262, baseType: !138, size: 128, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1512, file: !1471, line: 263, baseType: !355, size: 64, offset: 960)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1512, file: !1471, line: 265, baseType: !502, size: 64, offset: 1024)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1512, file: !1471, line: 266, baseType: !764, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1512, file: !1471, line: 267, baseType: !764, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1512, file: !1471, line: 268, baseType: !1177, size: 64, offset: 1152)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1505, file: !1471, line: 277, baseType: !1528, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1511}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1505, file: !1471, line: 290, baseType: !1381, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1505, file: !1471, line: 292, baseType: !1369, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1505, file: !1471, line: 293, baseType: !1377, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1505, file: !1471, line: 294, baseType: !1373, size: 64, offset: 320)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1505, file: !1471, line: 296, baseType: !1536, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!489, !1511, !355, !502, !376}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1505, file: !1471, line: 306, baseType: !502, size: 64, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1505, file: !1471, line: 313, baseType: !764, size: 8, offset: 512)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1505, file: !1471, line: 314, baseType: !1536, size: 64, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1505, file: !1471, line: 317, baseType: !1543, size: 64, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!953, !1511, !955}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1505, file: !1471, line: 320, baseType: !1547, size: 64, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!292, !1511, !966}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1500, file: !1471, line: 176, baseType: !1551, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1471, line: 35, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1500, file: !1471, line: 177, baseType: !376, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1500, file: !1471, line: 178, baseType: !1469, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1470, file: !1471, line: 215, baseType: !127, size: 64, offset: 768)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1470, file: !1471, line: 221, baseType: !121, size: 64, offset: 832)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1470, file: !1471, line: 223, baseType: !176, size: 16, offset: 896)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1470, file: !1471, line: 224, baseType: !175, size: 16, offset: 912)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1470, file: !1471, line: 225, baseType: !1560, size: 64, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1471, line: 36, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1470, file: !1471, line: 227, baseType: !547, size: 128, align: 64, offset: 1024)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !417, file: !418, line: 71, baseType: !1564, size: 32, offset: 448)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1565, line: 19, size: 32, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1564, file: !1565, line: 20, baseType: !612, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !417, file: !418, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !417, file: !418, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !417, file: !418, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !417, file: !418, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !417, file: !418, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !414, file: !18, line: 47, baseType: !404, size: 64, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !414, file: !18, line: 48, baseType: !423, size: 64, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !414, file: !18, line: 49, baseType: !1576, size: 64, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !18, line: 49, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !414, file: !18, line: 50, baseType: !1579, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1581, line: 26, size: 256, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1580, file: !1581, line: 27, baseType: !7, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1580, file: !1581, line: 28, baseType: !1585, size: 192, offset: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1586, line: 43, size: 192, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1585, file: !1586, line: 44, baseType: !574, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1585, file: !1586, line: 45, baseType: !138, size: 128, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !405, file: !18, line: 418, baseType: !1591, size: 64, offset: 1408)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !18, line: 53, size: 448, elements: !1593)
!1593 = !{!1594, !1595, !1600, !1604, !1608, !1612}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1592, file: !18, line: 54, baseType: !494, size: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1592, file: !18, line: 55, baseType: !1596, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!489, !1591, !1599, !355}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1592, file: !18, line: 57, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!489, !1591, !1599, !329, !502}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1592, file: !18, line: 59, baseType: !1605, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !404, !329}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1592, file: !18, line: 60, baseType: !1609, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!292, !404}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1592, file: !18, line: 61, baseType: !1613, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !404}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !405, file: !18, line: 419, baseType: !329, size: 64, offset: 1472)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !405, file: !18, line: 420, baseType: !329, size: 64, offset: 1536)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !405, file: !18, line: 421, baseType: !423, size: 64, offset: 1600)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !405, file: !18, line: 424, baseType: !1620, size: 64, offset: 1664)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !18, line: 424, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !405, file: !18, line: 425, baseType: !1624, size: 64, offset: 1728)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !405, file: !18, line: 426, baseType: !7, size: 32, offset: 1792)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !405, file: !18, line: 435, baseType: !569, size: 256, offset: 1856)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !405, file: !18, line: 437, baseType: !1629, size: 64, offset: 2112)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1631, line: 69, size: 320, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1632 = !{!1633, !1634, !1635, !1652, !1654, !1658, !1659}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1630, file: !1631, line: 70, baseType: !329, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1630, file: !1631, line: 71, baseType: !404, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1630, file: !1631, line: 72, baseType: !1636, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1631, line: 47, size: 256, elements: !1639)
!1639 = !{!1640, !1641, !1647, !1651}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1638, file: !1631, line: 49, baseType: !7, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1638, file: !1631, line: 51, baseType: !1642, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!292, !329, !1645}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1630)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1638, file: !1631, line: 53, baseType: !1648, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!292, !355, !1645}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1638, file: !1631, line: 55, baseType: !1455, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1630, file: !1631, line: 73, baseType: !1653, size: 16, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1630, file: !1631, line: 74, baseType: !1655, size: 8, offset: 208)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !122, line: 16, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !124, line: 20, baseType: !1657)
!1657 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1630, file: !1631, line: 75, baseType: !297, size: 8, offset: 216)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !1631, line: 76, baseType: !1660, size: 64, offset: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1630, file: !1631, line: 76, size: 64, elements: !1661)
!1661 = !{!1662, !1663, !1670}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1660, file: !1631, line: 77, baseType: !127, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1660, file: !1631, line: 78, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1631, line: 86, size: 128, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1666, file: !1631, line: 87, baseType: !7, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1666, file: !1631, line: 88, baseType: !355, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1660, file: !1631, line: 79, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1631, line: 92, size: 256, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1679, !1680}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1673, file: !1631, line: 94, baseType: !7, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1673, file: !1631, line: 95, baseType: !7, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1673, file: !1631, line: 96, baseType: !1678, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1673, file: !1631, line: 97, baseType: !1636, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1673, file: !1631, line: 98, baseType: !127, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !405, file: !18, line: 438, baseType: !7, size: 32, offset: 2176)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !405, file: !18, line: 441, baseType: !7, size: 32, offset: 2208)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !405, file: !18, line: 442, baseType: !1620, size: 64, offset: 2240)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !405, file: !18, line: 443, baseType: !1624, size: 64, offset: 2304)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !405, file: !18, line: 444, baseType: !764, size: 8, offset: 2368)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !405, file: !18, line: 451, baseType: !764, size: 8, offset: 2376)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !405, file: !18, line: 454, baseType: !7, size: 32, offset: 2400)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !405, file: !18, line: 455, baseType: !1689, size: 64, offset: 2432)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1691, line: 23, size: 96, elements: !1692)
!1691 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1692 = !{!1693, !1694, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1690, file: !1691, line: 24, baseType: !292, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1690, file: !1691, line: 24, baseType: !292, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1690, file: !1691, line: 24, baseType: !292, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !405, file: !18, line: 458, baseType: !1697, size: 64, offset: 2496)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!292}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !405, file: !18, line: 460, baseType: !1701, size: 4032, align: 512, offset: 2560)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1702, size: 4032, elements: !1718)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !18, line: 362, size: 576, elements: !1703)
!1703 = !{!1704, !1705, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1702, file: !18, line: 363, baseType: !127, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1702, file: !18, line: 364, baseType: !7, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1702, file: !18, line: 367, baseType: !1707, size: 448, offset: 128)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !18, line: 319, size: 448, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1707, file: !18, line: 320, baseType: !404, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1707, file: !18, line: 321, baseType: !1711, size: 384, offset: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1712, line: 40, size: 384, elements: !1713)
!1712 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1711, file: !1712, line: 41, baseType: !1715, size: 384, align: 64)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 384, align: 64, elements: !1716)
!1716 = !{!1717}
!1717 = !DISubrange(count: 2)
!1718 = !{!1719}
!1719 = !DISubrange(count: 7)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !405, file: !18, line: 463, baseType: !1721, size: 192, offset: 6592)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1722, line: 8, size: 192, elements: !1723)
!1722 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1723 = !{!1724, !1725, !1727}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1721, file: !1722, line: 10, baseType: !7, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1721, file: !1722, line: 11, baseType: !1726, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1721, file: !1722, line: 12, baseType: !1728, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1730, line: 59, size: 48, elements: !1731)
!1730 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1729, file: !1730, line: 60, baseType: !1112, size: 16)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1729, file: !1730, line: 61, baseType: !1112, size: 16, offset: 16)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1729, file: !1730, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1729, file: !1730, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1729, file: !1730, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1729, file: !1730, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !405, file: !18, line: 465, baseType: !144, size: 64, offset: 6784)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !405, file: !18, line: 469, baseType: !7, size: 32, offset: 6848)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !405, file: !18, line: 470, baseType: !138, size: 128, offset: 6912)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !405, file: !18, line: 471, baseType: !1742, size: 64, offset: 7040)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1744, line: 33, size: 96, elements: !1745)
!1744 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1745 = !{!1746, !1747, !1748, !1749}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1743, file: !1744, line: 37, baseType: !292, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1743, file: !1744, line: 43, baseType: !292, size: 32, offset: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1743, file: !1744, line: 45, baseType: !176, size: 16, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1743, file: !1744, line: 47, baseType: !176, size: 16, offset: 80)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !405, file: !18, line: 476, baseType: !1751, size: 64, offset: 7104)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !18, line: 378, size: 256, elements: !1753)
!1753 = !{!1754, !1770, !1771, !1772}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1752, file: !18, line: 379, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1757, line: 204, baseType: !1758)
!1757 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1757, line: 197, size: 192, elements: !1759)
!1759 = !{!1760, !1762, !1763, !1764, !1766, !1768}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1758, file: !1757, line: 198, baseType: !1761, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1757, line: 21, baseType: !244)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1758, file: !1757, line: 199, baseType: !250, size: 8, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1758, file: !1757, line: 200, baseType: !250, size: 8, offset: 40)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1758, file: !1757, line: 201, baseType: !1765, size: 16, offset: 48)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1757, line: 17, baseType: !305)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1758, file: !1757, line: 202, baseType: !1767, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1757, line: 16, baseType: !123)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1758, file: !1757, line: 203, baseType: !1769, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1757, line: 22, baseType: !123)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1752, file: !18, line: 380, baseType: !7, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1752, file: !18, line: 381, baseType: !355, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1752, file: !18, line: 382, baseType: !355, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !405, file: !18, line: 477, baseType: !1752, size: 256, offset: 7168)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !405, file: !18, line: 480, baseType: !1775, size: 64, offset: 7424)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !18, line: 480, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !405, file: !18, line: 483, baseType: !1778, size: 64, offset: 7488)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !18, line: 483, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !405, file: !18, line: 488, baseType: !355, size: 64, offset: 7552)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !405, file: !18, line: 492, baseType: !127, size: 64, offset: 7616)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !405, file: !18, line: 493, baseType: !7, size: 32, offset: 7680)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !405, file: !18, line: 495, baseType: !127, size: 64, offset: 7744)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !405, file: !18, line: 496, baseType: !7, size: 32, offset: 7808)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !405, file: !18, line: 499, baseType: !7, size: 32, offset: 7840)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !405, file: !18, line: 500, baseType: !1787, size: 64, offset: 7872)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1789, line: 45, baseType: !1790)
!1789 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !405, file: !18, line: 503, baseType: !7, size: 32, offset: 7936)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !405, file: !18, line: 504, baseType: !1793, size: 64, offset: 8000)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1796, line: 96, size: 192, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1797 = !{!1798, !1799, !1853, !1856}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1795, file: !1796, line: 97, baseType: !7, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1795, file: !1796, line: 98, baseType: !1800, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1796, line: 24, size: 3072, elements: !1802)
!1802 = !{!1803, !1805, !1806, !1807, !1808, !1822, !1823, !1824, !1825, !1837, !1838, !1839, !1850, !1851, !1852}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1801, file: !1796, line: 26, baseType: !1804, size: 128)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 128, elements: !1716)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1801, file: !1796, line: 27, baseType: !1804, size: 128, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1801, file: !1796, line: 28, baseType: !292, size: 32, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1801, file: !1796, line: 31, baseType: !268, size: 32, align: 512, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1801, file: !1796, line: 32, baseType: !1809, size: 960, offset: 576)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1810, line: 206, size: 960, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1811 = !{!1812, !1813, !1816, !1818, !1819, !1821}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1809, file: !1810, line: 207, baseType: !550, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1809, file: !1810, line: 208, baseType: !1814, size: 256, offset: 64)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1815, size: 256, elements: !629)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1809, file: !1810, line: 209, baseType: !1817, size: 256, offset: 320)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !629)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1809, file: !1810, line: 213, baseType: !492, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1809, file: !1810, line: 215, baseType: !1820, size: 256, offset: 640)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 256, elements: !629)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1810, line: 216, baseType: !297, size: 8, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1801, file: !1796, line: 33, baseType: !144, size: 64, offset: 1536)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1801, file: !1796, line: 34, baseType: !144, size: 64, offset: 1600)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1801, file: !1796, line: 35, baseType: !764, size: 8, offset: 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1801, file: !1796, line: 36, baseType: !1826, size: 320, offset: 1728)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1827, line: 11, size: 320, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1828 = !{!1829, !1830, !1831, !1836}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1826, file: !1827, line: 16, baseType: !624, size: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1826, file: !1827, line: 17, baseType: !144, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1826, file: !1827, line: 18, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1826, file: !1827, line: 19, baseType: !243, size: 32, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1801, file: !1796, line: 37, baseType: !1134, size: 256, offset: 2048)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1801, file: !1796, line: 38, baseType: !547, size: 128, align: 64, offset: 2304)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1801, file: !1796, line: 39, baseType: !1840, size: 64, offset: 2432)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1796, line: 49, size: 768, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1846, !1847, !1848, !1849}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1841, file: !1796, line: 50, baseType: !268, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1841, file: !1796, line: 51, baseType: !1817, size: 256, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1841, file: !1796, line: 53, baseType: !1817, size: 256, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1841, file: !1796, line: 54, baseType: !144, size: 64, offset: 576)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1841, file: !1796, line: 55, baseType: !1840, size: 64, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1841, file: !1796, line: 56, baseType: !292, size: 32, offset: 704)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1841, file: !1796, line: 57, baseType: !292, size: 32, offset: 736)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1801, file: !1796, line: 40, baseType: !144, size: 64, offset: 2496)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1801, file: !1796, line: 42, baseType: !292, size: 32, offset: 2560)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1801, file: !1796, line: 43, baseType: !1794, size: 64, offset: 2624)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1795, file: !1796, line: 99, baseType: !1854, offset: 128)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1855, line: 211, elements: !1000)
!1855 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1795, file: !1796, line: 100, baseType: !1857, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1796, line: 63, size: 3008, elements: !1859)
!1859 = !{!1860, !1861, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1891}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1858, file: !1796, line: 64, baseType: !1840, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1858, file: !1796, line: 65, baseType: !1862, size: 192, offset: 64)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1840, size: 192, elements: !458)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1858, file: !1796, line: 67, baseType: !292, size: 32, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1858, file: !1796, line: 68, baseType: !569, size: 256, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1858, file: !1796, line: 69, baseType: !268, size: 32, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1858, file: !1796, line: 70, baseType: !569, size: 256, offset: 640)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1858, file: !1796, line: 71, baseType: !144, size: 64, offset: 896)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1858, file: !1796, line: 72, baseType: !144, size: 64, offset: 960)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1858, file: !1796, line: 73, baseType: !144, size: 64, offset: 1024)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1858, file: !1796, line: 74, baseType: !144, size: 64, offset: 1088)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1858, file: !1796, line: 75, baseType: !144, size: 64, offset: 1152)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1858, file: !1796, line: 76, baseType: !144, size: 64, offset: 1216)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1858, file: !1796, line: 77, baseType: !144, size: 64, offset: 1280)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1858, file: !1796, line: 78, baseType: !144, size: 64, offset: 1344)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1858, file: !1796, line: 79, baseType: !764, size: 8, offset: 1408)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1858, file: !1796, line: 80, baseType: !144, size: 64, offset: 1472)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1858, file: !1796, line: 81, baseType: !569, size: 256, offset: 1536)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1858, file: !1796, line: 82, baseType: !1580, size: 256, offset: 1792)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1858, file: !1796, line: 84, baseType: !288, size: 32, offset: 2048)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1858, file: !1796, line: 87, baseType: !144, size: 64, offset: 2112)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1858, file: !1796, line: 88, baseType: !144, size: 64, offset: 2176)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1858, file: !1796, line: 89, baseType: !1883, size: 704, offset: 2240)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1135, line: 111, size: 704, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1890}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1883, file: !1135, line: 112, baseType: !1134, size: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1883, file: !1135, line: 113, baseType: !1826, size: 320, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1883, file: !1135, line: 116, baseType: !1888, size: 64, offset: 576)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1135, line: 18, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1883, file: !1135, line: 117, baseType: !292, size: 32, offset: 640)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1858, file: !1796, line: 90, baseType: !1794, size: 64, offset: 2944)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !405, file: !18, line: 515, baseType: !1893, size: 64, offset: 8064)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1895, line: 117, size: 128, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1896 = !{!1897, !1898, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1894, file: !1895, line: 118, baseType: !690, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1894, file: !1895, line: 119, baseType: !690, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1894, file: !1895, line: 120, baseType: !492, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !405, file: !18, line: 516, baseType: !7, size: 32, offset: 8128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !405, file: !18, line: 519, baseType: !7, size: 32, offset: 8160)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !405, file: !18, line: 520, baseType: !1903, size: 64, offset: 8192)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !405, file: !18, line: 523, baseType: !1905, size: 64, offset: 8256)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !18, line: 523, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !405, file: !18, line: 524, baseType: !7, size: 32, offset: 8320)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !405, file: !18, line: 525, baseType: !1910, size: 64, offset: 8384)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !18, line: 525, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !405, file: !18, line: 526, baseType: !7, size: 32, offset: 8448)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !405, file: !18, line: 533, baseType: !127, size: 64, offset: 8512)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !405, file: !18, line: 534, baseType: !7, size: 32, offset: 8576)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !405, file: !18, line: 535, baseType: !1917, size: 64, offset: 8640)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !405, file: !18, line: 536, baseType: !7, size: 32, offset: 8704)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !405, file: !18, line: 539, baseType: !292, size: 32, offset: 8736)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !405, file: !18, line: 540, baseType: !1921, size: 64, offset: 8768)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1923, line: 32, size: 64, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1922, file: !1923, line: 33, baseType: !690, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1922, file: !1923, line: 34, baseType: !690, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !405, file: !18, line: 563, baseType: !138, size: 128, offset: 8832)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !405, file: !18, line: 565, baseType: !138, size: 128, offset: 8960)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !405, file: !18, line: 568, baseType: !1930, size: 64, offset: 9088)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !405, file: !18, line: 570, baseType: !288, size: 32, offset: 9152)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !55, line: 2382, baseType: !380, size: 64, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !381, file: !55, line: 2383, baseType: !620, size: 64, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !381, file: !55, line: 2385, baseType: !1937, offset: 576)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1855, line: 206, elements: !1000)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !381, file: !55, line: 2386, baseType: !1937, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !381, file: !55, line: 2387, baseType: !1937, offset: 576)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !381, file: !55, line: 2388, baseType: !1941, offset: 576)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, elements: !458)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !381, file: !55, line: 2390, baseType: !1937, offset: 576)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !381, file: !55, line: 2391, baseType: !1937, offset: 576)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !381, file: !55, line: 2392, baseType: !1937, offset: 576)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !381, file: !55, line: 2393, baseType: !1937, offset: 576)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !367, file: !55, line: 1197, baseType: !1947, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !55, line: 2057, size: 1664, elements: !1950)
!1950 = !{!1951, !1955, !1959, !1960, !1964, !1970, !1974, !1975, !1976, !1980, !1984, !1988, !1989, !1990, !1996, !2000, !2001, !2005, !2006, !2007, !2008, !2012, !2016, !2063, !2078, !2079}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1949, file: !55, line: 2058, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!171, !366}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1949, file: !55, line: 2059, baseType: !1956, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !171}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1949, file: !55, line: 2060, baseType: !1956, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1949, file: !55, line: 2062, baseType: !1961, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !171, !292}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1949, file: !55, line: 2063, baseType: !1965, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!292, !171, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !55, line: 309, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1949, file: !55, line: 2064, baseType: !1971, size: 64, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!292, !171}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1949, file: !55, line: 2065, baseType: !1956, size: 64, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1949, file: !55, line: 2066, baseType: !400, size: 64, offset: 448)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1949, file: !55, line: 2067, baseType: !1977, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!292, !366, !292}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1949, file: !55, line: 2068, baseType: !1981, size: 64, offset: 576)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!292, !366, !54}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1949, file: !55, line: 2069, baseType: !1985, size: 64, offset: 640)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!292, !366}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1949, file: !55, line: 2070, baseType: !1981, size: 64, offset: 704)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1949, file: !55, line: 2071, baseType: !1985, size: 64, offset: 768)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1949, file: !55, line: 2072, baseType: !1991, size: 64, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!292, !209, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !55, line: 62, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1949, file: !55, line: 2073, baseType: !1997, size: 64, offset: 896)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!292, !366, !1726, !355}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1949, file: !55, line: 2074, baseType: !400, size: 64, offset: 960)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1949, file: !55, line: 2076, baseType: !2002, size: 64, offset: 1024)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!292, !1351, !209}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1949, file: !55, line: 2077, baseType: !2002, size: 64, offset: 1088)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1949, file: !55, line: 2078, baseType: !2002, size: 64, offset: 1152)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1949, file: !55, line: 2079, baseType: !2002, size: 64, offset: 1216)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1949, file: !55, line: 2081, baseType: !2009, size: 64, offset: 1280)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!489, !366, !292, !355, !502, !376}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1949, file: !55, line: 2082, baseType: !2013, size: 64, offset: 1344)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!489, !366, !292, !329, !502, !376}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1949, file: !55, line: 2083, baseType: !2017, size: 64, offset: 1408)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!2020, !171}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !60, line: 296, size: 1664, elements: !2023)
!2023 = !{!2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2048, !2049, !2050}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2022, file: !60, line: 297, baseType: !624, size: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2022, file: !60, line: 298, baseType: !138, size: 128, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2022, file: !60, line: 299, baseType: !138, size: 128, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2022, file: !60, line: 300, baseType: !138, size: 128, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2022, file: !60, line: 301, baseType: !569, size: 256, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2022, file: !60, line: 302, baseType: !268, size: 32, offset: 768)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2022, file: !60, line: 303, baseType: !288, size: 32, offset: 800)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2022, file: !60, line: 304, baseType: !366, size: 64, offset: 832)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2022, file: !60, line: 305, baseType: !2033, size: 64, offset: 896)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !60, line: 68, size: 64, elements: !2034)
!2034 = !{!2035, !2047}
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2033, file: !60, line: 69, baseType: !2036, size: 32)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2033, file: !60, line: 69, size: 32, elements: !2037)
!2037 = !{!2038, !2039, !2040}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2036, file: !60, line: 70, baseType: !179, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2036, file: !60, line: 71, baseType: !189, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2036, file: !60, line: 72, baseType: !2041, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2042, line: 24, baseType: !2043)
!2042 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2042, line: 22, size: 32, elements: !2044)
!2044 = !{!2045}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2043, file: !2042, line: 23, baseType: !2046, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2042, line: 20, baseType: !185)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2033, file: !60, line: 74, baseType: !59, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2022, file: !60, line: 306, baseType: !376, size: 64, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2022, file: !60, line: 307, baseType: !144, size: 64, offset: 1024)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2022, file: !60, line: 308, baseType: !2051, size: 576, offset: 1088)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !60, line: 205, size: 576, elements: !2052)
!2052 = !{!2053, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2051, file: !60, line: 206, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !60, line: 66, baseType: !378)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2051, file: !60, line: 207, baseType: !2054, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2051, file: !60, line: 208, baseType: !2054, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2051, file: !60, line: 209, baseType: !2054, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2051, file: !60, line: 210, baseType: !2054, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2051, file: !60, line: 211, baseType: !2054, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2051, file: !60, line: 212, baseType: !2054, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2051, file: !60, line: 213, baseType: !721, size: 64, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2051, file: !60, line: 214, baseType: !721, size: 64, offset: 512)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1949, file: !55, line: 2085, baseType: !2064, size: 64, offset: 1472)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!492, !366, !2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2069, line: 15, size: 256, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2070 = !{!2071, !2072, !2073, !2074, !2075}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2068, file: !2069, line: 16, baseType: !117, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2068, file: !2069, line: 19, baseType: !292, size: 32, offset: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2068, file: !2069, line: 26, baseType: !144, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2068, file: !2069, line: 33, baseType: !144, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2068, file: !2069, line: 36, baseType: !2076, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !33, line: 33, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1949, file: !55, line: 2087, baseType: !2064, size: 64, offset: 1536)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1949, file: !55, line: 2089, baseType: !400, size: 64, offset: 1600)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !367, file: !55, line: 1198, baseType: !2081, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !60, line: 324, size: 704, elements: !2084)
!2084 = !{!2085, !2089, !2093, !2097, !2098, !2099, !2100, !2101, !2106, !2111, !2115}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2083, file: !60, line: 325, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!292, !2021}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2083, file: !60, line: 326, baseType: !2090, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!2021, !366, !292}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2083, file: !60, line: 327, baseType: !2094, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !2021}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2083, file: !60, line: 328, baseType: !2086, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2083, file: !60, line: 329, baseType: !2086, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2083, file: !60, line: 330, baseType: !2086, size: 64, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2083, file: !60, line: 331, baseType: !1977, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2083, file: !60, line: 334, baseType: !2102, size: 64, offset: 448)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!2105, !171}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2083, file: !60, line: 335, baseType: !2107, size: 64, offset: 512)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!292, !171, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2083, file: !60, line: 337, baseType: !2112, size: 64, offset: 576)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!292, !171, !2105}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2083, file: !60, line: 339, baseType: !2116, size: 64, offset: 640)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!292, !366, !2119}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !367, file: !55, line: 1199, baseType: !2121, size: 64, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !60, line: 430, size: 704, elements: !2124)
!2124 = !{!2125, !2131, !2132, !2136, !2137, !2138, !2153, !2176, !2180, !2181, !2204}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2123, file: !60, line: 431, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!292, !366, !292, !292, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2123, file: !60, line: 432, baseType: !1977, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2123, file: !60, line: 433, baseType: !2133, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!292, !366, !7}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2123, file: !60, line: 434, baseType: !2133, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2123, file: !60, line: 435, baseType: !1977, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2123, file: !60, line: 436, baseType: !2139, size: 64, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!292, !366, !292, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !60, line: 417, size: 256, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2143, file: !60, line: 418, baseType: !292, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2143, file: !60, line: 419, baseType: !7, size: 32, offset: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2143, file: !60, line: 420, baseType: !7, size: 32, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2143, file: !60, line: 422, baseType: !7, size: 32, offset: 96)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2143, file: !60, line: 423, baseType: !7, size: 32, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2143, file: !60, line: 424, baseType: !7, size: 32, offset: 160)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2143, file: !60, line: 425, baseType: !7, size: 32, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2143, file: !60, line: 426, baseType: !7, size: 32, offset: 224)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2123, file: !60, line: 437, baseType: !2154, size: 64, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!292, !366, !2033, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !60, line: 345, size: 960, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2158, file: !60, line: 346, baseType: !292, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2158, file: !60, line: 347, baseType: !121, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2158, file: !60, line: 348, baseType: !121, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2158, file: !60, line: 349, baseType: !121, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2158, file: !60, line: 350, baseType: !121, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2158, file: !60, line: 351, baseType: !121, size: 64, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2158, file: !60, line: 352, baseType: !121, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2158, file: !60, line: 353, baseType: !566, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2158, file: !60, line: 355, baseType: !566, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2158, file: !60, line: 356, baseType: !292, size: 32, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2158, file: !60, line: 357, baseType: !292, size: 32, offset: 608)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2158, file: !60, line: 358, baseType: !121, size: 64, offset: 640)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2158, file: !60, line: 359, baseType: !121, size: 64, offset: 704)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2158, file: !60, line: 360, baseType: !121, size: 64, offset: 768)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2158, file: !60, line: 361, baseType: !566, size: 64, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2158, file: !60, line: 362, baseType: !292, size: 32, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2123, file: !60, line: 438, baseType: !2177, size: 64, offset: 448)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!292, !366, !2119, !2157}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2123, file: !60, line: 440, baseType: !2154, size: 64, offset: 512)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2123, file: !60, line: 441, baseType: !2182, size: 64, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!292, !366, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !60, line: 411, size: 1408, elements: !2187)
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2186, file: !60, line: 412, baseType: !7, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2186, file: !60, line: 413, baseType: !2190, size: 1344, offset: 64)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2191, size: 1344, elements: !458)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !60, line: 397, size: 448, elements: !2192)
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2203}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2191, file: !60, line: 398, baseType: !7, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2191, file: !60, line: 399, baseType: !7, size: 32, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2191, file: !60, line: 401, baseType: !7, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2191, file: !60, line: 402, baseType: !7, size: 32, offset: 96)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2191, file: !60, line: 403, baseType: !7, size: 32, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2191, file: !60, line: 404, baseType: !7, size: 32, offset: 160)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2191, file: !60, line: 405, baseType: !7, size: 32, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2191, file: !60, line: 406, baseType: !119, size: 64, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2191, file: !60, line: 407, baseType: !2202, size: 64, offset: 320)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !118, line: 132, baseType: !121)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2191, file: !60, line: 408, baseType: !2202, size: 64, offset: 384)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2123, file: !60, line: 442, baseType: !2133, size: 64, offset: 640)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !367, file: !55, line: 1200, baseType: !2206, size: 64, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2208)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !55, line: 54, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !367, file: !55, line: 1201, baseType: !144, size: 64, offset: 640)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !367, file: !55, line: 1202, baseType: !144, size: 64, offset: 704)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !367, file: !55, line: 1203, baseType: !144, size: 64, offset: 768)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !367, file: !55, line: 1204, baseType: !209, size: 64, offset: 832)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !367, file: !55, line: 1205, baseType: !705, size: 320, offset: 896)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !367, file: !55, line: 1206, baseType: !292, size: 32, offset: 1216)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !367, file: !55, line: 1207, baseType: !288, size: 32, offset: 1248)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !367, file: !55, line: 1209, baseType: !127, size: 64, offset: 1280)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !367, file: !55, line: 1211, baseType: !2218, size: 64, offset: 1344)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !55, line: 1211, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !367, file: !55, line: 1223, baseType: !2223, size: 64, offset: 1408)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !226, line: 34, size: 64, elements: !2224)
!2224 = !{!2225}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2223, file: !226, line: 35, baseType: !229, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !367, file: !55, line: 1224, baseType: !138, size: 128, offset: 1472)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !367, file: !55, line: 1225, baseType: !2228, size: 64, offset: 1600)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !55, line: 1225, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !367, file: !55, line: 1226, baseType: !2231, size: 64, offset: 1664)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !55, line: 1226, flags: DIFlagFwdDecl)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !367, file: !55, line: 1227, baseType: !2234, size: 64, offset: 1728)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !55, line: 50, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !367, file: !55, line: 1228, baseType: !2237, size: 64, offset: 1792)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !55, line: 1228, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !367, file: !55, line: 1229, baseType: !624, size: 128, offset: 1856)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !367, file: !55, line: 1230, baseType: !7, size: 32, offset: 1984)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !367, file: !55, line: 1231, baseType: !2242, size: 2496, offset: 2048)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !60, line: 521, size: 2496, elements: !2243)
!2243 = !{!2244, !2245, !2246, !2248, !2280}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2242, file: !60, line: 522, baseType: !7, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2242, file: !60, line: 523, baseType: !705, size: 320, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2242, file: !60, line: 524, baseType: !2247, size: 192, offset: 384)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 192, elements: !458)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2242, file: !60, line: 525, baseType: !2249, size: 1728, offset: 576)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2250, size: 1728, elements: !458)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !60, line: 222, size: 576, elements: !2251)
!2251 = !{!2252, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2250, file: !60, line: 223, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !60, line: 445, size: 256, elements: !2255)
!2255 = !{!2256, !2257, !2270, !2271}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2254, file: !60, line: 446, baseType: !292, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2254, file: !60, line: 447, baseType: !2258, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !60, line: 312, size: 512, elements: !2261)
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2260, file: !60, line: 313, baseType: !1977, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2260, file: !60, line: 314, baseType: !1977, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2260, file: !60, line: 315, baseType: !1977, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2260, file: !60, line: 316, baseType: !1977, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2260, file: !60, line: 317, baseType: !2086, size: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2260, file: !60, line: 318, baseType: !2086, size: 64, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2260, file: !60, line: 319, baseType: !2086, size: 64, offset: 384)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2260, file: !60, line: 320, baseType: !2116, size: 64, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2254, file: !60, line: 448, baseType: !404, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2254, file: !60, line: 449, baseType: !2253, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2250, file: !60, line: 224, baseType: !292, size: 32, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2250, file: !60, line: 226, baseType: !138, size: 128, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2250, file: !60, line: 227, baseType: !144, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2250, file: !60, line: 228, baseType: !7, size: 32, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2250, file: !60, line: 229, baseType: !7, size: 32, offset: 352)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2250, file: !60, line: 230, baseType: !2054, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2250, file: !60, line: 231, baseType: !2054, size: 64, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2250, file: !60, line: 232, baseType: !127, size: 64, offset: 512)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2242, file: !60, line: 526, baseType: !2281, size: 192, offset: 2304)
!2281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2258, size: 192, elements: !458)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !367, file: !55, line: 1233, baseType: !2283, size: 2368, offset: 4544)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !55, line: 1184, size: 2368, elements: !2284)
!2284 = !{!2285, !2286, !2287}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2283, file: !55, line: 1185, baseType: !176, size: 16)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2283, file: !55, line: 1186, baseType: !176, size: 16, offset: 16)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2283, file: !55, line: 1187, baseType: !2288, size: 2304, offset: 64)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2289, size: 2304, elements: !458)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2290, line: 12, size: 768, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2291 = !{!2292, !2300, !2301, !3494, !3495}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2289, file: !2290, line: 13, baseType: !2293, size: 384)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2294, line: 17, size: 384, elements: !2295)
!2294 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2295 = !{!2296, !2297, !2298, !2299}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2293, file: !2294, line: 18, baseType: !292, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2293, file: !2294, line: 19, baseType: !292, size: 32, offset: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2293, file: !2294, line: 20, baseType: !633, size: 192, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2293, file: !2294, line: 22, baseType: !547, size: 128, align: 64, offset: 256)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2289, file: !2290, line: 14, baseType: !1678, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2289, file: !2290, line: 15, baseType: !2302, size: 64, offset: 448)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2303, line: 16, size: 64, elements: !2304)
!2303 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2304 = !{!2305}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2302, file: !2303, line: 17, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1328, line: 746, size: 58368, elements: !2308)
!2308 = !{!2309, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2389, !2400, !2492, !2496, !2499, !2530, !2531, !2532, !2533, !2544, !2546, !2547, !2548, !2549, !2550, !2551, !2562, !2563, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2580, !2581, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2669, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2717, !2723, !2724, !2725, !2726, !2727, !2731, !2734, !2741, !2746, !2749, !2752, !2755, !2758, !2896, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2934, !2935, !2936, !2945, !2953, !2954, !2955, !2956, !2957, !2962, !2963, !2964, !2967, !2968, !2971, !2974, !2977, !2985, !2988, !2989, !3075, !3076, !3077, !3078, !3079, !3085, !3086, !3087, !3088, !3091, !3092, !3095, !3098, !3099, !3102, !3103, !3104, !3107, !3108, !3109, !3110, !3111, !3112, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3144, !3145, !3151, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3163, !3235, !3237, !3238, !3239, !3240, !3241, !3242, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3271, !3272, !3273}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2307, file: !1328, line: 752, baseType: !2310, size: 192)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2311, line: 56, size: 192, elements: !2312)
!2311 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2312 = !{!2313, !2314, !2315, !2316}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !2311, line: 57, baseType: !144, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2310, file: !2311, line: 58, baseType: !144, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2310, file: !2311, line: 59, baseType: !243, size: 32, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2310, file: !2311, line: 61, baseType: !243, size: 32, offset: 160)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2307, file: !1328, line: 754, baseType: !7, size: 32, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2307, file: !1328, line: 767, baseType: !127, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2307, file: !1328, line: 768, baseType: !612, size: 32, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !1328, line: 770, baseType: !7, size: 32, offset: 352)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2307, file: !1328, line: 771, baseType: !7, size: 32, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2307, file: !1328, line: 774, baseType: !292, size: 32, offset: 416)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2307, file: !1328, line: 775, baseType: !2324, size: 128, offset: 448)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2325, line: 58, size: 128, elements: !2326)
!2325 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2326 = !{!2327, !2328, !2333, !2334}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2324, file: !2325, line: 59, baseType: !541, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2324, file: !2325, line: 60, baseType: !2329, size: 32, offset: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2324, file: !2325, line: 60, size: 32, elements: !2330)
!2330 = !{!2331, !2332}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2329, file: !2325, line: 61, baseType: !7, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2329, file: !2325, line: 62, baseType: !288, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2324, file: !2325, line: 65, baseType: !304, size: 16, offset: 96)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2324, file: !2325, line: 65, baseType: !304, size: 16, offset: 112)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2307, file: !1328, line: 776, baseType: !7, size: 32, offset: 576)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2307, file: !1328, line: 777, baseType: !144, size: 64, offset: 640)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2307, file: !1328, line: 778, baseType: !2306, size: 64, offset: 704)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2307, file: !1328, line: 787, baseType: !292, size: 32, offset: 768)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2307, file: !1328, line: 788, baseType: !292, size: 32, offset: 800)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2307, file: !1328, line: 790, baseType: !292, size: 32, offset: 832)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2307, file: !1328, line: 792, baseType: !292, size: 32, offset: 864)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2307, file: !1328, line: 793, baseType: !292, size: 32, offset: 896)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2307, file: !1328, line: 794, baseType: !292, size: 32, offset: 928)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2307, file: !1328, line: 795, baseType: !7, size: 32, offset: 960)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2307, file: !1328, line: 797, baseType: !2346, size: 2048, offset: 1024)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1328, line: 551, size: 2048, elements: !2347)
!2347 = !{!2348, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2368, !2371, !2372, !2373}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2346, file: !1328, line: 553, baseType: !2349, size: 128)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1328, line: 411, size: 128, elements: !2350)
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2349, file: !1328, line: 412, baseType: !144, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2349, file: !1328, line: 413, baseType: !243, size: 32, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2346, file: !1328, line: 554, baseType: !697, size: 192, align: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2346, file: !1328, line: 555, baseType: !121, size: 64, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2346, file: !1328, line: 556, baseType: !121, size: 64, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2346, file: !1328, line: 558, baseType: !138, size: 128, offset: 448)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2346, file: !1328, line: 559, baseType: !7, size: 32, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2346, file: !1328, line: 561, baseType: !121, size: 64, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2346, file: !1328, line: 562, baseType: !121, size: 64, offset: 704)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2346, file: !1328, line: 563, baseType: !121, size: 64, offset: 768)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2346, file: !1328, line: 564, baseType: !121, size: 64, offset: 832)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2346, file: !1328, line: 565, baseType: !566, size: 64, offset: 896)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2346, file: !1328, line: 566, baseType: !121, size: 64, offset: 960)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2346, file: !1328, line: 568, baseType: !121, size: 64, offset: 1024)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2346, file: !1328, line: 571, baseType: !292, size: 32, offset: 1088)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2346, file: !1328, line: 572, baseType: !2367, size: 64, offset: 1152)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2346, file: !1328, line: 574, baseType: !2369, size: 64, offset: 1216)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1328, line: 49, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2346, file: !1328, line: 576, baseType: !2369, size: 64, offset: 1280)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2346, file: !1328, line: 578, baseType: !144, size: 64, offset: 1344)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2346, file: !1328, line: 588, baseType: !2374, size: 512, align: 512, offset: 1536)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1328, line: 497, size: 512, align: 512, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2374, file: !1328, line: 498, baseType: !121, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2374, file: !1328, line: 499, baseType: !121, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2374, file: !1328, line: 500, baseType: !121, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2374, file: !1328, line: 501, baseType: !243, size: 32, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2374, file: !1328, line: 502, baseType: !243, size: 32, offset: 224)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2374, file: !1328, line: 503, baseType: !144, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2374, file: !1328, line: 504, baseType: !144, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2374, file: !1328, line: 505, baseType: !144, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2374, file: !1328, line: 506, baseType: !2385, size: 64, align: 64, offset: 448)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1328, line: 445, size: 64, align: 64, elements: !2386)
!2386 = !{!2387, !2388}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2385, file: !1328, line: 446, baseType: !7, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2385, file: !1328, line: 447, baseType: !7, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2307, file: !1328, line: 798, baseType: !2390, size: 384, offset: 3072)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1328, line: 592, size: 384, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2390, file: !1328, line: 593, baseType: !138, size: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2390, file: !1328, line: 594, baseType: !144, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2390, file: !1328, line: 595, baseType: !144, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2390, file: !1328, line: 596, baseType: !7, size: 32, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2390, file: !1328, line: 597, baseType: !176, size: 16, offset: 288)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2390, file: !1328, line: 598, baseType: !176, size: 16, offset: 304)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2390, file: !1328, line: 600, baseType: !2399, size: 64, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2307, file: !1328, line: 799, baseType: !2401, size: 1792, offset: 3456)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1328, line: 610, size: 1792, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2489, !2490}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2401, file: !1328, line: 611, baseType: !697, size: 192, align: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2401, file: !1328, line: 618, baseType: !121, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2401, file: !1328, line: 619, baseType: !121, size: 64, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2401, file: !1328, line: 620, baseType: !121, size: 64, offset: 320)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2401, file: !1328, line: 621, baseType: !121, size: 64, offset: 384)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2401, file: !1328, line: 622, baseType: !121, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2401, file: !1328, line: 629, baseType: !566, size: 64, offset: 512)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2401, file: !1328, line: 630, baseType: !121, size: 64, offset: 576)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2401, file: !1328, line: 631, baseType: !7, size: 32, offset: 640)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2401, file: !1328, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2401, file: !1328, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2401, file: !1328, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2401, file: !1328, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2401, file: !1328, line: 662, baseType: !2417, size: 512, offset: 704)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !66, line: 118, size: 512, elements: !2418)
!2418 = !{!2419, !2427, !2428, !2433, !2485, !2486, !2487, !2488}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2417, file: !66, line: 119, baseType: !2420, size: 256)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2421, line: 9, size: 256, elements: !2422)
!2421 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2422 = !{!2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2420, file: !2421, line: 10, baseType: !697, size: 192, align: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2420, file: !2421, line: 11, baseType: !2425, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2426, line: 29, baseType: !566)
!2426 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2417, file: !66, line: 120, baseType: !2425, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2417, file: !66, line: 121, baseType: !2429, size: 64, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!65, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2417, file: !66, line: 122, baseType: !2434, size: 64, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !66, line: 159, size: 512, align: 512, elements: !2436)
!2436 = !{!2437, !2462, !2463, !2466, !2471, !2472, !2480, !2484}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2435, file: !66, line: 160, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !66, line: 215, size: 4608, align: 512, elements: !2440)
!2440 = !{!2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2439, file: !66, line: 216, baseType: !574, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2439, file: !66, line: 217, baseType: !7, size: 32, offset: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2439, file: !66, line: 218, baseType: !7, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2439, file: !66, line: 219, baseType: !7, size: 32, offset: 96)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2439, file: !66, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2439, file: !66, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2439, file: !66, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2439, file: !66, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2439, file: !66, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2439, file: !66, line: 226, baseType: !7, size: 32, offset: 160)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2439, file: !66, line: 227, baseType: !176, size: 16, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2439, file: !66, line: 228, baseType: !176, size: 16, offset: 208)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2439, file: !66, line: 229, baseType: !7, size: 32, offset: 224)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2439, file: !66, line: 235, baseType: !2425, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2439, file: !66, line: 236, baseType: !2432, size: 64, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2439, file: !66, line: 237, baseType: !2425, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2439, file: !66, line: 238, baseType: !2432, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2439, file: !66, line: 239, baseType: !2459, size: 4096, align: 512, offset: 512)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2435, size: 4096, align: 512, elements: !2460)
!2460 = !{!2461}
!2461 = !DISubrange(count: 8)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2435, file: !66, line: 161, baseType: !7, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2435, file: !66, line: 162, baseType: !2464, size: 32, offset: 96)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !118, line: 32, baseType: !2465)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !186, line: 96, baseType: !292)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2435, file: !66, line: 163, baseType: !2467, size: 32, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !216, line: 274, baseType: !2468)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !216, line: 274, size: 32, elements: !2469)
!2469 = !{!2470}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2468, file: !216, line: 274, baseType: !220, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2435, file: !66, line: 164, baseType: !2432, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2435, file: !66, line: 165, baseType: !2473, size: 128, offset: 256)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2421, line: 14, size: 128, elements: !2474)
!2474 = !{!2475}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2473, file: !2421, line: 15, baseType: !2476, size: 128)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !698, line: 26, size: 128, elements: !2477)
!2477 = !{!2478, !2479}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2476, file: !698, line: 27, baseType: !1488, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2476, file: !698, line: 28, baseType: !702, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2435, file: !66, line: 166, baseType: !2481, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!2425}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2435, file: !66, line: 167, baseType: !2425, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2417, file: !66, line: 123, baseType: !297, size: 8, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2417, file: !66, line: 124, baseType: !297, size: 8, offset: 456)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2417, file: !66, line: 125, baseType: !297, size: 8, offset: 464)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2417, file: !66, line: 126, baseType: !297, size: 8, offset: 472)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2401, file: !1328, line: 671, baseType: !2417, size: 512, offset: 1216)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2401, file: !1328, line: 679, baseType: !2491, size: 64, offset: 1728)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2307, file: !1328, line: 800, baseType: !2493, size: 64, offset: 5248)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2495)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1328, line: 800, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2307, file: !1328, line: 809, baseType: !2497, size: 64, offset: 5312)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1328, line: 70, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2307, file: !1328, line: 825, baseType: !2500, size: 2048, align: 512, offset: 5632)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1328, line: 509, size: 2048, align: 512, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2500, file: !1328, line: 511, baseType: !121, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2500, file: !1328, line: 512, baseType: !121, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2500, file: !1328, line: 513, baseType: !121, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2500, file: !1328, line: 514, baseType: !121, size: 64, offset: 192)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2500, file: !1328, line: 515, baseType: !121, size: 64, offset: 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2500, file: !1328, line: 516, baseType: !121, size: 64, offset: 320)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2500, file: !1328, line: 518, baseType: !121, size: 64, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2500, file: !1328, line: 519, baseType: !121, size: 64, offset: 448)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2500, file: !1328, line: 520, baseType: !566, size: 64, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2500, file: !1328, line: 522, baseType: !121, size: 64, offset: 576)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2500, file: !1328, line: 523, baseType: !121, size: 64, offset: 640)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2500, file: !1328, line: 524, baseType: !566, size: 64, offset: 704)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2500, file: !1328, line: 526, baseType: !566, size: 64, offset: 768)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2500, file: !1328, line: 527, baseType: !121, size: 64, offset: 832)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2500, file: !1328, line: 529, baseType: !121, size: 64, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2500, file: !1328, line: 530, baseType: !121, size: 64, offset: 960)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2500, file: !1328, line: 531, baseType: !121, size: 64, offset: 1024)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2500, file: !1328, line: 532, baseType: !121, size: 64, offset: 1088)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2500, file: !1328, line: 533, baseType: !121, size: 64, offset: 1152)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2500, file: !1328, line: 535, baseType: !121, size: 64, offset: 1216)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2500, file: !1328, line: 536, baseType: !121, size: 64, offset: 1280)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2500, file: !1328, line: 537, baseType: !121, size: 64, offset: 1344)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2500, file: !1328, line: 538, baseType: !121, size: 64, offset: 1408)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2500, file: !1328, line: 539, baseType: !121, size: 64, offset: 1472)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2500, file: !1328, line: 540, baseType: !121, size: 64, offset: 1536)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2500, file: !1328, line: 541, baseType: !121, size: 64, offset: 1600)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2500, file: !1328, line: 542, baseType: !121, size: 64, offset: 1664)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2500, file: !1328, line: 543, baseType: !121, size: 64, offset: 1728)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2307, file: !1328, line: 833, baseType: !7, size: 32, offset: 7680)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2307, file: !1328, line: 836, baseType: !7, size: 32, offset: 7712)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2307, file: !1328, line: 837, baseType: !292, size: 32, offset: 7744)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2307, file: !1328, line: 838, baseType: !2534, size: 64, offset: 7808)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2536)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2537, line: 19, baseType: !2538)
!2537 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2537, line: 19, size: 64, elements: !2539)
!2539 = !{!2540}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2538, file: !2537, line: 19, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !2542)
!2542 = !{!2543}
!2543 = !DISubrange(count: 1)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2307, file: !1328, line: 839, baseType: !2545, size: 64, offset: 7872)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2307, file: !1328, line: 840, baseType: !2536, size: 64, offset: 7936)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2307, file: !1328, line: 841, baseType: !127, size: 64, offset: 8000)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2307, file: !1328, line: 843, baseType: !176, size: 16, offset: 8064)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2307, file: !1328, line: 845, baseType: !176, size: 16, offset: 8080)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2307, file: !1328, line: 848, baseType: !292, size: 32, offset: 8096)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2307, file: !1328, line: 849, baseType: !2552, size: 32, offset: 8128)
!2552 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1328, line: 718, size: 32, elements: !2553)
!2553 = !{!2554, !2561}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2552, file: !1328, line: 724, baseType: !2555, size: 32)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2552, file: !1328, line: 719, size: 32, elements: !2556)
!2556 = !{!2557, !2558, !2559, !2560}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2555, file: !1328, line: 720, baseType: !297, size: 8)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2555, file: !1328, line: 721, baseType: !297, size: 8, offset: 8)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2555, file: !1328, line: 722, baseType: !297, size: 8, offset: 16)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2555, file: !1328, line: 723, baseType: !297, size: 8, offset: 24)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2552, file: !1328, line: 725, baseType: !243, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2307, file: !1328, line: 850, baseType: !138, size: 128, offset: 8192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2307, file: !1328, line: 851, baseType: !2564, size: 64, offset: 8320)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1328, line: 60, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2307, file: !1328, line: 855, baseType: !144, size: 64, offset: 8384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2307, file: !1328, line: 856, baseType: !297, size: 8, offset: 8448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2307, file: !1328, line: 857, baseType: !297, size: 8, offset: 8456)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2307, file: !1328, line: 858, baseType: !292, size: 32, offset: 8480)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2307, file: !1328, line: 859, baseType: !138, size: 128, offset: 8512)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2307, file: !1328, line: 860, baseType: !292, size: 32, offset: 8640)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2307, file: !1328, line: 861, baseType: !138, size: 128, offset: 8704)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2307, file: !1328, line: 873, baseType: !2574, size: 256, offset: 8832)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1328, line: 376, size: 256, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2574, file: !1328, line: 381, baseType: !144, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2574, file: !1328, line: 384, baseType: !119, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2574, file: !1328, line: 389, baseType: !119, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2574, file: !1328, line: 392, baseType: !119, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2307, file: !1328, line: 875, baseType: !138, size: 128, offset: 9088)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2307, file: !1328, line: 877, baseType: !2582, size: 320, offset: 9216)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2583, line: 86, size: 320, elements: !2584)
!2583 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2584 = !{!2585, !2586, !2587}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2582, file: !2583, line: 87, baseType: !292, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2582, file: !2583, line: 88, baseType: !138, size: 128, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2582, file: !2583, line: 89, baseType: !138, size: 128, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2307, file: !1328, line: 878, baseType: !697, size: 192, align: 64, offset: 9536)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2307, file: !1328, line: 881, baseType: !979, size: 64, offset: 9728)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2307, file: !1328, line: 882, baseType: !979, size: 64, offset: 9792)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2307, file: !1328, line: 884, baseType: !292, size: 32, offset: 9856)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2307, file: !1328, line: 885, baseType: !292, size: 32, offset: 9888)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2307, file: !1328, line: 886, baseType: !292, size: 32, offset: 9920)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2307, file: !1328, line: 888, baseType: !292, size: 32, offset: 9952)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2307, file: !1328, line: 890, baseType: !144, size: 64, offset: 9984)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2307, file: !1328, line: 893, baseType: !7, size: 32, offset: 10048)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2307, file: !1328, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2307, file: !1328, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2307, file: !1328, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2307, file: !1328, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2307, file: !1328, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2307, file: !1328, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2307, file: !1328, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2307, file: !1328, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2307, file: !1328, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2307, file: !1328, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2307, file: !1328, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2307, file: !1328, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2307, file: !1328, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2307, file: !1328, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2307, file: !1328, line: 969, baseType: !144, size: 64, offset: 10176)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2307, file: !1328, line: 971, baseType: !2613, size: 448, offset: 10240)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !71, line: 25, size: 448, elements: !2614)
!2614 = !{!2615, !2616, !2621}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2613, file: !71, line: 26, baseType: !144, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2613, file: !71, line: 27, baseType: !2617, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!492, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, scope: !2613, file: !71, line: 28, baseType: !2622, size: 320, offset: 128)
!2622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2613, file: !71, line: 28, size: 320, elements: !2623)
!2623 = !{!2624, !2634, !2659}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2622, file: !71, line: 37, baseType: !2625, size: 320)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2622, file: !71, line: 30, size: 320, elements: !2626)
!2626 = !{!2627, !2629, !2630, !2631, !2632, !2633}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2625, file: !71, line: 31, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2625, file: !71, line: 32, baseType: !243, size: 32, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2625, file: !71, line: 33, baseType: !243, size: 32, offset: 96)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2625, file: !71, line: 34, baseType: !243, size: 32, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2625, file: !71, line: 35, baseType: !121, size: 64, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2625, file: !71, line: 36, baseType: !2628, size: 64, offset: 256)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2622, file: !71, line: 47, baseType: !2635, size: 192)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2622, file: !71, line: 39, size: 192, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2658}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2635, file: !71, line: 40, baseType: !2464, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2635, file: !71, line: 41, baseType: !70, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, scope: !2635, file: !71, line: 42, baseType: !2640, size: 64, offset: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2635, file: !71, line: 42, size: 64, elements: !2641)
!2641 = !{!2642, !2650}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2640, file: !71, line: 43, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2645, line: 7, size: 128, elements: !2646)
!2645 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2646 = !{!2647, !2649}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2644, file: !2645, line: 8, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !186, line: 93, baseType: !378)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2644, file: !2645, line: 9, baseType: !378, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2640, file: !71, line: 44, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2653, line: 7, size: 64, elements: !2654)
!2653 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2654 = !{!2655, !2657}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2652, file: !2653, line: 8, baseType: !2656, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2653, line: 5, baseType: !690)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2652, file: !2653, line: 9, baseType: !690, size: 32, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2635, file: !71, line: 46, baseType: !121, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2622, file: !71, line: 55, baseType: !2660, size: 256)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2622, file: !71, line: 49, size: 256, elements: !2661)
!2661 = !{!2662, !2665, !2666, !2667, !2668}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2660, file: !71, line: 50, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !71, line: 14, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2660, file: !71, line: 51, baseType: !292, size: 32, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2660, file: !71, line: 52, baseType: !292, size: 32, offset: 96)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2660, file: !71, line: 53, baseType: !144, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2660, file: !71, line: 54, baseType: !144, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2307, file: !1328, line: 973, baseType: !2670, size: 32, offset: 10688)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !118, line: 27, baseType: !2671)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !186, line: 28, baseType: !292)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2307, file: !1328, line: 974, baseType: !2670, size: 32, offset: 10720)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2307, file: !1328, line: 978, baseType: !144, size: 64, offset: 10752)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2307, file: !1328, line: 987, baseType: !2306, size: 64, offset: 10816)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2307, file: !1328, line: 990, baseType: !2306, size: 64, offset: 10880)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2307, file: !1328, line: 995, baseType: !138, size: 128, offset: 10944)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2307, file: !1328, line: 996, baseType: !138, size: 128, offset: 11072)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2307, file: !1328, line: 997, baseType: !2306, size: 64, offset: 11200)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2307, file: !1328, line: 1005, baseType: !138, size: 128, offset: 11264)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2307, file: !1328, line: 1006, baseType: !138, size: 128, offset: 11392)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2307, file: !1328, line: 1009, baseType: !608, size: 64, offset: 11520)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2307, file: !1328, line: 1010, baseType: !2683, size: 512, offset: 11584)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 512, elements: !629)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2307, file: !1328, line: 1011, baseType: !138, size: 128, offset: 12096)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2307, file: !1328, line: 1012, baseType: !138, size: 128, offset: 12224)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2307, file: !1328, line: 1014, baseType: !1579, size: 64, offset: 12352)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2307, file: !1328, line: 1017, baseType: !1726, size: 64, offset: 12416)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2307, file: !1328, line: 1020, baseType: !1726, size: 64, offset: 12480)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2307, file: !1328, line: 1023, baseType: !127, size: 64, offset: 12544)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2307, file: !1328, line: 1025, baseType: !121, size: 64, offset: 12608)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2307, file: !1328, line: 1026, baseType: !121, size: 64, offset: 12672)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2307, file: !1328, line: 1031, baseType: !121, size: 64, offset: 12736)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2307, file: !1328, line: 1032, baseType: !2694, size: 192, offset: 12800)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1328, line: 324, size: 192, elements: !2695)
!2695 = !{!2696, !2697, !2698}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2694, file: !1328, line: 326, baseType: !121, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2694, file: !1328, line: 327, baseType: !121, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2694, file: !1328, line: 328, baseType: !574, size: 32, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2307, file: !1328, line: 1041, baseType: !144, size: 64, offset: 12992)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2307, file: !1328, line: 1042, baseType: !144, size: 64, offset: 13056)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2307, file: !1328, line: 1045, baseType: !121, size: 64, offset: 13120)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2307, file: !1328, line: 1048, baseType: !121, size: 64, offset: 13184)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2307, file: !1328, line: 1051, baseType: !144, size: 64, offset: 13248)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2307, file: !1328, line: 1052, baseType: !144, size: 64, offset: 13312)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2307, file: !1328, line: 1055, baseType: !2706, size: 640, offset: 13376)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2707, line: 132, size: 640, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2708 = !{!2709, !2715, !2716}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2706, file: !2707, line: 133, baseType: !2710, size: 576)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2711, size: 576, elements: !458)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2707, line: 117, size: 192, elements: !2712)
!2712 = !{!2713, !2714}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2711, file: !2707, line: 118, baseType: !121, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2711, file: !2707, line: 119, baseType: !2473, size: 128, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2706, file: !2707, line: 134, baseType: !7, size: 32, offset: 576)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2706, file: !2707, line: 135, baseType: !7, size: 32, offset: 608)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2307, file: !1328, line: 1058, baseType: !2718, size: 448, offset: 14016)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2707, line: 144, size: 448, elements: !2719)
!2719 = !{!2720, !2721, !2722}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2718, file: !2707, line: 145, baseType: !547, size: 128, align: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2718, file: !2707, line: 146, baseType: !569, size: 256, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2718, file: !2707, line: 147, baseType: !7, size: 32, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2307, file: !1328, line: 1064, baseType: !655, size: 64, offset: 14464)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2307, file: !1328, line: 1067, baseType: !655, size: 64, offset: 14528)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2307, file: !1328, line: 1070, baseType: !655, size: 64, offset: 14592)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2307, file: !1328, line: 1074, baseType: !682, size: 64, offset: 14656)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2307, file: !1328, line: 1084, baseType: !2728, size: 128, offset: 14720)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 128, elements: !2729)
!2729 = !{!2730}
!2730 = !DISubrange(count: 16)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2307, file: !1328, line: 1086, baseType: !2732, size: 64, offset: 14848)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1328, line: 55, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2307, file: !1328, line: 1089, baseType: !2735, size: 64, offset: 14912)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2736, line: 12, size: 64, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2735, file: !2736, line: 13, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2736, line: 8, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2307, file: !1328, line: 1090, baseType: !2742, size: 128, offset: 14976)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2743, line: 13, size: 128, elements: !2744)
!2743 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2744 = !{!2745}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2742, file: !2743, line: 14, baseType: !138, size: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2307, file: !1328, line: 1097, baseType: !2747, size: 64, offset: 15104)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1328, line: 50, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2307, file: !1328, line: 1100, baseType: !2750, size: 64, offset: 15168)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1328, line: 1100, flags: DIFlagFwdDecl)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2307, file: !1328, line: 1103, baseType: !2753, size: 64, offset: 15232)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1328, line: 53, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2307, file: !1328, line: 1107, baseType: !2756, size: 64, offset: 15296)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1328, line: 56, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2307, file: !1328, line: 1110, baseType: !2759, size: 64, offset: 15360)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2761, line: 93, size: 8768, elements: !2762)
!2761 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2810, !2819, !2820, !2822, !2823, !2824, !2827, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2865, !2866, !2873, !2883, !2886, !2887, !2890, !2891, !2892, !2893, !2894, !2895}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2760, file: !2761, line: 94, baseType: !612, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2760, file: !2761, line: 95, baseType: !288, size: 32, offset: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2760, file: !2761, line: 96, baseType: !292, size: 32, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2760, file: !2761, line: 97, baseType: !292, size: 32, offset: 96)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2760, file: !2761, line: 98, baseType: !138, size: 128, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2760, file: !2761, line: 100, baseType: !633, size: 192, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2760, file: !2761, line: 103, baseType: !2306, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2760, file: !2761, line: 106, baseType: !2771, size: 192, offset: 512)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !852, line: 32, size: 192, elements: !2772)
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2771, file: !852, line: 33, baseType: !138, size: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2771, file: !852, line: 34, baseType: !2775, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2776, line: 25, baseType: !2777)
!2776 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2776, line: 23, size: 64, elements: !2778)
!2778 = !{!2779}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2777, file: !2776, line: 24, baseType: !2541, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2760, file: !2761, line: 109, baseType: !620, size: 64, offset: 704)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2760, file: !2761, line: 112, baseType: !292, size: 32, offset: 768)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2760, file: !2761, line: 114, baseType: !292, size: 32, offset: 800)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2760, file: !2761, line: 115, baseType: !2306, size: 64, offset: 832)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2760, file: !2761, line: 118, baseType: !292, size: 32, offset: 896)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2760, file: !2761, line: 119, baseType: !7, size: 32, offset: 928)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2760, file: !2761, line: 121, baseType: !2787, size: 64, offset: 960)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2761, line: 80, size: 448, elements: !2789)
!2789 = !{!2790, !2791, !2797}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2788, file: !2761, line: 81, baseType: !288, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2788, file: !2761, line: 82, baseType: !2792, size: 128, offset: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2761, line: 75, size: 128, elements: !2793)
!2793 = !{!2794, !2795}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2792, file: !2761, line: 76, baseType: !2306, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2792, file: !2761, line: 77, baseType: !2796, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2788, file: !2761, line: 83, baseType: !1580, size: 256, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2760, file: !2761, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2760, file: !2761, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2760, file: !2761, line: 138, baseType: !7, size: 32, offset: 1056)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2760, file: !2761, line: 139, baseType: !138, size: 128, offset: 1088)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2760, file: !2761, line: 142, baseType: !2417, size: 512, offset: 1216)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2760, file: !2761, line: 143, baseType: !2425, size: 64, offset: 1728)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2760, file: !2761, line: 150, baseType: !2805, size: 256, offset: 1792)
!2805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2806, size: 256, elements: !1716)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2761, line: 38, size: 128, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2806, file: !2761, line: 39, baseType: !121, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2806, file: !2761, line: 40, baseType: !121, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2760, file: !2761, line: 156, baseType: !2811, size: 192, offset: 2048)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2761, line: 66, size: 192, elements: !2812)
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2811, file: !2761, line: 67, baseType: !2814, size: 192)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2761, line: 47, size: 192, elements: !2815)
!2815 = !{!2816, !2817, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2814, file: !2761, line: 48, baseType: !562, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2814, file: !2761, line: 49, baseType: !562, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2814, file: !2761, line: 50, baseType: !562, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2760, file: !2761, line: 160, baseType: !2706, size: 640, offset: 2240)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2760, file: !2761, line: 163, baseType: !2821, size: 256, offset: 2880)
!2821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 256, elements: !629)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2760, file: !2761, line: 169, baseType: !608, size: 64, offset: 3136)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2760, file: !2761, line: 172, baseType: !292, size: 32, offset: 3200)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2760, file: !2761, line: 174, baseType: !2825, size: 64, offset: 3264)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2761, line: 174, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2760, file: !2761, line: 185, baseType: !2828, size: 64, offset: 3328)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !216, line: 860, baseType: !2829)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 853, size: 64, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2829, file: !216, line: 858, baseType: !215, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2829, file: !216, line: 859, baseType: !268, size: 32, offset: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2760, file: !2761, line: 186, baseType: !121, size: 64, offset: 3392)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2760, file: !2761, line: 186, baseType: !121, size: 64, offset: 3456)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2760, file: !2761, line: 186, baseType: !121, size: 64, offset: 3520)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2760, file: !2761, line: 186, baseType: !121, size: 64, offset: 3584)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2760, file: !2761, line: 187, baseType: !121, size: 64, offset: 3648)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2760, file: !2761, line: 188, baseType: !121, size: 64, offset: 3712)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2760, file: !2761, line: 189, baseType: !2694, size: 192, offset: 3776)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2760, file: !2761, line: 190, baseType: !144, size: 64, offset: 3968)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2760, file: !2761, line: 190, baseType: !144, size: 64, offset: 4032)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2760, file: !2761, line: 190, baseType: !144, size: 64, offset: 4096)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2760, file: !2761, line: 190, baseType: !144, size: 64, offset: 4160)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2760, file: !2761, line: 191, baseType: !144, size: 64, offset: 4224)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2760, file: !2761, line: 191, baseType: !144, size: 64, offset: 4288)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2760, file: !2761, line: 191, baseType: !144, size: 64, offset: 4352)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2760, file: !2761, line: 191, baseType: !144, size: 64, offset: 4416)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2760, file: !2761, line: 192, baseType: !144, size: 64, offset: 4480)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2760, file: !2761, line: 192, baseType: !144, size: 64, offset: 4544)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2760, file: !2761, line: 192, baseType: !144, size: 64, offset: 4608)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2760, file: !2761, line: 192, baseType: !144, size: 64, offset: 4672)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2760, file: !2761, line: 193, baseType: !144, size: 64, offset: 4736)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2760, file: !2761, line: 193, baseType: !144, size: 64, offset: 4800)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2760, file: !2761, line: 194, baseType: !2855, size: 448, offset: 4864)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2856, line: 12, size: 448, elements: !2857)
!2856 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863, !2864}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2855, file: !2856, line: 15, baseType: !121, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2855, file: !2856, line: 17, baseType: !121, size: 64, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2855, file: !2856, line: 19, baseType: !121, size: 64, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2855, file: !2856, line: 21, baseType: !121, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2855, file: !2856, line: 29, baseType: !121, size: 64, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2855, file: !2856, line: 35, baseType: !121, size: 64, offset: 320)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2855, file: !2856, line: 44, baseType: !121, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2760, file: !2761, line: 202, baseType: !119, size: 64, offset: 5312)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2760, file: !2761, line: 213, baseType: !2867, size: 2048, offset: 5376)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2868, size: 2048, elements: !2729)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2869, line: 43, size: 128, elements: !2870)
!2869 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2868, file: !2869, line: 44, baseType: !504, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2868, file: !2869, line: 45, baseType: !504, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2760, file: !2761, line: 216, baseType: !2874, size: 448, offset: 7424)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2761, line: 30, size: 448, elements: !2875)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2874, file: !2761, line: 31, baseType: !292, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2874, file: !2761, line: 32, baseType: !492, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2874, file: !2761, line: 33, baseType: !144, size: 64, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2874, file: !2761, line: 34, baseType: !121, size: 64, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2874, file: !2761, line: 34, baseType: !121, size: 64, offset: 256)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2874, file: !2761, line: 35, baseType: !144, size: 64, offset: 320)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2874, file: !2761, line: 35, baseType: !144, size: 64, offset: 384)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2760, file: !2761, line: 219, baseType: !2884, size: 64, offset: 7872)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2761, line: 219, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2760, file: !2761, line: 222, baseType: !7, size: 32, offset: 7936)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2760, file: !2761, line: 223, baseType: !2888, size: 64, offset: 8000)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2761, line: 223, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2760, file: !2761, line: 230, baseType: !764, size: 8, offset: 8064)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2760, file: !2761, line: 231, baseType: !733, size: 16, offset: 8080)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2760, file: !2761, line: 232, baseType: !733, size: 16, offset: 8096)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2760, file: !2761, line: 234, baseType: !979, size: 64, offset: 8128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2760, file: !2761, line: 237, baseType: !569, size: 256, offset: 8192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2760, file: !2761, line: 243, baseType: !705, size: 320, offset: 8448)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2307, file: !1328, line: 1111, baseType: !2897, size: 64, offset: 15424)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2761, line: 20, size: 16640, elements: !2899)
!2899 = !{!2900, !2901, !2902, !2903}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2898, file: !2761, line: 21, baseType: !268, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2898, file: !2761, line: 22, baseType: !612, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2898, file: !2761, line: 23, baseType: !633, size: 192, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2898, file: !2761, line: 24, baseType: !2904, size: 16384, offset: 256)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2905, size: 16384, elements: !462)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !852, line: 51, size: 256, elements: !2906)
!2906 = !{!2907}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2905, file: !852, line: 52, baseType: !2908, size: 256)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !852, line: 37, size: 256, elements: !2909)
!2909 = !{!2910, !2917, !2918, !2922}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2908, file: !852, line: 39, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2912, line: 83, baseType: !2913)
!2912 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2912, line: 82, baseType: !2915)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !292}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2908, file: !852, line: 40, baseType: !144, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2908, file: !852, line: 46, baseType: !2919, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2912, line: 86, baseType: !2920)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2912, line: 85, baseType: !1931)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2908, file: !852, line: 48, baseType: !2775, size: 64, offset: 192)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2307, file: !1328, line: 1112, baseType: !2775, size: 64, offset: 15488)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2307, file: !1328, line: 1113, baseType: !2775, size: 64, offset: 15552)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2307, file: !1328, line: 1115, baseType: !2775, size: 64, offset: 15616)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2307, file: !1328, line: 1116, baseType: !2771, size: 192, offset: 15680)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2307, file: !1328, line: 1117, baseType: !144, size: 64, offset: 15872)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2307, file: !1328, line: 1118, baseType: !502, size: 64, offset: 15936)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2307, file: !1328, line: 1119, baseType: !7, size: 32, offset: 16000)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2307, file: !1328, line: 1121, baseType: !550, size: 64, offset: 16064)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2307, file: !1328, line: 1125, baseType: !2932, size: 64, offset: 16128)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1328, line: 43, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2307, file: !1328, line: 1127, baseType: !179, size: 32, offset: 16192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2307, file: !1328, line: 1128, baseType: !7, size: 32, offset: 16224)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2307, file: !1328, line: 1130, baseType: !2937, size: 128, offset: 16256)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2938, line: 37, size: 128, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2937, file: !2938, line: 38, baseType: !292, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2937, file: !2938, line: 39, baseType: !288, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2937, file: !2938, line: 40, baseType: !2943, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2938, line: 24, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2307, file: !1328, line: 1131, baseType: !2946, size: 256, offset: 16384)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2947, line: 12, size: 256, elements: !2948)
!2947 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2948 = !{!2949, !2950, !2951, !2952}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2946, file: !2947, line: 13, baseType: !355, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2946, file: !2947, line: 14, baseType: !144, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2946, file: !2947, line: 15, baseType: !144, size: 64, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2946, file: !2947, line: 16, baseType: !764, size: 8, offset: 192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2307, file: !1328, line: 1134, baseType: !121, size: 64, offset: 16640)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2307, file: !1328, line: 1135, baseType: !121, size: 64, offset: 16704)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2307, file: !1328, line: 1138, baseType: !268, size: 32, offset: 16768)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2307, file: !1328, line: 1141, baseType: !574, size: 32, offset: 16800)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2307, file: !1328, line: 1143, baseType: !2958, size: 64, offset: 16832)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1328, line: 735, size: 64, elements: !2959)
!2959 = !{!2960}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2958, file: !1328, line: 736, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2307, file: !1328, line: 1147, baseType: !2476, size: 128, offset: 16896)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2307, file: !1328, line: 1149, baseType: !2306, size: 64, offset: 17024)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2307, file: !1328, line: 1151, baseType: !2965, size: 64, offset: 17088)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1328, line: 1151, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2307, file: !1328, line: 1188, baseType: !127, size: 64, offset: 17152)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2307, file: !1328, line: 1191, baseType: !2969, size: 64, offset: 17216)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1328, line: 44, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2307, file: !1328, line: 1194, baseType: !2972, size: 64, offset: 17280)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1328, line: 45, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2307, file: !1328, line: 1197, baseType: !2975, size: 64, offset: 17344)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1328, line: 61, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2307, file: !1328, line: 1199, baseType: !2978, size: 64, offset: 17408)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2980, line: 99, size: 128, elements: !2981)
!2980 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2981 = !{!2982, !2983, !2984}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2979, file: !2980, line: 100, baseType: !560, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2979, file: !2980, line: 101, baseType: !288, size: 32, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2979, file: !2980, line: 103, baseType: !176, size: 16, offset: 96)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2307, file: !1328, line: 1202, baseType: !2986, size: 64, offset: 17472)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1328, line: 48, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2307, file: !1328, line: 1205, baseType: !144, size: 64, offset: 17536)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2307, file: !1328, line: 1206, baseType: !2990, size: 64, offset: 17600)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !852, line: 14, baseType: !2992)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !852, line: 12, size: 384, elements: !2993)
!2993 = !{!2994}
!2994 = !DIDerivedType(tag: DW_TAG_member, scope: !2992, file: !852, line: 13, baseType: !2995, size: 384)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2992, file: !852, line: 13, size: 384, elements: !2996)
!2996 = !{!2997, !2998, !2999, !3000}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2995, file: !852, line: 13, baseType: !292, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2995, file: !852, line: 13, baseType: !292, size: 32, offset: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2995, file: !852, line: 13, baseType: !292, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2995, file: !852, line: 13, baseType: !3001, size: 256, offset: 128)
!3001 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3002, line: 37, size: 256, elements: !3003)
!3002 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3003 = !{!3004, !3009, !3022, !3028, !3037, !3064, !3069}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3001, file: !3002, line: 42, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3001, file: !3002, line: 39, size: 64, elements: !3006)
!3006 = !{!3007, !3008}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3005, file: !3002, line: 40, baseType: !2671, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3005, file: !3002, line: 41, baseType: !185, size: 32, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3001, file: !3002, line: 50, baseType: !3010, size: 192)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3001, file: !3002, line: 45, size: 192, elements: !3011)
!3011 = !{!3012, !3014, !3015, !3021}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3010, file: !3002, line: 46, baseType: !3013, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !186, line: 95, baseType: !292)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3010, file: !3002, line: 47, baseType: !292, size: 32, offset: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3010, file: !3002, line: 48, baseType: !3016, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3002, line: 11, baseType: !3017)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3002, line: 8, size: 64, elements: !3018)
!3018 = !{!3019, !3020}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3017, file: !3002, line: 9, baseType: !292, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3017, file: !3002, line: 10, baseType: !127, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3010, file: !3002, line: 49, baseType: !292, size: 32, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3001, file: !3002, line: 57, baseType: !3023, size: 128)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3001, file: !3002, line: 53, size: 128, elements: !3024)
!3024 = !{!3025, !3026, !3027}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3023, file: !3002, line: 54, baseType: !2671, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3023, file: !3002, line: 55, baseType: !185, size: 32, offset: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3023, file: !3002, line: 56, baseType: !3016, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3001, file: !3002, line: 66, baseType: !3029, size: 256)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3001, file: !3002, line: 60, size: 256, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034, !3036}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3029, file: !3002, line: 61, baseType: !2671, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3029, file: !3002, line: 62, baseType: !185, size: 32, offset: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3029, file: !3002, line: 63, baseType: !292, size: 32, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3029, file: !3002, line: 64, baseType: !3035, size: 64, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !186, line: 94, baseType: !491)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3029, file: !3002, line: 65, baseType: !3035, size: 64, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3001, file: !3002, line: 105, baseType: !3038, size: 256)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3001, file: !3002, line: 69, size: 256, elements: !3039)
!3039 = !{!3040, !3041}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3038, file: !3002, line: 70, baseType: !127, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !3002, line: 79, baseType: !3042, size: 192, offset: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3038, file: !3002, line: 79, size: 192, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3053, !3058}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3042, file: !3002, line: 81, baseType: !292, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3042, file: !3002, line: 86, baseType: !733, size: 16)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3042, file: !3002, line: 92, baseType: !3047, size: 192)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3042, file: !3002, line: 88, size: 192, elements: !3048)
!3048 = !{!3049, !3051, !3052}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3047, file: !3002, line: 89, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 64, elements: !2460)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3047, file: !3002, line: 90, baseType: !127, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3047, file: !3002, line: 91, baseType: !127, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3042, file: !3002, line: 97, baseType: !3054, size: 96)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3042, file: !3002, line: 94, size: 96, elements: !3055)
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3054, file: !3002, line: 95, baseType: !3050, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3054, file: !3002, line: 96, baseType: !244, size: 32, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3042, file: !3002, line: 103, baseType: !3059, size: 128)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3042, file: !3002, line: 99, size: 128, elements: !3060)
!3060 = !{!3061, !3062, !3063}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3059, file: !3002, line: 100, baseType: !144, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3059, file: !3002, line: 101, baseType: !244, size: 32, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3059, file: !3002, line: 102, baseType: !244, size: 32, offset: 96)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3001, file: !3002, line: 111, baseType: !3065, size: 128)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3001, file: !3002, line: 108, size: 128, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3065, file: !3002, line: 109, baseType: !492, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3065, file: !3002, line: 110, baseType: !292, size: 32, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3001, file: !3002, line: 118, baseType: !3070, size: 128)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3001, file: !3002, line: 114, size: 128, elements: !3071)
!3071 = !{!3072, !3073, !3074}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3070, file: !3002, line: 115, baseType: !127, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3070, file: !3002, line: 116, baseType: !292, size: 32, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3070, file: !3002, line: 117, baseType: !7, size: 32, offset: 96)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2307, file: !1328, line: 1208, baseType: !2855, size: 448, offset: 17664)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2307, file: !1328, line: 1215, baseType: !121, size: 64, offset: 18112)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2307, file: !1328, line: 1217, baseType: !121, size: 64, offset: 18176)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2307, file: !1328, line: 1219, baseType: !121, size: 64, offset: 18240)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2307, file: !1328, line: 1223, baseType: !3080, size: 64, offset: 18304)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3081, line: 99, baseType: !3082)
!3081 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3081, line: 99, size: 64, elements: !3083)
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3082, file: !3081, line: 99, baseType: !2541, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2307, file: !1328, line: 1225, baseType: !215, size: 32, offset: 18368)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2307, file: !1328, line: 1226, baseType: !292, size: 32, offset: 18400)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2307, file: !1328, line: 1227, baseType: !292, size: 32, offset: 18432)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2307, file: !1328, line: 1231, baseType: !3089, size: 64, offset: 18496)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1328, line: 1231, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2307, file: !1328, line: 1233, baseType: !138, size: 128, offset: 18560)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2307, file: !1328, line: 1240, baseType: !3093, size: 64, offset: 18688)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1328, line: 62, flags: DIFlagFwdDecl)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2307, file: !1328, line: 1242, baseType: !3096, size: 64, offset: 18752)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1328, line: 1242, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2307, file: !1328, line: 1244, baseType: !138, size: 128, offset: 18816)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2307, file: !1328, line: 1245, baseType: !3100, size: 64, offset: 18944)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1328, line: 51, flags: DIFlagFwdDecl)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2307, file: !1328, line: 1246, baseType: !569, size: 256, offset: 19008)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2307, file: !1328, line: 1247, baseType: !7, size: 32, offset: 19264)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2307, file: !1328, line: 1250, baseType: !3105, size: 64, offset: 19328)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1328, line: 57, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2307, file: !1328, line: 1251, baseType: !569, size: 256, offset: 19392)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2307, file: !1328, line: 1252, baseType: !138, size: 128, offset: 19648)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2307, file: !1328, line: 1259, baseType: !1274, size: 64, offset: 19776)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2307, file: !1328, line: 1260, baseType: !733, size: 16, offset: 19840)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2307, file: !1328, line: 1261, baseType: !733, size: 16, offset: 19856)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2307, file: !1328, line: 1314, baseType: !3113, size: 64, offset: 19904)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3115, line: 62, size: 256, align: 256, elements: !3116)
!3115 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3114, file: !3115, line: 75, baseType: !244, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3114, file: !3115, line: 90, baseType: !244, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3114, file: !3115, line: 112, baseType: !123, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3114, file: !3115, line: 132, baseType: !244, size: 32, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3114, file: !3115, line: 140, baseType: !244, size: 32, offset: 160)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3114, file: !3115, line: 149, baseType: !244, size: 32, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3114, file: !3115, line: 154, baseType: !3124, offset: 224)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, elements: !648)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2307, file: !1328, line: 1315, baseType: !243, size: 32, offset: 19968)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2307, file: !1328, line: 1316, baseType: !243, size: 32, offset: 20000)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2307, file: !1328, line: 1321, baseType: !144, size: 64, offset: 20032)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2307, file: !1328, line: 1325, baseType: !292, size: 32, offset: 20096)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2307, file: !1328, line: 1326, baseType: !292, size: 32, offset: 20128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2307, file: !1328, line: 1327, baseType: !292, size: 32, offset: 20160)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2307, file: !1328, line: 1328, baseType: !292, size: 32, offset: 20192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2307, file: !1328, line: 1329, baseType: !547, size: 128, align: 64, offset: 20224)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2307, file: !1328, line: 1332, baseType: !3134, size: 128, offset: 20352)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3135, line: 51, size: 128, elements: !3136)
!3135 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3136 = !{!3137, !3142, !3143}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3134, file: !3135, line: 60, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3139, line: 7, size: 64, elements: !3140)
!3139 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3140 = !{!3141}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3138, file: !3139, line: 12, baseType: !2538, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3134, file: !3135, line: 63, baseType: !764, size: 8, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3134, file: !3135, line: 70, baseType: !764, size: 8, offset: 72)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2307, file: !1328, line: 1335, baseType: !1326, size: 64, offset: 20480)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2307, file: !1328, line: 1337, baseType: !3146, size: 128, offset: 20544)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3135, line: 39, size: 128, elements: !3147)
!3147 = !{!3148, !3149, !3150}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3146, file: !3135, line: 40, baseType: !145, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3146, file: !3135, line: 42, baseType: !244, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3146, file: !3135, line: 43, baseType: !244, size: 32, offset: 96)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2307, file: !1328, line: 1340, baseType: !3152, size: 64, offset: 20672)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1328, line: 69, flags: DIFlagFwdDecl)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2307, file: !1328, line: 1351, baseType: !292, size: 32, offset: 20736)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2307, file: !1328, line: 1352, baseType: !292, size: 32, offset: 20768)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2307, file: !1328, line: 1354, baseType: !144, size: 64, offset: 20800)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2307, file: !1328, line: 1364, baseType: !121, size: 64, offset: 20864)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2307, file: !1328, line: 1365, baseType: !121, size: 64, offset: 20928)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2307, file: !1328, line: 1412, baseType: !144, size: 64, offset: 20992)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2307, file: !1328, line: 1453, baseType: !3161, size: 64, offset: 21056)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1328, line: 1453, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2307, file: !1328, line: 1457, baseType: !3164, size: 64, offset: 21120)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !77, line: 61, size: 576, elements: !3166)
!3166 = !{!3167, !3168, !3187, !3190, !3191, !3224, !3234}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3165, file: !77, line: 62, baseType: !76, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !77, line: 64, baseType: !3169, size: 192, offset: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !77, line: 64, size: 192, elements: !3170)
!3170 = !{!3171, !3182}
!3171 = !DIDerivedType(tag: DW_TAG_member, scope: !3169, file: !77, line: 65, baseType: !3172, size: 192)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3169, file: !77, line: 65, size: 192, elements: !3173)
!3173 = !{!3174, !3181}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3172, file: !77, line: 66, baseType: !3175, size: 128)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3176, line: 50, size: 128, elements: !3177)
!3176 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3177 = !{!3178, !3179, !3180}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3175, file: !3176, line: 52, baseType: !144, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3175, file: !3176, line: 54, baseType: !7, size: 32, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3175, file: !3176, line: 55, baseType: !7, size: 32, offset: 96)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3172, file: !77, line: 67, baseType: !144, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !3169, file: !77, line: 70, baseType: !3183, size: 192)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3169, file: !77, line: 70, size: 192, elements: !3184)
!3184 = !{!3185, !3186}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3183, file: !77, line: 71, baseType: !547, size: 128, align: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3183, file: !77, line: 72, baseType: !144, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3165, file: !77, line: 76, baseType: !3188, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !77, line: 76, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3165, file: !77, line: 77, baseType: !144, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3165, file: !77, line: 79, baseType: !3192, size: 64, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3176, line: 25, size: 256, elements: !3194)
!3194 = !{!3195, !3201, !3205}
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !3176, line: 26, baseType: !3196, size: 128)
!3196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !3176, line: 26, size: 128, elements: !3197)
!3197 = !{!3198, !3200}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3196, file: !3176, line: 27, baseType: !3199, size: 128)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !2729)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3196, file: !3176, line: 28, baseType: !3199, size: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3193, file: !3176, line: 31, baseType: !3202, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3176, line: 23, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !3176, line: 33, baseType: !3206, size: 64, offset: 192)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !3176, line: 33, size: 64, elements: !3207)
!3207 = !{!3208, !3214, !3219}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3206, file: !3176, line: 38, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3206, file: !3176, line: 34, size: 64, elements: !3210)
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3209, file: !3176, line: 35, baseType: !690, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3209, file: !3176, line: 36, baseType: !297, size: 8, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3209, file: !3176, line: 37, baseType: !297, size: 8, offset: 40)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3206, file: !3176, line: 42, baseType: !3215, size: 16)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3206, file: !3176, line: 39, size: 16, elements: !3216)
!3216 = !{!3217, !3218}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3215, file: !3176, line: 40, baseType: !297, size: 8)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3215, file: !3176, line: 41, baseType: !297, size: 8, offset: 8)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3206, file: !3176, line: 46, baseType: !3220, size: 16)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3206, file: !3176, line: 43, size: 16, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3220, file: !3176, line: 44, baseType: !297, size: 8)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3220, file: !3176, line: 45, baseType: !297, size: 8, offset: 8)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3165, file: !77, line: 81, baseType: !3225, size: 64, offset: 448)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !77, line: 85, size: 384, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3226, file: !77, line: 86, baseType: !3188, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3226, file: !77, line: 87, baseType: !144, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3226, file: !77, line: 88, baseType: !144, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3226, file: !77, line: 89, baseType: !144, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3226, file: !77, line: 90, baseType: !764, size: 8, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3226, file: !77, line: 92, baseType: !3225, size: 64, offset: 320)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3165, file: !77, line: 82, baseType: !7, size: 32, offset: 512)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2307, file: !1328, line: 1463, baseType: !3236, offset: 21184)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1328, line: 739, elements: !1000)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2307, file: !1328, line: 1470, baseType: !547, size: 128, align: 64, offset: 21184)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2307, file: !1328, line: 1471, baseType: !612, size: 32, offset: 21312)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2307, file: !1328, line: 1472, baseType: !292, size: 32, offset: 21344)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2307, file: !1328, line: 1474, baseType: !2306, size: 64, offset: 21376)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2307, file: !1328, line: 1475, baseType: !1826, size: 320, offset: 21440)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2307, file: !1328, line: 1478, baseType: !3243, size: 64, offset: 21760)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3245, line: 49, size: 512, elements: !3246)
!3245 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3253, !3254, !3255, !3256}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3244, file: !3245, line: 50, baseType: !3243, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3244, file: !3245, line: 51, baseType: !127, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3244, file: !3245, line: 52, baseType: !144, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3244, file: !3245, line: 53, baseType: !144, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3244, file: !3245, line: 54, baseType: !3252, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3244, file: !3245, line: 56, baseType: !7, size: 32, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3244, file: !3245, line: 58, baseType: !7, size: 32, offset: 352)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3244, file: !3245, line: 59, baseType: !126, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3244, file: !3245, line: 60, baseType: !1095, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2307, file: !1328, line: 1482, baseType: !612, size: 32, offset: 21824)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2307, file: !1328, line: 1489, baseType: !127, size: 64, offset: 21888)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2307, file: !1328, line: 1504, baseType: !127, size: 64, offset: 21952)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2307, file: !1328, line: 1505, baseType: !123, size: 64, offset: 22016)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2307, file: !1328, line: 1506, baseType: !121, size: 64, offset: 22080)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2307, file: !1328, line: 1507, baseType: !123, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2307, file: !1328, line: 1508, baseType: !123, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2307, file: !1328, line: 1509, baseType: !123, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2307, file: !1328, line: 1510, baseType: !547, size: 128, align: 64, offset: 22208)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2307, file: !1328, line: 1511, baseType: !292, size: 32, offset: 22336)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2307, file: !1328, line: 1515, baseType: !3268, size: 64, offset: 22400)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !542, line: 56, size: 64, elements: !3269)
!3269 = !{!3270}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3268, file: !542, line: 57, baseType: !545, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2307, file: !1328, line: 1518, baseType: !3268, size: 64, offset: 22464)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2307, file: !1328, line: 1528, baseType: !547, size: 128, align: 64, offset: 22528)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2307, file: !1328, line: 1552, baseType: !3274, size: 35328, offset: 23040)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3275, line: 430, size: 35328, elements: !3276)
!3275 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3276 = !{!3277, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3306, !3307, !3308, !3309, !3310, !3311, !3314, !3315, !3316, !3317}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3274, file: !3275, line: 432, baseType: !3278, size: 192)
!3278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 192, elements: !458)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3280, line: 16, size: 64, elements: !3281)
!3280 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3279, file: !3280, line: 17, baseType: !304, size: 16)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3279, file: !3280, line: 18, baseType: !304, size: 16, offset: 16)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3279, file: !3280, line: 19, baseType: !304, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3279, file: !3280, line: 19, baseType: !304, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3279, file: !3280, line: 19, baseType: !304, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3279, file: !3280, line: 19, baseType: !304, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3279, file: !3280, line: 19, baseType: !304, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3279, file: !3280, line: 20, baseType: !304, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3279, file: !3280, line: 20, baseType: !304, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3279, file: !3280, line: 20, baseType: !304, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3279, file: !3280, line: 20, baseType: !304, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3279, file: !3280, line: 20, baseType: !304, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3279, file: !3280, line: 20, baseType: !304, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3274, file: !3275, line: 436, baseType: !144, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3274, file: !3275, line: 440, baseType: !176, size: 16, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3274, file: !3275, line: 441, baseType: !176, size: 16, offset: 272)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3274, file: !3275, line: 442, baseType: !176, size: 16, offset: 288)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3274, file: !3275, line: 443, baseType: !176, size: 16, offset: 304)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3274, file: !3275, line: 447, baseType: !144, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3274, file: !3275, line: 448, baseType: !144, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3274, file: !3275, line: 459, baseType: !3303, size: 256, offset: 448)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3304, size: 256, elements: !629)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3275, line: 428, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3274, file: !3275, line: 461, baseType: !144, size: 64, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3274, file: !3275, line: 463, baseType: !144, size: 64, offset: 768)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3274, file: !3275, line: 465, baseType: !144, size: 64, offset: 832)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3274, file: !3275, line: 466, baseType: !144, size: 64, offset: 896)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3274, file: !3275, line: 467, baseType: !144, size: 64, offset: 960)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3274, file: !3275, line: 473, baseType: !3312, size: 64, offset: 1024)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3275, line: 10, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3274, file: !3275, line: 480, baseType: !144, size: 64, offset: 1088)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3274, file: !3275, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3274, file: !3275, line: 491, baseType: !243, size: 32, offset: 1184)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3274, file: !3275, line: 501, baseType: !3318, size: 33792, offset: 1536)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3319, line: 448, size: 33792, elements: !3320)
!3319 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3320 = !{!3321, !3322, !3323, !3485, !3486, !3492, !3493}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3318, file: !3319, line: 461, baseType: !7, size: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3318, file: !3319, line: 468, baseType: !144, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3318, file: !3319, line: 476, baseType: !3324, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3319, line: 356, size: 33280, align: 512, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3325, file: !3319, line: 358, baseType: !7, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3325, file: !3319, line: 361, baseType: !7, size: 32, offset: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3325, file: !3319, line: 364, baseType: !121, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3325, file: !3319, line: 367, baseType: !121, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3325, file: !3319, line: 370, baseType: !121, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3325, file: !3319, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3325, file: !3319, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3325, file: !3319, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3325, file: !3319, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3325, file: !3319, line: 397, baseType: !3337, size: 32768, offset: 512)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3319, line: 348, size: 32768, elements: !3338)
!3338 = !{!3339, !3354, !3391, !3468, !3481}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3337, file: !3319, line: 349, baseType: !3340, size: 896)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3319, line: 12, size: 896, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3353}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3340, file: !3319, line: 13, baseType: !243, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3340, file: !3319, line: 14, baseType: !243, size: 32, offset: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3340, file: !3319, line: 15, baseType: !243, size: 32, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3340, file: !3319, line: 16, baseType: !243, size: 32, offset: 96)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3340, file: !3319, line: 17, baseType: !243, size: 32, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3340, file: !3319, line: 18, baseType: !243, size: 32, offset: 160)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3340, file: !3319, line: 19, baseType: !243, size: 32, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3340, file: !3319, line: 22, baseType: !3350, size: 640, offset: 224)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 640, elements: !3351)
!3351 = !{!3352}
!3352 = !DISubrange(count: 20)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3340, file: !3319, line: 25, baseType: !243, size: 32, offset: 864)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3337, file: !3319, line: 350, baseType: !3355, size: 4096, align: 128)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3319, line: 34, size: 4096, align: 128, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3376, !3377, !3378, !3380, !3382, !3386}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3355, file: !3319, line: 35, baseType: !304, size: 16)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3355, file: !3319, line: 36, baseType: !304, size: 16, offset: 16)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3355, file: !3319, line: 37, baseType: !304, size: 16, offset: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3355, file: !3319, line: 38, baseType: !304, size: 16, offset: 48)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3355, file: !3319, line: 39, baseType: !3362, size: 128, offset: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3355, file: !3319, line: 39, size: 128, elements: !3363)
!3363 = !{!3364, !3369}
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !3319, line: 40, baseType: !3365, size: 128)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3362, file: !3319, line: 40, size: 128, elements: !3366)
!3366 = !{!3367, !3368}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3365, file: !3319, line: 41, baseType: !121, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3365, file: !3319, line: 42, baseType: !121, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !3319, line: 44, baseType: !3370, size: 128)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3362, file: !3319, line: 44, size: 128, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3370, file: !3319, line: 45, baseType: !243, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3370, file: !3319, line: 46, baseType: !243, size: 32, offset: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3370, file: !3319, line: 47, baseType: !243, size: 32, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3370, file: !3319, line: 48, baseType: !243, size: 32, offset: 96)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3355, file: !3319, line: 51, baseType: !243, size: 32, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3355, file: !3319, line: 52, baseType: !243, size: 32, offset: 224)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3355, file: !3319, line: 55, baseType: !3379, size: 1024, offset: 256)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 1024, elements: !254)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3355, file: !3319, line: 58, baseType: !3381, size: 2048, offset: 1280)
!3381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 2048, elements: !462)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3355, file: !3319, line: 60, baseType: !3383, size: 384, offset: 3328)
!3383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 384, elements: !3384)
!3384 = !{!3385}
!3385 = !DISubrange(count: 12)
!3386 = !DIDerivedType(tag: DW_TAG_member, scope: !3355, file: !3319, line: 62, baseType: !3387, size: 384, offset: 3712)
!3387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3355, file: !3319, line: 62, size: 384, elements: !3388)
!3388 = !{!3389, !3390}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3387, file: !3319, line: 63, baseType: !3383, size: 384)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3387, file: !3319, line: 64, baseType: !3383, size: 384)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3337, file: !3319, line: 351, baseType: !3392, size: 1088)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3319, line: 79, size: 1088, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3467}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3392, file: !3319, line: 80, baseType: !243, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3392, file: !3319, line: 81, baseType: !243, size: 32, offset: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3392, file: !3319, line: 82, baseType: !243, size: 32, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3392, file: !3319, line: 83, baseType: !243, size: 32, offset: 96)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3392, file: !3319, line: 84, baseType: !243, size: 32, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3392, file: !3319, line: 85, baseType: !243, size: 32, offset: 160)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3392, file: !3319, line: 86, baseType: !243, size: 32, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3392, file: !3319, line: 88, baseType: !3350, size: 640, offset: 224)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3392, file: !3319, line: 89, baseType: !297, size: 8, offset: 864)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3392, file: !3319, line: 90, baseType: !297, size: 8, offset: 872)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3392, file: !3319, line: 91, baseType: !297, size: 8, offset: 880)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3392, file: !3319, line: 92, baseType: !297, size: 8, offset: 888)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3392, file: !3319, line: 93, baseType: !297, size: 8, offset: 896)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3392, file: !3319, line: 94, baseType: !297, size: 8, offset: 904)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3392, file: !3319, line: 95, baseType: !3409, size: 64, offset: 960)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3411, line: 11, size: 128, elements: !3412)
!3411 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3412 = !{!3413, !3414}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3410, file: !3411, line: 12, baseType: !492, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3410, file: !3411, line: 13, baseType: !3415, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3417, line: 103, size: 1344, elements: !3418)
!3417 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3447, !3448, !3449}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3416, file: !3417, line: 109, baseType: !144, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3416, file: !3417, line: 110, baseType: !144, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3416, file: !3417, line: 111, baseType: !144, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3416, file: !3417, line: 112, baseType: !144, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3416, file: !3417, line: 113, baseType: !144, size: 64, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3416, file: !3417, line: 114, baseType: !144, size: 64, offset: 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3416, file: !3417, line: 117, baseType: !144, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3416, file: !3417, line: 118, baseType: !144, size: 64, offset: 448)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3416, file: !3417, line: 119, baseType: !144, size: 64, offset: 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3416, file: !3417, line: 120, baseType: !144, size: 64, offset: 576)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3416, file: !3417, line: 121, baseType: !144, size: 64, offset: 640)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3416, file: !3417, line: 122, baseType: !144, size: 64, offset: 704)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3416, file: !3417, line: 123, baseType: !144, size: 64, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3416, file: !3417, line: 124, baseType: !144, size: 64, offset: 832)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3416, file: !3417, line: 125, baseType: !144, size: 64, offset: 896)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3416, file: !3417, line: 139, baseType: !144, size: 64, offset: 960)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3416, file: !3417, line: 142, baseType: !144, size: 64, offset: 1024)
!3436 = !DIDerivedType(tag: DW_TAG_member, scope: !3416, file: !3417, line: 144, baseType: !3437, size: 64, offset: 1088)
!3437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3416, file: !3417, line: 144, size: 64, elements: !3438)
!3438 = !{!3439, !3440, !3441}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3437, file: !3417, line: 146, baseType: !304, size: 16)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3437, file: !3417, line: 148, baseType: !121, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3437, file: !3417, line: 150, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3417, line: 59, size: 64, elements: !3443)
!3443 = !{!3444, !3445, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3442, file: !3417, line: 61, baseType: !121, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3442, file: !3417, line: 63, baseType: !121, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3442, file: !3417, line: 65, baseType: !121, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3416, file: !3417, line: 153, baseType: !144, size: 64, offset: 1152)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3416, file: !3417, line: 154, baseType: !144, size: 64, offset: 1216)
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3416, file: !3417, line: 156, baseType: !3450, size: 64, offset: 1280)
!3450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3416, file: !3417, line: 156, size: 64, elements: !3451)
!3451 = !{!3452, !3453, !3454}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3450, file: !3417, line: 158, baseType: !304, size: 16)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3450, file: !3417, line: 160, baseType: !121, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3450, file: !3417, line: 162, baseType: !3455, size: 64)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3417, line: 69, size: 64, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3455, file: !3417, line: 71, baseType: !121, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3455, file: !3417, line: 73, baseType: !121, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3455, file: !3417, line: 75, baseType: !121, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3455, file: !3417, line: 77, baseType: !121, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3455, file: !3417, line: 80, baseType: !121, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3455, file: !3417, line: 83, baseType: !121, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3455, file: !3417, line: 86, baseType: !121, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3455, file: !3417, line: 88, baseType: !121, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3455, file: !3417, line: 93, baseType: !121, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3455, file: !3417, line: 100, baseType: !121, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3392, file: !3319, line: 96, baseType: !243, size: 32, offset: 1024)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3337, file: !3319, line: 352, baseType: !3469, size: 4608, align: 512)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3319, line: 333, size: 4608, align: 512, elements: !3470)
!3470 = !{!3471, !3472, !3479}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3469, file: !3319, line: 334, baseType: !3355, size: 4096, align: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3469, file: !3319, line: 335, baseType: !3473, size: 512, offset: 4096)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3319, line: 312, size: 512, elements: !3474)
!3474 = !{!3475, !3476, !3477}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3473, file: !3319, line: 313, baseType: !121, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3473, file: !3319, line: 314, baseType: !121, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3473, file: !3319, line: 315, baseType: !3478, size: 384, offset: 128)
!3478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 384, elements: !751)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3469, file: !3319, line: 336, baseType: !3480, offset: 4608)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, elements: !648)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3337, file: !3319, line: 353, baseType: !3482, size: 32768)
!3482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 32768, elements: !3483)
!3483 = !{!3484}
!3484 = !DISubrange(count: 4096)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3318, file: !3319, line: 484, baseType: !3324, size: 64, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3318, file: !3319, line: 491, baseType: !3487, size: 128, offset: 256)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3319, line: 404, size: 128, elements: !3488)
!3488 = !{!3489, !3490, !3491}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3487, file: !3319, line: 424, baseType: !121, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3487, file: !3319, line: 432, baseType: !7, size: 32, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3487, file: !3319, line: 440, baseType: !7, size: 32, offset: 96)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3318, file: !3319, line: 498, baseType: !3487, size: 128, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3318, file: !3319, line: 508, baseType: !3325, size: 33280, align: 512, offset: 512)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2289, file: !2290, line: 16, baseType: !633, size: 192, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2289, file: !2290, line: 17, baseType: !288, size: 32, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !367, file: !55, line: 1240, baseType: !127, size: 64, offset: 6912)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !367, file: !55, line: 1243, baseType: !243, size: 32, offset: 6976)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !367, file: !55, line: 1245, baseType: !721, size: 64, offset: 7040)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !367, file: !55, line: 1246, baseType: !721, size: 64, offset: 7104)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !367, file: !55, line: 1248, baseType: !244, size: 32, offset: 7168)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !367, file: !55, line: 1249, baseType: !3502, size: 64, offset: 7232)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !55, line: 634, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !367, file: !55, line: 1252, baseType: !3505, size: 256, offset: 7296)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 256, elements: !254)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !367, file: !55, line: 1253, baseType: !3507, size: 128, offset: 7552)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3508, line: 21, baseType: !3509)
!3508 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3508, line: 19, size: 128, elements: !3510)
!3510 = !{!3511}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3509, file: !3508, line: 20, baseType: !3512, size: 128)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 128, elements: !2729)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !367, file: !55, line: 1255, baseType: !7, size: 32, offset: 7680)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !367, file: !55, line: 1261, baseType: !569, size: 256, offset: 7744)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !367, file: !55, line: 1267, baseType: !329, size: 64, offset: 8000)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !367, file: !55, line: 1269, baseType: !309, size: 64, offset: 8064)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !367, file: !55, line: 1271, baseType: !3518, size: 448, offset: 8128)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2069, line: 63, size: 448, elements: !3519)
!3519 = !{!3520, !3525, !3526, !3527, !3528, !3529, !3530}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3518, file: !2069, line: 64, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!144, !3524, !2067}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3518, file: !2069, line: 66, baseType: !3521, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3518, file: !2069, line: 69, baseType: !492, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3518, file: !2069, line: 70, baseType: !292, size: 32, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3518, file: !2069, line: 71, baseType: !7, size: 32, offset: 224)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3518, file: !2069, line: 74, baseType: !138, size: 128, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3518, file: !2069, line: 85, baseType: !3531, size: 64, offset: 384)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !367, file: !55, line: 1274, baseType: !560, size: 64, offset: 8576)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !367, file: !55, line: 1280, baseType: !560, size: 64, offset: 8640)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !367, file: !55, line: 1283, baseType: !292, size: 32, offset: 8704)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !367, file: !55, line: 1286, baseType: !1415, size: 32, offset: 8736)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !367, file: !55, line: 1289, baseType: !1888, size: 64, offset: 8768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !367, file: !55, line: 1290, baseType: !620, size: 64, offset: 8832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !367, file: !55, line: 1297, baseType: !847, size: 64, offset: 8896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !367, file: !55, line: 1304, baseType: !3540, size: 64, offset: 8960)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3541, line: 49, size: 64, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3542 = !{!3543}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3540, file: !3541, line: 50, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3541, line: 41, size: 512, align: 512, elements: !3546)
!3546 = !{!3547, !3548, !3553}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3545, file: !3541, line: 43, baseType: !268, size: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3545, file: !3541, line: 45, baseType: !3549, size: 192, offset: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3541, line: 29, size: 192, elements: !3550)
!3550 = !{!3551, !3552}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3549, file: !3541, line: 30, baseType: !138, size: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3549, file: !3541, line: 32, baseType: !492, size: 64, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3545, file: !3541, line: 46, baseType: !492, size: 64, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !367, file: !55, line: 1305, baseType: !3540, size: 64, offset: 9024)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !367, file: !55, line: 1306, baseType: !547, size: 128, align: 64, offset: 9088)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !367, file: !55, line: 1307, baseType: !1134, size: 256, offset: 9216)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !367, file: !55, line: 1309, baseType: !569, size: 256, offset: 9472)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !367, file: !55, line: 1314, baseType: !292, size: 32, offset: 9728)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !367, file: !55, line: 1317, baseType: !268, size: 32, align: 512, offset: 10240)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !367, file: !55, line: 1318, baseType: !138, size: 128, offset: 10304)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !367, file: !55, line: 1320, baseType: !268, size: 32, offset: 10432)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !367, file: !55, line: 1321, baseType: !138, size: 128, offset: 10496)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !361, file: !362, line: 73, baseType: !292, size: 32, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !361, file: !362, line: 74, baseType: !3565, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !672, line: 42, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !311, file: !211, line: 141, baseType: !3569, size: 64, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!292, !2129, !764}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !311, file: !211, line: 142, baseType: !3573, size: 64, offset: 768)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!209, !209, !3576}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !210, file: !211, line: 96, baseType: !366, size: 64, offset: 832)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !210, file: !211, line: 97, baseType: !144, size: 64, offset: 896)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !210, file: !211, line: 98, baseType: !127, size: 64, offset: 960)
!3581 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !211, line: 100, baseType: !3582, size: 128, offset: 1024)
!3582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !211, line: 100, size: 128, elements: !3583)
!3583 = !{!3584, !3585}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3582, file: !211, line: 101, baseType: !138, size: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3582, file: !211, line: 102, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !210, file: !211, line: 104, baseType: !138, size: 128, offset: 1152)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !210, file: !211, line: 105, baseType: !138, size: 128, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !210, file: !211, line: 113, baseType: !3590, size: 128, offset: 1408)
!3590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !211, line: 109, size: 128, elements: !3591)
!3591 = !{!3592, !3593, !3594}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3590, file: !211, line: 110, baseType: !624, size: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3590, file: !211, line: 111, baseType: !225, size: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3590, file: !211, line: 112, baseType: !547, size: 128, align: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !203, file: !55, line: 1968, baseType: !3596, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!329, !209, !171, !3599}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3601, line: 10, size: 128, elements: !3602)
!3601 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3602 = !{!3603, !3604}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3600, file: !3601, line: 11, baseType: !1455, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3600, file: !3601, line: 12, baseType: !127, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !203, file: !55, line: 1969, baseType: !3606, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!292, !3565, !171, !292}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !203, file: !55, line: 1970, baseType: !3610, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!197, !171, !292, !764}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !203, file: !55, line: 1972, baseType: !3614, size: 64, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!292, !209, !355, !292}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !203, file: !55, line: 1974, baseType: !3618, size: 64, offset: 320)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!292, !3565, !171, !209, !175, !764}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !203, file: !55, line: 1976, baseType: !3622, size: 64, offset: 384)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!292, !209, !171, !209}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !203, file: !55, line: 1977, baseType: !3626, size: 64, offset: 448)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!292, !171, !209}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !203, file: !55, line: 1978, baseType: !3630, size: 64, offset: 512)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!292, !3565, !171, !209, !329}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !203, file: !55, line: 1980, baseType: !3634, size: 64, offset: 576)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!292, !3565, !171, !209, !175}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !203, file: !55, line: 1982, baseType: !3626, size: 64, offset: 640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !203, file: !55, line: 1983, baseType: !3639, size: 64, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!292, !3565, !171, !209, !175, !371}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !203, file: !55, line: 1985, baseType: !3643, size: 64, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!292, !3565, !171, !209, !171, !209, !7}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !203, file: !55, line: 1987, baseType: !3647, size: 64, offset: 832)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!292, !3565, !209, !3650}
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !55, line: 226, size: 640, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3665, !3674, !3675, !3680, !3681, !3682}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3651, file: !55, line: 227, baseType: !7, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3651, file: !55, line: 228, baseType: !175, size: 16, offset: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3651, file: !55, line: 241, baseType: !3656, size: 32, offset: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3651, file: !55, line: 241, size: 32, elements: !3657)
!3657 = !{!3658, !3659}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3656, file: !55, line: 242, baseType: !179, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3656, file: !55, line: 243, baseType: !3660, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3661, line: 16, baseType: !3662)
!3661 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3661, line: 14, size: 32, elements: !3663)
!3663 = !{!3664}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3662, file: !3661, line: 15, baseType: !184, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, scope: !3651, file: !55, line: 245, baseType: !3666, size: 32, offset: 96)
!3666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3651, file: !55, line: 245, size: 32, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3666, file: !55, line: 246, baseType: !189, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3666, file: !55, line: 247, baseType: !3670, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3661, line: 20, baseType: !3671)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3661, line: 18, size: 32, elements: !3672)
!3672 = !{!3673}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3671, file: !3661, line: 19, baseType: !193, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3651, file: !55, line: 249, baseType: !376, size: 64, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3651, file: !55, line: 250, baseType: !3676, size: 128, offset: 192)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !722, line: 13, size: 128, elements: !3677)
!3677 = !{!3678, !3679}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3676, file: !722, line: 14, baseType: !721, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3676, file: !722, line: 15, baseType: !492, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3651, file: !55, line: 251, baseType: !3676, size: 128, offset: 320)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3651, file: !55, line: 252, baseType: !3676, size: 128, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3651, file: !55, line: 259, baseType: !534, size: 64, offset: 576)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !203, file: !55, line: 1988, baseType: !3684, size: 64, offset: 896)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!292, !3565, !2129, !3687, !243, !7}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3689, line: 22, size: 1280, elements: !3690)
!3689 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3690 = !{!3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3688, file: !3689, line: 23, baseType: !243, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3688, file: !3689, line: 24, baseType: !175, size: 16, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3688, file: !3689, line: 25, baseType: !7, size: 32, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3688, file: !3689, line: 26, baseType: !729, size: 32, offset: 96)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3688, file: !3689, line: 27, baseType: !121, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3688, file: !3689, line: 28, baseType: !121, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3688, file: !3689, line: 41, baseType: !121, size: 64, offset: 256)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3688, file: !3689, line: 42, baseType: !371, size: 32, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3688, file: !3689, line: 43, baseType: !371, size: 32, offset: 352)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3688, file: !3689, line: 44, baseType: !179, size: 32, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3688, file: !3689, line: 45, baseType: !189, size: 32, offset: 416)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3688, file: !3689, line: 46, baseType: !376, size: 64, offset: 448)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3688, file: !3689, line: 47, baseType: !3676, size: 128, offset: 512)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3688, file: !3689, line: 48, baseType: !3676, size: 128, offset: 640)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3688, file: !3689, line: 49, baseType: !3676, size: 128, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3688, file: !3689, line: 50, baseType: !3676, size: 128, offset: 896)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3688, file: !3689, line: 51, baseType: !121, size: 64, offset: 1024)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3688, file: !3689, line: 52, baseType: !121, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3688, file: !3689, line: 53, baseType: !243, size: 32, offset: 1152)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3688, file: !3689, line: 54, baseType: !243, size: 32, offset: 1184)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3688, file: !3689, line: 55, baseType: !121, size: 64, offset: 1216)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !203, file: !55, line: 1990, baseType: !3713, size: 64, offset: 960)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!489, !209, !355, !502}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !203, file: !55, line: 1991, baseType: !3717, size: 64, offset: 1024)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!292, !171, !3720, !121, !121}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !55, line: 55, flags: DIFlagFwdDecl)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !203, file: !55, line: 1993, baseType: !3723, size: 64, offset: 1088)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!292, !171, !292}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !203, file: !55, line: 1994, baseType: !3727, size: 64, offset: 1152)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!292, !171, !209, !534, !7, !175}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !203, file: !55, line: 1997, baseType: !3731, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!292, !3565, !171, !534, !175}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !203, file: !55, line: 1999, baseType: !3735, size: 64, offset: 1280)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!197, !3565, !209, !292}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !203, file: !55, line: 2001, baseType: !3739, size: 64, offset: 1344)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!292, !3565, !209, !197, !292}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !203, file: !55, line: 2003, baseType: !3743, size: 64, offset: 1408)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!292, !3565, !209, !3746}
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !55, line: 76, flags: DIFlagFwdDecl)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !203, file: !55, line: 2005, baseType: !3749, size: 64, offset: 1472)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!292, !209, !3746}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !203, file: !55, line: 2006, baseType: !3753, size: 64, offset: 1536)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!3756, !171}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !55, line: 3192, size: 192, elements: !3758)
!3758 = !{!3759, !3766}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3757, file: !55, line: 3193, baseType: !3760, size: 128)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3761, line: 296, size: 128, elements: !3762)
!3761 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3760, file: !3761, line: 297, baseType: !268, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3760, file: !3761, line: 299, baseType: !117, size: 32, offset: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3760, file: !3761, line: 300, baseType: !127, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3757, file: !55, line: 3194, baseType: !243, size: 32, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !172, file: !55, line: 655, baseType: !366, size: 64, offset: 448)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !172, file: !55, line: 656, baseType: !167, size: 64, offset: 512)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !172, file: !55, line: 659, baseType: !127, size: 64, offset: 576)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !172, file: !55, line: 663, baseType: !144, size: 64, offset: 640)
!3771 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !55, line: 671, baseType: !3772, size: 32, offset: 704)
!3772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !55, line: 671, size: 32, elements: !3773)
!3773 = !{!3774, !3776}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3772, file: !55, line: 672, baseType: !3775, size: 32)
!3775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3772, file: !55, line: 673, baseType: !7, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !172, file: !55, line: 675, baseType: !371, size: 32, offset: 736)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !172, file: !55, line: 676, baseType: !376, size: 64, offset: 768)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !172, file: !55, line: 677, baseType: !3676, size: 128, offset: 832)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !172, file: !55, line: 678, baseType: !3676, size: 128, offset: 960)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !172, file: !55, line: 679, baseType: !3676, size: 128, offset: 1088)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !172, file: !55, line: 680, baseType: !268, size: 32, offset: 1216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !172, file: !55, line: 681, baseType: !176, size: 16, offset: 1248)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !172, file: !55, line: 682, baseType: !297, size: 8, offset: 1264)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !172, file: !55, line: 683, baseType: !297, size: 8, offset: 1272)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !172, file: !55, line: 684, baseType: !2202, size: 64, offset: 1280)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !172, file: !55, line: 691, baseType: !144, size: 64, offset: 1344)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !172, file: !55, line: 692, baseType: !705, size: 320, offset: 1408)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !172, file: !55, line: 694, baseType: !144, size: 64, offset: 1728)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !172, file: !55, line: 695, baseType: !144, size: 64, offset: 1792)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !172, file: !55, line: 697, baseType: !624, size: 128, offset: 1856)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !172, file: !55, line: 698, baseType: !138, size: 128, offset: 1984)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !172, file: !55, line: 707, baseType: !138, size: 128, offset: 2112)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !172, file: !55, line: 708, baseType: !138, size: 128, offset: 2240)
!3795 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !55, line: 709, baseType: !3796, size: 128, offset: 2368)
!3796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !55, line: 709, size: 128, elements: !3797)
!3797 = !{!3798, !3799}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3796, file: !55, line: 710, baseType: !620, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3796, file: !55, line: 711, baseType: !547, size: 128, align: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !172, file: !55, line: 713, baseType: !562, size: 64, offset: 2496)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !172, file: !55, line: 714, baseType: !562, size: 64, offset: 2560)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !172, file: !55, line: 715, baseType: !288, size: 32, offset: 2624)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !172, file: !55, line: 716, baseType: !288, size: 32, offset: 2656)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !172, file: !55, line: 717, baseType: !288, size: 32, offset: 2688)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !172, file: !55, line: 719, baseType: !288, size: 32, offset: 2720)
!3806 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !55, line: 721, baseType: !3807, size: 64, offset: 2752)
!3807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !55, line: 721, size: 64, elements: !3808)
!3808 = !{!3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3807, file: !55, line: 722, baseType: !883, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3807, file: !55, line: 723, baseType: !1956, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !172, file: !55, line: 725, baseType: !3812, size: 64, offset: 2816)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !55, line: 725, flags: DIFlagFwdDecl)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !172, file: !55, line: 726, baseType: !168, size: 1536, align: 64, offset: 2880)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !172, file: !55, line: 727, baseType: !138, size: 128, offset: 4416)
!3816 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !55, line: 728, baseType: !3817, size: 64, offset: 4544)
!3817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !55, line: 728, size: 64, elements: !3818)
!3818 = !{!3819, !3820, !3823, !3824}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3817, file: !55, line: 729, baseType: !1326, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3817, file: !55, line: 730, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !55, line: 730, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3817, file: !55, line: 731, baseType: !355, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3817, file: !55, line: 732, baseType: !7, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !172, file: !55, line: 735, baseType: !244, size: 32, offset: 4608)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !172, file: !55, line: 738, baseType: !244, size: 32, offset: 4640)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !172, file: !55, line: 739, baseType: !3502, size: 64, offset: 4672)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !172, file: !55, line: 750, baseType: !127, size: 64, offset: 4736)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !168, file: !55, line: 474, baseType: !3760, size: 128, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !168, file: !55, line: 475, baseType: !705, size: 320, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !168, file: !55, line: 476, baseType: !117, size: 32, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !168, file: !55, line: 477, baseType: !288, size: 32, offset: 544)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !168, file: !55, line: 482, baseType: !2476, size: 128, offset: 576)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !168, file: !55, line: 483, baseType: !144, size: 64, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !168, file: !55, line: 484, baseType: !144, size: 64, offset: 768)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !168, file: !55, line: 485, baseType: !3837, size: 64, offset: 832)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3839)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !55, line: 404, size: 1280, elements: !3840)
!3840 = !{!3841, !3845, !3915, !3919, !3923, !3929, !3933, !3937, !3942, !3946, !3950, !3954, !3955, !3959, !3963, !3967, !3972, !3976, !3983, !3984}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3839, file: !55, line: 405, baseType: !3842, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!292, !145, !1968}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3839, file: !55, line: 406, baseType: !3846, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!292, !534, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !33, line: 293, size: 1536, elements: !3851)
!3851 = !{!3852, !3882, !3896}
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !33, line: 295, baseType: !3853, size: 512)
!3853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3850, file: !33, line: 295, size: 512, elements: !3854)
!3854 = !{!3855, !3881}
!3855 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !33, line: 296, baseType: !3856, size: 448)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3853, file: !33, line: 296, size: 448, elements: !3857)
!3857 = !{!3858, !3859, !3868, !3869, !3870, !3879, !3880}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3856, file: !33, line: 298, baseType: !144, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !3856, file: !33, line: 299, baseType: !3860, size: 128, offset: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3856, file: !33, line: 299, size: 128, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3860, file: !33, line: 300, baseType: !138, size: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !3860, file: !33, line: 302, baseType: !3864, size: 128)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3860, file: !33, line: 302, size: 128, elements: !3865)
!3865 = !{!3866, !3867}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3864, file: !33, line: 303, baseType: !127, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3864, file: !33, line: 305, baseType: !7, size: 32, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3856, file: !33, line: 310, baseType: !167, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3856, file: !33, line: 311, baseType: !144, size: 64, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_member, scope: !3856, file: !33, line: 312, baseType: !3871, size: 64, offset: 320)
!3871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3856, file: !33, line: 312, size: 64, elements: !3872)
!3872 = !{!3873, !3874}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3871, file: !33, line: 313, baseType: !127, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3871, file: !33, line: 314, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !33, line: 257, baseType: !3876)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 255, size: 64, elements: !3877)
!3877 = !{!3878}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3876, file: !33, line: 256, baseType: !144, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3856, file: !33, line: 316, baseType: !288, size: 32, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3856, file: !33, line: 317, baseType: !288, size: 32, offset: 416)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3853, file: !33, line: 323, baseType: !146, size: 512, align: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !33, line: 325, baseType: !3883, size: 512, offset: 512)
!3883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3850, file: !33, line: 325, size: 512, elements: !3884)
!3884 = !{!3885, !3895}
!3885 = !DIDerivedType(tag: DW_TAG_member, scope: !3883, file: !33, line: 326, baseType: !3886, size: 320)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3883, file: !33, line: 326, size: 320, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3886, file: !33, line: 327, baseType: !144, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3886, file: !33, line: 328, baseType: !144, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3886, file: !33, line: 329, baseType: !144, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3886, file: !33, line: 331, baseType: !288, size: 32, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3886, file: !33, line: 332, baseType: !288, size: 32, offset: 224)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3886, file: !33, line: 333, baseType: !288, size: 32, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3886, file: !33, line: 335, baseType: !7, size: 32, offset: 288)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3883, file: !33, line: 339, baseType: !146, size: 512, align: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !33, line: 341, baseType: !3897, size: 512, offset: 1024)
!3897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3850, file: !33, line: 341, size: 512, elements: !3898)
!3898 = !{!3899, !3908, !3914}
!3899 = !DIDerivedType(tag: DW_TAG_member, scope: !3897, file: !33, line: 342, baseType: !3900, size: 384)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3897, file: !33, line: 342, size: 384, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905, !3906, !3907}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3900, file: !33, line: 343, baseType: !144, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3900, file: !33, line: 344, baseType: !144, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3900, file: !33, line: 346, baseType: !127, size: 64, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3900, file: !33, line: 347, baseType: !127, size: 64, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3900, file: !33, line: 348, baseType: !127, size: 64, offset: 256)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3900, file: !33, line: 349, baseType: !127, size: 64, offset: 320)
!3908 = !DIDerivedType(tag: DW_TAG_member, scope: !3897, file: !33, line: 352, baseType: !3909, size: 256)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3897, file: !33, line: 352, size: 256, elements: !3910)
!3910 = !{!3911, !3912, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3909, file: !33, line: 353, baseType: !144, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3909, file: !33, line: 354, baseType: !144, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3909, file: !33, line: 356, baseType: !138, size: 128, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3897, file: !33, line: 359, baseType: !146, size: 512, align: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3839, file: !55, line: 409, baseType: !3916, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!292, !167, !1968}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3839, file: !55, line: 412, baseType: !3920, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!764, !167, !3849}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3839, file: !55, line: 414, baseType: !3924, size: 64, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !3927}
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !55, line: 310, flags: DIFlagFwdDecl)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3839, file: !55, line: 416, baseType: !3930, size: 64, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!292, !534, !167, !376, !7, !3252, !1342}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3839, file: !55, line: 419, baseType: !3934, size: 64, offset: 384)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!292, !534, !167, !376, !7, !7, !145, !127}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3839, file: !55, line: 424, baseType: !3938, size: 64, offset: 448)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!3941, !167, !3941}
!3941 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !118, line: 131, baseType: !121)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3839, file: !55, line: 425, baseType: !3943, size: 64, offset: 512)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !3849, !502, !502}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3839, file: !55, line: 426, baseType: !3947, size: 64, offset: 576)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!764, !3849, !117}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3839, file: !55, line: 427, baseType: !3951, size: 64, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{null, !3849}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3839, file: !55, line: 428, baseType: !902, size: 64, offset: 704)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3839, file: !55, line: 433, baseType: !3956, size: 64, offset: 768)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!292, !167, !3849, !3849, !83}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3839, file: !55, line: 435, baseType: !3960, size: 64, offset: 832)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!292, !3849}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3839, file: !55, line: 436, baseType: !3964, size: 64, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!764, !3849, !502, !502}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3839, file: !55, line: 438, baseType: !3968, size: 64, offset: 960)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !3849, !3971, !3971}
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3839, file: !55, line: 439, baseType: !3973, size: 64, offset: 1024)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!292, !167, !145}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3839, file: !55, line: 442, baseType: !3977, size: 64, offset: 1088)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!292, !3980, !534, !3982}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !55, line: 66, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3839, file: !55, line: 444, baseType: !1334, size: 64, offset: 1152)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3839, file: !55, line: 445, baseType: !3985, size: 64, offset: 1216)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!292, !905, !927}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !55, line: 486, baseType: !144, size: 64, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !168, file: !55, line: 487, baseType: !705, size: 320, offset: 960)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !168, file: !55, line: 488, baseType: !1415, size: 32, offset: 1280)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !168, file: !55, line: 489, baseType: !268, size: 32, offset: 1312)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !168, file: !55, line: 490, baseType: !138, size: 128, offset: 1344)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !168, file: !55, line: 491, baseType: !127, size: 64, offset: 1472)
!3994 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !33, line: 107, baseType: !3995, size: 64, offset: 192)
!3995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !33, line: 107, size: 64, elements: !3996)
!3996 = !{!3997, !3998}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3995, file: !33, line: 108, baseType: !144, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3995, file: !33, line: 109, baseType: !144, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !153, file: !33, line: 117, baseType: !144, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !33, line: 119, baseType: !4001, size: 320)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !33, line: 119, size: 320, elements: !4002)
!4002 = !{!4003, !4004, !4007, !4008, !4009}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4001, file: !33, line: 124, baseType: !144, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4001, file: !33, line: 125, baseType: !4005, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !33, line: 125, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4001, file: !33, line: 126, baseType: !144, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4001, file: !33, line: 127, baseType: !144, size: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, scope: !4001, file: !33, line: 128, baseType: !4010, size: 64, offset: 256)
!4010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4001, file: !33, line: 128, size: 64, elements: !4011)
!4011 = !{!4012, !4013}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4010, file: !33, line: 133, baseType: !144, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4010, file: !33, line: 138, baseType: !560, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !33, line: 141, baseType: !4015, size: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !33, line: 141, size: 64, elements: !4016)
!4016 = !{!4017}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4015, file: !33, line: 142, baseType: !144, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !33, line: 144, baseType: !4019, size: 128)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !33, line: 144, size: 128, elements: !4020)
!4020 = !{!4021, !4092}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4019, file: !33, line: 146, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !91, line: 126, size: 1216, elements: !4024)
!4024 = !{!4025, !4035, !4056, !4057, !4058, !4059, !4060, !4074, !4075, !4076}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4023, file: !91, line: 127, baseType: !4026, size: 384)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !91, line: 21, size: 384, elements: !4027)
!4027 = !{!4028, !4029, !4031, !4032, !4033, !4034}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4026, file: !91, line: 22, baseType: !144, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4026, file: !91, line: 23, baseType: !4030, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4026, file: !91, line: 24, baseType: !4030, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4026, file: !91, line: 25, baseType: !144, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4026, file: !91, line: 26, baseType: !144, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4026, file: !91, line: 27, baseType: !144, size: 64, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4023, file: !91, line: 128, baseType: !4036, size: 128, offset: 384)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4037, line: 105, size: 128, elements: !4038)
!4037 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4038 = !{!4039, !4040}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4036, file: !4037, line: 110, baseType: !144, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4036, file: !4037, line: 118, baseType: !4041, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4037, line: 95, size: 448, elements: !4043)
!4043 = !{!4044, !4045, !4051, !4052, !4053, !4054, !4055}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4042, file: !4037, line: 96, baseType: !560, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4042, file: !4037, line: 97, baseType: !4046, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4037, line: 60, baseType: !4048)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !4050}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4042, file: !4037, line: 98, baseType: !4046, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4042, file: !4037, line: 99, baseType: !764, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4042, file: !4037, line: 100, baseType: !764, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4042, file: !4037, line: 101, baseType: !547, size: 128, align: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4042, file: !4037, line: 102, baseType: !4050, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4023, file: !91, line: 129, baseType: !1580, size: 256, offset: 512)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4023, file: !91, line: 130, baseType: !90, size: 32, offset: 768)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4023, file: !91, line: 131, baseType: !7, size: 32, offset: 800)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4023, file: !91, line: 132, baseType: !144, size: 64, offset: 832)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4023, file: !91, line: 133, baseType: !4061, size: 64, offset: 896)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4063)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !91, line: 77, size: 192, elements: !4064)
!4064 = !{!4065, !4069, !4070}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4063, file: !91, line: 83, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !145}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4063, file: !91, line: 89, baseType: !1200, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4063, file: !91, line: 100, baseType: !4071, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!292, !4022, !144, !144, !292}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4023, file: !91, line: 134, baseType: !127, size: 64, offset: 960)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4023, file: !91, line: 135, baseType: !292, size: 32, offset: 1024)
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !4023, file: !91, line: 136, baseType: !4077, size: 128, offset: 1088)
!4077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4023, file: !91, line: 136, size: 128, elements: !4078)
!4078 = !{!4079, !4085}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4077, file: !91, line: 137, baseType: !4080, size: 128)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4081, line: 6, size: 128, elements: !4082)
!4081 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4080, file: !4081, line: 7, baseType: !121, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4080, file: !4081, line: 8, baseType: !121, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, scope: !4077, file: !91, line: 138, baseType: !4086)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4077, file: !91, line: 138, elements: !4087)
!4087 = !{!4088, !4090}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4086, file: !91, line: 138, baseType: !4089)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4086, file: !91, line: 138, elements: !1000)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4086, file: !91, line: 138, baseType: !4091)
!4091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4080, elements: !648)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4019, file: !33, line: 147, baseType: !127, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !150, file: !33, line: 161, baseType: !547, size: 128, align: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !33, line: 164, baseType: !4095, size: 32, offset: 384)
!4095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !33, line: 164, size: 32, elements: !4096)
!4096 = !{!4097, !4098}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4095, file: !33, line: 169, baseType: !288, size: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4095, file: !33, line: 177, baseType: !7, size: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !146, file: !33, line: 181, baseType: !288, size: 32, offset: 416)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !292)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_refct_sgt", file: !4104, line: 174, size: 320, elements: !4105)
!4104 = !DIFile(filename: "drivers/gpu/drm/i915/i915_scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2eedfb84692065de8ee4fe67ec224e49")
!4105 = !{!4106, !4107, !4124, !4125}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4103, file: !4104, line: 175, baseType: !1564, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !4103, file: !4104, line: 176, baseType: !4108, size: 128, offset: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !4109, line: 39, size: 128, elements: !4110)
!4109 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4110 = !{!4111, !4122, !4123}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4108, file: !4109, line: 40, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4109, line: 11, size: 256, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4120, !4121}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4113, file: !4109, line: 12, baseType: !144, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4113, file: !4109, line: 13, baseType: !7, size: 32, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4113, file: !4109, line: 14, baseType: !7, size: 32, offset: 96)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4113, file: !4109, line: 15, baseType: !4119, size: 64, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !118, line: 149, baseType: !121)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4113, file: !4109, line: 17, baseType: !7, size: 32, offset: 192)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4113, file: !4109, line: 20, baseType: !7, size: 32, offset: 224)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !4108, file: !4109, line: 41, baseType: !7, size: 32, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !4108, file: !4109, line: 42, baseType: !7, size: 32, offset: 96)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4103, file: !4104, line: 177, baseType: !502, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4103, file: !4104, line: 178, baseType: !4126, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4128)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_refct_sgt_ops", file: !4104, line: 158, size: 64, elements: !4129)
!4129 = !{!4130}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4128, file: !4104, line: 162, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !4134}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_ttm_buddy_resource", file: !4137, line: 31, size: 896, elements: !4138)
!4137 = !DIFile(filename: "drivers/gpu/drm/i915/i915_ttm_buddy_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "deb0d0c3054d2da4fe93b41734e83501")
!4138 = !{!4139, !4158, !4159, !4160, !4161}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4136, file: !4137, line: 32, baseType: !4140, size: 576)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource", file: !4141, line: 209, size: 576, elements: !4142)
!4141 = !DIFile(filename: "./include/drm/ttm/ttm_resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9381c1bbd30ebfc9159e3e67f7545347")
!4142 = !{!4143, !4144, !4145, !4146, !4147, !4154, !4157}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4140, file: !4141, line: 210, baseType: !144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4140, file: !4141, line: 211, baseType: !502, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !4140, file: !4141, line: 212, baseType: !729, size: 32, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !4140, file: !4141, line: 213, baseType: !729, size: 32, offset: 160)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4140, file: !4141, line: 214, baseType: !4148, size: 192, offset: 192)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_bus_placement", file: !4141, line: 189, size: 192, elements: !4149)
!4149 = !{!4150, !4151, !4152, !4153}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4148, file: !4141, line: 190, baseType: !127, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4148, file: !4141, line: 191, baseType: !126, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !4148, file: !4141, line: 192, baseType: !764, size: 8, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !4148, file: !4141, line: 193, baseType: !11, size: 32, offset: 160)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !4140, file: !4141, line: 215, baseType: !4155, size: 64, offset: 384)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_buffer_object", file: !4141, line: 45, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4140, file: !4141, line: 220, baseType: !138, size: 128, offset: 448)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4136, file: !4137, line: 33, baseType: !138, size: 128, offset: 576)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4136, file: !4137, line: 34, baseType: !144, size: 64, offset: 704)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "used_visible_size", scope: !4136, file: !4137, line: 35, baseType: !144, size: 64, offset: 768)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !4136, file: !4137, line: 36, baseType: !4162, size: 64, offset: 832)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_buddy", file: !130, line: 64, size: 384, elements: !4164)
!4164 = !{!4165, !4166, !4168, !4169, !4170, !4171, !4172}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !4163, file: !130, line: 66, baseType: !141, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "roots", scope: !4163, file: !130, line: 75, baseType: !4167, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "n_roots", scope: !4163, file: !130, line: 81, baseType: !7, size: 32, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "max_order", scope: !4163, file: !130, line: 82, baseType: !7, size: 32, offset: 160)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !4163, file: !130, line: 85, baseType: !121, size: 64, offset: 192)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4163, file: !130, line: 86, baseType: !121, size: 64, offset: 256)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !4163, file: !130, line: 87, baseType: !121, size: 64, offset: 320)
!4173 = !{!4174, !4179, !0, !4184}
!4174 = !DIGlobalVariableExpression(var: !4175, expr: !DIExpression())
!4175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !4176, isLocal: true, isDefinition: true)
!4176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 320, elements: !4177)
!4177 = !{!4178}
!4178 = !DISubrange(count: 40)
!4179 = !DIGlobalVariableExpression(var: !4180, expr: !DIExpression())
!4180 = distinct !DIGlobalVariable(scope: null, file: !4109, line: 115, type: !4181, isLocal: true, isDefinition: true)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 224, elements: !4182)
!4182 = !{!4183}
!4183 = !DISubrange(count: 28)
!4184 = !DIGlobalVariableExpression(var: !4185, expr: !DIExpression())
!4185 = distinct !DIGlobalVariable(scope: null, file: !99, line: 480, type: !4186, isLocal: true, isDefinition: true)
!4186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 168, elements: !4187)
!4187 = !{!4188}
!4188 = !DISubrange(count: 21)
!4189 = !{i32 7, !"Dwarf Version", i32 5}
!4190 = !{i32 2, !"Debug Info Version", i32 3}
!4191 = !{i32 1, !"wchar_size", i32 2}
!4192 = !{i32 8, !"cf-protection-branch", i32 1}
!4193 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4194 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4195 = !{i32 1, !"Code Model", i32 2}
!4196 = !{i32 1, !"override-stack-alignment", i32 8}
!4197 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4198 = distinct !DISubprogram(name: "i915_sg_trim", scope: !3, file: !3, line: 15, type: !4199, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4202)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!764, !4201}
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4202 = !{!4203, !4204, !4205, !4206, !4207}
!4203 = !DILocalVariable(name: "orig_st", arg: 1, scope: !4198, file: !3, line: 15, type: !4201)
!4204 = !DILocalVariable(name: "new_st", scope: !4198, file: !3, line: 17, type: !4108)
!4205 = !DILocalVariable(name: "sg", scope: !4198, file: !3, line: 18, type: !4112)
!4206 = !DILocalVariable(name: "new_sg", scope: !4198, file: !3, line: 18, type: !4112)
!4207 = !DILocalVariable(name: "i", scope: !4198, file: !3, line: 19, type: !7)
!4208 = !DILocation(line: 15, column: 36, scope: !4198)
!4209 = !DILocation(line: 17, column: 2, scope: !4198)
!4210 = !DILocation(line: 17, column: 18, scope: !4198)
!4211 = !DILocation(line: 18, column: 2, scope: !4198)
!4212 = !DILocation(line: 18, column: 22, scope: !4198)
!4213 = !DILocation(line: 18, column: 27, scope: !4198)
!4214 = !DILocation(line: 19, column: 2, scope: !4198)
!4215 = !DILocation(line: 19, column: 15, scope: !4198)
!4216 = !DILocation(line: 21, column: 6, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 21, column: 6)
!4218 = !DILocation(line: 21, column: 15, scope: !4217)
!4219 = !DILocation(line: 21, column: 24, scope: !4217)
!4220 = !DILocation(line: 21, column: 33, scope: !4217)
!4221 = !DILocation(line: 21, column: 21, scope: !4217)
!4222 = !DILocation(line: 21, column: 6, scope: !4198)
!4223 = !DILocation(line: 22, column: 3, scope: !4217)
!4224 = !DILocation(line: 24, column: 30, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 24, column: 6)
!4226 = !DILocation(line: 24, column: 39, scope: !4225)
!4227 = !DILocation(line: 24, column: 6, scope: !4225)
!4228 = !DILocation(line: 24, column: 6, scope: !4198)
!4229 = !DILocation(line: 25, column: 3, scope: !4225)
!4230 = !DILocation(line: 27, column: 18, scope: !4198)
!4231 = !DILocation(line: 27, column: 9, scope: !4198)
!4232 = !DILocation(line: 28, column: 2, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 28, column: 2)
!4234 = !DILocation(line: 28, column: 2, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 28, column: 2)
!4236 = !DILocation(line: 29, column: 15, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 28, column: 51)
!4238 = !DILocation(line: 29, column: 31, scope: !4237)
!4239 = !DILocation(line: 29, column: 23, scope: !4237)
!4240 = !DILocation(line: 29, column: 36, scope: !4237)
!4241 = !DILocation(line: 29, column: 40, scope: !4237)
!4242 = !DILocation(line: 29, column: 3, scope: !4237)
!4243 = !DILocation(line: 30, column: 28, scope: !4237)
!4244 = !DILocation(line: 30, column: 3, scope: !4237)
!4245 = !DILocation(line: 30, column: 26, scope: !4237)
!4246 = !DILocation(line: 31, column: 24, scope: !4237)
!4247 = !DILocation(line: 31, column: 3, scope: !4237)
!4248 = !DILocation(line: 31, column: 22, scope: !4237)
!4249 = !DILocation(line: 33, column: 20, scope: !4237)
!4250 = !DILocation(line: 33, column: 12, scope: !4237)
!4251 = !DILocation(line: 33, column: 10, scope: !4237)
!4252 = !DILocation(line: 34, column: 2, scope: !4237)
!4253 = distinct !{!4253, !4232, !4254, !4255, !4256}
!4254 = !DILocation(line: 34, column: 2, scope: !4233)
!4255 = !{!"llvm.loop.mustprogress"}
!4256 = !{!"llvm.loop.unroll.disable"}
!4257 = !DILocation(line: 37, column: 16, scope: !4198)
!4258 = !DILocation(line: 37, column: 2, scope: !4198)
!4259 = !DILocation(line: 39, column: 3, scope: !4198)
!4260 = !DILocation(line: 39, column: 13, scope: !4198)
!4261 = !DILocation(line: 40, column: 2, scope: !4198)
!4262 = !DILocation(line: 41, column: 1, scope: !4198)
!4263 = !DISubprogram(name: "sg_alloc_table", scope: !4109, file: !4109, line: 440, type: !4264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!292, !4201, !7, !117}
!4266 = distinct !DISubprogram(name: "sg_set_page", scope: !4109, file: !4109, line: 136, type: !4267, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{null, !4112, !145, !7, !7}
!4269 = !{!4270, !4271, !4272, !4273}
!4270 = !DILocalVariable(name: "sg", arg: 1, scope: !4266, file: !4109, line: 136, type: !4112)
!4271 = !DILocalVariable(name: "page", arg: 2, scope: !4266, file: !4109, line: 136, type: !145)
!4272 = !DILocalVariable(name: "len", arg: 3, scope: !4266, file: !4109, line: 137, type: !7)
!4273 = !DILocalVariable(name: "offset", arg: 4, scope: !4266, file: !4109, line: 137, type: !7)
!4274 = !DILocation(line: 136, column: 52, scope: !4266)
!4275 = !DILocation(line: 136, column: 69, scope: !4266)
!4276 = !DILocation(line: 137, column: 24, scope: !4266)
!4277 = !DILocation(line: 137, column: 42, scope: !4266)
!4278 = !DILocation(line: 139, column: 17, scope: !4266)
!4279 = !DILocation(line: 139, column: 21, scope: !4266)
!4280 = !DILocation(line: 139, column: 2, scope: !4266)
!4281 = !DILocation(line: 140, column: 15, scope: !4266)
!4282 = !DILocation(line: 140, column: 2, scope: !4266)
!4283 = !DILocation(line: 140, column: 6, scope: !4266)
!4284 = !DILocation(line: 140, column: 13, scope: !4266)
!4285 = !DILocation(line: 141, column: 15, scope: !4266)
!4286 = !DILocation(line: 141, column: 2, scope: !4266)
!4287 = !DILocation(line: 141, column: 6, scope: !4266)
!4288 = !DILocation(line: 141, column: 13, scope: !4266)
!4289 = !DILocation(line: 142, column: 1, scope: !4266)
!4290 = distinct !DISubprogram(name: "sg_page", scope: !4109, file: !4109, line: 168, type: !4291, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!145, !4112}
!4293 = !{!4294}
!4294 = !DILocalVariable(name: "sg", arg: 1, scope: !4290, file: !4109, line: 168, type: !4112)
!4295 = !DILocation(line: 168, column: 56, scope: !4290)
!4296 = !DILocation(line: 173, column: 26, scope: !4290)
!4297 = !DILocation(line: 173, column: 31, scope: !4290)
!4298 = !DILocation(line: 173, column: 41, scope: !4290)
!4299 = !DILocation(line: 173, column: 9, scope: !4290)
!4300 = !DILocation(line: 173, column: 2, scope: !4290)
!4301 = !DISubprogram(name: "sg_next", scope: !4109, file: !4109, line: 421, type: !4302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!4112, !4112}
!4304 = !DISubprogram(name: "sg_free_table", scope: !4109, file: !4109, line: 436, type: !4305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{null, !4201}
!4307 = distinct !DISubprogram(name: "i915_refct_sgt_init", scope: !3, file: !3, line: 61, type: !4308, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{null, !4102, !502}
!4310 = !{!4311, !4312}
!4311 = !DILocalVariable(name: "rsgt", arg: 1, scope: !4307, file: !3, line: 61, type: !4102)
!4312 = !DILocalVariable(name: "size", arg: 2, scope: !4307, file: !3, line: 61, type: !502)
!4313 = !DILocation(line: 61, column: 49, scope: !4307)
!4314 = !DILocation(line: 61, column: 62, scope: !4307)
!4315 = !DILocation(line: 63, column: 24, scope: !4307)
!4316 = !DILocation(line: 63, column: 30, scope: !4307)
!4317 = !DILocation(line: 63, column: 2, scope: !4307)
!4318 = !DILocation(line: 64, column: 1, scope: !4307)
!4319 = distinct !DISubprogram(name: "__i915_refct_sgt_init", scope: !4104, file: !4104, line: 210, type: !4320, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4322)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !4102, !502, !4126}
!4322 = !{!4323, !4324, !4325}
!4323 = !DILocalVariable(name: "rsgt", arg: 1, scope: !4319, file: !4104, line: 210, type: !4102)
!4324 = !DILocalVariable(name: "size", arg: 2, scope: !4319, file: !4104, line: 211, type: !502)
!4325 = !DILocalVariable(name: "ops", arg: 3, scope: !4319, file: !4104, line: 212, type: !4126)
!4326 = !DILocation(line: 210, column: 65, scope: !4319)
!4327 = !DILocation(line: 211, column: 14, scope: !4319)
!4328 = !DILocation(line: 212, column: 40, scope: !4319)
!4329 = !DILocation(line: 214, column: 13, scope: !4319)
!4330 = !DILocation(line: 214, column: 19, scope: !4319)
!4331 = !DILocation(line: 214, column: 2, scope: !4319)
!4332 = !DILocation(line: 215, column: 2, scope: !4319)
!4333 = !DILocation(line: 215, column: 8, scope: !4319)
!4334 = !DILocation(line: 215, column: 14, scope: !4319)
!4335 = !DILocation(line: 215, column: 18, scope: !4319)
!4336 = !DILocation(line: 216, column: 15, scope: !4319)
!4337 = !DILocation(line: 216, column: 2, scope: !4319)
!4338 = !DILocation(line: 216, column: 8, scope: !4319)
!4339 = !DILocation(line: 216, column: 13, scope: !4319)
!4340 = !DILocation(line: 217, column: 14, scope: !4319)
!4341 = !DILocation(line: 217, column: 2, scope: !4319)
!4342 = !DILocation(line: 217, column: 8, scope: !4319)
!4343 = !DILocation(line: 217, column: 12, scope: !4319)
!4344 = !DILocation(line: 218, column: 1, scope: !4319)
!4345 = distinct !DISubprogram(name: "i915_rsgt_from_mm_node", scope: !3, file: !3, line: 80, type: !4346, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4380)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!4102, !4348, !121, !243}
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4350)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !4351, line: 157, size: 1344, elements: !4352)
!4351 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!4352 = !{!4353, !4354, !4355, !4356, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4350, file: !4351, line: 159, baseType: !144, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4350, file: !4351, line: 161, baseType: !121, size: 64, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4350, file: !4351, line: 163, baseType: !121, size: 64, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !4350, file: !4351, line: 165, baseType: !4357, size: 64, offset: 192)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !4351, line: 190, size: 1920, elements: !4359)
!4359 = !{!4360, !4365, !4366, !4367, !4368, !4369, !4370}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !4358, file: !4351, line: 200, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{null, !4348, !144, !4364, !4364}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4358, file: !4351, line: 206, baseType: !138, size: 128, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !4358, file: !4351, line: 209, baseType: !4350, size: 1344, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !4358, file: !4351, line: 211, baseType: !2476, size: 128, offset: 1536)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !4358, file: !4351, line: 212, baseType: !2476, size: 128, offset: 1664)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !4358, file: !4351, line: 213, baseType: !1488, size: 64, offset: 1792)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !4358, file: !4351, line: 215, baseType: !144, size: 64, offset: 1856)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4350, file: !4351, line: 166, baseType: !138, size: 128, offset: 256)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !4350, file: !4351, line: 167, baseType: !138, size: 128, offset: 384)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4350, file: !4351, line: 168, baseType: !697, size: 192, align: 64, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !4350, file: !4351, line: 169, baseType: !697, size: 192, align: 64, offset: 704)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !4350, file: !4351, line: 170, baseType: !697, size: 192, align: 64, offset: 896)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !4350, file: !4351, line: 171, baseType: !121, size: 64, offset: 1088)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !4350, file: !4351, line: 172, baseType: !121, size: 64, offset: 1152)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !4350, file: !4351, line: 173, baseType: !121, size: 64, offset: 1216)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4350, file: !4351, line: 174, baseType: !144, size: 64, offset: 1280)
!4380 = !{!4381, !4382, !4383, !4384, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4396, !4398, !4400, !4402, !4403, !4406, !4409, !4411, !4412, !4414, !4416}
!4381 = !DILocalVariable(name: "node", arg: 1, scope: !4345, file: !3, line: 80, type: !4348)
!4382 = !DILocalVariable(name: "region_start", arg: 2, scope: !4345, file: !3, line: 81, type: !121)
!4383 = !DILocalVariable(name: "page_alignment", arg: 3, scope: !4345, file: !3, line: 82, type: !243)
!4384 = !DILocalVariable(name: "max_segment", scope: !4345, file: !3, line: 84, type: !4385)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!4386 = !DILocalVariable(name: "segment_pages", scope: !4345, file: !3, line: 85, type: !4385)
!4387 = !DILocalVariable(name: "block_size", scope: !4345, file: !3, line: 86, type: !121)
!4388 = !DILocalVariable(name: "offset", scope: !4345, file: !3, line: 86, type: !121)
!4389 = !DILocalVariable(name: "prev_end", scope: !4345, file: !3, line: 86, type: !121)
!4390 = !DILocalVariable(name: "rsgt", scope: !4345, file: !3, line: 87, type: !4102)
!4391 = !DILocalVariable(name: "st", scope: !4345, file: !3, line: 88, type: !4201)
!4392 = !DILocalVariable(name: "sg", scope: !4345, file: !3, line: 89, type: !4112)
!4393 = !DILocalVariable(name: "__ret_warn_on", scope: !4394, file: !3, line: 100, type: !292)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 100, column: 6)
!4395 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 100, column: 6)
!4396 = !DILocalVariable(name: "v", scope: !4397, file: !3, line: 100, type: !7)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 100, column: 6)
!4398 = !DILocalVariable(name: "_tmp", scope: !4399, file: !3, line: 100, type: !119)
!4399 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 100, column: 6)
!4400 = !DILocalVariable(name: "__base", scope: !4401, file: !3, line: 100, type: !729)
!4401 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 100, column: 6)
!4402 = !DILocalVariable(name: "__rem", scope: !4401, file: !3, line: 100, type: !729)
!4403 = !DILocalVariable(name: "__flags", scope: !4404, file: !3, line: 100, type: !292)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 100, column: 6)
!4405 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 100, column: 6)
!4406 = !DILocalVariable(name: "_tmp", scope: !4407, file: !3, line: 106, type: !119)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 106, column: 25)
!4408 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 106, column: 6)
!4409 = !DILocalVariable(name: "__base", scope: !4410, file: !3, line: 106, type: !729)
!4410 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 106, column: 25)
!4411 = !DILocalVariable(name: "__rem", scope: !4410, file: !3, line: 106, type: !729)
!4412 = !DILocalVariable(name: "len", scope: !4413, file: !3, line: 119, type: !121)
!4413 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 118, column: 21)
!4414 = !DILocalVariable(name: "__UNIQUE_ID___x302", scope: !4415, file: !3, line: 133, type: !121)
!4415 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 133, column: 9)
!4416 = !DILocalVariable(name: "__UNIQUE_ID___y303", scope: !4415, file: !3, line: 133, type: !121)
!4417 = !DILocation(line: 80, column: 73, scope: !4345)
!4418 = !DILocation(line: 81, column: 16, scope: !4345)
!4419 = !DILocation(line: 82, column: 16, scope: !4345)
!4420 = !DILocation(line: 84, column: 2, scope: !4345)
!4421 = !DILocation(line: 84, column: 12, scope: !4345)
!4422 = !DILocation(line: 84, column: 26, scope: !4345)
!4423 = !DILocation(line: 85, column: 2, scope: !4345)
!4424 = !DILocation(line: 85, column: 12, scope: !4345)
!4425 = !DILocation(line: 85, column: 28, scope: !4345)
!4426 = !DILocation(line: 85, column: 40, scope: !4345)
!4427 = !DILocation(line: 86, column: 2, scope: !4345)
!4428 = !DILocation(line: 86, column: 6, scope: !4345)
!4429 = !DILocation(line: 86, column: 18, scope: !4345)
!4430 = !DILocation(line: 86, column: 26, scope: !4345)
!4431 = !DILocation(line: 87, column: 2, scope: !4345)
!4432 = !DILocation(line: 87, column: 25, scope: !4345)
!4433 = !DILocation(line: 88, column: 2, scope: !4345)
!4434 = !DILocation(line: 88, column: 19, scope: !4345)
!4435 = !DILocation(line: 89, column: 2, scope: !4345)
!4436 = !DILocation(line: 89, column: 22, scope: !4345)
!4437 = !DILocation(line: 93, column: 9, scope: !4345)
!4438 = !DILocation(line: 93, column: 7, scope: !4345)
!4439 = !DILocation(line: 94, column: 7, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 94, column: 6)
!4441 = !DILocation(line: 94, column: 6, scope: !4345)
!4442 = !DILocation(line: 95, column: 10, scope: !4440)
!4443 = !DILocation(line: 95, column: 3, scope: !4440)
!4444 = !DILocation(line: 97, column: 22, scope: !4345)
!4445 = !DILocation(line: 97, column: 28, scope: !4345)
!4446 = !DILocation(line: 97, column: 34, scope: !4345)
!4447 = !DILocation(line: 97, column: 39, scope: !4345)
!4448 = !DILocation(line: 97, column: 2, scope: !4345)
!4449 = !DILocation(line: 98, column: 8, scope: !4345)
!4450 = !DILocation(line: 98, column: 14, scope: !4345)
!4451 = !DILocation(line: 98, column: 5, scope: !4345)
!4452 = !DILocation(line: 100, column: 6, scope: !4394)
!4453 = !DILocation(line: 100, column: 6, scope: !4397)
!4454 = !DILocation(line: 100, column: 6, scope: !4399)
!4455 = !DILocation(line: 100, column: 6, scope: !4401)
!4456 = !{i8 0, i8 2}
!4457 = !DILocation(line: 100, column: 6, scope: !4405)
!4458 = !DILocation(line: 100, column: 6, scope: !4404)
!4459 = !DILocation(line: 100, column: 6, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 100, column: 6)
!4461 = !DILocation(line: 100, column: 6, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 100, column: 6)
!4463 = !{i64 2155298417, i64 2155298446, i64 2155298492, i64 2155298550, i64 2155298604, i64 2155298658, i64 2155298713, i64 2155298744, i64 2155299052, i64 2155299058, i64 2155299105, i64 2155299128, i64 2155299154}
!4464 = !DILocation(line: 100, column: 6, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 100, column: 6)
!4466 = !DILocation(line: 100, column: 6, scope: !4395)
!4467 = !DILocation(line: 100, column: 6, scope: !4345)
!4468 = !DILocation(line: 102, column: 22, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 101, column: 24)
!4470 = !DILocation(line: 102, column: 3, scope: !4469)
!4471 = !DILocation(line: 103, column: 10, scope: !4469)
!4472 = !DILocation(line: 103, column: 3, scope: !4469)
!4473 = !DILocation(line: 106, column: 21, scope: !4408)
!4474 = !DILocation(line: 106, column: 25, scope: !4407)
!4475 = !DILocation(line: 106, column: 25, scope: !4410)
!4476 = !DILocation(line: 106, column: 25, scope: !4408)
!4477 = !DILocation(line: 106, column: 6, scope: !4408)
!4478 = !DILocation(line: 106, column: 6, scope: !4345)
!4479 = !DILocation(line: 108, column: 22, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 107, column: 20)
!4481 = !DILocation(line: 108, column: 3, scope: !4480)
!4482 = !DILocation(line: 109, column: 10, scope: !4480)
!4483 = !DILocation(line: 109, column: 3, scope: !4480)
!4484 = !DILocation(line: 112, column: 7, scope: !4345)
!4485 = !DILocation(line: 112, column: 11, scope: !4345)
!4486 = !DILocation(line: 112, column: 5, scope: !4345)
!4487 = !DILocation(line: 113, column: 2, scope: !4345)
!4488 = !DILocation(line: 113, column: 6, scope: !4345)
!4489 = !DILocation(line: 113, column: 12, scope: !4345)
!4490 = !DILocation(line: 114, column: 11, scope: !4345)
!4491 = !DILocation(line: 115, column: 15, scope: !4345)
!4492 = !DILocation(line: 115, column: 21, scope: !4345)
!4493 = !DILocation(line: 115, column: 26, scope: !4345)
!4494 = !DILocation(line: 115, column: 13, scope: !4345)
!4495 = !DILocation(line: 116, column: 11, scope: !4345)
!4496 = !DILocation(line: 116, column: 17, scope: !4345)
!4497 = !DILocation(line: 116, column: 23, scope: !4345)
!4498 = !DILocation(line: 116, column: 9, scope: !4345)
!4499 = !DILocation(line: 118, column: 2, scope: !4345)
!4500 = !DILocation(line: 118, column: 9, scope: !4345)
!4501 = !DILocation(line: 119, column: 3, scope: !4413)
!4502 = !DILocation(line: 119, column: 7, scope: !4413)
!4503 = !DILocation(line: 121, column: 7, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 121, column: 7)
!4505 = !DILocation(line: 121, column: 17, scope: !4504)
!4506 = !DILocation(line: 121, column: 14, scope: !4504)
!4507 = !DILocation(line: 121, column: 26, scope: !4504)
!4508 = !DILocation(line: 121, column: 29, scope: !4504)
!4509 = !DILocation(line: 121, column: 33, scope: !4504)
!4510 = !DILocation(line: 121, column: 43, scope: !4504)
!4511 = !DILocation(line: 121, column: 40, scope: !4504)
!4512 = !DILocation(line: 121, column: 7, scope: !4413)
!4513 = !DILocation(line: 122, column: 8, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 122, column: 8)
!4515 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 121, column: 56)
!4516 = !DILocation(line: 122, column: 12, scope: !4514)
!4517 = !DILocation(line: 122, column: 8, scope: !4515)
!4518 = !DILocation(line: 123, column: 20, scope: !4514)
!4519 = !DILocation(line: 123, column: 10, scope: !4514)
!4520 = !DILocation(line: 123, column: 8, scope: !4514)
!4521 = !DILocation(line: 123, column: 5, scope: !4514)
!4522 = !DILocation(line: 125, column: 25, scope: !4515)
!4523 = !DILocation(line: 125, column: 40, scope: !4515)
!4524 = !DILocation(line: 125, column: 38, scope: !4515)
!4525 = !DILocation(line: 125, column: 4, scope: !4515)
!4526 = !DILocation(line: 125, column: 23, scope: !4515)
!4527 = !DILocation(line: 128, column: 4, scope: !4515)
!4528 = !DILocation(line: 128, column: 19, scope: !4515)
!4529 = !DILocation(line: 129, column: 4, scope: !4515)
!4530 = !DILocation(line: 129, column: 8, scope: !4515)
!4531 = !DILocation(line: 129, column: 15, scope: !4515)
!4532 = !DILocation(line: 130, column: 4, scope: !4515)
!4533 = !DILocation(line: 130, column: 8, scope: !4515)
!4534 = !DILocation(line: 130, column: 13, scope: !4515)
!4535 = !DILocation(line: 131, column: 3, scope: !4515)
!4536 = !DILocation(line: 133, column: 9, scope: !4415)
!4537 = !DILocation(line: 133, column: 9, scope: !4413)
!4538 = !DILocation(line: 133, column: 7, scope: !4413)
!4539 = !DILocation(line: 134, column: 17, scope: !4413)
!4540 = !DILocation(line: 134, column: 3, scope: !4413)
!4541 = !DILocation(line: 134, column: 7, scope: !4413)
!4542 = !DILocation(line: 134, column: 14, scope: !4413)
!4543 = !DILocation(line: 135, column: 21, scope: !4413)
!4544 = !DILocation(line: 135, column: 3, scope: !4413)
!4545 = !DILocation(line: 135, column: 18, scope: !4413)
!4546 = !DILocation(line: 137, column: 13, scope: !4413)
!4547 = !DILocation(line: 137, column: 10, scope: !4413)
!4548 = !DILocation(line: 138, column: 17, scope: !4413)
!4549 = !DILocation(line: 138, column: 14, scope: !4413)
!4550 = !DILocation(line: 140, column: 14, scope: !4413)
!4551 = !DILocation(line: 140, column: 12, scope: !4413)
!4552 = !DILocation(line: 141, column: 2, scope: !4345)
!4553 = distinct !{!4553, !4499, !4552, !4255, !4256}
!4554 = !DILocation(line: 143, column: 14, scope: !4345)
!4555 = !DILocation(line: 143, column: 2, scope: !4345)
!4556 = !DILocation(line: 144, column: 15, scope: !4345)
!4557 = !DILocation(line: 144, column: 2, scope: !4345)
!4558 = !DILocation(line: 146, column: 9, scope: !4345)
!4559 = !DILocation(line: 146, column: 2, scope: !4345)
!4560 = !DILocation(line: 147, column: 1, scope: !4345)
!4561 = distinct !DISubprogram(name: "kmalloc", scope: !99, file: !99, line: 591, type: !4562, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4564)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!127, !502, !117}
!4564 = !{!4565, !4566, !4567}
!4565 = !DILocalVariable(name: "size", arg: 1, scope: !4561, file: !99, line: 591, type: !502)
!4566 = !DILocalVariable(name: "flags", arg: 2, scope: !4561, file: !99, line: 591, type: !117)
!4567 = !DILocalVariable(name: "index", scope: !4568, file: !99, line: 594, type: !7)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !99, line: 593, column: 42)
!4569 = distinct !DILexicalBlock(scope: !4561, file: !99, line: 593, column: 6)
!4570 = !DILocation(line: 591, column: 61, scope: !4561)
!4571 = !DILocation(line: 591, column: 73, scope: !4561)
!4572 = !DILocation(line: 593, column: 27, scope: !4569)
!4573 = !DILocation(line: 593, column: 6, scope: !4569)
!4574 = !DILocation(line: 593, column: 33, scope: !4569)
!4575 = !DILocation(line: 593, column: 36, scope: !4569)
!4576 = !DILocation(line: 593, column: 6, scope: !4561)
!4577 = !DILocation(line: 594, column: 3, scope: !4568)
!4578 = !DILocation(line: 594, column: 16, scope: !4568)
!4579 = !DILocation(line: 596, column: 7, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4568, file: !99, line: 596, column: 7)
!4581 = !DILocation(line: 596, column: 12, scope: !4580)
!4582 = !DILocation(line: 596, column: 7, scope: !4568)
!4583 = !DILocation(line: 597, column: 25, scope: !4580)
!4584 = !DILocation(line: 597, column: 31, scope: !4580)
!4585 = !DILocation(line: 597, column: 11, scope: !4580)
!4586 = !DILocation(line: 597, column: 4, scope: !4580)
!4587 = !DILocation(line: 599, column: 11, scope: !4568)
!4588 = !DILocation(line: 599, column: 9, scope: !4568)
!4589 = !DILocation(line: 601, column: 33, scope: !4568)
!4590 = !DILocation(line: 601, column: 40, scope: !4568)
!4591 = !DILocation(line: 601, column: 20, scope: !4568)
!4592 = !DILocation(line: 601, column: 5, scope: !4568)
!4593 = !DILocation(line: 601, column: 51, scope: !4568)
!4594 = !DILocation(line: 602, column: 5, scope: !4568)
!4595 = !DILocation(line: 602, column: 12, scope: !4568)
!4596 = !DILocation(line: 600, column: 10, scope: !4568)
!4597 = !DILocation(line: 600, column: 3, scope: !4568)
!4598 = !DILocation(line: 603, column: 2, scope: !4569)
!4599 = !DILocation(line: 604, column: 19, scope: !4561)
!4600 = !DILocation(line: 604, column: 25, scope: !4561)
!4601 = !DILocation(line: 604, column: 9, scope: !4561)
!4602 = !DILocation(line: 604, column: 2, scope: !4561)
!4603 = !DILocation(line: 605, column: 1, scope: !4561)
!4604 = distinct !DISubprogram(name: "ERR_PTR", scope: !4605, file: !4605, line: 39, type: !4606, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4608)
!4605 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!127, !492}
!4608 = !{!4609}
!4609 = !DILocalVariable(name: "error", arg: 1, scope: !4604, file: !4605, line: 39, type: !492)
!4610 = !DILocation(line: 39, column: 48, scope: !4604)
!4611 = !DILocation(line: 41, column: 18, scope: !4604)
!4612 = !DILocation(line: 41, column: 9, scope: !4604)
!4613 = !DILocation(line: 41, column: 2, scope: !4604)
!4614 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4615, file: !4615, line: 51, type: !4616, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4618)
!4615 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!764, !764}
!4618 = !{!4619}
!4619 = !DILocalVariable(name: "overflow", arg: 1, scope: !4614, file: !4615, line: 51, type: !764)
!4620 = !DILocation(line: 51, column: 60, scope: !4614)
!4621 = !DILocation(line: 53, column: 9, scope: !4614)
!4622 = !DILocation(line: 53, column: 2, scope: !4614)
!4623 = distinct !DISubprogram(name: "i915_refct_sgt_put", scope: !4104, file: !4104, line: 185, type: !4624, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4626)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{null, !4102}
!4626 = !{!4627}
!4627 = !DILocalVariable(name: "rsgt", arg: 1, scope: !4623, file: !4104, line: 185, type: !4102)
!4628 = !DILocation(line: 185, column: 62, scope: !4623)
!4629 = !DILocation(line: 187, column: 6, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4623, file: !4104, line: 187, column: 6)
!4631 = !DILocation(line: 187, column: 6, scope: !4623)
!4632 = !DILocation(line: 188, column: 13, scope: !4630)
!4633 = !DILocation(line: 188, column: 19, scope: !4630)
!4634 = !DILocation(line: 188, column: 25, scope: !4630)
!4635 = !DILocation(line: 188, column: 31, scope: !4630)
!4636 = !DILocation(line: 188, column: 36, scope: !4630)
!4637 = !DILocation(line: 188, column: 3, scope: !4630)
!4638 = !DILocation(line: 189, column: 1, scope: !4623)
!4639 = distinct !DISubprogram(name: "__sg_next", scope: !4104, file: !4104, line: 77, type: !4302, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4640)
!4640 = !{!4641}
!4641 = !DILocalVariable(name: "sg", arg: 1, scope: !4639, file: !4104, line: 77, type: !4112)
!4642 = !DILocation(line: 77, column: 65, scope: !4639)
!4643 = !DILocation(line: 79, column: 20, scope: !4639)
!4644 = !DILocation(line: 79, column: 9, scope: !4639)
!4645 = !DILocation(line: 79, column: 45, scope: !4639)
!4646 = !DILocation(line: 79, column: 33, scope: !4639)
!4647 = !DILocation(line: 79, column: 2, scope: !4639)
!4648 = distinct !DISubprogram(name: "sg_mark_end", scope: !4109, file: !4109, line: 253, type: !4649, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4651)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !4112}
!4651 = !{!4652}
!4652 = !DILocalVariable(name: "sg", arg: 1, scope: !4648, file: !4109, line: 253, type: !4112)
!4653 = !DILocation(line: 253, column: 52, scope: !4648)
!4654 = !DILocation(line: 258, column: 2, scope: !4648)
!4655 = !DILocation(line: 258, column: 6, scope: !4648)
!4656 = !DILocation(line: 258, column: 16, scope: !4648)
!4657 = !DILocation(line: 259, column: 2, scope: !4648)
!4658 = !DILocation(line: 259, column: 6, scope: !4648)
!4659 = !DILocation(line: 259, column: 16, scope: !4648)
!4660 = !DILocation(line: 260, column: 1, scope: !4648)
!4661 = distinct !DISubprogram(name: "i915_rsgt_from_buddy_resource", scope: !3, file: !3, line: 163, type: !4662, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4665)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!4102, !4664, !121, !243}
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4665 = !{!4666, !4667, !4668, !4669, !4670, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4683, !4685, !4688, !4691, !4694, !4695, !4697, !4698, !4700, !4702, !4703}
!4666 = !DILocalVariable(name: "res", arg: 1, scope: !4661, file: !3, line: 163, type: !4664)
!4667 = !DILocalVariable(name: "region_start", arg: 2, scope: !4661, file: !3, line: 164, type: !121)
!4668 = !DILocalVariable(name: "page_alignment", arg: 3, scope: !4661, file: !3, line: 165, type: !243)
!4669 = !DILocalVariable(name: "bman_res", scope: !4661, file: !3, line: 167, type: !4135)
!4670 = !DILocalVariable(name: "size", scope: !4661, file: !3, line: 168, type: !4671)
!4671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!4672 = !DILocalVariable(name: "max_segment", scope: !4661, file: !3, line: 169, type: !4385)
!4673 = !DILocalVariable(name: "mm", scope: !4661, file: !3, line: 170, type: !4162)
!4674 = !DILocalVariable(name: "blocks", scope: !4661, file: !3, line: 171, type: !141)
!4675 = !DILocalVariable(name: "block", scope: !4661, file: !3, line: 172, type: !128)
!4676 = !DILocalVariable(name: "rsgt", scope: !4661, file: !3, line: 173, type: !4102)
!4677 = !DILocalVariable(name: "sg", scope: !4661, file: !3, line: 174, type: !4112)
!4678 = !DILocalVariable(name: "st", scope: !4661, file: !3, line: 175, type: !4201)
!4679 = !DILocalVariable(name: "prev_end", scope: !4661, file: !3, line: 176, type: !125)
!4680 = !DILocalVariable(name: "__ret_warn_on", scope: !4681, file: !3, line: 188, type: !292)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 188, column: 6)
!4682 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 188, column: 6)
!4683 = !DILocalVariable(name: "v", scope: !4684, file: !3, line: 188, type: !7)
!4684 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 188, column: 6)
!4685 = !DILocalVariable(name: "__flags", scope: !4686, file: !3, line: 188, type: !292)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 188, column: 6)
!4687 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 188, column: 6)
!4688 = !DILocalVariable(name: "__mptr", scope: !4689, file: !3, line: 202, type: !127)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 202, column: 2)
!4690 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 202, column: 2)
!4691 = !DILocalVariable(name: "block_size", scope: !4692, file: !3, line: 203, type: !121)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 202, column: 43)
!4693 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 202, column: 2)
!4694 = !DILocalVariable(name: "offset", scope: !4692, file: !3, line: 203, type: !121)
!4695 = !DILocalVariable(name: "__UNIQUE_ID___x304", scope: !4696, file: !3, line: 205, type: !121)
!4696 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 205, column: 16)
!4697 = !DILocalVariable(name: "__UNIQUE_ID___y305", scope: !4696, file: !3, line: 205, type: !121)
!4698 = !DILocalVariable(name: "len", scope: !4699, file: !3, line: 209, type: !121)
!4699 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 208, column: 22)
!4700 = !DILocalVariable(name: "__UNIQUE_ID___x306", scope: !4701, file: !3, line: 223, type: !121)
!4701 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 223, column: 10)
!4702 = !DILocalVariable(name: "__UNIQUE_ID___y307", scope: !4701, file: !3, line: 223, type: !121)
!4703 = !DILocalVariable(name: "__mptr", scope: !4704, file: !3, line: 202, type: !127)
!4704 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 202, column: 2)
!4705 = !DILocation(line: 163, column: 75, scope: !4661)
!4706 = !DILocation(line: 164, column: 16, scope: !4661)
!4707 = !DILocation(line: 165, column: 16, scope: !4661)
!4708 = !DILocation(line: 167, column: 2, scope: !4661)
!4709 = !DILocation(line: 167, column: 34, scope: !4661)
!4710 = !DILocation(line: 167, column: 67, scope: !4661)
!4711 = !DILocation(line: 167, column: 45, scope: !4661)
!4712 = !DILocation(line: 168, column: 2, scope: !4661)
!4713 = !DILocation(line: 168, column: 12, scope: !4661)
!4714 = !DILocation(line: 168, column: 19, scope: !4661)
!4715 = !DILocation(line: 168, column: 24, scope: !4661)
!4716 = !DILocation(line: 169, column: 2, scope: !4661)
!4717 = !DILocation(line: 169, column: 12, scope: !4661)
!4718 = !DILocation(line: 169, column: 26, scope: !4661)
!4719 = !DILocation(line: 170, column: 2, scope: !4661)
!4720 = !DILocation(line: 170, column: 20, scope: !4661)
!4721 = !DILocation(line: 170, column: 25, scope: !4661)
!4722 = !DILocation(line: 170, column: 35, scope: !4661)
!4723 = !DILocation(line: 171, column: 2, scope: !4661)
!4724 = !DILocation(line: 171, column: 20, scope: !4661)
!4725 = !DILocation(line: 171, column: 30, scope: !4661)
!4726 = !DILocation(line: 171, column: 40, scope: !4661)
!4727 = !DILocation(line: 172, column: 2, scope: !4661)
!4728 = !DILocation(line: 172, column: 26, scope: !4661)
!4729 = !DILocation(line: 173, column: 2, scope: !4661)
!4730 = !DILocation(line: 173, column: 25, scope: !4661)
!4731 = !DILocation(line: 174, column: 2, scope: !4661)
!4732 = !DILocation(line: 174, column: 22, scope: !4661)
!4733 = !DILocation(line: 175, column: 2, scope: !4661)
!4734 = !DILocation(line: 175, column: 19, scope: !4661)
!4735 = !DILocation(line: 176, column: 2, scope: !4661)
!4736 = !DILocation(line: 176, column: 18, scope: !4661)
!4737 = !DILocation(line: 181, column: 9, scope: !4661)
!4738 = !DILocation(line: 181, column: 7, scope: !4661)
!4739 = !DILocation(line: 182, column: 7, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 182, column: 6)
!4741 = !DILocation(line: 182, column: 6, scope: !4661)
!4742 = !DILocation(line: 183, column: 10, scope: !4740)
!4743 = !DILocation(line: 183, column: 3, scope: !4740)
!4744 = !DILocation(line: 185, column: 22, scope: !4661)
!4745 = !DILocation(line: 185, column: 28, scope: !4661)
!4746 = !DILocation(line: 185, column: 2, scope: !4661)
!4747 = !DILocation(line: 186, column: 8, scope: !4661)
!4748 = !DILocation(line: 186, column: 14, scope: !4661)
!4749 = !DILocation(line: 186, column: 5, scope: !4661)
!4750 = !DILocation(line: 188, column: 6, scope: !4681)
!4751 = !DILocation(line: 188, column: 6, scope: !4684)
!4752 = !DILocation(line: 188, column: 6, scope: !4687)
!4753 = !DILocation(line: 188, column: 6, scope: !4686)
!4754 = !DILocation(line: 188, column: 6, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 188, column: 6)
!4756 = !DILocation(line: 188, column: 6, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 188, column: 6)
!4758 = !{i64 2155318823, i64 2155318852, i64 2155318898, i64 2155318956, i64 2155319010, i64 2155319064, i64 2155319119, i64 2155319150, i64 2155319458, i64 2155319464, i64 2155319511, i64 2155319534, i64 2155319560}
!4759 = !DILocation(line: 188, column: 6, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 188, column: 6)
!4761 = !DILocation(line: 188, column: 6, scope: !4682)
!4762 = !DILocation(line: 188, column: 6, scope: !4661)
!4763 = !DILocation(line: 189, column: 22, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 188, column: 64)
!4765 = !DILocation(line: 189, column: 3, scope: !4764)
!4766 = !DILocation(line: 190, column: 10, scope: !4764)
!4767 = !DILocation(line: 190, column: 3, scope: !4764)
!4768 = !DILocation(line: 193, column: 21, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 193, column: 6)
!4770 = !DILocation(line: 193, column: 25, scope: !4769)
!4771 = !DILocation(line: 193, column: 6, scope: !4769)
!4772 = !DILocation(line: 193, column: 6, scope: !4661)
!4773 = !DILocation(line: 194, column: 22, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 193, column: 57)
!4775 = !DILocation(line: 194, column: 3, scope: !4774)
!4776 = !DILocation(line: 195, column: 10, scope: !4774)
!4777 = !DILocation(line: 195, column: 3, scope: !4774)
!4778 = !DILocation(line: 198, column: 7, scope: !4661)
!4779 = !DILocation(line: 198, column: 11, scope: !4661)
!4780 = !DILocation(line: 198, column: 5, scope: !4661)
!4781 = !DILocation(line: 199, column: 2, scope: !4661)
!4782 = !DILocation(line: 199, column: 6, scope: !4661)
!4783 = !DILocation(line: 199, column: 12, scope: !4661)
!4784 = !DILocation(line: 200, column: 11, scope: !4661)
!4785 = !DILocation(line: 202, column: 2, scope: !4689)
!4786 = !DILocation(line: 202, column: 2, scope: !4690)
!4787 = !DILocation(line: 202, column: 2, scope: !4693)
!4788 = !DILocation(line: 203, column: 3, scope: !4692)
!4789 = !DILocation(line: 203, column: 7, scope: !4692)
!4790 = !DILocation(line: 203, column: 19, scope: !4692)
!4791 = !DILocation(line: 205, column: 16, scope: !4696)
!4792 = !DILocation(line: 205, column: 16, scope: !4692)
!4793 = !DILocation(line: 205, column: 14, scope: !4692)
!4794 = !DILocation(line: 206, column: 35, scope: !4692)
!4795 = !DILocation(line: 206, column: 12, scope: !4692)
!4796 = !DILocation(line: 206, column: 10, scope: !4692)
!4797 = !DILocation(line: 208, column: 3, scope: !4692)
!4798 = !DILocation(line: 208, column: 10, scope: !4692)
!4799 = !DILocation(line: 209, column: 4, scope: !4699)
!4800 = !DILocation(line: 209, column: 8, scope: !4699)
!4801 = !DILocation(line: 211, column: 8, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 211, column: 8)
!4803 = !DILocation(line: 211, column: 18, scope: !4802)
!4804 = !DILocation(line: 211, column: 15, scope: !4802)
!4805 = !DILocation(line: 211, column: 27, scope: !4802)
!4806 = !DILocation(line: 211, column: 30, scope: !4802)
!4807 = !DILocation(line: 211, column: 34, scope: !4802)
!4808 = !DILocation(line: 211, column: 44, scope: !4802)
!4809 = !DILocation(line: 211, column: 41, scope: !4802)
!4810 = !DILocation(line: 211, column: 8, scope: !4699)
!4811 = !DILocation(line: 212, column: 9, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 212, column: 9)
!4813 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 211, column: 57)
!4814 = !DILocation(line: 212, column: 13, scope: !4812)
!4815 = !DILocation(line: 212, column: 9, scope: !4813)
!4816 = !DILocation(line: 213, column: 21, scope: !4812)
!4817 = !DILocation(line: 213, column: 11, scope: !4812)
!4818 = !DILocation(line: 213, column: 9, scope: !4812)
!4819 = !DILocation(line: 213, column: 6, scope: !4812)
!4820 = !DILocation(line: 215, column: 26, scope: !4813)
!4821 = !DILocation(line: 215, column: 41, scope: !4813)
!4822 = !DILocation(line: 215, column: 39, scope: !4813)
!4823 = !DILocation(line: 215, column: 5, scope: !4813)
!4824 = !DILocation(line: 215, column: 24, scope: !4813)
!4825 = !DILocation(line: 218, column: 5, scope: !4813)
!4826 = !DILocation(line: 218, column: 20, scope: !4813)
!4827 = !DILocation(line: 219, column: 5, scope: !4813)
!4828 = !DILocation(line: 219, column: 9, scope: !4813)
!4829 = !DILocation(line: 219, column: 16, scope: !4813)
!4830 = !DILocation(line: 220, column: 5, scope: !4813)
!4831 = !DILocation(line: 220, column: 9, scope: !4813)
!4832 = !DILocation(line: 220, column: 14, scope: !4813)
!4833 = !DILocation(line: 221, column: 4, scope: !4813)
!4834 = !DILocation(line: 223, column: 10, scope: !4701)
!4835 = !DILocation(line: 223, column: 10, scope: !4699)
!4836 = !DILocation(line: 223, column: 8, scope: !4699)
!4837 = !DILocation(line: 224, column: 18, scope: !4699)
!4838 = !DILocation(line: 224, column: 4, scope: !4699)
!4839 = !DILocation(line: 224, column: 8, scope: !4699)
!4840 = !DILocation(line: 224, column: 15, scope: !4699)
!4841 = !DILocation(line: 225, column: 22, scope: !4699)
!4842 = !DILocation(line: 225, column: 4, scope: !4699)
!4843 = !DILocation(line: 225, column: 19, scope: !4699)
!4844 = !DILocation(line: 227, column: 14, scope: !4699)
!4845 = !DILocation(line: 227, column: 11, scope: !4699)
!4846 = !DILocation(line: 228, column: 18, scope: !4699)
!4847 = !DILocation(line: 228, column: 15, scope: !4699)
!4848 = !DILocation(line: 230, column: 15, scope: !4699)
!4849 = !DILocation(line: 230, column: 13, scope: !4699)
!4850 = !DILocation(line: 231, column: 3, scope: !4692)
!4851 = distinct !{!4851, !4797, !4850, !4255, !4256}
!4852 = !DILocation(line: 232, column: 2, scope: !4693)
!4853 = !DILocation(line: 232, column: 2, scope: !4692)
!4854 = !DILocation(line: 202, column: 2, scope: !4704)
!4855 = distinct !{!4855, !4786, !4856, !4255, !4256}
!4856 = !DILocation(line: 232, column: 2, scope: !4690)
!4857 = !DILocation(line: 234, column: 14, scope: !4661)
!4858 = !DILocation(line: 234, column: 2, scope: !4661)
!4859 = !DILocation(line: 235, column: 15, scope: !4661)
!4860 = !DILocation(line: 235, column: 2, scope: !4661)
!4861 = !DILocation(line: 237, column: 9, scope: !4661)
!4862 = !DILocation(line: 237, column: 2, scope: !4661)
!4863 = !DILocation(line: 238, column: 1, scope: !4661)
!4864 = distinct !DISubprogram(name: "to_ttm_buddy_resource", scope: !4137, file: !4137, line: 47, type: !4865, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4867)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!4135, !4664}
!4867 = !{!4868, !4869}
!4868 = !DILocalVariable(name: "res", arg: 1, scope: !4864, file: !4137, line: 47, type: !4664)
!4869 = !DILocalVariable(name: "__mptr", scope: !4870, file: !4137, line: 49, type: !127)
!4870 = distinct !DILexicalBlock(scope: !4864, file: !4137, line: 49, column: 9)
!4871 = !DILocation(line: 47, column: 44, scope: !4864)
!4872 = !DILocation(line: 49, column: 9, scope: !4870)
!4873 = !DILocation(line: 49, column: 9, scope: !4864)
!4874 = !DILocation(line: 49, column: 2, scope: !4864)
!4875 = distinct !DISubprogram(name: "drm_buddy_block_size", scope: !130, file: !130, line: 127, type: !4876, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4878)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!121, !4162, !128}
!4878 = !{!4879, !4880}
!4879 = !DILocalVariable(name: "mm", arg: 1, scope: !4875, file: !130, line: 127, type: !4162)
!4880 = !DILocalVariable(name: "block", arg: 2, scope: !4875, file: !130, line: 128, type: !128)
!4881 = !DILocation(line: 127, column: 40, scope: !4875)
!4882 = !DILocation(line: 128, column: 32, scope: !4875)
!4883 = !DILocation(line: 130, column: 9, scope: !4875)
!4884 = !DILocation(line: 130, column: 13, scope: !4875)
!4885 = !DILocation(line: 130, column: 49, scope: !4875)
!4886 = !DILocation(line: 130, column: 27, scope: !4875)
!4887 = !DILocation(line: 130, column: 24, scope: !4875)
!4888 = !DILocation(line: 130, column: 2, scope: !4875)
!4889 = distinct !DISubprogram(name: "drm_buddy_block_offset", scope: !130, file: !130, line: 91, type: !4890, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4892)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!121, !128}
!4892 = !{!4893}
!4893 = !DILocalVariable(name: "block", arg: 1, scope: !4889, file: !130, line: 91, type: !128)
!4894 = !DILocation(line: 91, column: 48, scope: !4889)
!4895 = !DILocation(line: 93, column: 9, scope: !4889)
!4896 = !DILocation(line: 93, column: 16, scope: !4889)
!4897 = !DILocation(line: 93, column: 23, scope: !4889)
!4898 = !DILocation(line: 93, column: 2, scope: !4889)
!4899 = distinct !DISubprogram(name: "sg_assign_page", scope: !4109, file: !4109, line: 107, type: !4900, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4902)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{null, !4112, !145}
!4902 = !{!4903, !4904, !4905}
!4903 = !DILocalVariable(name: "sg", arg: 1, scope: !4899, file: !4109, line: 107, type: !4112)
!4904 = !DILocalVariable(name: "page", arg: 2, scope: !4899, file: !4109, line: 107, type: !145)
!4905 = !DILocalVariable(name: "page_link", scope: !4899, file: !4109, line: 109, type: !144)
!4906 = !DILocation(line: 107, column: 55, scope: !4899)
!4907 = !DILocation(line: 107, column: 72, scope: !4899)
!4908 = !DILocation(line: 109, column: 2, scope: !4899)
!4909 = !DILocation(line: 109, column: 16, scope: !4899)
!4910 = !DILocation(line: 109, column: 28, scope: !4899)
!4911 = !DILocation(line: 109, column: 32, scope: !4899)
!4912 = !DILocation(line: 109, column: 42, scope: !4899)
!4913 = !DILocation(line: 115, column: 2, scope: !4899)
!4914 = !DILocation(line: 115, column: 2, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !4109, line: 115, column: 2)
!4916 = distinct !DILexicalBlock(scope: !4899, file: !4109, line: 115, column: 2)
!4917 = !DILocation(line: 115, column: 2, scope: !4916)
!4918 = !DILocation(line: 115, column: 2, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4915, file: !4109, line: 115, column: 2)
!4920 = !DILocation(line: 115, column: 2, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4919, file: !4109, line: 115, column: 2)
!4922 = !DILocation(line: 115, column: 2, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4919, file: !4109, line: 115, column: 2)
!4924 = !{i64 2154016292, i64 2154016321, i64 2154016367, i64 2154016425, i64 2154016479, i64 2154016533, i64 2154016588, i64 2154016619}
!4925 = !DILocation(line: 119, column: 18, scope: !4899)
!4926 = !DILocation(line: 119, column: 46, scope: !4899)
!4927 = !DILocation(line: 119, column: 30, scope: !4899)
!4928 = !DILocation(line: 119, column: 28, scope: !4899)
!4929 = !DILocation(line: 119, column: 2, scope: !4899)
!4930 = !DILocation(line: 119, column: 6, scope: !4899)
!4931 = !DILocation(line: 119, column: 16, scope: !4899)
!4932 = !DILocation(line: 120, column: 1, scope: !4899)
!4933 = distinct !DISubprogram(name: "kref_init", scope: !1565, file: !1565, line: 29, type: !4132, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4934)
!4934 = !{!4935}
!4935 = !DILocalVariable(name: "kref", arg: 1, scope: !4933, file: !1565, line: 29, type: !4134)
!4936 = !DILocation(line: 29, column: 43, scope: !4933)
!4937 = !DILocation(line: 31, column: 16, scope: !4933)
!4938 = !DILocation(line: 31, column: 22, scope: !4933)
!4939 = !DILocation(line: 31, column: 2, scope: !4933)
!4940 = !DILocation(line: 32, column: 1, scope: !4933)
!4941 = distinct !DISubprogram(name: "refcount_set", scope: !109, file: !109, line: 134, type: !4942, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4945)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{null, !4944, !292}
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!4945 = !{!4946, !4947}
!4946 = !DILocalVariable(name: "r", arg: 1, scope: !4941, file: !109, line: 134, type: !4944)
!4947 = !DILocalVariable(name: "n", arg: 2, scope: !4941, file: !109, line: 134, type: !292)
!4948 = !DILocation(line: 134, column: 45, scope: !4941)
!4949 = !DILocation(line: 134, column: 52, scope: !4941)
!4950 = !DILocation(line: 136, column: 14, scope: !4941)
!4951 = !DILocation(line: 136, column: 17, scope: !4941)
!4952 = !DILocation(line: 136, column: 23, scope: !4941)
!4953 = !DILocation(line: 136, column: 2, scope: !4941)
!4954 = !DILocation(line: 137, column: 1, scope: !4941)
!4955 = distinct !DISubprogram(name: "atomic_set", scope: !4956, file: !4956, line: 65, type: !4957, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4960)
!4956 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4957 = !DISubroutineType(types: !4958)
!4958 = !{null, !4959, !292}
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!4960 = !{!4961, !4962}
!4961 = !DILocalVariable(name: "v", arg: 1, scope: !4955, file: !4956, line: 65, type: !4959)
!4962 = !DILocalVariable(name: "i", arg: 2, scope: !4955, file: !4956, line: 65, type: !292)
!4963 = !DILocation(line: 65, column: 22, scope: !4955)
!4964 = !DILocation(line: 65, column: 29, scope: !4955)
!4965 = !DILocation(line: 67, column: 26, scope: !4955)
!4966 = !DILocation(line: 67, column: 2, scope: !4955)
!4967 = !DILocation(line: 68, column: 17, scope: !4955)
!4968 = !DILocation(line: 68, column: 20, scope: !4955)
!4969 = !DILocation(line: 68, column: 2, scope: !4955)
!4970 = !DILocation(line: 69, column: 1, scope: !4955)
!4971 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4972, file: !4972, line: 80, type: !4973, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4978)
!4972 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !4975, !502}
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4977)
!4977 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4978 = !{!4979, !4980}
!4979 = !DILocalVariable(name: "v", arg: 1, scope: !4971, file: !4972, line: 80, type: !4975)
!4980 = !DILocalVariable(name: "size", arg: 2, scope: !4971, file: !4972, line: 80, type: !502)
!4981 = !DILocation(line: 80, column: 74, scope: !4971)
!4982 = !DILocation(line: 80, column: 84, scope: !4971)
!4983 = !DILocation(line: 82, column: 20, scope: !4971)
!4984 = !DILocation(line: 82, column: 23, scope: !4971)
!4985 = !DILocation(line: 82, column: 2, scope: !4971)
!4986 = !DILocation(line: 83, column: 2, scope: !4971)
!4987 = !DILocation(line: 84, column: 1, scope: !4971)
!4988 = distinct !DISubprogram(name: "raw_atomic_set", scope: !4989, file: !4989, line: 488, type: !4957, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4990)
!4989 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4990 = !{!4991, !4992}
!4991 = !DILocalVariable(name: "v", arg: 1, scope: !4988, file: !4989, line: 488, type: !4959)
!4992 = !DILocalVariable(name: "i", arg: 2, scope: !4988, file: !4989, line: 488, type: !292)
!4993 = !DILocation(line: 488, column: 26, scope: !4988)
!4994 = !DILocation(line: 488, column: 33, scope: !4988)
!4995 = !DILocation(line: 490, column: 18, scope: !4988)
!4996 = !DILocation(line: 490, column: 21, scope: !4988)
!4997 = !DILocation(line: 490, column: 2, scope: !4988)
!4998 = !DILocation(line: 491, column: 1, scope: !4988)
!4999 = distinct !DISubprogram(name: "kasan_check_write", scope: !5000, file: !5000, line: 44, type: !5001, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5003)
!5000 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!764, !4975, !7}
!5003 = !{!5004, !5005}
!5004 = !DILocalVariable(name: "p", arg: 1, scope: !4999, file: !5000, line: 44, type: !4975)
!5005 = !DILocalVariable(name: "size", arg: 2, scope: !4999, file: !5000, line: 44, type: !7)
!5006 = !DILocation(line: 44, column: 59, scope: !4999)
!5007 = !DILocation(line: 44, column: 75, scope: !4999)
!5008 = !DILocation(line: 46, column: 2, scope: !4999)
!5009 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5010, file: !5010, line: 229, type: !5011, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5013)
!5010 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5011 = !DISubroutineType(types: !5012)
!5012 = !{null, !4975, !502, !292}
!5013 = !{!5014, !5015, !5016}
!5014 = !DILocalVariable(name: "ptr", arg: 1, scope: !5009, file: !5010, line: 229, type: !4975)
!5015 = !DILocalVariable(name: "size", arg: 2, scope: !5009, file: !5010, line: 229, type: !502)
!5016 = !DILocalVariable(name: "type", arg: 3, scope: !5009, file: !5010, line: 230, type: !292)
!5017 = !DILocation(line: 229, column: 60, scope: !5009)
!5018 = !DILocation(line: 229, column: 72, scope: !5009)
!5019 = !DILocation(line: 230, column: 15, scope: !5009)
!5020 = !DILocation(line: 230, column: 23, scope: !5009)
!5021 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5022, file: !5022, line: 26, type: !4957, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5023)
!5022 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5023 = !{!5024, !5025}
!5024 = !DILocalVariable(name: "v", arg: 1, scope: !5021, file: !5022, line: 26, type: !4959)
!5025 = !DILocalVariable(name: "i", arg: 2, scope: !5021, file: !5022, line: 26, type: !292)
!5026 = !DILocation(line: 26, column: 55, scope: !5021)
!5027 = !DILocation(line: 26, column: 62, scope: !5021)
!5028 = !DILocation(line: 28, column: 2, scope: !5021)
!5029 = !DILocation(line: 28, column: 2, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5021, file: !5022, line: 28, column: 2)
!5031 = !DILocation(line: 29, column: 1, scope: !5021)
!5032 = distinct !DISubprogram(name: "i915_refct_sgt_release", scope: !3, file: !3, line: 43, type: !4132, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5033)
!5033 = !{!5034, !5035, !5036}
!5034 = !DILocalVariable(name: "ref", arg: 1, scope: !5032, file: !3, line: 43, type: !4134)
!5035 = !DILocalVariable(name: "rsgt", scope: !5032, file: !3, line: 45, type: !4102)
!5036 = !DILocalVariable(name: "__mptr", scope: !5037, file: !3, line: 46, type: !127)
!5037 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 46, column: 3)
!5038 = !DILocation(line: 43, column: 49, scope: !5032)
!5039 = !DILocation(line: 45, column: 2, scope: !5032)
!5040 = !DILocation(line: 45, column: 25, scope: !5032)
!5041 = !DILocation(line: 46, column: 3, scope: !5037)
!5042 = !DILocation(line: 46, column: 3, scope: !5032)
!5043 = !DILocation(line: 48, column: 17, scope: !5032)
!5044 = !DILocation(line: 48, column: 23, scope: !5032)
!5045 = !DILocation(line: 48, column: 2, scope: !5032)
!5046 = !DILocation(line: 49, column: 8, scope: !5032)
!5047 = !DILocation(line: 49, column: 2, scope: !5032)
!5048 = !DILocation(line: 50, column: 1, scope: !5032)
!5049 = !DISubprogram(name: "kfree", scope: !99, file: !99, line: 227, type: !5050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{null, !1095}
!5052 = !DISubprogram(name: "kmalloc_large", scope: !99, file: !99, line: 531, type: !4562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5053 = distinct !DISubprogram(name: "__kmalloc_index", scope: !99, file: !99, line: 444, type: !5054, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5056)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!7, !502, !764}
!5056 = !{!5057, !5058}
!5057 = !DILocalVariable(name: "size", arg: 1, scope: !5053, file: !99, line: 444, type: !502)
!5058 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5053, file: !99, line: 445, type: !764)
!5059 = !DILocation(line: 444, column: 60, scope: !5053)
!5060 = !DILocation(line: 445, column: 16, scope: !5053)
!5061 = !DILocation(line: 447, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 447, column: 6)
!5063 = !DILocation(line: 447, column: 6, scope: !5053)
!5064 = !DILocation(line: 448, column: 3, scope: !5062)
!5065 = !DILocation(line: 450, column: 6, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 450, column: 6)
!5067 = !DILocation(line: 450, column: 11, scope: !5066)
!5068 = !DILocation(line: 450, column: 6, scope: !5053)
!5069 = !DILocation(line: 451, column: 3, scope: !5066)
!5070 = !DILocation(line: 453, column: 32, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 453, column: 6)
!5072 = !DILocation(line: 453, column: 37, scope: !5071)
!5073 = !DILocation(line: 453, column: 42, scope: !5071)
!5074 = !DILocation(line: 453, column: 45, scope: !5071)
!5075 = !DILocation(line: 453, column: 50, scope: !5071)
!5076 = !DILocation(line: 453, column: 6, scope: !5053)
!5077 = !DILocation(line: 454, column: 3, scope: !5071)
!5078 = !DILocation(line: 455, column: 32, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 455, column: 6)
!5080 = !DILocation(line: 455, column: 37, scope: !5079)
!5081 = !DILocation(line: 455, column: 43, scope: !5079)
!5082 = !DILocation(line: 455, column: 46, scope: !5079)
!5083 = !DILocation(line: 455, column: 51, scope: !5079)
!5084 = !DILocation(line: 455, column: 6, scope: !5053)
!5085 = !DILocation(line: 456, column: 3, scope: !5079)
!5086 = !DILocation(line: 457, column: 6, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 457, column: 6)
!5088 = !DILocation(line: 457, column: 11, scope: !5087)
!5089 = !DILocation(line: 457, column: 6, scope: !5053)
!5090 = !DILocation(line: 457, column: 26, scope: !5087)
!5091 = !DILocation(line: 458, column: 6, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 458, column: 6)
!5093 = !DILocation(line: 458, column: 11, scope: !5092)
!5094 = !DILocation(line: 458, column: 6, scope: !5053)
!5095 = !DILocation(line: 458, column: 26, scope: !5092)
!5096 = !DILocation(line: 459, column: 6, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 459, column: 6)
!5098 = !DILocation(line: 459, column: 11, scope: !5097)
!5099 = !DILocation(line: 459, column: 6, scope: !5053)
!5100 = !DILocation(line: 459, column: 26, scope: !5097)
!5101 = !DILocation(line: 460, column: 6, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 460, column: 6)
!5103 = !DILocation(line: 460, column: 11, scope: !5102)
!5104 = !DILocation(line: 460, column: 6, scope: !5053)
!5105 = !DILocation(line: 460, column: 26, scope: !5102)
!5106 = !DILocation(line: 461, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 461, column: 6)
!5108 = !DILocation(line: 461, column: 11, scope: !5107)
!5109 = !DILocation(line: 461, column: 6, scope: !5053)
!5110 = !DILocation(line: 461, column: 26, scope: !5107)
!5111 = !DILocation(line: 462, column: 6, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 462, column: 6)
!5113 = !DILocation(line: 462, column: 11, scope: !5112)
!5114 = !DILocation(line: 462, column: 6, scope: !5053)
!5115 = !DILocation(line: 462, column: 26, scope: !5112)
!5116 = !DILocation(line: 463, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 463, column: 6)
!5118 = !DILocation(line: 463, column: 11, scope: !5117)
!5119 = !DILocation(line: 463, column: 6, scope: !5053)
!5120 = !DILocation(line: 463, column: 26, scope: !5117)
!5121 = !DILocation(line: 464, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 464, column: 6)
!5123 = !DILocation(line: 464, column: 11, scope: !5122)
!5124 = !DILocation(line: 464, column: 6, scope: !5053)
!5125 = !DILocation(line: 464, column: 26, scope: !5122)
!5126 = !DILocation(line: 465, column: 6, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 465, column: 6)
!5128 = !DILocation(line: 465, column: 11, scope: !5127)
!5129 = !DILocation(line: 465, column: 6, scope: !5053)
!5130 = !DILocation(line: 465, column: 26, scope: !5127)
!5131 = !DILocation(line: 466, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 466, column: 6)
!5133 = !DILocation(line: 466, column: 11, scope: !5132)
!5134 = !DILocation(line: 466, column: 6, scope: !5053)
!5135 = !DILocation(line: 466, column: 26, scope: !5132)
!5136 = !DILocation(line: 467, column: 6, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 467, column: 6)
!5138 = !DILocation(line: 467, column: 11, scope: !5137)
!5139 = !DILocation(line: 467, column: 6, scope: !5053)
!5140 = !DILocation(line: 467, column: 26, scope: !5137)
!5141 = !DILocation(line: 468, column: 6, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 468, column: 6)
!5143 = !DILocation(line: 468, column: 11, scope: !5142)
!5144 = !DILocation(line: 468, column: 6, scope: !5053)
!5145 = !DILocation(line: 468, column: 26, scope: !5142)
!5146 = !DILocation(line: 469, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 469, column: 6)
!5148 = !DILocation(line: 469, column: 11, scope: !5147)
!5149 = !DILocation(line: 469, column: 6, scope: !5053)
!5150 = !DILocation(line: 469, column: 26, scope: !5147)
!5151 = !DILocation(line: 470, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 470, column: 6)
!5153 = !DILocation(line: 470, column: 11, scope: !5152)
!5154 = !DILocation(line: 470, column: 6, scope: !5053)
!5155 = !DILocation(line: 470, column: 26, scope: !5152)
!5156 = !DILocation(line: 471, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 471, column: 6)
!5158 = !DILocation(line: 471, column: 11, scope: !5157)
!5159 = !DILocation(line: 471, column: 6, scope: !5053)
!5160 = !DILocation(line: 471, column: 26, scope: !5157)
!5161 = !DILocation(line: 472, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 472, column: 6)
!5163 = !DILocation(line: 472, column: 11, scope: !5162)
!5164 = !DILocation(line: 472, column: 6, scope: !5053)
!5165 = !DILocation(line: 472, column: 26, scope: !5162)
!5166 = !DILocation(line: 473, column: 6, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 473, column: 6)
!5168 = !DILocation(line: 473, column: 11, scope: !5167)
!5169 = !DILocation(line: 473, column: 6, scope: !5053)
!5170 = !DILocation(line: 473, column: 26, scope: !5167)
!5171 = !DILocation(line: 474, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 474, column: 6)
!5173 = !DILocation(line: 474, column: 11, scope: !5172)
!5174 = !DILocation(line: 474, column: 6, scope: !5053)
!5175 = !DILocation(line: 474, column: 27, scope: !5172)
!5176 = !DILocation(line: 475, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 475, column: 6)
!5178 = !DILocation(line: 475, column: 11, scope: !5177)
!5179 = !DILocation(line: 475, column: 6, scope: !5053)
!5180 = !DILocation(line: 475, column: 32, scope: !5177)
!5181 = !DILocation(line: 477, column: 50, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5053, file: !99, line: 477, column: 6)
!5183 = !DILocation(line: 477, column: 6, scope: !5053)
!5184 = !DILocation(line: 478, column: 3, scope: !5182)
!5185 = !DILocation(line: 478, column: 3, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !99, line: 478, column: 3)
!5187 = distinct !DILexicalBlock(scope: !5182, file: !99, line: 478, column: 3)
!5188 = !{i32 -2142302270}
!5189 = !DILocation(line: 478, column: 3, scope: !5187)
!5190 = !DILocation(line: 480, column: 3, scope: !5182)
!5191 = !DILocation(line: 480, column: 3, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5182, file: !99, line: 480, column: 3)
!5193 = !DILocation(line: 480, column: 3, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5192, file: !99, line: 480, column: 3)
!5195 = !DILocation(line: 480, column: 3, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5192, file: !99, line: 480, column: 3)
!5197 = !{i64 2152665229, i64 2152665258, i64 2152665304, i64 2152665362, i64 2152665416, i64 2152665470, i64 2152665525, i64 2152665556}
!5198 = !DILocation(line: 483, column: 2, scope: !5053)
!5199 = !DILocation(line: 484, column: 1, scope: !5053)
!5200 = !DISubprogram(name: "kmalloc_trace", scope: !99, file: !99, line: 525, type: !5201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!127, !5203, !117, !502}
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5205, line: 11, flags: DIFlagFwdDecl)
!5205 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5206 = distinct !DISubprogram(name: "kmalloc_type", scope: !99, file: !99, line: 401, type: !5207, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5209)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!98, !117, !144}
!5209 = !{!5210, !5211}
!5210 = !DILocalVariable(name: "flags", arg: 1, scope: !5206, file: !99, line: 401, type: !117)
!5211 = !DILocalVariable(name: "caller", arg: 2, scope: !5206, file: !99, line: 401, type: !144)
!5212 = !DILocation(line: 401, column: 67, scope: !5206)
!5213 = !DILocation(line: 401, column: 88, scope: !5206)
!5214 = !DILocation(line: 407, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5206, file: !99, line: 407, column: 6)
!5216 = !DILocation(line: 407, column: 6, scope: !5206)
!5217 = !DILocation(line: 413, column: 3, scope: !5215)
!5218 = !DILocation(line: 423, column: 38, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5206, file: !99, line: 423, column: 6)
!5220 = !DILocation(line: 423, column: 44, scope: !5219)
!5221 = !DILocation(line: 423, column: 6, scope: !5206)
!5222 = !DILocation(line: 424, column: 3, scope: !5219)
!5223 = !DILocation(line: 426, column: 3, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5206, file: !99, line: 425, column: 6)
!5225 = !DILocation(line: 429, column: 1, scope: !5206)
!5226 = !DISubprogram(name: "__kmalloc", scope: !99, file: !99, line: 488, type: !4562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5227 = !DISubprogram(name: "__compiletime_assert_206", scope: !99, file: !99, line: 478, type: !1931, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5228 = distinct !DISubprogram(name: "kref_put", scope: !1565, file: !1565, line: 62, type: !5229, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5231)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!292, !4134, !4131}
!5231 = !{!5232, !5233}
!5232 = !DILocalVariable(name: "kref", arg: 1, scope: !5228, file: !1565, line: 62, type: !4134)
!5233 = !DILocalVariable(name: "release", arg: 2, scope: !5228, file: !1565, line: 62, type: !4131)
!5234 = !DILocation(line: 62, column: 41, scope: !5228)
!5235 = !DILocation(line: 62, column: 54, scope: !5228)
!5236 = !DILocation(line: 64, column: 29, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5228, file: !1565, line: 64, column: 6)
!5238 = !DILocation(line: 64, column: 35, scope: !5237)
!5239 = !DILocation(line: 64, column: 6, scope: !5237)
!5240 = !DILocation(line: 64, column: 6, scope: !5228)
!5241 = !DILocation(line: 65, column: 3, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5237, file: !1565, line: 64, column: 46)
!5243 = !DILocation(line: 65, column: 11, scope: !5242)
!5244 = !DILocation(line: 66, column: 3, scope: !5242)
!5245 = !DILocation(line: 68, column: 2, scope: !5228)
!5246 = !DILocation(line: 69, column: 1, scope: !5228)
!5247 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !109, file: !109, line: 331, type: !5248, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5250)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!764, !4944}
!5250 = !{!5251}
!5251 = !DILocalVariable(name: "r", arg: 1, scope: !5247, file: !109, line: 331, type: !4944)
!5252 = !DILocation(line: 331, column: 67, scope: !5247)
!5253 = !DILocation(line: 333, column: 33, scope: !5247)
!5254 = !DILocation(line: 333, column: 9, scope: !5247)
!5255 = !DILocation(line: 333, column: 2, scope: !5247)
!5256 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !109, file: !109, line: 313, type: !5257, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!764, !4944, !1726}
!5259 = !{!5260, !5261}
!5260 = !DILocalVariable(name: "r", arg: 1, scope: !5256, file: !109, line: 313, type: !4944)
!5261 = !DILocalVariable(name: "oldp", arg: 2, scope: !5256, file: !109, line: 313, type: !1726)
!5262 = !DILocation(line: 313, column: 69, scope: !5256)
!5263 = !DILocation(line: 313, column: 77, scope: !5256)
!5264 = !DILocation(line: 315, column: 36, scope: !5256)
!5265 = !DILocation(line: 315, column: 39, scope: !5256)
!5266 = !DILocation(line: 315, column: 9, scope: !5256)
!5267 = !DILocation(line: 315, column: 2, scope: !5256)
!5268 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !109, file: !109, line: 270, type: !5269, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!764, !292, !4944, !1726}
!5271 = !{!5272, !5273, !5274, !5275}
!5272 = !DILocalVariable(name: "i", arg: 1, scope: !5268, file: !109, line: 270, type: !292)
!5273 = !DILocalVariable(name: "r", arg: 2, scope: !5268, file: !109, line: 270, type: !4944)
!5274 = !DILocalVariable(name: "oldp", arg: 3, scope: !5268, file: !109, line: 270, type: !1726)
!5275 = !DILocalVariable(name: "old", scope: !5268, file: !109, line: 272, type: !292)
!5276 = !DILocation(line: 270, column: 61, scope: !5268)
!5277 = !DILocation(line: 270, column: 76, scope: !5268)
!5278 = !DILocation(line: 270, column: 84, scope: !5268)
!5279 = !DILocation(line: 272, column: 2, scope: !5268)
!5280 = !DILocation(line: 272, column: 6, scope: !5268)
!5281 = !DILocation(line: 272, column: 37, scope: !5268)
!5282 = !DILocation(line: 272, column: 41, scope: !5268)
!5283 = !DILocation(line: 272, column: 44, scope: !5268)
!5284 = !DILocation(line: 272, column: 12, scope: !5268)
!5285 = !DILocation(line: 274, column: 6, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5268, file: !109, line: 274, column: 6)
!5287 = !DILocation(line: 274, column: 6, scope: !5268)
!5288 = !DILocation(line: 275, column: 11, scope: !5286)
!5289 = !DILocation(line: 275, column: 4, scope: !5286)
!5290 = !DILocation(line: 275, column: 9, scope: !5286)
!5291 = !DILocation(line: 275, column: 3, scope: !5286)
!5292 = !DILocation(line: 277, column: 6, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5268, file: !109, line: 277, column: 6)
!5294 = !DILocation(line: 277, column: 13, scope: !5293)
!5295 = !DILocation(line: 277, column: 10, scope: !5293)
!5296 = !DILocation(line: 277, column: 6, scope: !5268)
!5297 = !DILocation(line: 278, column: 3, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5293, file: !109, line: 277, column: 16)
!5299 = !DILocation(line: 278, column: 3, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5298, file: !109, line: 278, column: 3)
!5301 = !DILocation(line: 278, column: 3, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5300, file: !109, line: 278, column: 3)
!5303 = !DILocation(line: 278, column: 3, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5300, file: !109, line: 278, column: 3)
!5305 = !DILocation(line: 278, column: 3, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5304, file: !109, line: 278, column: 3)
!5307 = !{i64 2150354782}
!5308 = !DILocation(line: 279, column: 3, scope: !5298)
!5309 = !DILocation(line: 282, column: 6, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5268, file: !109, line: 282, column: 6)
!5311 = !DILocation(line: 282, column: 6, scope: !5268)
!5312 = !DILocation(line: 283, column: 26, scope: !5310)
!5313 = !DILocation(line: 283, column: 3, scope: !5310)
!5314 = !DILocation(line: 285, column: 2, scope: !5268)
!5315 = !DILocation(line: 286, column: 1, scope: !5268)
!5316 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4956, file: !4956, line: 397, type: !5317, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5319)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!292, !292, !4959}
!5319 = !{!5320, !5321}
!5320 = !DILocalVariable(name: "i", arg: 1, scope: !5316, file: !4956, line: 397, type: !292)
!5321 = !DILocalVariable(name: "v", arg: 2, scope: !5316, file: !4956, line: 397, type: !4959)
!5322 = !DILocation(line: 397, column: 30, scope: !5316)
!5323 = !DILocation(line: 397, column: 43, scope: !5316)
!5324 = !DILocation(line: 399, column: 2, scope: !5316)
!5325 = !DILocation(line: 399, column: 2, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5316, file: !4956, line: 399, column: 2)
!5327 = !DILocation(line: 400, column: 31, scope: !5316)
!5328 = !DILocation(line: 400, column: 2, scope: !5316)
!5329 = !DILocation(line: 401, column: 38, scope: !5316)
!5330 = !DILocation(line: 401, column: 41, scope: !5316)
!5331 = !DILocation(line: 401, column: 9, scope: !5316)
!5332 = !DILocation(line: 401, column: 2, scope: !5316)
!5333 = !DISubprogram(name: "refcount_warn_saturate", scope: !109, file: !109, line: 127, type: !5334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{null, !4944, !108}
!5336 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4972, file: !4972, line: 94, type: !4973, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5337)
!5337 = !{!5338, !5339}
!5338 = !DILocalVariable(name: "v", arg: 1, scope: !5336, file: !4972, line: 94, type: !4975)
!5339 = !DILocalVariable(name: "size", arg: 2, scope: !5336, file: !4972, line: 94, type: !502)
!5340 = !DILocation(line: 94, column: 79, scope: !5336)
!5341 = !DILocation(line: 94, column: 89, scope: !5336)
!5342 = !DILocation(line: 96, column: 20, scope: !5336)
!5343 = !DILocation(line: 96, column: 23, scope: !5336)
!5344 = !DILocation(line: 96, column: 2, scope: !5336)
!5345 = !DILocation(line: 97, column: 2, scope: !5336)
!5346 = !DILocation(line: 98, column: 1, scope: !5336)
!5347 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !4989, file: !4989, line: 928, type: !5317, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5348)
!5348 = !{!5349, !5350}
!5349 = !DILocalVariable(name: "i", arg: 1, scope: !5347, file: !4989, line: 928, type: !292)
!5350 = !DILocalVariable(name: "v", arg: 2, scope: !5347, file: !4989, line: 928, type: !4959)
!5351 = !DILocation(line: 928, column: 34, scope: !5347)
!5352 = !DILocation(line: 928, column: 47, scope: !5347)
!5353 = !DILocation(line: 936, column: 31, scope: !5347)
!5354 = !DILocation(line: 936, column: 34, scope: !5347)
!5355 = !DILocation(line: 936, column: 9, scope: !5347)
!5356 = !DILocation(line: 936, column: 2, scope: !5347)
!5357 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5022, file: !5022, line: 101, type: !5317, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5358)
!5358 = !{!5359, !5360, !5361}
!5359 = !DILocalVariable(name: "i", arg: 1, scope: !5357, file: !5022, line: 101, type: !292)
!5360 = !DILocalVariable(name: "v", arg: 2, scope: !5357, file: !5022, line: 101, type: !4959)
!5361 = !DILocalVariable(name: "__ret", scope: !5362, file: !5022, line: 103, type: !292)
!5362 = distinct !DILexicalBlock(scope: !5357, file: !5022, line: 103, column: 9)
!5363 = !DILocation(line: 101, column: 54, scope: !5357)
!5364 = !DILocation(line: 101, column: 67, scope: !5357)
!5365 = !DILocation(line: 103, column: 9, scope: !5362)
!5366 = !{i64 2149068223, i64 2149068262, i64 2149068283, i64 2149068320, i64 2149068343, i64 2149068352}
!5367 = !DILocation(line: 103, column: 9, scope: !5357)
!5368 = !DILocation(line: 103, column: 2, scope: !5357)
!5369 = distinct !DISubprogram(name: "sg_is_last", scope: !4109, file: !4109, line: 92, type: !5370, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5372)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{!764, !4112}
!5372 = !{!5373}
!5373 = !DILocalVariable(name: "sg", arg: 1, scope: !5369, file: !4109, line: 92, type: !4112)
!5374 = !DILocation(line: 92, column: 51, scope: !5369)
!5375 = !DILocation(line: 94, column: 20, scope: !5369)
!5376 = !DILocation(line: 94, column: 9, scope: !5369)
!5377 = !DILocation(line: 94, column: 24, scope: !5369)
!5378 = !DILocation(line: 94, column: 2, scope: !5369)
!5379 = distinct !DISubprogram(name: "____sg_next", scope: !4104, file: !4104, line: 60, type: !4302, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5380)
!5380 = !{!5381}
!5381 = !DILocalVariable(name: "sg", arg: 1, scope: !5379, file: !4104, line: 60, type: !4112)
!5382 = !DILocation(line: 60, column: 67, scope: !5379)
!5383 = !DILocation(line: 62, column: 2, scope: !5379)
!5384 = !DILocation(line: 63, column: 6, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5379, file: !4104, line: 63, column: 6)
!5386 = !DILocation(line: 63, column: 6, scope: !5379)
!5387 = !DILocation(line: 64, column: 21, scope: !5385)
!5388 = !DILocation(line: 64, column: 8, scope: !5385)
!5389 = !DILocation(line: 64, column: 6, scope: !5385)
!5390 = !DILocation(line: 64, column: 3, scope: !5385)
!5391 = !DILocation(line: 65, column: 9, scope: !5379)
!5392 = !DILocation(line: 65, column: 2, scope: !5379)
!5393 = distinct !DISubprogram(name: "__sg_flags", scope: !4109, file: !4109, line: 77, type: !5394, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5396)
!5394 = !DISubroutineType(types: !5395)
!5395 = !{!7, !4112}
!5396 = !{!5397}
!5397 = !DILocalVariable(name: "sg", arg: 1, scope: !5393, file: !4109, line: 77, type: !4112)
!5398 = !DILocation(line: 77, column: 59, scope: !5393)
!5399 = !DILocation(line: 79, column: 9, scope: !5393)
!5400 = !DILocation(line: 79, column: 13, scope: !5393)
!5401 = !DILocation(line: 79, column: 23, scope: !5393)
!5402 = !DILocation(line: 79, column: 2, scope: !5393)
!5403 = distinct !DISubprogram(name: "sg_is_chain", scope: !4109, file: !4109, line: 87, type: !5370, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5404)
!5404 = !{!5405}
!5405 = !DILocalVariable(name: "sg", arg: 1, scope: !5403, file: !4109, line: 87, type: !4112)
!5406 = !DILocation(line: 87, column: 52, scope: !5403)
!5407 = !DILocation(line: 89, column: 20, scope: !5403)
!5408 = !DILocation(line: 89, column: 9, scope: !5403)
!5409 = !DILocation(line: 89, column: 24, scope: !5403)
!5410 = !DILocation(line: 89, column: 2, scope: !5403)
!5411 = distinct !DISubprogram(name: "sg_chain_ptr", scope: !4109, file: !4109, line: 82, type: !4302, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5412)
!5412 = !{!5413}
!5413 = !DILocalVariable(name: "sg", arg: 1, scope: !5411, file: !4109, line: 82, type: !4112)
!5414 = !DILocation(line: 82, column: 68, scope: !5411)
!5415 = !DILocation(line: 84, column: 32, scope: !5411)
!5416 = !DILocation(line: 84, column: 36, scope: !5411)
!5417 = !DILocation(line: 84, column: 46, scope: !5411)
!5418 = !DILocation(line: 84, column: 9, scope: !5411)
!5419 = !DILocation(line: 84, column: 2, scope: !5411)
!5420 = distinct !DISubprogram(name: "drm_buddy_block_order", scope: !130, file: !130, line: 97, type: !5421, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5423)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{!7, !128}
!5423 = !{!5424}
!5424 = !DILocalVariable(name: "block", arg: 1, scope: !5420, file: !130, line: 97, type: !128)
!5425 = !DILocation(line: 97, column: 47, scope: !5420)
!5426 = !DILocation(line: 99, column: 9, scope: !5420)
!5427 = !DILocation(line: 99, column: 16, scope: !5420)
!5428 = !DILocation(line: 99, column: 23, scope: !5420)
!5429 = !DILocation(line: 99, column: 2, scope: !5420)
