; ModuleID = 'arch/x86/platform/efi/runtime-map.c'
source_filename = "arch/x86/platform/efi/runtime-map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall4s.init..kmod_runtime_map__345_194_efi_runtime_map_init\22, \22a\22\09\09"
module asm "__initcall__kmod_runtime_map__345_194_efi_runtime_map_init4s:\09\09\09"
module asm ".long\09__initstub__kmod_runtime_map__345_194_efi_runtime_map_init4s - .\09"
module asm ".previous\09\09\09\09\09"

%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.map_attribute = type { %struct.attribute, ptr }
%struct.attribute = type { ptr, i16 }
%struct.efi_runtime_map_entry = type { %struct.efi_memory_desc_t, %struct.kobject }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@efi = external dso_local global %struct.efi, align 8
@__UNIQUE_ID___addressable___initstub__kmod_runtime_map__345_194_efi_runtime_map_init4s346 = internal global ptr @__initstub__kmod_runtime_map__345_194_efi_runtime_map_init4s, section ".discard.addressable", align 8, !dbg !0
@efi_kobj = external dso_local global ptr, align 8
@map_entries = internal global ptr null, align 8, !dbg !5220
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5215
@map_kset = internal global ptr null, align 8, !dbg !5229
@.str.1 = private unnamed_addr constant [12 x i8] c"runtime-map\00", align 1, !dbg !5223
@map_ktype = internal constant %struct.kobj_type { ptr @map_release, ptr @map_attr_ops, ptr @def_groups, ptr null, ptr null, ptr null }, section ".ref.rodata", align 8, !dbg !5231
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !5226
@map_attr_ops = internal constant %struct.sysfs_ops { ptr @map_attr_show, ptr null }, align 8, !dbg !5233
@def_groups = internal global [2 x ptr] [ptr @def_group, ptr null], align 16, !dbg !5235
@def_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @def_attrs, ptr null }, align 8, !dbg !5238
@def_attrs = internal global [6 x ptr] [ptr @map_type_attr, ptr @map_phys_addr_attr, ptr @map_virt_addr_attr, ptr @map_num_pages_attr, ptr @map_attribute_attr, ptr null], align 16, !dbg !5240
@map_type_attr = internal global %struct.map_attribute { %struct.attribute { ptr @.str.3, i16 256 }, ptr @type_show }, align 8, !dbg !5246
@map_phys_addr_attr = internal global %struct.map_attribute { %struct.attribute { ptr @.str.5, i16 256 }, ptr @phys_addr_show }, align 8, !dbg !5253
@map_virt_addr_attr = internal global %struct.map_attribute { %struct.attribute { ptr @.str.7, i16 256 }, ptr @virt_addr_show }, align 8, !dbg !5259
@map_num_pages_attr = internal global %struct.map_attribute { %struct.attribute { ptr @.str.8, i16 256 }, ptr @num_pages_show }, align 8, !dbg !5263
@map_attribute_attr = internal global %struct.map_attribute { %struct.attribute { ptr @.str.9, i16 256 }, ptr @attribute_show }, align 8, !dbg !5267
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !5243
@.str.4 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1, !dbg !5248
@.str.5 = private unnamed_addr constant [10 x i8] c"phys_addr\00", align 1, !dbg !5250
@.str.6 = private unnamed_addr constant [8 x i8] c"0x%llx\0A\00", align 1, !dbg !5255
@.str.7 = private unnamed_addr constant [10 x i8] c"virt_addr\00", align 1, !dbg !5257
@.str.8 = private unnamed_addr constant [10 x i8] c"num_pages\00", align 1, !dbg !5261
@.str.9 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1, !dbg !5265
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_runtime_map__345_194_efi_runtime_map_init4s346], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efi_get_runtime_map_size() #0 align 16 !dbg !5278 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 3), align 8, !dbg !5279
  %conv = sext i32 %0 to i64, !dbg !5280
  %1 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !5281
  %mul = mul i64 %conv, %1, !dbg !5282
  %conv1 = trunc i64 %mul to i32, !dbg !5280
  ret i32 %conv1, !dbg !5283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efi_get_runtime_map_desc_size() #0 align 16 !dbg !5284 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !5285
  %conv = trunc i64 %0 to i32, !dbg !5286
  ret i32 %conv, !dbg !5287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efi_runtime_map_copy(ptr noundef %buf, i64 noundef %bufsz) #0 align 16 !dbg !5288 {
entry:
  %buf.addr = alloca ptr, align 8
  %bufsz.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5292, metadata !DIExpression()), !dbg !5295
  store i64 %bufsz, ptr %bufsz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bufsz.addr, metadata !5293, metadata !DIExpression()), !dbg !5296
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #17, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5294, metadata !DIExpression()), !dbg !5298
  %call = call i32 @efi_get_runtime_map_size() #18, !dbg !5299
  %conv = sext i32 %call to i64, !dbg !5299
  store i64 %conv, ptr %sz, align 8, !dbg !5298
  %0 = load i64, ptr %sz, align 8, !dbg !5300
  %1 = load i64, ptr %bufsz.addr, align 8, !dbg !5302
  %cmp = icmp ugt i64 %0, %1, !dbg !5303
  br i1 %cmp, label %if.then, label %if.end, !dbg !5304

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %bufsz.addr, align 8, !dbg !5305
  store i64 %2, ptr %sz, align 8, !dbg !5306
  br label %if.end, !dbg !5307

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5308
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !5309
  %5 = load i64, ptr %sz, align 8, !dbg !5310
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %5, i1 false), !dbg !5311
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #17, !dbg !5312
  ret i32 0, !dbg !5313
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_runtime_map__345_194_efi_runtime_map_init4s() #4 section ".init.text" align 16 !dbg !5314 {
entry:
  %call = call i32 @efi_runtime_map_init() #19, !dbg !5315
  ret i32 %call, !dbg !5315
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @efi_runtime_map_init() #4 section ".init.text" align 16 !dbg !5316 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %md = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5318, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #17, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5319, metadata !DIExpression()), !dbg !5328
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5320, metadata !DIExpression()), !dbg !5329
  store i32 0, ptr %ret, align 4, !dbg !5329
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !5330
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5321, metadata !DIExpression()), !dbg !5331
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #17, !dbg !5332
  call void @llvm.dbg.declare(metadata ptr %md, metadata !5322, metadata !DIExpression()), !dbg !5333
  %call = call zeroext i1 @efi_enabled(i32 noundef 4) #18, !dbg !5334
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !5336

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @efi_kobj, align 8, !dbg !5337
  %tobool = icmp ne ptr %0, null, !dbg !5337
  br i1 %tobool, label %if.end, label %if.then, !dbg !5338

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5339

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 3), align 8, !dbg !5340
  %conv = sext i32 %1 to i64, !dbg !5341
  %call2 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #20, !dbg !5342
  store ptr %call2, ptr @map_entries, align 8, !dbg !5343
  %2 = load ptr, ptr @map_entries, align 8, !dbg !5344
  %tobool3 = icmp ne ptr %2, null, !dbg !5344
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5346

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %ret, align 4, !dbg !5347
  br label %out, !dbg !5349

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !5350
  %3 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !5351
  store ptr %3, ptr %md, align 8, !dbg !5351
  br label %for.cond, !dbg !5351

for.cond:                                         ; preds = %for.inc, %if.end5
  %4 = load ptr, ptr %md, align 8, !dbg !5353
  %tobool6 = icmp ne ptr %4, null, !dbg !5353
  br i1 %tobool6, label %land.rhs, label %land.end, !dbg !5353

land.rhs:                                         ; preds = %for.cond
  %5 = load ptr, ptr %md, align 8, !dbg !5353
  %6 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !5353
  %add.ptr = getelementptr i8, ptr %5, i64 %6, !dbg !5353
  %7 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 2), align 8, !dbg !5353
  %cmp = icmp ule ptr %add.ptr, %7, !dbg !5353
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !5355
  br i1 %8, label %for.body, label %for.end, !dbg !5351

for.body:                                         ; preds = %land.end
  %9 = load ptr, ptr @efi_kobj, align 8, !dbg !5356
  %10 = load i32, ptr %i, align 4, !dbg !5358
  %11 = load ptr, ptr %md, align 8, !dbg !5359
  %call8 = call ptr @add_sysfs_runtime_map_entry(ptr noundef %9, i32 noundef %10, ptr noundef %11) #18, !dbg !5360
  store ptr %call8, ptr %entry1, align 8, !dbg !5361
  %12 = load ptr, ptr %entry1, align 8, !dbg !5362
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %12) #18, !dbg !5364
  br i1 %call9, label %if.then10, label %if.end13, !dbg !5365

if.then10:                                        ; preds = %for.body
  %13 = load ptr, ptr %entry1, align 8, !dbg !5366
  %call11 = call i64 @PTR_ERR(ptr noundef %13) #18, !dbg !5368
  %conv12 = trunc i64 %call11 to i32, !dbg !5368
  store i32 %conv12, ptr %ret, align 4, !dbg !5369
  br label %out_add_entry, !dbg !5370

if.end13:                                         ; preds = %for.body
  %14 = load ptr, ptr %entry1, align 8, !dbg !5371
  %15 = load ptr, ptr @map_entries, align 8, !dbg !5372
  %16 = load i32, ptr %i, align 4, !dbg !5373
  %inc = add i32 %16, 1, !dbg !5373
  store i32 %inc, ptr %i, align 4, !dbg !5373
  %idx.ext = sext i32 %16 to i64, !dbg !5374
  %add.ptr14 = getelementptr ptr, ptr %15, i64 %idx.ext, !dbg !5374
  store ptr %14, ptr %add.ptr14, align 8, !dbg !5375
  br label %for.inc, !dbg !5376

for.inc:                                          ; preds = %if.end13
  %17 = load ptr, ptr %md, align 8, !dbg !5353
  %18 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !5353
  %add.ptr15 = getelementptr i8, ptr %17, i64 %18, !dbg !5353
  store ptr %add.ptr15, ptr %md, align 8, !dbg !5353
  br label %for.cond, !dbg !5353, !llvm.loop !5377

for.end:                                          ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !5381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5381

out_add_entry:                                    ; preds = %if.then10
  call void @llvm.dbg.label(metadata !5324), !dbg !5382
  %19 = load i32, ptr %i, align 4, !dbg !5383
  %sub = sub i32 %19, 1, !dbg !5385
  store i32 %sub, ptr %j, align 4, !dbg !5386
  br label %for.cond16, !dbg !5387

for.cond16:                                       ; preds = %for.inc22, %out_add_entry
  %20 = load i32, ptr %j, align 4, !dbg !5388
  %cmp17 = icmp sge i32 %20, 0, !dbg !5390
  br i1 %cmp17, label %for.body19, label %for.end23, !dbg !5391

for.body19:                                       ; preds = %for.cond16
  %21 = load ptr, ptr @map_entries, align 8, !dbg !5392
  %22 = load i32, ptr %j, align 4, !dbg !5394
  %idx.ext20 = sext i32 %22 to i64, !dbg !5395
  %add.ptr21 = getelementptr ptr, ptr %21, i64 %idx.ext20, !dbg !5395
  %23 = load ptr, ptr %add.ptr21, align 8, !dbg !5396
  store ptr %23, ptr %entry1, align 8, !dbg !5397
  %24 = load ptr, ptr %entry1, align 8, !dbg !5398
  %kobj = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %24, i32 0, i32 1, !dbg !5399
  call void @kobject_put(ptr noundef %kobj) #18, !dbg !5400
  br label %for.inc22, !dbg !5401

for.inc22:                                        ; preds = %for.body19
  %25 = load i32, ptr %j, align 4, !dbg !5402
  %dec = add i32 %25, -1, !dbg !5402
  store i32 %dec, ptr %j, align 4, !dbg !5402
  br label %for.cond16, !dbg !5403, !llvm.loop !5404

for.end23:                                        ; preds = %for.cond16
  br label %out, !dbg !5405

out:                                              ; preds = %for.end23, %if.then4
  call void @llvm.dbg.label(metadata !5325), !dbg !5406
  %26 = load i32, ptr %ret, align 4, !dbg !5407
  store i32 %26, ptr %retval, align 4, !dbg !5408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5408

cleanup:                                          ; preds = %out, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #17, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #17, !dbg !5409
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5409
  %27 = load i32, ptr %retval, align 4, !dbg !5409
  ret i32 %27, !dbg !5409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #5 align 16 !dbg !5410 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  %0 = load i32, ptr %feature.addr, align 4, !dbg !5416
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5416
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5416

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !5416
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5416
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !5416

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !5416

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !5416
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !5416
  br i1 %4, label %cond.true, label %cond.false, !dbg !5416

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !5416
  %conv4 = sext i32 %5 to i64, !dbg !5416
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #18, !dbg !5416
  %conv5 = zext i1 %call to i32, !dbg !5416
  br label %cond.end, !dbg !5416

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !5416
  %conv6 = sext i32 %6 to i64, !dbg !5416
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #18, !dbg !5416
  %conv8 = zext i1 %call7 to i32, !dbg !5416
  br label %cond.end, !dbg !5416

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !5416
  %cmp = icmp ne i32 %cond, 0, !dbg !5417
  ret i1 %cmp, !dbg !5418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5419 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5423, metadata !DIExpression()), !dbg !5426
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5424, metadata !DIExpression()), !dbg !5427
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5425, metadata !DIExpression()), !dbg !5428
  %0 = load i64, ptr %n.addr, align 8, !dbg !5429
  %1 = load i64, ptr %size.addr, align 8, !dbg !5430
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5431
  %or = or i32 %2, 256, !dbg !5432
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #20, !dbg !5433
  ret ptr %call, !dbg !5434
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @add_sysfs_runtime_map_entry(ptr noundef %kobj, i32 noundef %nr, ptr noundef %md) #0 align 16 !dbg !5435 {
entry:
  %retval = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %md.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5439, metadata !DIExpression()), !dbg !5444
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5440, metadata !DIExpression()), !dbg !5445
  store ptr %md, ptr %md.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %md.addr, metadata !5441, metadata !DIExpression()), !dbg !5446
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5447
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5442, metadata !DIExpression()), !dbg !5448
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !5449
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5443, metadata !DIExpression()), !dbg !5450
  %0 = load ptr, ptr @map_kset, align 8, !dbg !5451
  %tobool = icmp ne ptr %0, null, !dbg !5451
  br i1 %tobool, label %if.end5, label %if.then, !dbg !5453

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !5454
  %call = call ptr @kset_create_and_add(ptr noundef @.str.1, ptr noundef null, ptr noundef %1) #18, !dbg !5456
  store ptr %call, ptr @map_kset, align 8, !dbg !5457
  %2 = load ptr, ptr @map_kset, align 8, !dbg !5458
  %tobool2 = icmp ne ptr %2, null, !dbg !5458
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !5460

if.then3:                                         ; preds = %if.then
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #18, !dbg !5461
  store ptr %call4, ptr %retval, align 8, !dbg !5462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5462

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !5463

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 3264) #21, !dbg !5464
  store ptr %call6, ptr %entry1, align 8, !dbg !5465
  %3 = load ptr, ptr %entry1, align 8, !dbg !5466
  %tobool7 = icmp ne ptr %3, null, !dbg !5466
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !5468

if.then8:                                         ; preds = %if.end5
  %4 = load ptr, ptr @map_kset, align 8, !dbg !5469
  call void @kset_unregister(ptr noundef %4) #18, !dbg !5471
  store ptr null, ptr @map_kset, align 8, !dbg !5472
  %call9 = call ptr @ERR_PTR(i64 noundef -12) #18, !dbg !5473
  store ptr %call9, ptr %retval, align 8, !dbg !5474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5474

if.end10:                                         ; preds = %if.end5
  %5 = load ptr, ptr %entry1, align 8, !dbg !5475
  %md11 = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %5, i32 0, i32 0, !dbg !5476
  %6 = load ptr, ptr %md.addr, align 8, !dbg !5477
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %md11, ptr align 8 %6, i64 40, i1 false), !dbg !5478
  %7 = load ptr, ptr %entry1, align 8, !dbg !5479
  %kobj12 = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %7, i32 0, i32 1, !dbg !5480
  call void @kobject_init(ptr noundef %kobj12, ptr noundef @map_ktype) #18, !dbg !5481
  %8 = load ptr, ptr @map_kset, align 8, !dbg !5482
  %9 = load ptr, ptr %entry1, align 8, !dbg !5483
  %kobj13 = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %9, i32 0, i32 1, !dbg !5484
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj13, i32 0, i32 3, !dbg !5485
  store ptr %8, ptr %kset, align 8, !dbg !5486
  %10 = load ptr, ptr %entry1, align 8, !dbg !5487
  %kobj14 = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %10, i32 0, i32 1, !dbg !5488
  %11 = load i32, ptr %nr.addr, align 4, !dbg !5489
  %call15 = call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj14, ptr noundef null, ptr noundef @.str.2, i32 noundef %11) #18, !dbg !5490
  store i32 %call15, ptr %ret, align 4, !dbg !5491
  %12 = load i32, ptr %ret, align 4, !dbg !5492
  %tobool16 = icmp ne i32 %12, 0, !dbg !5492
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !5494

if.then17:                                        ; preds = %if.end10
  %13 = load ptr, ptr %entry1, align 8, !dbg !5495
  %kobj18 = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %13, i32 0, i32 1, !dbg !5497
  call void @kobject_put(ptr noundef %kobj18) #18, !dbg !5498
  %14 = load ptr, ptr @map_kset, align 8, !dbg !5499
  call void @kset_unregister(ptr noundef %14) #18, !dbg !5500
  store ptr null, ptr @map_kset, align 8, !dbg !5501
  %15 = load i32, ptr %ret, align 4, !dbg !5502
  %conv = sext i32 %15 to i64, !dbg !5502
  %call19 = call ptr @ERR_PTR(i64 noundef %conv) #18, !dbg !5503
  store ptr %call19, ptr %retval, align 8, !dbg !5504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5504

if.end20:                                         ; preds = %if.end10
  %16 = load ptr, ptr %entry1, align 8, !dbg !5505
  store ptr %16, ptr %retval, align 8, !dbg !5506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5506

cleanup:                                          ; preds = %if.end20, %if.then17, %if.then8, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !5507
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5507
  %17 = load ptr, ptr %retval, align 8, !dbg !5507
  ret ptr %17, !dbg !5507
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !5508 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5515
  %1 = ptrtoint ptr %0 to i64, !dbg !5515
  %2 = inttoptr i64 %1 to ptr, !dbg !5515
  %3 = ptrtoint ptr %2 to i64, !dbg !5515
  %cmp = icmp uge i64 %3, -4095, !dbg !5515
  %lnot = xor i1 %cmp, true, !dbg !5515
  %lnot1 = xor i1 %lnot, true, !dbg !5515
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5515
  %conv = sext i32 %lnot.ext to i64, !dbg !5515
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5515
  %tobool = icmp ne i64 %expval, 0, !dbg !5515
  ret i1 %tobool, !dbg !5516
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !5517 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5521, metadata !DIExpression()), !dbg !5522
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5523
  %1 = ptrtoint ptr %0 to i64, !dbg !5524
  ret i64 %1, !dbg !5525
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5526 dso_local void @kobject_put(ptr noundef) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5527 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5535, metadata !DIExpression()), !dbg !5540
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5536, metadata !DIExpression()), !dbg !5541
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5537, metadata !DIExpression()), !dbg !5543
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5544
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5545
  %div = udiv i64 %1, 64, !dbg !5545
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5546
  store ptr %add.ptr, ptr %p, align 8, !dbg !5543
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !5547
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5538, metadata !DIExpression()), !dbg !5548
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5549
  %rem = urem i64 %2, 64, !dbg !5549
  %shl = shl i64 1, %rem, !dbg !5549
  store i64 %shl, ptr %mask, align 8, !dbg !5548
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !5550
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5539, metadata !DIExpression()), !dbg !5551
  %3 = load ptr, ptr %p, align 8, !dbg !5552
  %4 = load i64, ptr %3, align 8, !dbg !5553
  store i64 %4, ptr %val, align 8, !dbg !5551
  %5 = load i64, ptr %val, align 8, !dbg !5554
  %6 = load i64, ptr %mask, align 8, !dbg !5555
  %and = and i64 %5, %6, !dbg !5556
  %tobool = icmp ne i64 %and, 0, !dbg !5557
  %lnot = xor i1 %tobool, true, !dbg !5557
  %lnot1 = xor i1 %lnot, true, !dbg !5558
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !5559
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !5559
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5559
  ret i1 %lnot1, !dbg !5560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5561 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5564, metadata !DIExpression()), !dbg !5566
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5565, metadata !DIExpression()), !dbg !5567
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5568
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5569
  %div = udiv i64 %1, 64, !dbg !5569
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5570
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5571
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5572
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5573
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5574
  ret i1 %call, !dbg !5575
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !5576 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5584, metadata !DIExpression()), !dbg !5586
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5585, metadata !DIExpression()), !dbg !5587
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5588
  %1 = load i64, ptr %size.addr, align 8, !dbg !5589
  %conv = trunc i64 %1 to i32, !dbg !5589
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !5590
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5591
  %3 = load i64, ptr %size.addr, align 8, !dbg !5591
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !5591
  ret void, !dbg !5592
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5593 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5596, metadata !DIExpression()), !dbg !5598
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5597, metadata !DIExpression()), !dbg !5599
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5600
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5601
  br i1 %1, label %cond.true, label %cond.false, !dbg !5601

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5602
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5603
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5604
  %conv = zext i1 %call to i32, !dbg !5604
  br label %cond.end, !dbg !5601

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5605
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5606
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !5607
  %conv2 = zext i1 %call1 to i32, !dbg !5607
  br label %cond.end, !dbg !5601

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5601
  %tobool = icmp ne i32 %cond, 0, !dbg !5601
  ret i1 %tobool, !dbg !5608
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5609 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5614, metadata !DIExpression()), !dbg !5616
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5615, metadata !DIExpression()), !dbg !5617
  ret i1 true, !dbg !5618
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5619 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5624, metadata !DIExpression()), !dbg !5627
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5625, metadata !DIExpression()), !dbg !5628
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5626, metadata !DIExpression()), !dbg !5629
  ret void, !dbg !5630
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5631 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5635, metadata !DIExpression()), !dbg !5637
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5636, metadata !DIExpression()), !dbg !5638
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5639
  %and = and i64 %0, 63, !dbg !5640
  %shl = shl i64 1, %and, !dbg !5641
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5642
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5643
  %shr = ashr i64 %2, 6, !dbg !5644
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5642
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5642
  %and1 = and i64 %shl, %3, !dbg !5645
  %cmp = icmp ne i64 %and1, 0, !dbg !5646
  ret i1 %cmp, !dbg !5647
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !5648 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5650, metadata !DIExpression()), !dbg !5653
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5651, metadata !DIExpression()), !dbg !5654
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5652, metadata !DIExpression()), !dbg !5656
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5657
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5658
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5659, !srcloc !5660
  %3 = icmp ult i8 %2, 2, !dbg !5659
  call void @llvm.assume(i1 %3), !dbg !5659
  store i8 %2, ptr %oldbit, align 1, !dbg !5659
  %4 = load i8, ptr %oldbit, align 1, !dbg !5661, !range !5662, !noundef !951
  %tobool = trunc i8 %4 to i1, !dbg !5661
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !5663
  ret i1 %tobool, !dbg !5664
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5665 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5667, metadata !DIExpression()), !dbg !5671
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5668, metadata !DIExpression()), !dbg !5672
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5669, metadata !DIExpression()), !dbg !5673
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5670, metadata !DIExpression()), !dbg !5675
  %0 = load i64, ptr %n.addr, align 8, !dbg !5676
  %1 = load i64, ptr %size.addr, align 8, !dbg !5676
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5676
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5676
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5676
  store i64 %4, ptr %bytes, align 8, !dbg !5676
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !5676
  %lnot = xor i1 %call, true, !dbg !5676
  %lnot1 = xor i1 %lnot, true, !dbg !5676
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5676
  %conv = sext i32 %lnot.ext to i64, !dbg !5676
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5676
  %tobool = icmp ne i64 %expval, 0, !dbg !5676
  br i1 %tobool, label %if.then, label %if.end, !dbg !5678

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5679

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5680
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5682
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5683

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5684
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5685
  br i1 %8, label %if.then2, label %if.end4, !dbg !5686

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5687
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5688
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #21, !dbg !5689
  store ptr %call3, ptr %retval, align 8, !dbg !5690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5690

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5691
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5692
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #21, !dbg !5693
  store ptr %call5, ptr %retval, align 8, !dbg !5694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5694

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !5695
  %13 = load ptr, ptr %retval, align 8, !dbg !5695
  ret ptr %13, !dbg !5695
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !5696 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5703, !range !5662, !noundef !951
  %tobool = trunc i8 %0 to i1, !dbg !5703
  %lnot = xor i1 %tobool, true, !dbg !5703
  %lnot1 = xor i1 %lnot, true, !dbg !5703
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5703
  %conv = sext i32 %lnot.ext to i64, !dbg !5703
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5703
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5703
  ret i1 %tobool2, !dbg !5704
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !5705 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5709, metadata !DIExpression()), !dbg !5714
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5710, metadata !DIExpression()), !dbg !5715
  %0 = load i64, ptr %size.addr, align 8, !dbg !5716
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5717
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5718

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5719
  %tobool = icmp ne i64 %2, 0, !dbg !5719
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5720

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5721
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5711, metadata !DIExpression()), !dbg !5722
  %3 = load i64, ptr %size.addr, align 8, !dbg !5723
  %cmp = icmp ugt i64 %3, 8192, !dbg !5725
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5726

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5727
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5728
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !5729
  store ptr %call, ptr %retval, align 8, !dbg !5730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5730

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5731
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5731
  store i32 %call2, ptr %index, align 4, !dbg !5732
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5733
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5734
  %9 = ptrtoint ptr %8 to i64, !dbg !5734
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5735
  %idxprom = zext i32 %call3 to i64, !dbg !5736
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5736
  %10 = load i32, ptr %index, align 4, !dbg !5737
  %idxprom4 = zext i32 %10 to i64, !dbg !5736
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5736
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5736
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5738
  %13 = load i64, ptr %size.addr, align 8, !dbg !5739
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !5740
  store ptr %call6, ptr %retval, align 8, !dbg !5741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5741

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5742
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5743
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5744
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !5745
  store ptr %call8, ptr %retval, align 8, !dbg !5746
  br label %return, !dbg !5746

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5747
  ret ptr %16, !dbg !5747
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5748 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5749 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !5750 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5754, metadata !DIExpression()), !dbg !5756
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5755, metadata !DIExpression()), !dbg !5757
  %0 = load i64, ptr %size.addr, align 8, !dbg !5758
  %tobool = icmp ne i64 %0, 0, !dbg !5758
  br i1 %tobool, label %if.end, label %if.then, !dbg !5760

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5761
  br label %return, !dbg !5761

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5762
  %cmp = icmp ule i64 %1, 8, !dbg !5764
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5765

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5766
  br label %return, !dbg !5766

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5767
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5769
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5770

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5771
  %cmp4 = icmp ule i64 %3, 96, !dbg !5772
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5773

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5774
  br label %return, !dbg !5774

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5775
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5777
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5778

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5779
  %cmp9 = icmp ule i64 %5, 192, !dbg !5780
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5781

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5782
  br label %return, !dbg !5782

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5783
  %cmp12 = icmp ule i64 %6, 8, !dbg !5785
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5786

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5787
  br label %return, !dbg !5787

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5788
  %cmp15 = icmp ule i64 %7, 16, !dbg !5790
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5791

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5792
  br label %return, !dbg !5792

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5793
  %cmp18 = icmp ule i64 %8, 32, !dbg !5795
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5796

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5797
  br label %return, !dbg !5797

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5798
  %cmp21 = icmp ule i64 %9, 64, !dbg !5800
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5801

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5802
  br label %return, !dbg !5802

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5803
  %cmp24 = icmp ule i64 %10, 128, !dbg !5805
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5806

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5808
  %cmp27 = icmp ule i64 %11, 256, !dbg !5810
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5811

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5812
  br label %return, !dbg !5812

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5813
  %cmp30 = icmp ule i64 %12, 512, !dbg !5815
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5816

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5817
  br label %return, !dbg !5817

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5818
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5820
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5821

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5822
  br label %return, !dbg !5822

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5823
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5825
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5826

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5828
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5830
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5831

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5833
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5835
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5836

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5838
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5840
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5841

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5842
  br label %return, !dbg !5842

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5843
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5845
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5846

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5847
  br label %return, !dbg !5847

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5848
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5850
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5851

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5853
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5855
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5856

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5857
  br label %return, !dbg !5857

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5858
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5860
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5861

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5862
  br label %return, !dbg !5862

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5863
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5865
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5866

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5867
  br label %return, !dbg !5867

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5868
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5870
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5871

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5873
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5875
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5876

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5877
  br label %return, !dbg !5877

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5878, !range !5662, !noundef !951
  %tobool69 = trunc i8 %25 to i1, !dbg !5878
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5880

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5881

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #23, !dbg !5882, !srcloc !5885
  unreachable, !dbg !5882

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5886

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5887

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5888

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5890

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5888

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #17, !dbg !5892, !srcloc !5894
  br label %do.end75, !dbg !5892

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5888

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5895
  br label %return, !dbg !5895

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5896
  ret i32 %26, !dbg !5896
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5897 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !5903 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5907, metadata !DIExpression()), !dbg !5909
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5908, metadata !DIExpression()), !dbg !5910
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5911
  %and = and i32 %0, 17, !dbg !5911
  %cmp = icmp eq i32 %and, 0, !dbg !5911
  %lnot = xor i1 %cmp, true, !dbg !5911
  %lnot1 = xor i1 %lnot, true, !dbg !5911
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5911
  %conv = sext i32 %lnot.ext to i64, !dbg !5911
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5911
  %tobool = icmp ne i64 %expval, 0, !dbg !5911
  br i1 %tobool, label %if.then, label %if.end, !dbg !5913

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5914
  br label %return, !dbg !5914

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5915
  %and2 = and i32 %1, 1, !dbg !5917
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5917
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5918

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5919
  br label %return, !dbg !5919

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5920
  br label %return, !dbg !5920

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5922
  ret i32 %2, !dbg !5922
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5923 dso_local void @__compiletime_assert_255() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5924 dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5927 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5931, metadata !DIExpression()), !dbg !5932
  %0 = load i64, ptr %error.addr, align 8, !dbg !5933
  %1 = inttoptr i64 %0 to ptr, !dbg !5934
  ret ptr %1, !dbg !5935
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #16 align 16 !dbg !5936 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5938, metadata !DIExpression()), !dbg !5940
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5939, metadata !DIExpression()), !dbg !5941
  %0 = load i64, ptr %size.addr, align 8, !dbg !5942
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5943
  %or = or i32 %1, 256, !dbg !5944
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !5945
  ret ptr %call, !dbg !5946
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5947 dso_local void @kset_unregister(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5950 dso_local void @kobject_init(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5953 dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @map_release(ptr noundef %kobj) #0 align 16 !dbg !5956 {
entry:
  %kobj.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5958, metadata !DIExpression()), !dbg !5960
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !5961
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5959, metadata !DIExpression()), !dbg !5962
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5963
  %call = call ptr @to_map_entry(ptr noundef %0) #18, !dbg !5964
  store ptr %call, ptr %entry1, align 8, !dbg !5965
  %1 = load ptr, ptr %entry1, align 8, !dbg !5966
  call void @kfree(ptr noundef %1) #18, !dbg !5967
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !5968
  ret void, !dbg !5968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_map_entry(ptr noundef %kobj) #5 align 16 !dbg !5969 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5973, metadata !DIExpression()), !dbg !5976
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5977
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5974, metadata !DIExpression()), !dbg !5977
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5977
  store ptr %0, ptr %__mptr, align 8, !dbg !5977
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5977
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !5977
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5977
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5978
  %2 = load ptr, ptr %tmp, align 8, !dbg !5977
  ret ptr %2, !dbg !5979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5980 dso_local void @kfree(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @map_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5983 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %map_attr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5985, metadata !DIExpression()), !dbg !5990
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5986, metadata !DIExpression()), !dbg !5991
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5987, metadata !DIExpression()), !dbg !5992
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !5993
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5988, metadata !DIExpression()), !dbg !5994
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5995
  %call = call ptr @to_map_entry(ptr noundef %0) #18, !dbg !5996
  store ptr %call, ptr %entry1, align 8, !dbg !5994
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_attr) #17, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %map_attr, metadata !5989, metadata !DIExpression()), !dbg !5998
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !5999
  %call2 = call ptr @to_map_attr(ptr noundef %1) #18, !dbg !6000
  store ptr %call2, ptr %map_attr, align 8, !dbg !5998
  %2 = load ptr, ptr %map_attr, align 8, !dbg !6001
  %show = getelementptr inbounds %struct.map_attribute, ptr %2, i32 0, i32 1, !dbg !6002
  %3 = load ptr, ptr %show, align 8, !dbg !6002
  %4 = load ptr, ptr %entry1, align 8, !dbg !6003
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !6004
  %call3 = call i64 %3(ptr noundef %4, ptr noundef %5) #18, !dbg !6001
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_attr) #17, !dbg !6005
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !6005
  ret i64 %call3, !dbg !6006
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_map_attr(ptr noundef %attr) #5 align 16 !dbg !6007 {
entry:
  %attr.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6011, metadata !DIExpression()), !dbg !6014
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6015
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6012, metadata !DIExpression()), !dbg !6015
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6015
  store ptr %0, ptr %__mptr, align 8, !dbg !6015
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6015
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6015
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6015
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6016
  %2 = load ptr, ptr %tmp, align 8, !dbg !6015
  ret ptr %2, !dbg !6017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %entry1, ptr noundef %buf) #0 align 16 !dbg !6018 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6020, metadata !DIExpression()), !dbg !6022
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6021, metadata !DIExpression()), !dbg !6023
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6024
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6025
  %md = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %1, i32 0, i32 0, !dbg !6026
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 0, !dbg !6027
  %2 = load i32, ptr %type, align 8, !dbg !6027
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.4, i32 noundef %2) #18, !dbg !6028
  %conv = sext i32 %call to i64, !dbg !6028
  ret i64 %conv, !dbg !6029
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6030 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @phys_addr_show(ptr noundef %entry1, ptr noundef %buf) #0 align 16 !dbg !6034 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6036, metadata !DIExpression()), !dbg !6038
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6038
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6038
  %md = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %1, i32 0, i32 0, !dbg !6038
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 2, !dbg !6038
  %2 = load i64, ptr %phys_addr, align 8, !dbg !6038
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.6, i64 noundef %2) #18, !dbg !6038
  %conv = sext i32 %call to i64, !dbg !6038
  ret i64 %conv, !dbg !6038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @virt_addr_show(ptr noundef %entry1, ptr noundef %buf) #0 align 16 !dbg !6039 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6041, metadata !DIExpression()), !dbg !6043
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6043
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6043
  %md = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %1, i32 0, i32 0, !dbg !6043
  %virt_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 3, !dbg !6043
  %2 = load i64, ptr %virt_addr, align 8, !dbg !6043
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.6, i64 noundef %2) #18, !dbg !6043
  %conv = sext i32 %call to i64, !dbg !6043
  ret i64 %conv, !dbg !6043
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @num_pages_show(ptr noundef %entry1, ptr noundef %buf) #0 align 16 !dbg !6044 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6046, metadata !DIExpression()), !dbg !6048
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6047, metadata !DIExpression()), !dbg !6048
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6048
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6048
  %md = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %1, i32 0, i32 0, !dbg !6048
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 4, !dbg !6048
  %2 = load i64, ptr %num_pages, align 8, !dbg !6048
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.6, i64 noundef %2) #18, !dbg !6048
  %conv = sext i32 %call to i64, !dbg !6048
  ret i64 %conv, !dbg !6048
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @attribute_show(ptr noundef %entry1, ptr noundef %buf) #0 align 16 !dbg !6049 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6051, metadata !DIExpression()), !dbg !6053
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6052, metadata !DIExpression()), !dbg !6053
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6053
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6053
  %md = getelementptr inbounds %struct.efi_runtime_map_entry, ptr %1, i32 0, i32 0, !dbg !6053
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 5, !dbg !6053
  %2 = load i64, ptr %attribute, align 8, !dbg !6053
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.6, i64 noundef %2) #18, !dbg !6053
  %conv = sext i32 %call to i64, !dbg !6053
  ret i64 %conv, !dbg !6053
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0,1) }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276}
!llvm.ident = !{!5277}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_runtime_map__345_194_efi_runtime_map_init4s346", scope: !2, file: !3, line: 194, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/platform/efi/.runtime-map.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/platform/efi/runtime-map\22 -D KBUILD_BASENAME=\22runtime_map\22 -D KBUILD_MODNAME=\22runtime_map\22 -D __KBUILD_MODNAME=kmod_runtime_map -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/platform/efi/runtime-map.ll arch/x86/platform/efi/runtime-map.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !268, globals: !5214, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/platform/efi/runtime-map.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1df9e460e8901c37aba4d565d36a0e86")
!4 = !{!5, !13, !18, !23, !31, !127, !135, !151, !157, !163, !170, !175, !183, !190, !196, !205, !210, !215, !221, !233, !239, !246, !253, !258}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!17 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !24, line: 9, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!27 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!28 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!29 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!30 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 147, baseType: !7, size: 32, elements: !124)
!32 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !32, line: 135, size: 512, elements: !34)
!34 = !{!35, !39, !41, !43, !47, !48, !64, !122, !123}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !33, file: !32, line: 136, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !32, line: 137, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !33, file: !32, line: 138, baseType: !42, size: 32, offset: 128)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !33, file: !32, line: 139, baseType: !44, size: 16, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 150, baseType: !31, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !33, file: !32, line: 151, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !32, line: 64, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{!42, !53, !42, !40, !54, !60}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !45, line: 52, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !57, line: 88, baseType: !63)
!63 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !33, file: !32, line: 152, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !32, line: 117, size: 256, elements: !67)
!67 = !{!68, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !66, file: !32, line: 118, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !45, line: 173, baseType: !42, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !66, file: !32, line: 119, baseType: !74, size: 192, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !75, line: 37, size: 192, elements: !77)
!77 = !{!78, !116}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !76, file: !75, line: 38, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !80, line: 17, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 18, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 18, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !84, file: !80, line: 19, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 14, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !87, file: !88, line: 15, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !92, line: 14, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 15, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 15, size: 32, elements: !97)
!97 = !{!98, !99, !109}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !69, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !100, size: 16)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !100, file: !92, line: 25, baseType: !103, size: 8)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !104, line: 17, baseType: !105)
!104 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !100, file: !92, line: 26, baseType: !103, size: 8, offset: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !110, file: !92, line: 29, baseType: !113, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !104, line: 19, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !106, line: 24, baseType: !46)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !110, file: !92, line: 30, baseType: !113, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !76, file: !75, line: 39, baseType: !117, size: 128, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !45, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !45, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !33, file: !32, line: 153, baseType: !40, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !33, file: !32, line: 154, baseType: !40, size: 64, offset: 448)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !128, line: 68, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !136, line: 1325, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!138 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!139 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!140 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!141 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!142 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!143 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!144 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!145 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!146 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!147 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!148 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!149 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!150 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !152, line: 54, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "USRQUOTA", value: 0)
!155 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!156 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !158, line: 45, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!161 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!162 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !164, line: 487, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!167 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!168 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!169 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !171, line: 65, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!174 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !176, line: 620, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!179 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!180 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!181 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!182 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !176, line: 597, baseType: !42, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!186 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!187 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!188 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!189 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !191, line: 26, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!194 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!195 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !164, line: 547, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204}
!198 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!199 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!200 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!201 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!202 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!203 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!204 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !164, line: 564, baseType: !7, size: 32, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!208 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!209 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !164, line: 577, baseType: !7, size: 32, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!213 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!214 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !164, line: 503, baseType: !7, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220}
!217 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!218 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!219 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!220 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !222, line: 44, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!225 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!226 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!227 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!228 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!229 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!230 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!231 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!232 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !234, line: 16, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!235 = !{!236, !237, !238}
!236 = !DIEnumerator(name: "TT_NONE", value: 0)
!237 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!238 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !240, line: 51, baseType: !7, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!241 = !{!242, !243, !244, !245}
!242 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!243 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!244 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!245 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !247, line: 15, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!248 = !{!249, !250, !251, !252}
!249 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!250 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!251 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!252 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !254, line: 10, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!255 = !{!256, !257}
!256 = !DIEnumerator(name: "false", value: 0)
!257 = !DIEnumerator(name: "true", value: 1)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !259, line: 364, baseType: !7, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!260 = !{!261, !262, !263, !264, !265, !266, !267}
!261 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!262 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!263 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!264 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!265 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!266 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!267 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!268 = !{!40, !269, !270, !271, !273, !59, !274, !5206, !370}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !45, line: 42, baseType: !59)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_runtime_map_entry", file: !3, line: 16, size: 832, elements: !276)
!276 = !{!277, !293}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !275, file: !3, line: 17, baseType: !278, size: 320)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !279, line: 145, baseType: !280)
!279 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 138, size: 320, elements: !281)
!281 = !{!282, !285, !286, !290, !291, !292}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !280, file: !279, line: 139, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !104, line: 21, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !106, line: 27, baseType: !7)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !280, file: !279, line: 140, baseType: !283, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !280, file: !279, line: 141, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !104, line: 23, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !106, line: 31, baseType: !289)
!289 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !280, file: !279, line: 142, baseType: !287, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !280, file: !279, line: 143, baseType: !287, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !280, file: !279, line: 144, baseType: !287, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !275, file: !3, line: 18, baseType: !294, size: 512, offset: 320)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !295, line: 64, size: 512, elements: !296)
!295 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!296 = !{!297, !298, !299, !301, !348, !5199, !5200, !5201, !5202, !5203, !5204, !5205}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !295, line: 65, baseType: !36, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !294, file: !295, line: 66, baseType: !117, size: 128, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !294, file: !295, line: 67, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !294, file: !295, line: 68, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !295, line: 168, size: 768, elements: !304)
!304 = !{!305, !306, !307, !308}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !303, file: !295, line: 169, baseType: !117, size: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !303, file: !295, line: 170, baseType: !79, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !303, file: !295, line: 171, baseType: !294, size: 512, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !303, file: !295, line: 172, baseType: !309, size: 64, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !295, line: 133, size: 192, elements: !312)
!312 = !{!313, !320, !325}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !311, file: !295, line: 134, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!42, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !295, line: 135, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!36, !318}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !311, file: !295, line: 136, baseType: !326, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!42, !318, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !295, line: 125, size: 20736, elements: !332)
!332 = !{!333, !338, !342, !343, !347}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !331, file: !295, line: 126, baseType: !334, size: 192)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 192, elements: !336)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!336 = !{!337}
!337 = !DISubrange(count: 3)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !331, file: !295, line: 127, baseType: !339, size: 4096, offset: 192)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 4096, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !331, file: !295, line: 128, baseType: !42, size: 32, offset: 4288)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !331, file: !295, line: 129, baseType: !344, size: 16384, offset: 4320)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16384, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 2048)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !331, file: !295, line: 130, baseType: !42, size: 32, offset: 20704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !294, file: !295, line: 69, baseType: !349, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !295, line: 116, size: 384, elements: !352)
!352 = !{!353, !357, !380, !5187, !5191, !5195}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !351, file: !295, line: 117, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !300}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !351, file: !295, line: 118, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !361, line: 254, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!362 = !{!363, !376}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !360, file: !361, line: 255, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !300, !371, !335}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 66, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !57, line: 73, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !57, line: 15, baseType: !370)
!370 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !361, line: 30, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !361, line: 31, baseType: !36, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !372, file: !361, line: 32, baseType: !44, size: 16, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !360, file: !361, line: 256, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!367, !300, !371, !36, !55}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !351, file: !295, line: 119, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !361, line: 84, size: 320, elements: !385)
!385 = !{!386, !387, !391, !5183, !5185}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !361, line: 85, baseType: !36, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !384, file: !361, line: 86, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!44, !300, !371, !42}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !384, file: !361, line: 88, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!44, !300, !395, !42}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !361, line: 175, size: 512, elements: !397)
!397 = !{!398, !399, !400, !401, !5174, !5178, !5179}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !396, file: !361, line: 176, baseType: !372, size: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !396, file: !361, line: 177, baseType: !55, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !396, file: !361, line: 178, baseType: !40, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !396, file: !361, line: 179, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !407)
!407 = !{!408, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5168, !5169, !5170, !5171, !5172, !5173}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !406, file: !19, line: 473, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !411)
!411 = !{!412, !413, !414, !422, !423, !430, !431, !434, !435, !4950, !4951, !4952, !4953, !4954, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4994, !4997, !4998, !4999, !5016, !5017, !5018, !5019}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !410, file: !19, line: 642, baseType: !44, size: 16)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !410, file: !19, line: 643, baseType: !46, size: 16, offset: 16)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !410, file: !19, line: 644, baseType: !415, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !416, line: 23, baseType: !417)
!416 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 21, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !417, file: !416, line: 22, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !45, line: 37, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !57, line: 49, baseType: !7)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !410, file: !19, line: 645, baseType: !117, size: 128, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !410, file: !19, line: 646, baseType: !424, size: 32, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !416, line: 28, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 26, size: 32, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !425, file: !416, line: 27, baseType: !428, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !45, line: 38, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !57, line: 50, baseType: !7)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !410, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !410, file: !19, line: 650, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !410, file: !19, line: 651, baseType: !432, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !410, file: !19, line: 654, baseType: !436, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !439)
!439 = !{!440, !4784, !4794, !4798, !4802, !4806, !4810, !4814, !4818, !4822, !4826, !4827, !4831, !4835, !4872, !4901, !4905, !4911, !4915, !4919, !4923, !4927, !4931, !4937, !4941}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !438, file: !19, line: 1967, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!444, !409, !444, !7}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !446, line: 82, size: 1536, elements: !447)
!446 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!447 = !{!448, !449, !459, !467, !468, !483, !484, !488, !501, !4768, !4769, !4770, !4771, !4776, !4777, !4778}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !445, file: !446, line: 84, baseType: !7, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !445, file: !446, line: 85, baseType: !450, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !451, line: 275, baseType: !452)
!451 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !451, line: 275, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !452, file: !451, line: 275, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !451, line: 69, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !451, line: 64, size: 32, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !456, file: !451, line: 65, baseType: !7, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !445, file: !446, line: 86, baseType: !460, size: 128, offset: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !461, line: 38, size: 128, elements: !462)
!461 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!462 = !{!463, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !461, line: 39, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !460, file: !461, line: 39, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !445, file: !446, line: 87, baseType: !444, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !445, file: !446, line: 88, baseType: !469, size: 128, offset: 256)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !446, line: 49, size: 128, elements: !470)
!470 = !{!471, !480}
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !446, line: 50, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !446, line: 50, size: 64, elements: !473)
!473 = !{!474, !479}
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !446, line: 51, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !446, line: 51, size: 64, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !475, file: !446, line: 52, baseType: !283, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !475, file: !446, line: 52, baseType: !283, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !472, file: !446, line: 54, baseType: !287, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !469, file: !446, line: 56, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !445, file: !446, line: 89, baseType: !409, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !445, file: !446, line: 91, baseType: !485, size: 256, offset: 448)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !445, file: !446, line: 94, baseType: !489, size: 64, offset: 704)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !490, line: 25, size: 64, elements: !491)
!490 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!491 = !{!492}
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !490, line: 26, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !490, line: 26, size: 64, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !493, file: !490, line: 28, baseType: !288, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !490, line: 30, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !490, line: 30, size: 64, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !497, file: !490, line: 31, baseType: !79, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !497, file: !490, line: 32, baseType: !42, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !445, file: !446, line: 95, baseType: !502, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !446, line: 128, size: 1024, align: 512, elements: !505)
!505 = !{!506, !510, !511, !518, !524, !528, !532, !536, !537, !541, !545, !4758, !4762}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !504, file: !446, line: 129, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!42, !444, !7}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !504, file: !446, line: 130, baseType: !507, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !504, file: !446, line: 131, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!42, !515, !517}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !504, file: !446, line: 132, baseType: !519, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!42, !515, !7, !36, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !504, file: !446, line: 134, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!42, !515}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !504, file: !446, line: 135, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!42, !444}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !504, file: !446, line: 136, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !444}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !504, file: !446, line: 137, baseType: !533, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !504, file: !446, line: 138, baseType: !538, size: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !444, !409}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !504, file: !446, line: 139, baseType: !542, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!335, !444, !335, !42}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !504, file: !446, line: 140, baseType: !546, size: 64, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!549, !4757}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !551, line: 70, size: 256, elements: !552)
!551 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!552 = !{!553, !554, !4753, !4754}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !550, file: !551, line: 71, baseType: !444, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !550, file: !551, line: 72, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !557)
!557 = !{!558, !559, !562, !563, !564, !565, !1049, !2379, !2419, !2504, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2521, !2525, !2526, !3015, !3018, !3080, !3083, !3084, !3085, !3126, !4687, !4688, !4689, !4690, !4691, !4692, !4695, !4696, !4703, !4704, !4705, !4706, !4707, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !556, file: !19, line: 1191, baseType: !117, size: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !556, file: !19, line: 1192, baseType: !560, size: 32, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !45, line: 21, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !45, line: 18, baseType: !283)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !556, file: !19, line: 1193, baseType: !107, size: 8, offset: 160)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !556, file: !19, line: 1194, baseType: !59, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !556, file: !19, line: 1195, baseType: !61, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !556, file: !19, line: 1196, baseType: !566, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !568)
!568 = !{!569, !570, !571, !578, !582, !586, !590, !1034, !1035, !1039, !1041, !1042, !1043, !1045, !1046, !1047, !1048}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !567, file: !19, line: 2367, baseType: !36, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !567, file: !19, line: 2368, baseType: !42, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !567, file: !19, line: 2376, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!42, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !577, line: 32, flags: DIFlagFwdDecl)
!577 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!578 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !567, file: !19, line: 2377, baseType: !579, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !567, file: !19, line: 2378, baseType: !583, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!444, !566, !42, !36, !40}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !567, file: !19, line: 2380, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !555}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !567, file: !19, line: 2381, baseType: !591, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !593)
!593 = !{!594, !595, !596, !600, !622, !648, !649, !650, !651, !655, !660, !661, !681, !737, !738, !739, !740, !741, !744, !745, !746, !754, !758, !785, !806, !807, !808, !809, !818, !841, !842, !845, !848, !849, !850, !851, !852, !853, !854, !859, !860, !988, !996, !997, !998, !1000, !1004, !1005, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1027, !1028, !1029, !1033}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !592, file: !6, line: 403, baseType: !5, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !592, file: !6, line: 406, baseType: !117, size: 128, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !592, file: !6, line: 409, baseType: !597, size: 448, offset: 192)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 448, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 56)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !592, file: !6, line: 417, baseType: !601, size: 768, offset: 640)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !602)
!602 = !{!603, !604, !605, !606, !609}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !601, file: !6, line: 46, baseType: !294, size: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !601, file: !6, line: 47, baseType: !591, size: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !601, file: !6, line: 48, baseType: !300, size: 64, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !601, file: !6, line: 49, baseType: !607, size: 64, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !601, file: !6, line: 50, baseType: !610, size: 64, offset: 704)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !612, line: 26, size: 256, elements: !613)
!612 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !611, file: !612, line: 27, baseType: !7, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !611, file: !612, line: 28, baseType: !616, size: 192, offset: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !617, line: 43, size: 192, elements: !618)
!617 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!618 = !{!619, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !616, file: !617, line: 44, baseType: !620, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !616, file: !617, line: 45, baseType: !117, size: 128, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !592, file: !6, line: 418, baseType: !623, size: 64, offset: 1408)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !625)
!625 = !{!626, !627, !632, !636, !640, !644}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !624, file: !6, line: 54, baseType: !372, size: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !624, file: !6, line: 55, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!367, !623, !631, !335}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !624, file: !6, line: 57, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!367, !623, !631, !36, !55}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !624, file: !6, line: 59, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !591, !36}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !624, file: !6, line: 60, baseType: !641, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!42, !591}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !624, file: !6, line: 61, baseType: !645, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !591}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !592, file: !6, line: 419, baseType: !36, size: 64, offset: 1472)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !592, file: !6, line: 420, baseType: !36, size: 64, offset: 1536)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !592, file: !6, line: 421, baseType: !300, size: 64, offset: 1600)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !592, file: !6, line: 424, baseType: !652, size: 64, offset: 1664)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !592, file: !6, line: 425, baseType: !656, size: 64, offset: 1728)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !104, line: 20, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !106, line: 26, baseType: !42)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !592, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !592, file: !6, line: 435, baseType: !662, size: 256, offset: 1856)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !663, line: 66, size: 256, elements: !664)
!663 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!664 = !{!665, !674, !675, !680}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !662, file: !663, line: 67, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !667, line: 13, baseType: !668)
!667 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !669, file: !45, line: 180, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !104, line: 22, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !106, line: 30, baseType: !63)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !662, file: !663, line: 68, baseType: !620, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !662, file: !663, line: 70, baseType: !676, size: 32, offset: 96)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !677, line: 15, size: 32, elements: !678)
!677 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !676, file: !677, line: 20, baseType: !69, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !662, file: !663, line: 72, baseType: !117, size: 128, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !592, file: !6, line: 437, baseType: !682, size: 64, offset: 2112)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !684, line: 69, size: 320, elements: !685)
!684 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!685 = !{!686, !687, !688, !708, !710, !714, !715}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !683, file: !684, line: 70, baseType: !36, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !683, file: !684, line: 71, baseType: !591, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !683, file: !684, line: 72, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !684, line: 47, size: 256, elements: !692)
!692 = !{!693, !694, !700, !704}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !684, line: 49, baseType: !7, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !691, file: !684, line: 51, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!42, !36, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !691, file: !684, line: 53, baseType: !701, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!42, !335, !698}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !691, file: !684, line: 55, baseType: !705, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !40}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !683, file: !684, line: 73, baseType: !709, size: 16, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !683, file: !684, line: 74, baseType: !711, size: 8, offset: 208)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !104, line: 16, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !106, line: 20, baseType: !713)
!713 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !684, line: 75, baseType: !103, size: 8, offset: 216)
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !683, file: !684, line: 76, baseType: !716, size: 64, offset: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !684, line: 76, size: 64, elements: !717)
!717 = !{!718, !719, !726}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !716, file: !684, line: 77, baseType: !40, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !716, file: !684, line: 78, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !684, line: 86, size: 128, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !722, file: !684, line: 87, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !722, file: !684, line: 88, baseType: !335, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !716, file: !684, line: 79, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !684, line: 92, size: 256, elements: !730)
!730 = !{!731, !732, !733, !735, !736}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !729, file: !684, line: 94, baseType: !7, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !729, file: !684, line: 95, baseType: !7, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !729, file: !684, line: 96, baseType: !734, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !729, file: !684, line: 97, baseType: !689, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !729, file: !684, line: 98, baseType: !40, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !592, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !592, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !592, file: !6, line: 442, baseType: !652, size: 64, offset: 2240)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !592, file: !6, line: 443, baseType: !656, size: 64, offset: 2304)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !592, file: !6, line: 444, baseType: !742, size: 8, offset: 2368)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !743)
!743 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !592, file: !6, line: 451, baseType: !742, size: 8, offset: 2376)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !592, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !592, file: !6, line: 455, baseType: !747, size: 64, offset: 2432)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !749, line: 23, size: 96, elements: !750)
!749 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!750 = !{!751, !752, !753}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !748, file: !749, line: 24, baseType: !42, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !748, file: !749, line: 24, baseType: !42, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !748, file: !749, line: 24, baseType: !42, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !592, file: !6, line: 458, baseType: !755, size: 64, offset: 2496)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!42}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !592, file: !6, line: 460, baseType: !759, size: 4032, align: 512, offset: 2560)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 4032, elements: !783)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !761)
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !760, file: !6, line: 363, baseType: !40, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !760, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !760, file: !6, line: 367, baseType: !765, size: 448, offset: 128)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !765, file: !6, line: 320, baseType: !591, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !6, line: 321, baseType: !769, size: 384, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !770, line: 40, size: 384, elements: !771)
!770 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !769, file: !770, line: 41, baseType: !773, size: 384, align: 64)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 384, align: 64, elements: !781)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !775, line: 5, size: 192, align: 64, elements: !776)
!775 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!776 = !{!777, !778, !780}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !774, file: !775, line: 6, baseType: !59, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !774, file: !775, line: 7, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !774, file: !775, line: 8, baseType: !779, size: 64, offset: 128)
!781 = !{!782}
!782 = !DISubrange(count: 2)
!783 = !{!784}
!784 = !DISubrange(count: 7)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !592, file: !6, line: 463, baseType: !786, size: 192, offset: 6592)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !787, line: 8, size: 192, elements: !788)
!787 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!788 = !{!789, !790, !792}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !786, file: !787, line: 10, baseType: !7, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !786, file: !787, line: 11, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !786, file: !787, line: 12, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !795, line: 59, size: 48, elements: !796)
!795 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!796 = !{!797, !801, !802, !803, !804, !805}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !794, file: !795, line: 60, baseType: !798, size: 16)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !104, line: 18, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !106, line: 23, baseType: !800)
!800 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !794, file: !795, line: 61, baseType: !798, size: 16, offset: 16)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !794, file: !795, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !794, file: !795, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !795, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !794, file: !795, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !592, file: !6, line: 465, baseType: !59, size: 64, offset: 6784)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !592, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !592, file: !6, line: 470, baseType: !117, size: 128, offset: 6912)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !592, file: !6, line: 471, baseType: !810, size: 64, offset: 7040)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !812, line: 33, size: 96, elements: !813)
!812 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!813 = !{!814, !815, !816, !817}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !811, file: !812, line: 37, baseType: !42, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !811, file: !812, line: 43, baseType: !42, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !811, file: !812, line: 45, baseType: !46, size: 16, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !812, line: 47, baseType: !46, size: 16, offset: 80)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !592, file: !6, line: 476, baseType: !819, size: 64, offset: 7104)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !821)
!821 = !{!822, !838, !839, !840}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !820, file: !6, line: 379, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !825, line: 204, baseType: !826)
!825 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !825, line: 197, size: 192, elements: !827)
!827 = !{!828, !830, !831, !832, !834, !836}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !826, file: !825, line: 198, baseType: !829, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !825, line: 21, baseType: !284)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !826, file: !825, line: 199, baseType: !107, size: 8, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !826, file: !825, line: 200, baseType: !107, size: 8, offset: 40)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !826, file: !825, line: 201, baseType: !833, size: 16, offset: 48)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !825, line: 17, baseType: !114)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !826, file: !825, line: 202, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !825, line: 16, baseType: !288)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !826, file: !825, line: 203, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !825, line: 22, baseType: !288)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !820, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !820, file: !6, line: 381, baseType: !335, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !820, file: !6, line: 382, baseType: !335, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !592, file: !6, line: 477, baseType: !820, size: 256, offset: 7168)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !592, file: !6, line: 480, baseType: !843, size: 64, offset: 7424)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !592, file: !6, line: 483, baseType: !846, size: 64, offset: 7488)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !592, file: !6, line: 488, baseType: !335, size: 64, offset: 7552)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !592, file: !6, line: 492, baseType: !40, size: 64, offset: 7616)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !592, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !592, file: !6, line: 495, baseType: !40, size: 64, offset: 7744)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !592, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !592, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !592, file: !6, line: 500, baseType: !855, size: 64, offset: 7872)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !857, line: 45, baseType: !858)
!857 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !592, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !592, file: !6, line: 504, baseType: !861, size: 64, offset: 8000)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !864, line: 96, size: 192, elements: !865)
!864 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!865 = !{!866, !867, !948, !952}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !863, file: !864, line: 97, baseType: !7, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !863, file: !864, line: 98, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !864, line: 24, size: 3072, elements: !870)
!870 = !{!871, !873, !874, !875, !876, !900, !901, !902, !903, !921, !933, !934, !945, !946, !947}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !869, file: !864, line: 26, baseType: !872, size: 128)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 128, elements: !781)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !869, file: !864, line: 27, baseType: !872, size: 128, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !869, file: !864, line: 28, baseType: !42, size: 32, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !869, file: !864, line: 31, baseType: !79, size: 32, align: 512, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !869, file: !864, line: 32, baseType: !877, size: 960, offset: 576)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !878, line: 206, size: 960, elements: !879)
!878 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!879 = !{!880, !889, !894, !896, !897, !899}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !877, file: !878, line: 207, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !45, line: 232, size: 128, align: 64, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !882, file: !45, line: 233, baseType: !881, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !882, file: !45, line: 234, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !881}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !877, file: !878, line: 208, baseType: !890, size: 256, offset: 64)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 256, elements: !892)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!892 = !{!893}
!893 = !DISubrange(count: 4)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !877, file: !878, line: 209, baseType: !895, size: 256, offset: 320)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !892)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !877, file: !878, line: 213, baseType: !370, size: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !877, file: !878, line: 215, baseType: !898, size: 256, offset: 640)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 256, elements: !892)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !877, file: !878, line: 216, baseType: !103, size: 8, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !869, file: !864, line: 33, baseType: !59, size: 64, offset: 1536)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !869, file: !864, line: 34, baseType: !59, size: 64, offset: 1600)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !869, file: !864, line: 35, baseType: !742, size: 8, offset: 1664)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !869, file: !864, line: 36, baseType: !904, size: 320, offset: 1728)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !905, line: 11, size: 320, elements: !906)
!905 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!906 = !{!907, !914, !915, !920}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !904, file: !905, line: 16, baseType: !908, size: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !45, line: 198, size: 128, elements: !909)
!909 = !{!910, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !45, line: 199, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !908, file: !45, line: 199, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !904, file: !905, line: 17, baseType: !59, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !904, file: !905, line: 18, baseType: !916, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !905, line: 19, baseType: !283, size: 32, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !869, file: !864, line: 37, baseType: !922, size: 256, offset: 2048)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !923, line: 98, size: 256, elements: !924)
!923 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !922, file: !923, line: 99, baseType: !666, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !922, file: !923, line: 100, baseType: !117, size: 128, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !922, file: !923, line: 101, baseType: !928, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !923, line: 21, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !869, file: !864, line: 38, baseType: !882, size: 128, align: 64, offset: 2304)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !869, file: !864, line: 39, baseType: !935, size: 64, offset: 2432)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !864, line: 49, size: 768, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !936, file: !864, line: 50, baseType: !79, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !936, file: !864, line: 51, baseType: !895, size: 256, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !936, file: !864, line: 53, baseType: !895, size: 256, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !936, file: !864, line: 54, baseType: !59, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !936, file: !864, line: 55, baseType: !935, size: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !936, file: !864, line: 56, baseType: !42, size: 32, offset: 704)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !936, file: !864, line: 57, baseType: !42, size: 32, offset: 736)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !869, file: !864, line: 40, baseType: !59, size: 64, offset: 2496)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !869, file: !864, line: 42, baseType: !42, size: 32, offset: 2560)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !869, file: !864, line: 43, baseType: !862, size: 64, offset: 2624)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !863, file: !864, line: 99, baseType: !949, offset: 128)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !950, line: 211, elements: !951)
!950 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!951 = !{}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !863, file: !864, line: 100, baseType: !953, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !864, line: 63, size: 3008, elements: !955)
!955 = !{!956, !957, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !987}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !954, file: !864, line: 64, baseType: !935, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !954, file: !864, line: 65, baseType: !958, size: 192, offset: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 192, elements: !336)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !954, file: !864, line: 67, baseType: !42, size: 32, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !954, file: !864, line: 68, baseType: !662, size: 256, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !954, file: !864, line: 69, baseType: !79, size: 32, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !954, file: !864, line: 70, baseType: !662, size: 256, offset: 640)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !954, file: !864, line: 71, baseType: !59, size: 64, offset: 896)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !954, file: !864, line: 72, baseType: !59, size: 64, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !954, file: !864, line: 73, baseType: !59, size: 64, offset: 1024)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !954, file: !864, line: 74, baseType: !59, size: 64, offset: 1088)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !954, file: !864, line: 75, baseType: !59, size: 64, offset: 1152)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !954, file: !864, line: 76, baseType: !59, size: 64, offset: 1216)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !954, file: !864, line: 77, baseType: !59, size: 64, offset: 1280)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !954, file: !864, line: 78, baseType: !59, size: 64, offset: 1344)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !954, file: !864, line: 79, baseType: !742, size: 8, offset: 1408)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !954, file: !864, line: 80, baseType: !59, size: 64, offset: 1472)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !954, file: !864, line: 81, baseType: !662, size: 256, offset: 1536)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !954, file: !864, line: 82, baseType: !611, size: 256, offset: 1792)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !954, file: !864, line: 84, baseType: !69, size: 32, offset: 2048)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !954, file: !864, line: 87, baseType: !59, size: 64, offset: 2112)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !954, file: !864, line: 88, baseType: !59, size: 64, offset: 2176)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !954, file: !864, line: 89, baseType: !979, size: 704, offset: 2240)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !923, line: 111, size: 704, elements: !980)
!980 = !{!981, !982, !983, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !979, file: !923, line: 112, baseType: !922, size: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !979, file: !923, line: 113, baseType: !904, size: 320, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !979, file: !923, line: 116, baseType: !984, size: 64, offset: 576)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !923, line: 18, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !979, file: !923, line: 117, baseType: !42, size: 32, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !954, file: !864, line: 90, baseType: !862, size: 64, offset: 2944)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !592, file: !6, line: 515, baseType: !989, size: 64, offset: 8064)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !991, line: 117, size: 128, elements: !992)
!991 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !990, file: !991, line: 118, baseType: !658, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !990, file: !991, line: 119, baseType: !658, size: 32, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !990, file: !991, line: 120, baseType: !370, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !592, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !592, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !592, file: !6, line: 520, baseType: !999, size: 64, offset: 8192)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !592, file: !6, line: 523, baseType: !1001, size: 64, offset: 8256)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !592, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !592, file: !6, line: 525, baseType: !1006, size: 64, offset: 8384)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !1009, line: 28, size: 192, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !1008, file: !1009, line: 29, baseType: !36, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !1008, file: !1009, line: 30, baseType: !36, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !1008, file: !1009, line: 31, baseType: !59, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !592, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !592, file: !6, line: 533, baseType: !40, size: 64, offset: 8512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !592, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !592, file: !6, line: 535, baseType: !273, size: 64, offset: 8640)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !592, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !592, file: !6, line: 539, baseType: !42, size: 32, offset: 8736)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !592, file: !6, line: 540, baseType: !1021, size: 64, offset: 8768)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1023, line: 32, size: 64, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1022, file: !1023, line: 33, baseType: !658, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1022, file: !1023, line: 34, baseType: !658, size: 32, offset: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !592, file: !6, line: 563, baseType: !117, size: 128, offset: 8832)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !592, file: !6, line: 565, baseType: !117, size: 128, offset: 8960)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !592, file: !6, line: 568, baseType: !1030, size: 64, offset: 9088)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !592, file: !6, line: 570, baseType: !69, size: 32, offset: 9152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !567, file: !19, line: 2382, baseType: !566, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !567, file: !19, line: 2383, baseType: !1036, size: 64, offset: 512)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !45, line: 194, size: 64, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1036, file: !45, line: 195, baseType: !911, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !567, file: !19, line: 2385, baseType: !1040, offset: 576)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !950, line: 206, elements: !951)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !567, file: !19, line: 2386, baseType: !1040, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !567, file: !19, line: 2387, baseType: !1040, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !567, file: !19, line: 2388, baseType: !1044, offset: 576)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, elements: !336)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !567, file: !19, line: 2390, baseType: !1040, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !567, file: !19, line: 2391, baseType: !1040, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !567, file: !19, line: 2392, baseType: !1040, offset: 576)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !567, file: !19, line: 2393, baseType: !1040, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !556, file: !19, line: 1197, baseType: !1050, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !1053)
!1053 = !{!1054, !1058, !1062, !1063, !1067, !1091, !1095, !1096, !1097, !1101, !1105, !1109, !1110, !1111, !1117, !1121, !1122, !2304, !2305, !2306, !2307, !2311, !2315, !2362, !2377, !2378}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1052, file: !19, line: 2058, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!409, !555}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1052, file: !19, line: 2059, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !409}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1052, file: !19, line: 2060, baseType: !1059, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1052, file: !19, line: 2062, baseType: !1064, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !409, !42}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1052, file: !19, line: 2063, baseType: !1068, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!42, !409, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 42, size: 384, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1072, file: !14, line: 43, baseType: !370, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1072, file: !14, line: 45, baseType: !370, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1072, file: !14, line: 52, baseType: !61, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1072, file: !14, line: 53, baseType: !61, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1072, file: !14, line: 55, baseType: !13, size: 32, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1072, file: !14, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1072, file: !14, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1072, file: !14, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1072, file: !14, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1072, file: !14, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1072, file: !14, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1072, file: !14, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1072, file: !14, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1072, file: !14, line: 78, baseType: !1088, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !14, line: 78, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1052, file: !19, line: 2064, baseType: !1092, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!42, !409}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1052, file: !19, line: 2065, baseType: !1059, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1052, file: !19, line: 2066, baseType: !587, size: 64, offset: 448)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1052, file: !19, line: 2067, baseType: !1098, size: 64, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!42, !555, !42}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1052, file: !19, line: 2068, baseType: !1102, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!42, !555, !18}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1052, file: !19, line: 2069, baseType: !1106, size: 64, offset: 640)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!42, !555}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1052, file: !19, line: 2070, baseType: !1102, size: 64, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1052, file: !19, line: 2071, baseType: !1106, size: 64, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1052, file: !19, line: 2072, baseType: !1112, size: 64, offset: 832)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!42, !444, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1052, file: !19, line: 2073, baseType: !1118, size: 64, offset: 896)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!42, !555, !791, !335}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1052, file: !19, line: 2074, baseType: !587, size: 64, offset: 960)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1052, file: !19, line: 2076, baseType: !1123, size: 64, offset: 1024)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!42, !1126, !444}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1128, line: 17, size: 960, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1159, !1160, !2303}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1127, file: !1128, line: 18, baseType: !335, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1127, file: !1128, line: 19, baseType: !55, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1127, file: !1128, line: 20, baseType: !55, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1127, file: !1128, line: 21, baseType: !55, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1127, file: !1128, line: 22, baseType: !55, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1127, file: !1128, line: 23, baseType: !61, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1127, file: !1128, line: 24, baseType: !61, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1127, file: !1128, line: 25, baseType: !662, size: 256, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1127, file: !1128, line: 26, baseType: !1139, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1128, line: 32, size: 256, elements: !1142)
!1142 = !{!1143, !1147, !1151, !1155}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1141, file: !1128, line: 33, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!40, !1126, !60}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1141, file: !1128, line: 34, baseType: !1148, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !1126, !40}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1141, file: !1128, line: 35, baseType: !1152, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!40, !1126, !40, !60}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1141, file: !1128, line: 36, baseType: !1156, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!42, !1126, !40}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1127, file: !1128, line: 27, baseType: !42, size: 32, offset: 768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1127, file: !1128, line: 28, baseType: !1161, size: 64, offset: 832)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !1164)
!1164 = !{!1165, !1176, !1177, !1179, !1180, !1181, !1182, !1183, !1238, !1562, !1571, !1577, !1578, !2293, !2294, !2295, !2296, !2298, !2299, !2302}
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !19, line: 995, baseType: !1166, size: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !19, line: 995, size: 128, elements: !1167)
!1167 = !{!1168, !1174, !1175}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1166, file: !19, line: 996, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1170, line: 60, size: 64, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1171 = !{!1172}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1169, file: !1170, line: 61, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1166, file: !19, line: 997, baseType: !882, size: 128, align: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1166, file: !19, line: 998, baseType: !7, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1163, file: !19, line: 1005, baseType: !79, size: 32, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1163, file: !19, line: 1006, baseType: !1178, size: 32, offset: 160)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !45, line: 156, baseType: !7)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1163, file: !19, line: 1007, baseType: !666, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1163, file: !19, line: 1008, baseType: !662, size: 256, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1163, file: !19, line: 1009, baseType: !61, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1163, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1163, file: !19, line: 1011, baseType: !1184, size: 256, offset: 640)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !1185)
!1185 = !{!1186, !1207, !1234, !1235, !1236, !1237}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1184, file: !19, line: 949, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1188, line: 34, baseType: !1189)
!1188 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 25, size: 64, elements: !1190)
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1189, file: !1188, line: 26, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1193, line: 27, baseType: !1194)
!1193 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1193, line: 13, size: 64, elements: !1195)
!1195 = !{!1196, !1206}
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1193, line: 14, baseType: !1197, size: 32)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1193, line: 14, size: 32, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1197, file: !1193, line: 15, baseType: !69, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1193, line: 16, baseType: !1201, size: 32)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1193, line: 16, size: 32, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1201, file: !1193, line: 18, baseType: !103, size: 8)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1201, file: !1193, line: 19, baseType: !1205, size: 24, offset: 8)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24, elements: !336)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1194, file: !1193, line: 26, baseType: !91, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1184, file: !19, line: 950, baseType: !1208, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !24, line: 59, size: 768, elements: !1210)
!1210 = !{!1211, !1217, !1218, !1219, !1221, !1222, !1223, !1224}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1209, file: !24, line: 61, baseType: !1212, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1213, line: 113, baseType: !1214)
!1213 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1213, line: 111, size: 32, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1214, file: !1213, line: 112, baseType: !69, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1209, file: !24, line: 62, baseType: !7, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1209, file: !24, line: 63, baseType: !79, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1209, file: !24, line: 65, baseType: !1220, size: 256, offset: 128)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 256, elements: !892)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1209, file: !24, line: 66, baseType: !1036, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1209, file: !24, line: 68, baseType: !74, size: 192, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1209, file: !24, line: 69, baseType: !882, size: 128, align: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1209, file: !24, line: 70, baseType: !1225, offset: 768)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, elements: !1232)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !24, line: 54, size: 128, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1226, file: !24, line: 55, baseType: !42, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1226, file: !24, line: 56, baseType: !1230, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !24, line: 56, flags: DIFlagFwdDecl)
!1232 = !{!1233}
!1233 = !DISubrange(count: -1)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1184, file: !19, line: 951, baseType: !23, size: 32, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1184, file: !19, line: 952, baseType: !415, size: 32, offset: 160)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1184, file: !19, line: 952, baseType: !415, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1184, file: !19, line: 953, baseType: !42, size: 32, offset: 224)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1163, file: !19, line: 1012, baseType: !1239, size: 64, offset: 896)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1242, line: 110, size: 1472, elements: !1243)
!1242 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1260, !1261, !1262, !1263, !1264, !1265, !1383, !1384, !1385, !1386, !1387, !1418, !1548, !1549, !1557}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1241, file: !1242, line: 111, baseType: !666, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1241, file: !1242, line: 112, baseType: !415, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1241, file: !1242, line: 113, baseType: !424, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1241, file: !1242, line: 114, baseType: !415, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1241, file: !1242, line: 115, baseType: !424, size: 32, offset: 160)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1241, file: !1242, line: 116, baseType: !415, size: 32, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1241, file: !1242, line: 117, baseType: !424, size: 32, offset: 224)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1241, file: !1242, line: 118, baseType: !415, size: 32, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1241, file: !1242, line: 119, baseType: !424, size: 32, offset: 288)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1241, file: !1242, line: 120, baseType: !7, size: 32, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1241, file: !1242, line: 121, baseType: !1255, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1256, line: 24, baseType: !1257)
!1256 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1256, line: 24, size: 64, elements: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1257, file: !1256, line: 24, baseType: !287, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1241, file: !1242, line: 122, baseType: !1255, size: 64, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1241, file: !1242, line: 123, baseType: !1255, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1241, file: !1242, line: 124, baseType: !1255, size: 64, offset: 576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1241, file: !1242, line: 125, baseType: !1255, size: 64, offset: 640)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1241, file: !1242, line: 127, baseType: !107, size: 8, offset: 704)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1241, file: !1242, line: 129, baseType: !1266, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1268, line: 195, size: 1728, elements: !1269)
!1268 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1269 = !{!1270, !1271, !1274, !1279, !1288, !1291, !1292, !1299, !1300, !1301, !1302, !1305, !1306, !1307, !1308, !1309, !1347, !1368}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1267, file: !1268, line: 196, baseType: !1212, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1267, file: !1268, line: 197, baseType: !1272, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1268, line: 28, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !45, line: 104, baseType: !658)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1268, line: 198, baseType: !1275, size: 192, offset: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 198, size: 192, elements: !1276)
!1276 = !{!1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1275, file: !1268, line: 199, baseType: !117, size: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1275, file: !1268, line: 200, baseType: !774, size: 192, align: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1267, file: !1268, line: 205, baseType: !1280, size: 320, offset: 256)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1281, line: 48, size: 320, elements: !1282)
!1281 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1282 = !{!1283, !1284, !1285, !1286, !1287}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1280, file: !1281, line: 49, baseType: !666, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1280, file: !1281, line: 55, baseType: !666, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1280, file: !1281, line: 57, baseType: !676, size: 32, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1280, file: !1281, line: 59, baseType: !620, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1280, file: !1281, line: 60, baseType: !117, size: 128, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1267, file: !1268, line: 206, baseType: !1289, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1268, line: 206, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1267, file: !1268, line: 207, baseType: !40, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1268, line: 208, baseType: !1293, size: 64, offset: 704)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 208, size: 64, elements: !1294)
!1294 = !{!1295, !1298}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1293, file: !1268, line: 209, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1297, line: 8, baseType: !673)
!1297 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1293, file: !1268, line: 210, baseType: !1296, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1267, file: !1268, line: 212, baseType: !1296, size: 64, offset: 768)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1267, file: !1268, line: 213, baseType: !415, size: 32, offset: 832)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1267, file: !1268, line: 214, baseType: !424, size: 32, offset: 864)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1267, file: !1268, line: 215, baseType: !1303, size: 32, offset: 896)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1268, line: 31, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 110, baseType: !283)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1267, file: !1268, line: 216, baseType: !46, size: 16, offset: 928)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1267, file: !1268, line: 217, baseType: !46, size: 16, offset: 944)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1267, file: !1268, line: 221, baseType: !800, size: 16, offset: 960)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1267, file: !1268, line: 228, baseType: !59, size: 64, offset: 1024)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1268, line: 245, baseType: !1310, size: 320, offset: 1088)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 245, size: 320, elements: !1311)
!1311 = !{!1312, !1339}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1310, file: !1268, line: 246, baseType: !1313, size: 320)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1268, line: 114, size: 320, elements: !1314)
!1314 = !{!1315, !1316, !1328, !1331, !1338}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1313, file: !1268, line: 116, baseType: !59, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1268, line: 117, baseType: !1317, size: 64, offset: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1268, line: 117, size: 64, elements: !1318)
!1318 = !{!1319, !1327}
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !1268, line: 118, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1317, file: !1268, line: 118, size: 64, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1320, file: !1268, line: 120, baseType: !113, size: 16)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1320, file: !1268, line: 121, baseType: !1324, size: 48, offset: 16)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 6)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1317, file: !1268, line: 127, baseType: !59, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1313, file: !1268, line: 129, baseType: !1329, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1268, line: 102, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1313, file: !1268, line: 130, baseType: !1332, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1268, line: 108, size: 192, elements: !1334)
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1333, file: !1268, line: 109, baseType: !882, size: 128, align: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1333, file: !1268, line: 110, baseType: !1212, size: 32, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1333, file: !1268, line: 111, baseType: !742, size: 8, offset: 160)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1313, file: !1268, line: 131, baseType: !36, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !1268, line: 247, baseType: !1340, size: 320)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1310, file: !1268, line: 247, size: 320, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1340, file: !1268, line: 248, baseType: !59, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1340, file: !1268, line: 249, baseType: !59, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1340, file: !1268, line: 250, baseType: !1329, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1340, file: !1268, line: 251, baseType: !1332, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1340, file: !1268, line: 252, baseType: !335, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1268, line: 260, baseType: !1348, size: 256, offset: 1408)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 260, size: 256, elements: !1349)
!1349 = !{!1350, !1356}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1348, file: !1268, line: 261, baseType: !1351, size: 256)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1268, line: 134, size: 256, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1351, file: !1268, line: 135, baseType: !40, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1351, file: !1268, line: 136, baseType: !1355, size: 256)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !892)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !1268, line: 262, baseType: !1357, size: 256)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !1268, line: 262, size: 256, elements: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1357, file: !1268, line: 264, baseType: !117, size: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1357, file: !1268, line: 265, baseType: !1361, size: 128, offset: 128)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1362, line: 22, size: 128, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1363 = !{!1364, !1367}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1361, file: !1362, line: 23, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1362, line: 23, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1361, file: !1362, line: 24, baseType: !59, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1267, file: !1268, line: 280, baseType: !1369, size: 64, offset: 1664)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1268, line: 176, size: 192, elements: !1371)
!1371 = !{!1372, !1381, !1382}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1370, file: !1268, line: 177, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1268, line: 171, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!42, !1266, !1377, !1379, !1266}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1370, file: !1268, line: 178, baseType: !1266, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1370, file: !1268, line: 179, baseType: !1329, size: 64, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1241, file: !1242, line: 130, baseType: !1266, size: 64, offset: 832)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1241, file: !1242, line: 131, baseType: !1266, size: 64, offset: 896)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1241, file: !1242, line: 132, baseType: !1266, size: 64, offset: 960)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1241, file: !1242, line: 135, baseType: !40, size: 64, offset: 1024)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1241, file: !1242, line: 137, baseType: !1388, size: 64, offset: 1088)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1390, line: 14, size: 1088, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1391 = !{!1392, !1393, !1402, !1403, !1404, !1405, !1406, !1407}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1389, file: !1390, line: 15, baseType: !1212, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1389, file: !1390, line: 17, baseType: !1394, size: 320, offset: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1395, line: 22, size: 320, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1396 = !{!1397, !1398, !1399, !1400}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !1395, line: 23, baseType: !620, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1394, file: !1395, line: 24, baseType: !672, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1394, file: !1395, line: 26, baseType: !117, size: 128, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1394, file: !1395, line: 28, baseType: !1401, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1389, file: !1390, line: 19, baseType: !59, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1389, file: !1390, line: 20, baseType: !666, size: 64, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1389, file: !1390, line: 23, baseType: !908, size: 128, offset: 512)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1389, file: !1390, line: 24, baseType: !415, size: 32, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1389, file: !1390, line: 29, baseType: !666, size: 64, offset: 704)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1389, file: !1390, line: 36, baseType: !1408, size: 320, offset: 768)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1409, line: 15, size: 320, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1408, file: !1409, line: 16, baseType: !620, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1408, file: !1409, line: 18, baseType: !42, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1408, file: !1409, line: 19, baseType: !42, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1408, file: !1409, line: 20, baseType: !42, size: 32, offset: 96)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1408, file: !1409, line: 21, baseType: !42, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1408, file: !1409, line: 22, baseType: !59, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1408, file: !1409, line: 23, baseType: !59, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1241, file: !1242, line: 138, baseType: !1419, size: 64, offset: 1152)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1421, line: 68, size: 4800, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1422 = !{!1423, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1530, !1531, !1545, !1547}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1420, file: !1421, line: 69, baseType: !1424, size: 576)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1421, line: 23, size: 576, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1424, file: !1421, line: 24, baseType: !283, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !1421, line: 25, baseType: !1428, size: 512, offset: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1424, file: !1421, line: 25, size: 512, elements: !1429)
!1429 = !{!1430, !1439}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1428, file: !1421, line: 26, baseType: !1431, size: 480)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1432, size: 480, elements: !1437)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1421, line: 17, size: 96, elements: !1433)
!1433 = !{!1434, !1435, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1432, file: !1421, line: 18, baseType: !283, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1432, file: !1421, line: 19, baseType: !283, size: 32, offset: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1432, file: !1421, line: 20, baseType: !283, size: 32, offset: 64)
!1437 = !{!1438}
!1438 = !DISubrange(count: 5)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !1421, line: 27, baseType: !1440, size: 128)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1428, file: !1421, line: 27, size: 128, elements: !1441)
!1441 = !{!1442, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1440, file: !1421, line: 28, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1440, file: !1421, line: 29, baseType: !1443, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1420, file: !1421, line: 70, baseType: !1424, size: 576, offset: 576)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1420, file: !1421, line: 71, baseType: !1424, size: 576, offset: 1152)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1420, file: !1421, line: 72, baseType: !1419, size: 64, offset: 1728)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1420, file: !1421, line: 73, baseType: !42, size: 32, offset: 1792)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1420, file: !1421, line: 74, baseType: !415, size: 32, offset: 1824)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1420, file: !1421, line: 75, baseType: !424, size: 32, offset: 1856)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1420, file: !1421, line: 76, baseType: !1452, size: 192, offset: 1920)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1453, line: 9, size: 192, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1454 = !{!1455, !1456, !1460, !1461}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1452, file: !1453, line: 10, baseType: !666, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1452, file: !1453, line: 11, baseType: !1457, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1459)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1453, line: 7, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1452, file: !1453, line: 12, baseType: !7, size: 32, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1452, file: !1453, line: 13, baseType: !1212, size: 32, offset: 160)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !1421, line: 77, baseType: !59, size: 64, offset: 2112)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1420, file: !1421, line: 80, baseType: !742, size: 8, offset: 2176)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1420, file: !1421, line: 88, baseType: !117, size: 128, offset: 2240)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1420, file: !1421, line: 89, baseType: !1266, size: 64, offset: 2368)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1420, file: !1421, line: 90, baseType: !1280, size: 320, offset: 2432)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1420, file: !1421, line: 97, baseType: !922, size: 256, offset: 2752)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1420, file: !1421, line: 99, baseType: !1469, size: 768, offset: 3008)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !32, line: 199, size: 768, elements: !1470)
!1470 = !{!1471, !1476}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1469, file: !32, line: 200, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!42, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1469, file: !32, line: 201, baseType: !1477, size: 704, offset: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !32, line: 193, size: 704, elements: !1478)
!1478 = !{!1479, !1526}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1477, file: !32, line: 195, baseType: !1480, size: 640)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !32, line: 173, size: 640, elements: !1481)
!1481 = !{!1482, !1494, !1495, !1496, !1516, !1517, !1519, !1525}
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !32, line: 174, baseType: !1483, size: 192)
!1483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !32, line: 174, size: 192, elements: !1484)
!1484 = !{!1485, !1493}
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !32, line: 175, baseType: !1486, size: 192)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1483, file: !32, line: 175, size: 192, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1486, file: !32, line: 176, baseType: !53, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1486, file: !32, line: 177, baseType: !42, size: 32, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1486, file: !32, line: 178, baseType: !42, size: 32, offset: 96)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1486, file: !32, line: 179, baseType: !42, size: 32, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1486, file: !32, line: 180, baseType: !42, size: 32, offset: 160)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1483, file: !32, line: 182, baseType: !882, size: 128, align: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1480, file: !32, line: 184, baseType: !610, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1480, file: !32, line: 185, baseType: !53, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1480, file: !32, line: 186, baseType: !1497, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !32, line: 204, size: 960, elements: !1499)
!1499 = !{!1500, !1501, !1505, !1512}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1498, file: !32, line: 205, baseType: !1469, size: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1498, file: !32, line: 206, baseType: !1502, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!1475, !1497}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1498, file: !32, line: 207, baseType: !1506, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1509, !1510, !1511}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1498, file: !32, line: 209, baseType: !1513, size: 64, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!42, !1509, !53}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1480, file: !32, line: 187, baseType: !1475, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1480, file: !32, line: 188, baseType: !1518, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1480, file: !32, line: 189, baseType: !1520, size: 64, offset: 512)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !32, line: 157, size: 256, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1521, file: !32, line: 158, baseType: !774, size: 192, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1521, file: !32, line: 159, baseType: !1509, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1480, file: !32, line: 190, baseType: !1036, size: 64, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1477, file: !32, line: 196, baseType: !1527, size: 64, offset: 640)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !775, line: 12, size: 64, elements: !1528)
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1527, file: !775, line: 13, baseType: !779, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1420, file: !1421, line: 100, baseType: !1509, size: 64, offset: 3776)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1420, file: !1421, line: 102, baseType: !1532, size: 64, offset: 3840)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1421, line: 107, size: 1152, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1543}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1533, file: !1421, line: 108, baseType: !908, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1533, file: !1421, line: 109, baseType: !1419, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1533, file: !1421, line: 110, baseType: !415, size: 32, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1533, file: !1421, line: 111, baseType: !69, size: 32, offset: 224)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1533, file: !1421, line: 112, baseType: !1540, size: 640, offset: 256)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 640, elements: !1541)
!1541 = !{!1542}
!1542 = !DISubrange(count: 10)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1533, file: !1421, line: 113, baseType: !1544, size: 256, offset: 896)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 256, elements: !892)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1420, file: !1421, line: 103, baseType: !1546, size: 640, offset: 3904)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 640, elements: !1541)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1420, file: !1421, line: 104, baseType: !898, size: 256, offset: 4544)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1241, file: !1242, line: 139, baseType: !1532, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1241, file: !1242, line: 140, baseType: !1550, size: 64, offset: 1280)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1242, line: 25, size: 64, elements: !1552)
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1551, file: !1242, line: 26, baseType: !69, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1551, file: !1242, line: 27, baseType: !42, size: 32, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1551, file: !1242, line: 28, baseType: !1556, offset: 64)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, elements: !1232)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1241, file: !1242, line: 142, baseType: !1558, size: 128, offset: 1344)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1241, file: !1242, line: 142, size: 128, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1558, file: !1242, line: 143, baseType: !42, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1558, file: !1242, line: 144, baseType: !882, size: 128, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1163, file: !19, line: 1013, baseType: !1563, size: 256, offset: 960)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1570}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1563, file: !19, line: 971, baseType: !59, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1563, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1563, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1563, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1563, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1563, file: !19, line: 976, baseType: !61, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1163, file: !19, line: 1014, baseType: !1572, size: 128, offset: 1216)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1573, line: 8, size: 128, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1572, file: !1573, line: 9, baseType: !549, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1572, file: !1573, line: 10, baseType: !444, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1163, file: !19, line: 1015, baseType: !409, size: 64, offset: 1344)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1163, file: !19, line: 1016, baseType: !1579, size: 64, offset: 1408)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !1582)
!1582 = !{!1583, !1584, !1589, !1593, !1597, !2168, !2169, !2175, !2188, !2205, !2209, !2210, !2214, !2215, !2219, !2224, !2225, !2229, !2233, !2239, !2240, !2244, !2245, !2252, !2256, !2260, !2266, !2270, !2274, !2278, !2282, !2283, !2289}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1581, file: !19, line: 1915, baseType: !591, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1581, file: !19, line: 1916, baseType: !1585, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!61, !1588, !61, !42}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1581, file: !19, line: 1917, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!367, !1588, !335, !55, !60}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1581, file: !19, line: 1918, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!367, !1588, !36, !55, !60}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1581, file: !19, line: 1919, baseType: !1598, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!367, !1601, !2166}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1610, !1611, !1612, !1613}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1602, file: !19, line: 374, baseType: !1588, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1602, file: !19, line: 375, baseType: !61, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1602, file: !19, line: 376, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1601, !370}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1602, file: !19, line: 377, baseType: !40, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1602, file: !19, line: 378, baseType: !42, size: 32, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1602, file: !19, line: 379, baseType: !113, size: 16, offset: 288)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !19, line: 380, baseType: !1614, size: 64, offset: 320)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !19, line: 380, size: 64, elements: !1615)
!1615 = !{!1616, !2162}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1614, file: !19, line: 386, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1619, line: 998, size: 448, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1620 = !{!1621, !2148, !2149}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1618, file: !1619, line: 999, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !136, line: 293, size: 1536, elements: !1624)
!1624 = !{!1625, !2115, !2129}
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !136, line: 295, baseType: !1626, size: 512)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !136, line: 295, size: 512, elements: !1627)
!1627 = !{!1628, !1654}
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !136, line: 296, baseType: !1629, size: 448)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !136, line: 296, size: 448, elements: !1630)
!1630 = !{!1631, !1632, !1641, !1642, !1643, !1652, !1653}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1629, file: !136, line: 298, baseType: !59, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !136, line: 299, baseType: !1633, size: 128, offset: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !136, line: 299, size: 128, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1633, file: !136, line: 300, baseType: !117, size: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !136, line: 302, baseType: !1637, size: 128)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !136, line: 302, size: 128, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1637, file: !136, line: 303, baseType: !40, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1637, file: !136, line: 305, baseType: !7, size: 32, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1629, file: !136, line: 310, baseType: !405, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1629, file: !136, line: 311, baseType: !59, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !136, line: 312, baseType: !1644, size: 64, offset: 320)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !136, line: 312, size: 64, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1644, file: !136, line: 313, baseType: !40, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1644, file: !136, line: 314, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !136, line: 257, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 255, size: 64, elements: !1650)
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1649, file: !136, line: 256, baseType: !59, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1629, file: !136, line: 316, baseType: !69, size: 32, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1629, file: !136, line: 317, baseType: !69, size: 32, offset: 416)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1626, file: !136, line: 323, baseType: !1655, size: 512, align: 128)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !136, line: 74, size: 512, align: 128, elements: !1656)
!1656 = !{!1657, !1658, !2109, !2114}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1655, file: !136, line: 75, baseType: !59, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !136, line: 83, baseType: !1659, size: 320, offset: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !136, line: 83, size: 320, elements: !1660)
!1660 = !{!1661, !1682, !1696, !1700, !2108}
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !136, line: 84, baseType: !1662, size: 320)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !136, line: 84, size: 320, elements: !1663)
!1663 = !{!1664, !1675, !1676, !1681}
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !136, line: 90, baseType: !1665, size: 128)
!1665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !136, line: 90, size: 128, elements: !1666)
!1666 = !{!1667, !1668, !1673, !1674}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1665, file: !136, line: 91, baseType: !117, size: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !136, line: 94, baseType: !1669, size: 128)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1665, file: !136, line: 94, size: 128, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1669, file: !136, line: 96, baseType: !40, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1669, file: !136, line: 98, baseType: !7, size: 32, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1665, file: !136, line: 102, baseType: !117, size: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1665, file: !136, line: 103, baseType: !117, size: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1662, file: !136, line: 106, baseType: !405, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !136, line: 107, baseType: !1677, size: 64, offset: 192)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !136, line: 107, size: 64, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1677, file: !136, line: 108, baseType: !59, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1677, file: !136, line: 109, baseType: !59, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1662, file: !136, line: 117, baseType: !59, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !136, line: 119, baseType: !1683, size: 320)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !136, line: 119, size: 320, elements: !1684)
!1684 = !{!1685, !1686, !1689, !1690, !1691}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1683, file: !136, line: 124, baseType: !59, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1683, file: !136, line: 125, baseType: !1687, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !136, line: 125, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1683, file: !136, line: 126, baseType: !59, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1683, file: !136, line: 127, baseType: !59, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !136, line: 128, baseType: !1692, size: 64, offset: 256)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1683, file: !136, line: 128, size: 64, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1692, file: !136, line: 133, baseType: !59, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1692, file: !136, line: 138, baseType: !666, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !136, line: 141, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !136, line: 141, size: 64, elements: !1698)
!1698 = !{!1699}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1697, file: !136, line: 142, baseType: !59, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !136, line: 144, baseType: !1701, size: 128)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !136, line: 144, size: 128, elements: !1702)
!1702 = !{!1703, !2107}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1701, file: !136, line: 146, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !128, line: 126, size: 1216, elements: !1706)
!1706 = !{!1707, !1716, !1737, !1738, !1739, !1740, !1741, !2089, !2090, !2091}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1705, file: !128, line: 127, baseType: !1708, size: 384)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !128, line: 21, size: 384, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1715}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1708, file: !128, line: 22, baseType: !59, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1708, file: !128, line: 23, baseType: !272, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1708, file: !128, line: 24, baseType: !272, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1708, file: !128, line: 25, baseType: !59, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1708, file: !128, line: 26, baseType: !59, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1708, file: !128, line: 27, baseType: !59, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1705, file: !128, line: 128, baseType: !1717, size: 128, offset: 384)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1718, line: 105, size: 128, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1719 = !{!1720, !1721}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1717, file: !1718, line: 110, baseType: !59, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1717, file: !1718, line: 118, baseType: !1722, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1718, line: 95, size: 448, elements: !1724)
!1724 = !{!1725, !1726, !1732, !1733, !1734, !1735, !1736}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1723, file: !1718, line: 96, baseType: !666, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1723, file: !1718, line: 97, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1718, line: 60, baseType: !1729)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1723, file: !1718, line: 98, baseType: !1727, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1723, file: !1718, line: 99, baseType: !742, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1723, file: !1718, line: 100, baseType: !742, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1723, file: !1718, line: 101, baseType: !882, size: 128, align: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1723, file: !1718, line: 102, baseType: !1731, size: 64, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1705, file: !128, line: 129, baseType: !611, size: 256, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1705, file: !128, line: 130, baseType: !127, size: 32, offset: 768)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1705, file: !128, line: 131, baseType: !7, size: 32, offset: 800)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1705, file: !128, line: 132, baseType: !59, size: 64, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1705, file: !128, line: 133, baseType: !1742, size: 64, offset: 896)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !128, line: 77, size: 192, elements: !1745)
!1745 = !{!1746, !1751, !2085}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1744, file: !128, line: 83, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !1750}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1744, file: !128, line: 89, baseType: !1752, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !136, line: 1184, baseType: !7)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1758, line: 512, size: 896, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1759 = !{!1760, !2052, !2053, !2060, !2067, !2077, !2078, !2079, !2081, !2083}
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !1758, line: 513, baseType: !1761, size: 320)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1757, file: !1758, line: 513, size: 320, elements: !1762)
!1762 = !{!1763, !2048, !2049, !2050, !2051}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1761, file: !1758, line: 514, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !136, line: 625, size: 1344, elements: !1766)
!1766 = !{!1767, !1776, !1953, !1959, !1966, !1967, !1972, !1973, !1978, !1979, !1982, !2041, !2042, !2043, !2044, !2045, !2046}
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !136, line: 628, baseType: !1768, size: 128)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !136, line: 628, size: 128, elements: !1769)
!1769 = !{!1770, !1775}
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !136, line: 629, baseType: !1771, size: 128)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !136, line: 629, size: 128, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1771, file: !136, line: 631, baseType: !59, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1771, file: !136, line: 632, baseType: !59, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1768, file: !136, line: 635, baseType: !882, size: 128, align: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1765, file: !136, line: 639, baseType: !1777, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !136, line: 733, size: 10240, elements: !1779)
!1779 = !{!1780, !1951}
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !136, line: 734, baseType: !1781, size: 10240)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1778, file: !136, line: 734, size: 10240, elements: !1782)
!1782 = !{!1783, !1787, !1800, !1804, !1805, !1806, !1807, !1808, !1809, !1818, !1819, !1820, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1859, !1861, !1864, !1931, !1932, !1933, !1936, !1937, !1938, !1941, !1942, !1943, !1949, !1950}
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !136, line: 739, baseType: !1784, size: 512, align: 512)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !136, line: 739, size: 512, align: 512, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1784, file: !136, line: 747, baseType: !69, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1781, file: !136, line: 750, baseType: !1788, size: 128, offset: 512)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1789, line: 218, size: 128, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1790 = !{!1791, !1798, !1799}
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1788, file: !1789, line: 219, baseType: !1792, size: 32)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1788, file: !1789, line: 219, size: 32, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1792, file: !1789, line: 220, baseType: !79, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1792, file: !1789, line: 221, baseType: !1796)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1789, line: 197, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1789, line: 197, elements: !951)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1788, file: !1789, line: 223, baseType: !7, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1788, file: !1789, line: 224, baseType: !40, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1781, file: !136, line: 752, baseType: !1801, size: 64, offset: 640)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!59, !1588, !59, !59, !59, !59}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1781, file: !136, line: 756, baseType: !59, size: 64, offset: 704)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1781, file: !136, line: 757, baseType: !59, size: 64, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1781, file: !136, line: 760, baseType: !59, size: 64, offset: 832)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1781, file: !136, line: 761, baseType: !59, size: 64, offset: 896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1781, file: !136, line: 763, baseType: !59, size: 64, offset: 960)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1781, file: !136, line: 764, baseType: !1810, size: 64, offset: 1024)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1812, line: 299, baseType: !1813)
!1812 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1812, line: 299, size: 64, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1813, file: !1812, line: 299, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1817, line: 18, baseType: !59)
!1817 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1781, file: !136, line: 773, baseType: !69, size: 32, offset: 1088)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1781, file: !136, line: 785, baseType: !69, size: 32, offset: 1120)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1781, file: !136, line: 795, baseType: !1821, size: 64, offset: 1152)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !136, line: 726, size: 128, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1822, file: !136, line: 727, baseType: !287, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1822, file: !136, line: 728, baseType: !42, size: 32, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1781, file: !136, line: 801, baseType: !59, size: 64, offset: 1216)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1781, file: !136, line: 804, baseType: !666, size: 64, offset: 1280)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1781, file: !136, line: 806, baseType: !42, size: 32, offset: 1344)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1781, file: !136, line: 808, baseType: !79, size: 32, offset: 1376)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1781, file: !136, line: 823, baseType: !1280, size: 320, offset: 1408)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1781, file: !136, line: 825, baseType: !117, size: 128, offset: 1728)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1781, file: !136, line: 845, baseType: !42, size: 32, offset: 1856)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1781, file: !136, line: 849, baseType: !59, size: 64, offset: 1920)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1781, file: !136, line: 850, baseType: !59, size: 64, offset: 1984)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1781, file: !136, line: 852, baseType: !59, size: 64, offset: 2048)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1781, file: !136, line: 853, baseType: !59, size: 64, offset: 2112)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1781, file: !136, line: 854, baseType: !668, size: 64, offset: 2176)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1781, file: !136, line: 855, baseType: !59, size: 64, offset: 2240)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1781, file: !136, line: 856, baseType: !59, size: 64, offset: 2304)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1781, file: !136, line: 857, baseType: !59, size: 64, offset: 2368)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1781, file: !136, line: 858, baseType: !59, size: 64, offset: 2432)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1781, file: !136, line: 865, baseType: !455, size: 32, offset: 2496)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1781, file: !136, line: 867, baseType: !79, size: 32, offset: 2528)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1781, file: !136, line: 869, baseType: !59, size: 64, offset: 2560)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1781, file: !136, line: 869, baseType: !59, size: 64, offset: 2624)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1781, file: !136, line: 869, baseType: !59, size: 64, offset: 2688)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1781, file: !136, line: 869, baseType: !59, size: 64, offset: 2752)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1781, file: !136, line: 870, baseType: !59, size: 64, offset: 2816)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1781, file: !136, line: 870, baseType: !59, size: 64, offset: 2880)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1781, file: !136, line: 870, baseType: !59, size: 64, offset: 2944)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1781, file: !136, line: 871, baseType: !59, size: 64, offset: 3008)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1781, file: !136, line: 871, baseType: !59, size: 64, offset: 3072)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1781, file: !136, line: 871, baseType: !59, size: 64, offset: 3136)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1781, file: !136, line: 871, baseType: !59, size: 64, offset: 3200)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1781, file: !136, line: 873, baseType: !1856, size: 3328, offset: 3264)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !1857)
!1857 = !{!1858}
!1858 = !DISubrange(count: 52)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1781, file: !136, line: 875, baseType: !1860, size: 1280, offset: 6592)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 1280, elements: !892)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1781, file: !136, line: 877, baseType: !1862, size: 64, offset: 7872)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !136, line: 877, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1781, file: !136, line: 880, baseType: !1865, size: 1088, offset: 7936)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1866, line: 72, baseType: !1867)
!1866 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1866, line: 23, size: 1088, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1898, !1899, !1900, !1901, !1928, !1929, !1930}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1867, file: !1866, line: 28, baseType: !287, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1867, file: !1866, line: 38, baseType: !668, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1867, file: !1866, line: 40, baseType: !59, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1867, file: !1866, line: 43, baseType: !1280, size: 320, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1867, file: !1866, line: 44, baseType: !1874, size: 64, offset: 512)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1876, line: 30, size: 128, elements: !1877)
!1876 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!1877 = !{!1878, !1896, !1897}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1875, file: !1876, line: 37, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1881, line: 16, size: 64, elements: !1882)
!1881 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1880, file: !1881, line: 17, baseType: !113, size: 16)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1880, file: !1881, line: 18, baseType: !113, size: 16, offset: 16)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1880, file: !1881, line: 19, baseType: !113, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1880, file: !1881, line: 19, baseType: !113, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1880, file: !1881, line: 19, baseType: !113, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1880, file: !1881, line: 19, baseType: !113, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1880, file: !1881, line: 19, baseType: !113, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1880, file: !1881, line: 20, baseType: !113, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1880, file: !1881, line: 20, baseType: !113, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1880, file: !1881, line: 20, baseType: !113, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1880, file: !1881, line: 20, baseType: !113, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1880, file: !1881, line: 20, baseType: !113, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1880, file: !1881, line: 20, baseType: !113, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !1875, file: !1876, line: 38, baseType: !7, size: 32, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !1875, file: !1876, line: 49, baseType: !42, size: 32, offset: 96)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1867, file: !1866, line: 48, baseType: !59, size: 64, offset: 576)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1867, file: !1866, line: 59, baseType: !662, size: 256, offset: 640)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1867, file: !1866, line: 60, baseType: !40, size: 64, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1867, file: !1866, line: 61, baseType: !1902, size: 64, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1905, line: 13, size: 1216, elements: !1906)
!1905 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1904, file: !1905, line: 14, baseType: !40, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1904, file: !1905, line: 15, baseType: !59, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1904, file: !1905, line: 17, baseType: !59, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1904, file: !1905, line: 17, baseType: !59, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1904, file: !1905, line: 18, baseType: !59, size: 64, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1904, file: !1905, line: 18, baseType: !59, size: 64, offset: 320)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1904, file: !1905, line: 19, baseType: !1914, size: 64, offset: 384)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1904, file: !1905, line: 21, baseType: !370, size: 64, offset: 448)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1904, file: !1905, line: 23, baseType: !370, size: 64, offset: 512)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1904, file: !1905, line: 24, baseType: !370, size: 64, offset: 576)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1904, file: !1905, line: 25, baseType: !370, size: 64, offset: 640)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1904, file: !1905, line: 26, baseType: !370, size: 64, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1904, file: !1905, line: 27, baseType: !370, size: 64, offset: 768)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1904, file: !1905, line: 28, baseType: !370, size: 64, offset: 832)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1904, file: !1905, line: 29, baseType: !370, size: 64, offset: 896)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1904, file: !1905, line: 30, baseType: !370, size: 64, offset: 960)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1904, file: !1905, line: 31, baseType: !370, size: 64, offset: 1024)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1904, file: !1905, line: 32, baseType: !370, size: 64, offset: 1088)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1904, file: !1905, line: 33, baseType: !370, size: 64, offset: 1152)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1867, file: !1866, line: 63, baseType: !69, size: 32, offset: 1024)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1867, file: !1866, line: 69, baseType: !113, size: 16, offset: 1056)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1867, file: !1866, line: 70, baseType: !798, size: 16, offset: 1072)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1781, file: !136, line: 882, baseType: !59, size: 64, offset: 9024)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1781, file: !136, line: 885, baseType: !79, size: 32, offset: 9088)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1781, file: !136, line: 886, baseType: !1934, size: 64, offset: 9152)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !136, line: 732, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1781, file: !136, line: 901, baseType: !1419, size: 64, offset: 9216)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1781, file: !136, line: 904, baseType: !1588, size: 64, offset: 9280)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1781, file: !136, line: 906, baseType: !1939, size: 64, offset: 9344)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !136, line: 906, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1781, file: !136, line: 930, baseType: !69, size: 32, offset: 9408)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1781, file: !136, line: 933, baseType: !69, size: 32, offset: 9440)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1781, file: !136, line: 935, baseType: !1944, size: 64, offset: 9472)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !240, line: 103, size: 64, elements: !1945)
!1945 = !{!1946}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1944, file: !240, line: 104, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !240, line: 101, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1781, file: !136, line: 940, baseType: !666, size: 64, offset: 9536)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1781, file: !136, line: 942, baseType: !922, size: 256, offset: 9600)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1778, file: !136, line: 986, baseType: !1952, offset: 10240)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !1232)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1765, file: !136, line: 640, baseType: !1954, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1812, line: 297, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1812, line: 297, size: 64, elements: !1956)
!1956 = !{!1957}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1955, file: !1812, line: 297, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1817, line: 19, baseType: !59)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !136, line: 646, baseType: !1960, size: 64, offset: 256)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !136, line: 646, size: 64, elements: !1961)
!1961 = !{!1962, !1965}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1960, file: !136, line: 647, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !136, line: 542, baseType: !59)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1960, file: !136, line: 648, baseType: !1964, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1765, file: !136, line: 666, baseType: !42, size: 32, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1765, file: !136, line: 667, baseType: !1968, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !136, line: 579, size: 320, elements: !1970)
!1970 = !{!1971}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1969, file: !136, line: 580, baseType: !1280, size: 320)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1765, file: !136, line: 670, baseType: !742, size: 8, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1765, file: !136, line: 681, baseType: !1974, size: 256, offset: 512)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1765, file: !136, line: 678, size: 256, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1974, file: !136, line: 679, baseType: !774, size: 192, align: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1974, file: !136, line: 680, baseType: !59, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1765, file: !136, line: 689, baseType: !117, size: 128, offset: 768)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1765, file: !136, line: 691, baseType: !1980, size: 64, offset: 896)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !136, line: 691, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1765, file: !136, line: 694, baseType: !1983, size: 64, offset: 960)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1985)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1758, line: 563, size: 1024, elements: !1986)
!1986 = !{!1987, !1991, !1992, !1996, !2000, !2004, !2005, !2009, !2013, !2017, !2018, !2019, !2023, !2027, !2033, !2037}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1985, file: !1758, line: 564, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1764}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1985, file: !1758, line: 569, baseType: !1988, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1985, file: !1758, line: 571, baseType: !1993, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!42, !1764, !59}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1985, file: !1758, line: 572, baseType: !1997, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!42, !1764}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1985, file: !1758, line: 578, baseType: !2001, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!42, !1764, !59, !59, !59}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1985, file: !1758, line: 580, baseType: !1752, size: 64, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1985, file: !1758, line: 581, baseType: !2006, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!1755, !1756, !7}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1985, file: !1758, line: 582, baseType: !2010, size: 64, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!1755, !1756, !59, !59}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1985, file: !1758, line: 584, baseType: !2014, size: 64, offset: 512)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!59, !1764}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1985, file: !1758, line: 588, baseType: !1752, size: 64, offset: 576)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1985, file: !1758, line: 591, baseType: !1752, size: 64, offset: 640)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1985, file: !1758, line: 597, baseType: !2020, size: 64, offset: 704)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!42, !1764, !59, !40, !42, !42}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1985, file: !1758, line: 603, baseType: !2024, size: 64, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!36, !1764}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1985, file: !1758, line: 613, baseType: !2028, size: 64, offset: 832)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!42, !1764, !2031}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !136, line: 717, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1985, file: !1758, line: 625, baseType: !2034, size: 64, offset: 896)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!2031, !1764, !59}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1985, file: !1758, line: 633, baseType: !2038, size: 64, offset: 960)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!1750, !1764, !59}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1765, file: !136, line: 697, baseType: !59, size: 64, offset: 1024)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1765, file: !136, line: 699, baseType: !1588, size: 64, offset: 1088)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1765, file: !136, line: 700, baseType: !40, size: 64, offset: 1152)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1765, file: !136, line: 711, baseType: !666, size: 64, offset: 1216)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1765, file: !136, line: 717, baseType: !2031, size: 64, offset: 1280)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1765, file: !136, line: 722, baseType: !2047, offset: 1344)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !136, line: 570, elements: !951)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1761, file: !1758, line: 515, baseType: !269, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1761, file: !1758, line: 516, baseType: !59, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1761, file: !1758, line: 517, baseType: !59, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1761, file: !1758, line: 518, baseType: !59, size: 64, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1757, file: !1758, line: 520, baseType: !135, size: 32, offset: 320)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1757, file: !1758, line: 522, baseType: !2054, size: 64, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1817, line: 22, baseType: !2056)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1817, line: 22, size: 64, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2056, file: !1817, line: 22, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1817, line: 15, baseType: !59)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1757, file: !1758, line: 524, baseType: !2061, size: 64, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1812, line: 372, baseType: !2063)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1812, line: 372, size: 64, elements: !2064)
!2064 = !{!2065}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2063, file: !1812, line: 372, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1817, line: 16, baseType: !59)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !1758, line: 527, baseType: !2068, size: 64, offset: 512)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1757, file: !1758, line: 527, size: 64, elements: !2069)
!2069 = !{!2070, !2076}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2068, file: !1758, line: 528, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1817, line: 21, baseType: !2072)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1817, line: 21, size: 64, elements: !2073)
!2073 = !{!2074}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2072, file: !1817, line: 21, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1817, line: 14, baseType: !59)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2068, file: !1758, line: 529, baseType: !2055, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1757, file: !1758, line: 534, baseType: !1750, size: 64, offset: 576)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1757, file: !1758, line: 535, baseType: !1750, size: 64, offset: 640)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1757, file: !1758, line: 541, baseType: !2080, size: 64, offset: 704)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1757, file: !1758, line: 545, baseType: !2082, size: 64, offset: 768)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1757, file: !1758, line: 549, baseType: !2084, size: 64, offset: 832)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1812, line: 520, baseType: !1750)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1744, file: !128, line: 100, baseType: !2086, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!42, !1704, !59, !59, !42}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1705, file: !128, line: 134, baseType: !40, size: 64, offset: 960)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1705, file: !128, line: 135, baseType: !42, size: 32, offset: 1024)
!2091 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !128, line: 136, baseType: !2092, size: 128, offset: 1088)
!2092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1705, file: !128, line: 136, size: 128, elements: !2093)
!2093 = !{!2094, !2100}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2092, file: !128, line: 137, baseType: !2095, size: 128)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2096, line: 6, size: 128, elements: !2097)
!2096 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2097 = !{!2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2095, file: !2096, line: 7, baseType: !287, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2095, file: !2096, line: 8, baseType: !287, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2092, file: !128, line: 138, baseType: !2101)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !128, line: 138, elements: !2102)
!2102 = !{!2103, !2105}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2101, file: !128, line: 138, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2101, file: !128, line: 138, elements: !951)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2101, file: !128, line: 138, baseType: !2106)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2095, elements: !1232)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1701, file: !136, line: 147, baseType: !40, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1659, file: !136, line: 161, baseType: !882, size: 128, align: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !136, line: 164, baseType: !2110, size: 32, offset: 384)
!2110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !136, line: 164, size: 32, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2110, file: !136, line: 169, baseType: !69, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2110, file: !136, line: 177, baseType: !7, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1655, file: !136, line: 181, baseType: !69, size: 32, offset: 416)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !136, line: 325, baseType: !2116, size: 512, offset: 512)
!2116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !136, line: 325, size: 512, elements: !2117)
!2117 = !{!2118, !2128}
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !136, line: 326, baseType: !2119, size: 320)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2116, file: !136, line: 326, size: 320, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2126, !2127}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2119, file: !136, line: 327, baseType: !59, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2119, file: !136, line: 328, baseType: !59, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2119, file: !136, line: 329, baseType: !59, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2119, file: !136, line: 331, baseType: !69, size: 32, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2119, file: !136, line: 332, baseType: !69, size: 32, offset: 224)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2119, file: !136, line: 333, baseType: !69, size: 32, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2119, file: !136, line: 335, baseType: !7, size: 32, offset: 288)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2116, file: !136, line: 339, baseType: !1655, size: 512, align: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !136, line: 341, baseType: !2130, size: 512, offset: 1024)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !136, line: 341, size: 512, elements: !2131)
!2131 = !{!2132, !2141, !2147}
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !136, line: 342, baseType: !2133, size: 384)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !136, line: 342, size: 384, elements: !2134)
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2133, file: !136, line: 343, baseType: !59, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2133, file: !136, line: 344, baseType: !59, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2133, file: !136, line: 346, baseType: !40, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2133, file: !136, line: 347, baseType: !40, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2133, file: !136, line: 348, baseType: !40, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2133, file: !136, line: 349, baseType: !40, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !136, line: 352, baseType: !2142, size: 256)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !136, line: 352, size: 256, elements: !2143)
!2143 = !{!2144, !2145, !2146}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2142, file: !136, line: 353, baseType: !59, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2142, file: !136, line: 354, baseType: !59, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2142, file: !136, line: 356, baseType: !117, size: 128, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2130, file: !136, line: 359, baseType: !1655, size: 512, align: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1618, file: !1619, line: 1000, baseType: !42, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1618, file: !1619, line: 1001, baseType: !2150, size: 320, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !75, line: 14, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !75, line: 30, size: 320, elements: !2152)
!2152 = !{!2153, !2154, !2155, !2161}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2151, file: !75, line: 31, baseType: !7, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2151, file: !75, line: 32, baseType: !40, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2151, file: !75, line: 33, baseType: !2156, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !75, line: 16, baseType: !2157)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!42, !2160, !7, !42, !40}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2151, file: !75, line: 34, baseType: !117, size: 128, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1614, file: !19, line: 395, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!367, !40}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !19, line: 69, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1581, file: !19, line: 1920, baseType: !1598, size: 64, offset: 320)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1581, file: !19, line: 1921, baseType: !2170, size: 64, offset: 384)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!42, !1601, !2173, !7}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1581, file: !19, line: 1923, baseType: !2176, size: 64, offset: 448)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!42, !1588, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !2181)
!2181 = !{!2182, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2180, file: !19, line: 1859, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!742, !2179, !36, !42, !61, !287, !7}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2180, file: !19, line: 1860, baseType: !61, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1581, file: !19, line: 1924, baseType: !2189, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !1588, !2194}
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2193, line: 59, baseType: !7)
!2193 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2196, line: 37, size: 128, elements: !2197)
!2196 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2197 = !{!2198, !2204}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2195, file: !2196, line: 38, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2196, line: 31, baseType: !2200)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !1588, !2203, !2194}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2195, file: !2196, line: 39, baseType: !2192, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1581, file: !19, line: 1925, baseType: !2206, size: 64, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!370, !1588, !7, !59}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1581, file: !19, line: 1926, baseType: !2206, size: 64, offset: 640)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1581, file: !19, line: 1927, baseType: !2211, size: 64, offset: 704)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!42, !1588, !1764}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1581, file: !19, line: 1928, baseType: !59, size: 64, offset: 768)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1581, file: !19, line: 1929, baseType: !2216, size: 64, offset: 832)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!42, !409, !1588}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1581, file: !19, line: 1930, baseType: !2220, size: 64, offset: 896)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!42, !1588, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !40)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1581, file: !19, line: 1931, baseType: !2216, size: 64, offset: 960)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1581, file: !19, line: 1932, baseType: !2226, size: 64, offset: 1024)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!42, !1588, !61, !61, !42}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1581, file: !19, line: 1933, baseType: !2230, size: 64, offset: 1088)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!42, !42, !1588, !42}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1581, file: !19, line: 1934, baseType: !2234, size: 64, offset: 1152)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!42, !1588, !42, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1581, file: !19, line: 1935, baseType: !1801, size: 64, offset: 1216)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1581, file: !19, line: 1936, baseType: !2241, size: 64, offset: 1280)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!42, !42}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1581, file: !19, line: 1937, baseType: !2234, size: 64, offset: 1344)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1581, file: !19, line: 1938, baseType: !2246, size: 64, offset: 1408)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!367, !2249, !1588, !60, !55, !7}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2251, line: 59, flags: DIFlagFwdDecl)
!2251 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1581, file: !19, line: 1939, baseType: !2253, size: 64, offset: 1472)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!367, !1588, !60, !2249, !55, !7}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1581, file: !19, line: 1940, baseType: !2257, size: 64, offset: 1536)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null, !1588}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1581, file: !19, line: 1941, baseType: !2261, size: 64, offset: 1600)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!42, !1588, !42, !2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1581, file: !19, line: 1942, baseType: !2267, size: 64, offset: 1664)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!370, !1588, !42, !61, !61}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1581, file: !19, line: 1944, baseType: !2271, size: 64, offset: 1728)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !1126, !1588}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1581, file: !19, line: 1948, baseType: !2275, size: 64, offset: 1792)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!367, !1588, !61, !1588, !61, !55, !7}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1581, file: !19, line: 1950, baseType: !2279, size: 64, offset: 1856)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!61, !1588, !61, !1588, !61, !61, !7}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1581, file: !19, line: 1953, baseType: !2226, size: 64, offset: 1920)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1581, file: !19, line: 1954, baseType: !2284, size: 64, offset: 1984)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!42, !2287, !7}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1581, file: !19, line: 1955, baseType: !2290, size: 64, offset: 2048)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!42, !2287, !2173, !7}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1163, file: !19, line: 1018, baseType: !287, size: 64, offset: 1472)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1163, file: !19, line: 1020, baseType: !40, size: 64, offset: 1536)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1163, file: !19, line: 1023, baseType: !40, size: 64, offset: 1600)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1163, file: !19, line: 1027, baseType: !2297, size: 64, offset: 1664)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1163, file: !19, line: 1029, baseType: !405, size: 64, offset: 1728)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1163, file: !19, line: 1030, baseType: !2300, size: 32, offset: 1792)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2301, line: 8, baseType: !283)
!2301 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1163, file: !19, line: 1031, baseType: !2300, size: 32, offset: 1824)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1127, file: !1128, line: 29, baseType: !40, size: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1052, file: !19, line: 2077, baseType: !1123, size: 64, offset: 1088)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1052, file: !19, line: 2078, baseType: !1123, size: 64, offset: 1152)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1052, file: !19, line: 2079, baseType: !1123, size: 64, offset: 1216)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1052, file: !19, line: 2081, baseType: !2308, size: 64, offset: 1280)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!367, !555, !42, !335, !55, !61}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1052, file: !19, line: 2082, baseType: !2312, size: 64, offset: 1344)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!367, !555, !42, !36, !55, !61}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1052, file: !19, line: 2083, baseType: !2316, size: 64, offset: 1408)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!2319, !409}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !152, line: 296, size: 1664, elements: !2322)
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2347, !2348, !2349}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2321, file: !152, line: 297, baseType: !908, size: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2321, file: !152, line: 298, baseType: !117, size: 128, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2321, file: !152, line: 299, baseType: !117, size: 128, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2321, file: !152, line: 300, baseType: !117, size: 128, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2321, file: !152, line: 301, baseType: !662, size: 256, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2321, file: !152, line: 302, baseType: !79, size: 32, offset: 768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2321, file: !152, line: 303, baseType: !69, size: 32, offset: 800)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2321, file: !152, line: 304, baseType: !555, size: 64, offset: 832)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2321, file: !152, line: 305, baseType: !2332, size: 64, offset: 896)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !152, line: 68, size: 64, elements: !2333)
!2333 = !{!2334, !2346}
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !152, line: 69, baseType: !2335, size: 32)
!2335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2332, file: !152, line: 69, size: 32, elements: !2336)
!2336 = !{!2337, !2338, !2339}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2335, file: !152, line: 70, baseType: !415, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2335, file: !152, line: 71, baseType: !424, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2335, file: !152, line: 72, baseType: !2340, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2341, line: 24, baseType: !2342)
!2341 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2341, line: 22, size: 32, elements: !2343)
!2343 = !{!2344}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2342, file: !2341, line: 23, baseType: !2345, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2341, line: 20, baseType: !421)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2332, file: !152, line: 74, baseType: !151, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2321, file: !152, line: 306, baseType: !61, size: 64, offset: 960)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2321, file: !152, line: 307, baseType: !59, size: 64, offset: 1024)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2321, file: !152, line: 308, baseType: !2350, size: 576, offset: 1088)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !152, line: 205, size: 576, elements: !2351)
!2351 = !{!2352, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2350, file: !152, line: 206, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !152, line: 66, baseType: !63)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2350, file: !152, line: 207, baseType: !2353, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2350, file: !152, line: 208, baseType: !2353, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2350, file: !152, line: 209, baseType: !2353, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2350, file: !152, line: 210, baseType: !2353, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2350, file: !152, line: 211, baseType: !2353, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2350, file: !152, line: 212, baseType: !2353, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2350, file: !152, line: 213, baseType: !1296, size: 64, offset: 448)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2350, file: !152, line: 214, baseType: !1296, size: 64, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1052, file: !19, line: 2085, baseType: !2363, size: 64, offset: 1472)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!370, !555, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2368, line: 15, size: 256, elements: !2369)
!2368 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2369 = !{!2370, !2371, !2372, !2373, !2374}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2367, file: !2368, line: 16, baseType: !269, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2367, file: !2368, line: 19, baseType: !42, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2367, file: !2368, line: 26, baseType: !59, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2367, file: !2368, line: 33, baseType: !59, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2367, file: !2368, line: 36, baseType: !2375, size: 64, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !136, line: 33, flags: DIFlagFwdDecl)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1052, file: !19, line: 2087, baseType: !2363, size: 64, offset: 1536)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1052, file: !19, line: 2089, baseType: !587, size: 64, offset: 1600)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !556, file: !19, line: 1198, baseType: !2380, size: 64, offset: 448)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2382)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !152, line: 324, size: 704, elements: !2383)
!2383 = !{!2384, !2388, !2392, !2396, !2397, !2398, !2399, !2400, !2405, !2410, !2414}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2382, file: !152, line: 325, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!42, !2320}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2382, file: !152, line: 326, baseType: !2389, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!2320, !555, !42}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2382, file: !152, line: 327, baseType: !2393, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2320}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2382, file: !152, line: 328, baseType: !2385, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2382, file: !152, line: 329, baseType: !2385, size: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2382, file: !152, line: 330, baseType: !2385, size: 64, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2382, file: !152, line: 331, baseType: !1098, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2382, file: !152, line: 334, baseType: !2401, size: 64, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!2404, !409}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2382, file: !152, line: 335, baseType: !2406, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!42, !409, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2382, file: !152, line: 337, baseType: !2411, size: 64, offset: 576)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!42, !409, !2404}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2382, file: !152, line: 339, baseType: !2415, size: 64, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!42, !555, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !556, file: !19, line: 1199, baseType: !2420, size: 64, offset: 512)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !152, line: 430, size: 704, elements: !2423)
!2423 = !{!2424, !2430, !2431, !2435, !2436, !2437, !2452, !2475, !2479, !2480, !2503}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2422, file: !152, line: 431, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!42, !555, !42, !42, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2422, file: !152, line: 432, baseType: !1098, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2422, file: !152, line: 433, baseType: !2432, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!42, !555, !7}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2422, file: !152, line: 434, baseType: !2432, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2422, file: !152, line: 435, baseType: !1098, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2422, file: !152, line: 436, baseType: !2438, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!42, !555, !42, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !152, line: 417, size: 256, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2442, file: !152, line: 418, baseType: !42, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2442, file: !152, line: 419, baseType: !7, size: 32, offset: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2442, file: !152, line: 420, baseType: !7, size: 32, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2442, file: !152, line: 422, baseType: !7, size: 32, offset: 96)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2442, file: !152, line: 423, baseType: !7, size: 32, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2442, file: !152, line: 424, baseType: !7, size: 32, offset: 160)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2442, file: !152, line: 425, baseType: !7, size: 32, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2442, file: !152, line: 426, baseType: !7, size: 32, offset: 224)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2422, file: !152, line: 437, baseType: !2453, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!42, !555, !2332, !2456}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !152, line: 345, size: 960, elements: !2458)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2457, file: !152, line: 346, baseType: !42, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2457, file: !152, line: 347, baseType: !287, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2457, file: !152, line: 348, baseType: !287, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2457, file: !152, line: 349, baseType: !287, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2457, file: !152, line: 350, baseType: !287, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2457, file: !152, line: 351, baseType: !287, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2457, file: !152, line: 352, baseType: !287, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2457, file: !152, line: 353, baseType: !672, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2457, file: !152, line: 355, baseType: !672, size: 64, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2457, file: !152, line: 356, baseType: !42, size: 32, offset: 576)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2457, file: !152, line: 357, baseType: !42, size: 32, offset: 608)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2457, file: !152, line: 358, baseType: !287, size: 64, offset: 640)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2457, file: !152, line: 359, baseType: !287, size: 64, offset: 704)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2457, file: !152, line: 360, baseType: !287, size: 64, offset: 768)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2457, file: !152, line: 361, baseType: !672, size: 64, offset: 832)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2457, file: !152, line: 362, baseType: !42, size: 32, offset: 896)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2422, file: !152, line: 438, baseType: !2476, size: 64, offset: 448)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!42, !555, !2418, !2456}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2422, file: !152, line: 440, baseType: !2453, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2422, file: !152, line: 441, baseType: !2481, size: 64, offset: 576)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!42, !555, !2484}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !152, line: 411, size: 1408, elements: !2486)
!2486 = !{!2487, !2488}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2485, file: !152, line: 412, baseType: !7, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2485, file: !152, line: 413, baseType: !2489, size: 1344, offset: 64)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2490, size: 1344, elements: !336)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !152, line: 397, size: 448, elements: !2491)
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2502}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2490, file: !152, line: 398, baseType: !7, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2490, file: !152, line: 399, baseType: !7, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2490, file: !152, line: 401, baseType: !7, size: 32, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2490, file: !152, line: 402, baseType: !7, size: 32, offset: 96)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2490, file: !152, line: 403, baseType: !7, size: 32, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2490, file: !152, line: 404, baseType: !7, size: 32, offset: 160)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2490, file: !152, line: 405, baseType: !7, size: 32, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2490, file: !152, line: 406, baseType: !289, size: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2490, file: !152, line: 407, baseType: !2501, size: 64, offset: 320)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !45, line: 132, baseType: !287)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2490, file: !152, line: 408, baseType: !2501, size: 64, offset: 384)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2422, file: !152, line: 442, baseType: !2432, size: 64, offset: 640)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !556, file: !19, line: 1200, baseType: !2505, size: 64, offset: 576)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !556, file: !19, line: 1201, baseType: !59, size: 64, offset: 640)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !556, file: !19, line: 1202, baseType: !59, size: 64, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !556, file: !19, line: 1203, baseType: !59, size: 64, offset: 768)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !556, file: !19, line: 1204, baseType: !444, size: 64, offset: 832)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !556, file: !19, line: 1205, baseType: !1280, size: 320, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !556, file: !19, line: 1206, baseType: !42, size: 32, offset: 1216)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !556, file: !19, line: 1207, baseType: !69, size: 32, offset: 1248)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !556, file: !19, line: 1209, baseType: !40, size: 64, offset: 1280)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !556, file: !19, line: 1211, baseType: !2517, size: 64, offset: 1344)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !556, file: !19, line: 1223, baseType: !2522, size: 64, offset: 1408)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !461, line: 34, size: 64, elements: !2523)
!2523 = !{!2524}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2522, file: !461, line: 35, baseType: !464, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !556, file: !19, line: 1224, baseType: !117, size: 128, offset: 1472)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !556, file: !19, line: 1225, baseType: !2527, size: 64, offset: 1600)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2529, line: 40, size: 7424, elements: !2530)
!2529 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2530 = !{!2531, !2533, !2534, !2537, !2541, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2568, !2569}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2528, file: !2529, line: 41, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !45, line: 131, baseType: !287)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2528, file: !2529, line: 42, baseType: !2532, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2528, file: !2529, line: 43, baseType: !2535, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2251, line: 1453, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2528, file: !2529, line: 44, baseType: !2538, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2540, line: 74, flags: DIFlagFwdDecl)
!2540 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2528, file: !2529, line: 45, baseType: !2542, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2529, line: 45, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2528, file: !2529, line: 46, baseType: !59, size: 64, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2528, file: !2529, line: 47, baseType: !742, size: 8, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2528, file: !2529, line: 48, baseType: !103, size: 8, offset: 392)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2528, file: !2529, line: 49, baseType: !742, size: 8, offset: 400)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2528, file: !2529, line: 50, baseType: !742, size: 8, offset: 408)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2528, file: !2529, line: 51, baseType: !560, size: 32, offset: 416)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2528, file: !2529, line: 52, baseType: !69, size: 32, offset: 448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2528, file: !2529, line: 53, baseType: !79, size: 32, offset: 480)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2528, file: !2529, line: 54, baseType: !409, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2528, file: !2529, line: 55, baseType: !40, size: 64, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2528, file: !2529, line: 56, baseType: !40, size: 64, offset: 640)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2528, file: !2529, line: 57, baseType: !2556, size: 64, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2529, line: 57, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2528, file: !2529, line: 58, baseType: !662, size: 256, offset: 768)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2528, file: !2529, line: 60, baseType: !42, size: 32, offset: 1024)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2528, file: !2529, line: 61, baseType: !42, size: 32, offset: 1056)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2528, file: !2529, line: 62, baseType: !300, size: 64, offset: 1088)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2528, file: !2529, line: 65, baseType: !662, size: 256, offset: 1152)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2528, file: !2529, line: 66, baseType: !555, size: 64, offset: 1408)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2528, file: !2529, line: 68, baseType: !2566, size: 64, offset: 1472)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2529, line: 68, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2528, file: !2529, line: 72, baseType: !742, size: 8, offset: 1536)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2528, file: !2529, line: 77, baseType: !2570, size: 5824, offset: 1600)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !164, line: 705, size: 5824, elements: !2571)
!2571 = !{!2572, !2573, !2575, !2578, !2579, !2632, !2702, !2703, !2704, !2705, !2706, !2713, !2877, !2890, !2900, !2904, !2906, !2907, !2908, !2912, !2919, !2920, !2923, !2926, !2930, !2933, !2934, !2935, !2936, !2937, !2938, !2992, !2993, !2994, !2997, !3000, !3009, !3010, !3011, !3012, !3013, !3014}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2570, file: !164, line: 706, baseType: !294, size: 512)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2570, file: !164, line: 707, baseType: !2574, size: 64, offset: 512)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2570, file: !164, line: 709, baseType: !2576, size: 64, offset: 576)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !164, line: 37, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2570, file: !164, line: 711, baseType: !36, size: 64, offset: 640)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2570, file: !164, line: 712, baseType: !2580, size: 64, offset: 704)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2582)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !164, line: 89, size: 384, elements: !2583)
!2583 = !{!2584, !2585, !2586, !2592, !2597, !2601}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2582, file: !164, line: 90, baseType: !36, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2582, file: !164, line: 91, baseType: !381, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2582, file: !164, line: 92, baseType: !2587, size: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!42, !2590, !330}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2570)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2582, file: !164, line: 93, baseType: !2593, size: 64, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!335, !2590, !2596, !1510, !1511}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2582, file: !164, line: 95, baseType: !2598, size: 64, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{null, !2574}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2582, file: !164, line: 97, baseType: !2602, size: 64, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !176, line: 286, size: 1472, elements: !2605)
!2605 = !{!2606, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2604, file: !176, line: 287, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!42, !2574}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2604, file: !176, line: 288, baseType: !2598, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2604, file: !176, line: 289, baseType: !2607, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2604, file: !176, line: 290, baseType: !2607, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2604, file: !176, line: 291, baseType: !2607, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2604, file: !176, line: 292, baseType: !2607, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2604, file: !176, line: 293, baseType: !2607, size: 64, offset: 384)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2604, file: !176, line: 294, baseType: !2607, size: 64, offset: 448)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2604, file: !176, line: 295, baseType: !2607, size: 64, offset: 512)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2604, file: !176, line: 296, baseType: !2607, size: 64, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2604, file: !176, line: 297, baseType: !2607, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2604, file: !176, line: 298, baseType: !2607, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2604, file: !176, line: 299, baseType: !2607, size: 64, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2604, file: !176, line: 300, baseType: !2607, size: 64, offset: 832)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2604, file: !176, line: 301, baseType: !2607, size: 64, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2604, file: !176, line: 302, baseType: !2607, size: 64, offset: 960)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2604, file: !176, line: 303, baseType: !2607, size: 64, offset: 1024)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2604, file: !176, line: 304, baseType: !2607, size: 64, offset: 1088)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2604, file: !176, line: 305, baseType: !2607, size: 64, offset: 1152)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2604, file: !176, line: 306, baseType: !2607, size: 64, offset: 1216)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2604, file: !176, line: 307, baseType: !2607, size: 64, offset: 1280)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2604, file: !176, line: 308, baseType: !2607, size: 64, offset: 1344)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2604, file: !176, line: 309, baseType: !2607, size: 64, offset: 1408)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2570, file: !164, line: 714, baseType: !2633, size: 64, offset: 768)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2636, line: 80, size: 1344, elements: !2637)
!2636 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2701}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2635, file: !2636, line: 81, baseType: !36, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2635, file: !2636, line: 82, baseType: !36, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2635, file: !2636, line: 83, baseType: !381, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2635, file: !2636, line: 84, baseType: !381, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2635, file: !2636, line: 85, baseType: !381, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2635, file: !2636, line: 87, baseType: !2644, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!42, !2574, !2647}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !158, line: 96, size: 1152, elements: !2649)
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2660, !2664, !2665, !2666, !2667, !2668, !2676, !2677, !2678, !2679, !2680, !2681}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2648, file: !158, line: 97, baseType: !36, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2648, file: !158, line: 98, baseType: !2633, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2648, file: !158, line: 100, baseType: !591, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2648, file: !158, line: 101, baseType: !36, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2648, file: !158, line: 103, baseType: !742, size: 8, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2648, file: !158, line: 104, baseType: !157, size: 32, offset: 288)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2648, file: !158, line: 106, baseType: !2657, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2659)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !158, line: 106, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2648, file: !158, line: 107, baseType: !2661, size: 64, offset: 384)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2663)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !158, line: 107, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2648, file: !158, line: 109, baseType: !2607, size: 64, offset: 448)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2648, file: !158, line: 110, baseType: !2598, size: 64, offset: 512)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2648, file: !158, line: 111, baseType: !2607, size: 64, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2648, file: !158, line: 112, baseType: !2598, size: 64, offset: 640)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2648, file: !158, line: 113, baseType: !2669, size: 64, offset: 704)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!42, !2574, !2672}
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !176, line: 60, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !176, line: 58, size: 32, elements: !2674)
!2674 = !{!2675}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2673, file: !176, line: 59, baseType: !42, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2648, file: !158, line: 114, baseType: !2607, size: 64, offset: 768)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2648, file: !158, line: 115, baseType: !381, size: 64, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2648, file: !158, line: 116, baseType: !381, size: 64, offset: 896)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2648, file: !158, line: 118, baseType: !2602, size: 64, offset: 960)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2648, file: !158, line: 119, baseType: !2598, size: 64, offset: 1024)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2648, file: !158, line: 121, baseType: !2682, size: 64, offset: 1088)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !158, line: 121, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2635, file: !2636, line: 88, baseType: !2587, size: 64, offset: 384)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2635, file: !2636, line: 89, baseType: !2607, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2635, file: !2636, line: 90, baseType: !2598, size: 64, offset: 512)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2635, file: !2636, line: 91, baseType: !2598, size: 64, offset: 576)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2635, file: !2636, line: 92, baseType: !2598, size: 64, offset: 640)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2635, file: !2636, line: 94, baseType: !2607, size: 64, offset: 704)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2635, file: !2636, line: 95, baseType: !2607, size: 64, offset: 768)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2635, file: !2636, line: 97, baseType: !2669, size: 64, offset: 832)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2635, file: !2636, line: 98, baseType: !2607, size: 64, offset: 896)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2635, file: !2636, line: 100, baseType: !2607, size: 64, offset: 960)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2635, file: !2636, line: 102, baseType: !2607, size: 64, offset: 1024)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2635, file: !2636, line: 103, baseType: !2598, size: 64, offset: 1088)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2635, file: !2636, line: 105, baseType: !2602, size: 64, offset: 1152)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2635, file: !2636, line: 107, baseType: !2698, size: 64, offset: 1216)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2700)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2636, line: 107, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2635, file: !2636, line: 109, baseType: !742, size: 8, offset: 1280)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2570, file: !164, line: 715, baseType: !2647, size: 64, offset: 832)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2570, file: !164, line: 717, baseType: !40, size: 64, offset: 896)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2570, file: !164, line: 719, baseType: !40, size: 64, offset: 960)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2570, file: !164, line: 721, baseType: !662, size: 256, offset: 1024)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2570, file: !164, line: 725, baseType: !2707, size: 448, offset: 1280)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !164, line: 517, size: 448, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2707, file: !164, line: 518, baseType: !117, size: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2707, file: !164, line: 519, baseType: !117, size: 128, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2707, file: !164, line: 520, baseType: !117, size: 128, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2707, file: !164, line: 521, baseType: !163, size: 32, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2570, file: !164, line: 726, baseType: !2714, size: 2496, offset: 1728)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !176, line: 663, size: 2496, elements: !2715)
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2760, !2761, !2762, !2763, !2764, !2765, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2870, !2874}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2714, file: !176, line: 664, baseType: !2672, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2714, file: !176, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2714, file: !176, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2714, file: !176, line: 667, baseType: !742, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2714, file: !176, line: 668, baseType: !742, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2714, file: !176, line: 669, baseType: !742, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2714, file: !176, line: 670, baseType: !742, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2714, file: !176, line: 671, baseType: !742, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2714, file: !176, line: 672, baseType: !742, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2714, file: !176, line: 673, baseType: !742, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2714, file: !176, line: 674, baseType: !742, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2714, file: !176, line: 675, baseType: !283, size: 32, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2714, file: !176, line: 676, baseType: !79, size: 32, offset: 96)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2714, file: !176, line: 678, baseType: !117, size: 128, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2714, file: !176, line: 679, baseType: !611, size: 256, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2714, file: !176, line: 680, baseType: !2732, size: 64, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2734, line: 43, size: 1536, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2743, !2744, !2745, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2733, file: !2734, line: 44, baseType: !36, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2733, file: !2734, line: 45, baseType: !42, size: 32, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2733, file: !2734, line: 46, baseType: !117, size: 128, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2733, file: !2734, line: 47, baseType: !79, size: 32, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2733, file: !2734, line: 48, baseType: !2741, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !176, line: 629, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2733, file: !2734, line: 49, baseType: !904, size: 320, offset: 384)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2733, file: !2734, line: 50, baseType: !59, size: 64, offset: 704)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2733, file: !2734, line: 51, baseType: !2746, size: 64, offset: 768)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2747, line: 29, baseType: !672)
!2747 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2733, file: !2734, line: 52, baseType: !2746, size: 64, offset: 832)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2733, file: !2734, line: 53, baseType: !2746, size: 64, offset: 896)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2733, file: !2734, line: 54, baseType: !2746, size: 64, offset: 960)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2733, file: !2734, line: 55, baseType: !2746, size: 64, offset: 1024)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2733, file: !2734, line: 56, baseType: !59, size: 64, offset: 1088)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2733, file: !2734, line: 57, baseType: !59, size: 64, offset: 1152)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2733, file: !2734, line: 58, baseType: !59, size: 64, offset: 1216)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2733, file: !2734, line: 59, baseType: !59, size: 64, offset: 1280)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2733, file: !2734, line: 60, baseType: !59, size: 64, offset: 1344)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2733, file: !2734, line: 61, baseType: !2574, size: 64, offset: 1408)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2733, file: !2734, line: 62, baseType: !742, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2733, file: !2734, line: 63, baseType: !742, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2714, file: !176, line: 681, baseType: !742, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2714, file: !176, line: 682, baseType: !742, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2714, file: !176, line: 683, baseType: !742, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2714, file: !176, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2714, file: !176, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2714, file: !176, line: 690, baseType: !2766, size: 512, offset: 640)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !171, line: 118, size: 512, elements: !2767)
!2767 = !{!2768, !2774, !2775, !2780, !2832, !2833, !2834, !2835}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2766, file: !171, line: 119, baseType: !2769, size: 256)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2770, line: 9, size: 256, elements: !2771)
!2770 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2769, file: !2770, line: 10, baseType: !774, size: 192, align: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2769, file: !2770, line: 11, baseType: !2746, size: 64, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2766, file: !171, line: 120, baseType: !2746, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2766, file: !171, line: 121, baseType: !2776, size: 64, offset: 320)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!170, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2766, file: !171, line: 122, baseType: !2781, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !171, line: 159, size: 512, align: 512, elements: !2783)
!2783 = !{!2784, !2809, !2810, !2813, !2818, !2819, !2827, !2831}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2782, file: !171, line: 160, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !171, line: 215, size: 4608, align: 512, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2786, file: !171, line: 216, baseType: !620, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2786, file: !171, line: 217, baseType: !7, size: 32, offset: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2786, file: !171, line: 218, baseType: !7, size: 32, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2786, file: !171, line: 219, baseType: !7, size: 32, offset: 96)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2786, file: !171, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2786, file: !171, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2786, file: !171, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2786, file: !171, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2786, file: !171, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2786, file: !171, line: 226, baseType: !7, size: 32, offset: 160)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2786, file: !171, line: 227, baseType: !46, size: 16, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2786, file: !171, line: 228, baseType: !46, size: 16, offset: 208)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2786, file: !171, line: 229, baseType: !7, size: 32, offset: 224)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2786, file: !171, line: 235, baseType: !2746, size: 64, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2786, file: !171, line: 236, baseType: !2779, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2786, file: !171, line: 237, baseType: !2746, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2786, file: !171, line: 238, baseType: !2779, size: 64, offset: 448)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2786, file: !171, line: 239, baseType: !2806, size: 4096, align: 512, offset: 512)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2782, size: 4096, align: 512, elements: !2807)
!2807 = !{!2808}
!2808 = !DISubrange(count: 8)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2782, file: !171, line: 161, baseType: !7, size: 32, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2782, file: !171, line: 162, baseType: !2811, size: 32, offset: 96)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !45, line: 32, baseType: !2812)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !57, line: 96, baseType: !42)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2782, file: !171, line: 163, baseType: !2814, size: 32, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !451, line: 274, baseType: !2815)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !451, line: 274, size: 32, elements: !2816)
!2816 = !{!2817}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2815, file: !451, line: 274, baseType: !455, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2782, file: !171, line: 164, baseType: !2779, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2782, file: !171, line: 165, baseType: !2820, size: 128, offset: 256)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2770, line: 14, size: 128, elements: !2821)
!2821 = !{!2822}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2820, file: !2770, line: 15, baseType: !2823, size: 128)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !775, line: 26, size: 128, elements: !2824)
!2824 = !{!2825, !2826}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2823, file: !775, line: 27, baseType: !1527, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2823, file: !775, line: 28, baseType: !779, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2782, file: !171, line: 166, baseType: !2828, size: 64, offset: 384)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!2746}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2782, file: !171, line: 167, baseType: !2746, size: 64, offset: 448)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2766, file: !171, line: 123, baseType: !103, size: 8, offset: 448)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2766, file: !171, line: 124, baseType: !103, size: 8, offset: 456)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2766, file: !171, line: 125, baseType: !103, size: 8, offset: 464)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2766, file: !171, line: 126, baseType: !103, size: 8, offset: 472)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2714, file: !176, line: 691, baseType: !287, size: 64, offset: 1152)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2714, file: !176, line: 692, baseType: !922, size: 256, offset: 1216)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2714, file: !176, line: 693, baseType: !74, size: 192, offset: 1472)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2714, file: !176, line: 694, baseType: !2741, size: 64, offset: 1664)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2714, file: !176, line: 695, baseType: !69, size: 32, offset: 1728)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2714, file: !176, line: 696, baseType: !69, size: 32, offset: 1760)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2714, file: !176, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2714, file: !176, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2714, file: !176, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2714, file: !176, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2714, file: !176, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2714, file: !176, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2714, file: !176, line: 703, baseType: !742, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2714, file: !176, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2714, file: !176, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2714, file: !176, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2714, file: !176, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2714, file: !176, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2714, file: !176, line: 709, baseType: !7, size: 32, offset: 1824)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2714, file: !176, line: 710, baseType: !175, size: 32, offset: 1856)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2714, file: !176, line: 711, baseType: !183, size: 32, offset: 1888)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2714, file: !176, line: 712, baseType: !183, size: 32, offset: 1920)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2714, file: !176, line: 713, baseType: !42, size: 32, offset: 1952)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2714, file: !176, line: 714, baseType: !42, size: 32, offset: 1984)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2714, file: !176, line: 715, baseType: !287, size: 64, offset: 2048)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2714, file: !176, line: 716, baseType: !287, size: 64, offset: 2112)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2714, file: !176, line: 717, baseType: !287, size: 64, offset: 2176)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2714, file: !176, line: 718, baseType: !287, size: 64, offset: 2240)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2714, file: !176, line: 720, baseType: !2865, size: 64, offset: 2304)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !176, line: 632, size: 64, elements: !2867)
!2867 = !{!2868, !2869}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2866, file: !176, line: 633, baseType: !79, size: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2866, file: !176, line: 634, baseType: !7, size: 32, offset: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2714, file: !176, line: 721, baseType: !2871, size: 64, offset: 2368)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2574, !658}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2714, file: !176, line: 722, baseType: !2875, size: 64, offset: 2432)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !176, line: 722, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2570, file: !164, line: 727, baseType: !2878, size: 64, offset: 4224)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !176, line: 742, size: 1792, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2887, !2888, !2889}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2879, file: !176, line: 743, baseType: !2604, size: 1472)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2879, file: !176, line: 744, baseType: !2607, size: 64, offset: 1472)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2879, file: !176, line: 745, baseType: !2884, size: 64, offset: 1536)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{null, !2574, !742}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2879, file: !176, line: 746, baseType: !2607, size: 64, offset: 1600)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2879, file: !176, line: 747, baseType: !2598, size: 64, offset: 1664)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2879, file: !176, line: 748, baseType: !2598, size: 64, offset: 1728)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2570, file: !164, line: 736, baseType: !2891, size: 128, offset: 4288)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !164, line: 529, size: 128, elements: !2892)
!2892 = !{!2893, !2897}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2891, file: !164, line: 531, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2896, line: 13, flags: DIFlagFwdDecl)
!2896 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2891, file: !164, line: 532, baseType: !2898, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !164, line: 49, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2570, file: !164, line: 738, baseType: !2901, size: 64, offset: 4416)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !164, line: 738, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2570, file: !164, line: 740, baseType: !2905, size: 64, offset: 4480)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2570, file: !164, line: 741, baseType: !287, size: 64, offset: 4544)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2570, file: !164, line: 746, baseType: !287, size: 64, offset: 4608)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2570, file: !164, line: 747, baseType: !2909, size: 64, offset: 4672)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2911)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !164, line: 747, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2570, file: !164, line: 749, baseType: !2913, size: 64, offset: 4736)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !164, line: 428, size: 128, elements: !2915)
!2915 = !{!2916, !2917, !2918}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2914, file: !164, line: 433, baseType: !7, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2914, file: !164, line: 434, baseType: !7, size: 32, offset: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2914, file: !164, line: 435, baseType: !59, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2570, file: !164, line: 751, baseType: !117, size: 128, offset: 4800)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2570, file: !164, line: 762, baseType: !2921, size: 64, offset: 4928)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !164, line: 762, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2570, file: !164, line: 770, baseType: !2924, offset: 4992)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2925, line: 5, elements: !951)
!2925 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2570, file: !164, line: 772, baseType: !2927, size: 64, offset: 4992)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2929, line: 18, flags: DIFlagFwdDecl)
!2929 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2570, file: !164, line: 773, baseType: !2931, size: 64, offset: 5056)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2636, line: 22, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2570, file: !164, line: 776, baseType: !42, size: 32, offset: 5120)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2570, file: !164, line: 778, baseType: !560, size: 32, offset: 5152)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2570, file: !164, line: 779, baseType: !283, size: 32, offset: 5184)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2570, file: !164, line: 781, baseType: !79, size: 32, offset: 5216)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2570, file: !164, line: 782, baseType: !117, size: 128, offset: 5248)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2570, file: !164, line: 784, baseType: !2939, size: 64, offset: 5376)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2941)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2942, line: 52, size: 768, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2952, !2956, !2957, !2958, !2983, !2987, !2991}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2941, file: !2942, line: 53, baseType: !36, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2941, file: !2942, line: 55, baseType: !381, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2941, file: !2942, line: 56, baseType: !381, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2941, file: !2942, line: 58, baseType: !2587, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2941, file: !2942, line: 59, baseType: !2949, size: 64, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!335, !2590, !2596}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2941, file: !2942, line: 61, baseType: !2953, size: 64, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2939}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2941, file: !2942, line: 62, baseType: !2598, size: 64, offset: 384)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2941, file: !2942, line: 64, baseType: !2607, size: 64, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2941, file: !2942, line: 66, baseType: !2959, size: 64, offset: 512)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2961)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !191, line: 39, size: 384, elements: !2962)
!2962 = !{!2963, !2964, !2968, !2972, !2978, !2982}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2961, file: !191, line: 40, baseType: !190, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2961, file: !191, line: 41, baseType: !2965, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!742}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2961, file: !191, line: 42, baseType: !2969, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!40}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2961, file: !191, line: 43, baseType: !2973, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!1914, !2976}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !191, line: 19, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2961, file: !191, line: 44, baseType: !2979, size: 64, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!1914}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2961, file: !191, line: 45, baseType: !705, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2941, file: !2942, line: 67, baseType: !2984, size: 64, offset: 576)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!1914, !2590}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2941, file: !2942, line: 69, baseType: !2988, size: 64, offset: 640)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2590, !1510, !1511}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2941, file: !2942, line: 71, baseType: !2602, size: 64, offset: 704)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2570, file: !164, line: 785, baseType: !381, size: 64, offset: 5440)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2570, file: !164, line: 787, baseType: !2598, size: 64, offset: 5504)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2570, file: !164, line: 788, baseType: !2995, size: 64, offset: 5568)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !164, line: 46, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2570, file: !164, line: 789, baseType: !2998, size: 64, offset: 5632)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !164, line: 48, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2570, file: !164, line: 791, baseType: !3001, size: 64, offset: 5696)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !164, line: 597, size: 128, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3007, !3008}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3002, file: !164, line: 598, baseType: !196, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3002, file: !164, line: 599, baseType: !205, size: 32, offset: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3002, file: !164, line: 600, baseType: !210, size: 32, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3002, file: !164, line: 601, baseType: !742, size: 8, offset: 96)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3002, file: !164, line: 602, baseType: !742, size: 8, offset: 104)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2570, file: !164, line: 793, baseType: !215, size: 32, offset: 5760)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2570, file: !164, line: 795, baseType: !742, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2570, file: !164, line: 796, baseType: !742, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2570, file: !164, line: 797, baseType: !742, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2570, file: !164, line: 798, baseType: !742, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2570, file: !164, line: 799, baseType: !742, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !556, file: !19, line: 1226, baseType: !3016, size: 64, offset: 1664)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !556, file: !19, line: 1227, baseType: !3019, size: 64, offset: 1728)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !222, line: 163, size: 6848, elements: !3021)
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3072, !3073, !3074, !3075, !3077, !3078, !3079}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3020, file: !222, line: 164, baseType: !287, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3020, file: !222, line: 165, baseType: !774, size: 192, align: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3020, file: !222, line: 166, baseType: !117, size: 128, offset: 256)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3020, file: !222, line: 167, baseType: !59, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3020, file: !222, line: 168, baseType: !59, size: 64, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3020, file: !222, line: 170, baseType: !3028, size: 32, offset: 512)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3029, line: 19, size: 32, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3028, file: !3029, line: 20, baseType: !1212, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3020, file: !222, line: 171, baseType: !7, size: 32, offset: 544)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3020, file: !222, line: 172, baseType: !7, size: 32, offset: 576)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3020, file: !222, line: 173, baseType: !7, size: 32, offset: 608)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3020, file: !222, line: 173, baseType: !7, size: 32, offset: 640)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3020, file: !222, line: 179, baseType: !666, size: 64, offset: 704)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3020, file: !222, line: 184, baseType: !59, size: 64, offset: 768)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3020, file: !222, line: 186, baseType: !3039, size: 4672, offset: 832)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !222, line: 105, size: 4672, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3065, !3066, !3067, !3068, !3069, !3070, !3071}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3039, file: !222, line: 106, baseType: !3019, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3039, file: !222, line: 108, baseType: !59, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3039, file: !222, line: 109, baseType: !59, size: 64, offset: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3039, file: !222, line: 111, baseType: !117, size: 128, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3039, file: !222, line: 112, baseType: !117, size: 128, offset: 320)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3039, file: !222, line: 113, baseType: !117, size: 128, offset: 448)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3039, file: !222, line: 114, baseType: !117, size: 128, offset: 576)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3039, file: !222, line: 115, baseType: !79, size: 32, offset: 704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3039, file: !222, line: 117, baseType: !69, size: 32, offset: 736)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3039, file: !222, line: 118, baseType: !1860, size: 1280, offset: 768)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3039, file: !222, line: 120, baseType: !59, size: 64, offset: 2048)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3039, file: !222, line: 121, baseType: !59, size: 64, offset: 2112)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3039, file: !222, line: 122, baseType: !59, size: 64, offset: 2176)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3039, file: !222, line: 123, baseType: !59, size: 64, offset: 2240)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3039, file: !222, line: 124, baseType: !59, size: 64, offset: 2304)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3039, file: !222, line: 132, baseType: !59, size: 64, offset: 2368)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3039, file: !222, line: 133, baseType: !59, size: 64, offset: 2432)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3039, file: !222, line: 135, baseType: !3059, size: 384, offset: 2496)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3060, line: 76, size: 384, elements: !3061)
!3060 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3061 = !{!3062, !3063, !3064}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3059, file: !3060, line: 78, baseType: !1394, size: 320)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3059, file: !3060, line: 80, baseType: !7, size: 32, offset: 320)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3059, file: !3060, line: 81, baseType: !620, size: 32, offset: 352)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3039, file: !222, line: 136, baseType: !42, size: 32, offset: 2880)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3039, file: !222, line: 137, baseType: !221, size: 32, offset: 2912)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3039, file: !222, line: 139, baseType: !79, size: 32, offset: 2944)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3039, file: !222, line: 140, baseType: !117, size: 128, offset: 3008)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3039, file: !222, line: 141, baseType: !979, size: 704, offset: 3136)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3039, file: !222, line: 142, baseType: !979, size: 704, offset: 3840)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3039, file: !222, line: 144, baseType: !117, size: 128, offset: 4544)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3020, file: !222, line: 187, baseType: !117, size: 128, offset: 5504)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3020, file: !222, line: 193, baseType: !74, size: 192, offset: 5632)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3020, file: !222, line: 195, baseType: !2574, size: 64, offset: 5824)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3020, file: !222, line: 196, baseType: !3076, size: 512, offset: 5888)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !340)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3020, file: !222, line: 197, baseType: !2574, size: 64, offset: 6400)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3020, file: !222, line: 199, baseType: !904, size: 320, offset: 6464)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3020, file: !222, line: 202, baseType: !444, size: 64, offset: 6784)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !556, file: !19, line: 1228, baseType: !3081, size: 64, offset: 1792)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !556, file: !19, line: 1229, baseType: !908, size: 128, offset: 1856)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !556, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !556, file: !19, line: 1231, baseType: !3086, size: 2496, offset: 2048)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !152, line: 521, size: 2496, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3092, !3124}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3086, file: !152, line: 522, baseType: !7, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3086, file: !152, line: 523, baseType: !1280, size: 320, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3086, file: !152, line: 524, baseType: !3091, size: 192, offset: 384)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 192, elements: !336)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3086, file: !152, line: 525, baseType: !3093, size: 1728, offset: 576)
!3093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3094, size: 1728, elements: !336)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !152, line: 222, size: 576, elements: !3095)
!3095 = !{!3096, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3094, file: !152, line: 223, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !152, line: 445, size: 256, elements: !3099)
!3099 = !{!3100, !3101, !3114, !3115}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3098, file: !152, line: 446, baseType: !42, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3098, file: !152, line: 447, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3104)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !152, line: 312, size: 512, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3104, file: !152, line: 313, baseType: !1098, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3104, file: !152, line: 314, baseType: !1098, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3104, file: !152, line: 315, baseType: !1098, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3104, file: !152, line: 316, baseType: !1098, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3104, file: !152, line: 317, baseType: !2385, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3104, file: !152, line: 318, baseType: !2385, size: 64, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3104, file: !152, line: 319, baseType: !2385, size: 64, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3104, file: !152, line: 320, baseType: !2415, size: 64, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3098, file: !152, line: 448, baseType: !591, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3098, file: !152, line: 449, baseType: !3097, size: 64, offset: 192)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3094, file: !152, line: 224, baseType: !42, size: 32, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3094, file: !152, line: 226, baseType: !117, size: 128, offset: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3094, file: !152, line: 227, baseType: !59, size: 64, offset: 256)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3094, file: !152, line: 228, baseType: !7, size: 32, offset: 320)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3094, file: !152, line: 229, baseType: !7, size: 32, offset: 352)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3094, file: !152, line: 230, baseType: !2353, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3094, file: !152, line: 231, baseType: !2353, size: 64, offset: 448)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3094, file: !152, line: 232, baseType: !40, size: 64, offset: 512)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3086, file: !152, line: 526, baseType: !3125, size: 192, offset: 2304)
!3125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3102, size: 192, elements: !336)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !556, file: !19, line: 1233, baseType: !3127, size: 2368, offset: 4544)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3127, file: !19, line: 1185, baseType: !46, size: 16)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3127, file: !19, line: 1186, baseType: !46, size: 16, offset: 16)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3127, file: !19, line: 1187, baseType: !3132, size: 2304, offset: 64)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3133, size: 2304, elements: !336)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3134, line: 12, size: 768, elements: !3135)
!3134 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3135 = !{!3136, !3144, !3145, !4685, !4686}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3133, file: !3134, line: 13, baseType: !3137, size: 384)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3138, line: 17, size: 384, elements: !3139)
!3138 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3139 = !{!3140, !3141, !3142, !3143}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3137, file: !3138, line: 18, baseType: !42, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3137, file: !3138, line: 19, baseType: !42, size: 32, offset: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3137, file: !3138, line: 20, baseType: !74, size: 192, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3137, file: !3138, line: 22, baseType: !882, size: 128, align: 64, offset: 256)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3133, file: !3134, line: 14, baseType: !734, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3133, file: !3134, line: 15, baseType: !3146, size: 64, offset: 448)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3147, line: 16, size: 64, elements: !3148)
!3147 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3148 = !{!3149}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3146, file: !3147, line: 17, baseType: !3150, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2251, line: 746, size: 58368, elements: !3152)
!3152 = !{!3153, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3233, !3244, !3264, !3268, !3271, !3302, !3303, !3304, !3305, !3316, !3318, !3319, !3320, !3321, !3322, !3323, !3334, !3335, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3352, !3353, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3446, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3494, !3500, !3501, !3502, !3503, !3504, !3508, !3511, !3518, !3523, !3526, !3529, !3532, !3920, !4119, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4157, !4158, !4159, !4168, !4176, !4177, !4178, !4179, !4180, !4185, !4186, !4187, !4190, !4191, !4194, !4197, !4203, !4210, !4213, !4214, !4300, !4301, !4302, !4303, !4304, !4310, !4311, !4312, !4313, !4314, !4315, !4318, !4321, !4322, !4325, !4326, !4327, !4330, !4331, !4332, !4333, !4334, !4335, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4367, !4368, !4374, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4456, !4458, !4459, !4460, !4461, !4462, !4463, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4480, !4481, !4482}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3151, file: !2251, line: 752, baseType: !3154, size: 192)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3155, line: 56, size: 192, elements: !3156)
!3155 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3154, file: !3155, line: 57, baseType: !59, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3154, file: !3155, line: 58, baseType: !59, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3154, file: !3155, line: 59, baseType: !283, size: 32, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3154, file: !3155, line: 61, baseType: !283, size: 32, offset: 160)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3151, file: !2251, line: 754, baseType: !7, size: 32, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3151, file: !2251, line: 767, baseType: !40, size: 64, offset: 256)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3151, file: !2251, line: 768, baseType: !1212, size: 32, offset: 320)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3151, file: !2251, line: 770, baseType: !7, size: 32, offset: 352)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3151, file: !2251, line: 771, baseType: !7, size: 32, offset: 384)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3151, file: !2251, line: 774, baseType: !42, size: 32, offset: 416)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3151, file: !2251, line: 775, baseType: !3168, size: 128, offset: 448)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3169, line: 58, size: 128, elements: !3170)
!3169 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3170 = !{!3171, !3172, !3177, !3178}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3168, file: !3169, line: 59, baseType: !1169, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !3169, line: 60, baseType: !3173, size: 32, offset: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3168, file: !3169, line: 60, size: 32, elements: !3174)
!3174 = !{!3175, !3176}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3173, file: !3169, line: 61, baseType: !7, size: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3173, file: !3169, line: 62, baseType: !69, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3168, file: !3169, line: 65, baseType: !113, size: 16, offset: 96)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3168, file: !3169, line: 65, baseType: !113, size: 16, offset: 112)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3151, file: !2251, line: 776, baseType: !7, size: 32, offset: 576)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3151, file: !2251, line: 777, baseType: !59, size: 64, offset: 640)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3151, file: !2251, line: 778, baseType: !3150, size: 64, offset: 704)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3151, file: !2251, line: 787, baseType: !42, size: 32, offset: 768)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3151, file: !2251, line: 788, baseType: !42, size: 32, offset: 800)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3151, file: !2251, line: 790, baseType: !42, size: 32, offset: 832)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3151, file: !2251, line: 792, baseType: !42, size: 32, offset: 864)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3151, file: !2251, line: 793, baseType: !42, size: 32, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3151, file: !2251, line: 794, baseType: !42, size: 32, offset: 928)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3151, file: !2251, line: 795, baseType: !7, size: 32, offset: 960)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3151, file: !2251, line: 797, baseType: !3190, size: 2048, offset: 1024)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2251, line: 551, size: 2048, elements: !3191)
!3191 = !{!3192, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3212, !3215, !3216, !3217}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3190, file: !2251, line: 553, baseType: !3193, size: 128)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2251, line: 411, size: 128, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3193, file: !2251, line: 412, baseType: !59, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3193, file: !2251, line: 413, baseType: !283, size: 32, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3190, file: !2251, line: 554, baseType: !774, size: 192, align: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3190, file: !2251, line: 555, baseType: !287, size: 64, offset: 320)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3190, file: !2251, line: 556, baseType: !287, size: 64, offset: 384)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3190, file: !2251, line: 558, baseType: !117, size: 128, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3190, file: !2251, line: 559, baseType: !7, size: 32, offset: 576)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3190, file: !2251, line: 561, baseType: !287, size: 64, offset: 640)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3190, file: !2251, line: 562, baseType: !287, size: 64, offset: 704)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3190, file: !2251, line: 563, baseType: !287, size: 64, offset: 768)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3190, file: !2251, line: 564, baseType: !287, size: 64, offset: 832)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3190, file: !2251, line: 565, baseType: !672, size: 64, offset: 896)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3190, file: !2251, line: 566, baseType: !287, size: 64, offset: 960)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3190, file: !2251, line: 568, baseType: !287, size: 64, offset: 1024)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3190, file: !2251, line: 571, baseType: !42, size: 32, offset: 1088)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3190, file: !2251, line: 572, baseType: !3211, size: 64, offset: 1152)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3190, file: !2251, line: 574, baseType: !3213, size: 64, offset: 1216)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2251, line: 49, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3190, file: !2251, line: 576, baseType: !3213, size: 64, offset: 1280)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3190, file: !2251, line: 578, baseType: !59, size: 64, offset: 1344)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3190, file: !2251, line: 588, baseType: !3218, size: 512, align: 512, offset: 1536)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2251, line: 497, size: 512, align: 512, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3218, file: !2251, line: 498, baseType: !287, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3218, file: !2251, line: 499, baseType: !287, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3218, file: !2251, line: 500, baseType: !287, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3218, file: !2251, line: 501, baseType: !283, size: 32, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3218, file: !2251, line: 502, baseType: !283, size: 32, offset: 224)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3218, file: !2251, line: 503, baseType: !59, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3218, file: !2251, line: 504, baseType: !59, size: 64, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3218, file: !2251, line: 505, baseType: !59, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3218, file: !2251, line: 506, baseType: !3229, size: 64, align: 64, offset: 448)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2251, line: 445, size: 64, align: 64, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3229, file: !2251, line: 446, baseType: !7, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3229, file: !2251, line: 447, baseType: !7, size: 32, offset: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3151, file: !2251, line: 798, baseType: !3234, size: 384, offset: 3072)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2251, line: 592, size: 384, elements: !3235)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3234, file: !2251, line: 593, baseType: !117, size: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3234, file: !2251, line: 594, baseType: !59, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3234, file: !2251, line: 595, baseType: !59, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3234, file: !2251, line: 596, baseType: !7, size: 32, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3234, file: !2251, line: 597, baseType: !46, size: 16, offset: 288)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3234, file: !2251, line: 598, baseType: !46, size: 16, offset: 304)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3234, file: !2251, line: 600, baseType: !3243, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3151, file: !2251, line: 799, baseType: !3245, size: 1792, offset: 3456)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2251, line: 610, size: 1792, elements: !3246)
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3245, file: !2251, line: 611, baseType: !774, size: 192, align: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3245, file: !2251, line: 618, baseType: !287, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3245, file: !2251, line: 619, baseType: !287, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3245, file: !2251, line: 620, baseType: !287, size: 64, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3245, file: !2251, line: 621, baseType: !287, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3245, file: !2251, line: 622, baseType: !287, size: 64, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3245, file: !2251, line: 629, baseType: !672, size: 64, offset: 512)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3245, file: !2251, line: 630, baseType: !287, size: 64, offset: 576)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3245, file: !2251, line: 631, baseType: !7, size: 32, offset: 640)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3245, file: !2251, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3245, file: !2251, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3245, file: !2251, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3245, file: !2251, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3245, file: !2251, line: 662, baseType: !2766, size: 512, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3245, file: !2251, line: 671, baseType: !2766, size: 512, offset: 1216)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3245, file: !2251, line: 679, baseType: !3263, size: 64, offset: 1728)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3151, file: !2251, line: 800, baseType: !3265, size: 64, offset: 5248)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3267)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2251, line: 800, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3151, file: !2251, line: 809, baseType: !3269, size: 64, offset: 5312)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2251, line: 70, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3151, file: !2251, line: 825, baseType: !3272, size: 2048, align: 512, offset: 5632)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2251, line: 509, size: 2048, align: 512, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3272, file: !2251, line: 511, baseType: !287, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3272, file: !2251, line: 512, baseType: !287, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3272, file: !2251, line: 513, baseType: !287, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3272, file: !2251, line: 514, baseType: !287, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3272, file: !2251, line: 515, baseType: !287, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3272, file: !2251, line: 516, baseType: !287, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3272, file: !2251, line: 518, baseType: !287, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3272, file: !2251, line: 519, baseType: !287, size: 64, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3272, file: !2251, line: 520, baseType: !672, size: 64, offset: 512)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3272, file: !2251, line: 522, baseType: !287, size: 64, offset: 576)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3272, file: !2251, line: 523, baseType: !287, size: 64, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3272, file: !2251, line: 524, baseType: !672, size: 64, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3272, file: !2251, line: 526, baseType: !672, size: 64, offset: 768)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3272, file: !2251, line: 527, baseType: !287, size: 64, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3272, file: !2251, line: 529, baseType: !287, size: 64, offset: 896)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3272, file: !2251, line: 530, baseType: !287, size: 64, offset: 960)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3272, file: !2251, line: 531, baseType: !287, size: 64, offset: 1024)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3272, file: !2251, line: 532, baseType: !287, size: 64, offset: 1088)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3272, file: !2251, line: 533, baseType: !287, size: 64, offset: 1152)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3272, file: !2251, line: 535, baseType: !287, size: 64, offset: 1216)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3272, file: !2251, line: 536, baseType: !287, size: 64, offset: 1280)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3272, file: !2251, line: 537, baseType: !287, size: 64, offset: 1344)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3272, file: !2251, line: 538, baseType: !287, size: 64, offset: 1408)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3272, file: !2251, line: 539, baseType: !287, size: 64, offset: 1472)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3272, file: !2251, line: 540, baseType: !287, size: 64, offset: 1536)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3272, file: !2251, line: 541, baseType: !287, size: 64, offset: 1600)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3272, file: !2251, line: 542, baseType: !287, size: 64, offset: 1664)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3272, file: !2251, line: 543, baseType: !287, size: 64, offset: 1728)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3151, file: !2251, line: 833, baseType: !7, size: 32, offset: 7680)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3151, file: !2251, line: 836, baseType: !7, size: 32, offset: 7712)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3151, file: !2251, line: 837, baseType: !42, size: 32, offset: 7744)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3151, file: !2251, line: 838, baseType: !3306, size: 64, offset: 7808)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3308)
!3308 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3309, line: 19, baseType: !3310)
!3309 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3309, line: 19, size: 64, elements: !3311)
!3311 = !{!3312}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3310, file: !3309, line: 19, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !3314)
!3314 = !{!3315}
!3315 = !DISubrange(count: 1)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3151, file: !2251, line: 839, baseType: !3317, size: 64, offset: 7872)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3151, file: !2251, line: 840, baseType: !3308, size: 64, offset: 7936)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3151, file: !2251, line: 841, baseType: !40, size: 64, offset: 8000)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3151, file: !2251, line: 843, baseType: !46, size: 16, offset: 8064)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3151, file: !2251, line: 845, baseType: !46, size: 16, offset: 8080)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3151, file: !2251, line: 848, baseType: !42, size: 32, offset: 8096)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3151, file: !2251, line: 849, baseType: !3324, size: 32, offset: 8128)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2251, line: 718, size: 32, elements: !3325)
!3325 = !{!3326, !3333}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3324, file: !2251, line: 724, baseType: !3327, size: 32)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3324, file: !2251, line: 719, size: 32, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3327, file: !2251, line: 720, baseType: !103, size: 8)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3327, file: !2251, line: 721, baseType: !103, size: 8, offset: 8)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3327, file: !2251, line: 722, baseType: !103, size: 8, offset: 16)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3327, file: !2251, line: 723, baseType: !103, size: 8, offset: 24)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3324, file: !2251, line: 725, baseType: !283, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3151, file: !2251, line: 850, baseType: !117, size: 128, offset: 8192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3151, file: !2251, line: 851, baseType: !3336, size: 64, offset: 8320)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2251, line: 60, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3151, file: !2251, line: 855, baseType: !59, size: 64, offset: 8384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3151, file: !2251, line: 856, baseType: !103, size: 8, offset: 8448)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3151, file: !2251, line: 857, baseType: !103, size: 8, offset: 8456)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3151, file: !2251, line: 858, baseType: !42, size: 32, offset: 8480)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3151, file: !2251, line: 859, baseType: !117, size: 128, offset: 8512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3151, file: !2251, line: 860, baseType: !42, size: 32, offset: 8640)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3151, file: !2251, line: 861, baseType: !117, size: 128, offset: 8704)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3151, file: !2251, line: 873, baseType: !3346, size: 256, offset: 8832)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2251, line: 376, size: 256, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3351}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3346, file: !2251, line: 381, baseType: !59, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3346, file: !2251, line: 384, baseType: !289, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3346, file: !2251, line: 389, baseType: !289, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3346, file: !2251, line: 392, baseType: !289, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3151, file: !2251, line: 875, baseType: !117, size: 128, offset: 9088)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3151, file: !2251, line: 877, baseType: !3354, size: 320, offset: 9216)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3355, line: 86, size: 320, elements: !3356)
!3355 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3356 = !{!3357, !3358, !3359}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3354, file: !3355, line: 87, baseType: !42, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3354, file: !3355, line: 88, baseType: !117, size: 128, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3354, file: !3355, line: 89, baseType: !117, size: 128, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3151, file: !2251, line: 878, baseType: !774, size: 192, align: 64, offset: 9536)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3151, file: !2251, line: 881, baseType: !1777, size: 64, offset: 9728)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3151, file: !2251, line: 882, baseType: !1777, size: 64, offset: 9792)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3151, file: !2251, line: 884, baseType: !42, size: 32, offset: 9856)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3151, file: !2251, line: 885, baseType: !42, size: 32, offset: 9888)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3151, file: !2251, line: 886, baseType: !42, size: 32, offset: 9920)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3151, file: !2251, line: 888, baseType: !42, size: 32, offset: 9952)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3151, file: !2251, line: 890, baseType: !59, size: 64, offset: 9984)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3151, file: !2251, line: 893, baseType: !7, size: 32, offset: 10048)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3151, file: !2251, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3151, file: !2251, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3151, file: !2251, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3151, file: !2251, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3151, file: !2251, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3151, file: !2251, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3151, file: !2251, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3151, file: !2251, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3151, file: !2251, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3151, file: !2251, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3151, file: !2251, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3151, file: !2251, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3151, file: !2251, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3151, file: !2251, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3151, file: !2251, line: 969, baseType: !59, size: 64, offset: 10176)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3151, file: !2251, line: 971, baseType: !3385, size: 448, offset: 10240)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !234, line: 25, size: 448, elements: !3386)
!3386 = !{!3387, !3388, !3393}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3385, file: !234, line: 26, baseType: !59, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3385, file: !234, line: 27, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!370, !3392}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !234, line: 28, baseType: !3394, size: 320, offset: 128)
!3394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !234, line: 28, size: 320, elements: !3395)
!3395 = !{!3396, !3406, !3431}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3394, file: !234, line: 37, baseType: !3397, size: 320)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3394, file: !234, line: 30, size: 320, elements: !3398)
!3398 = !{!3399, !3401, !3402, !3403, !3404, !3405}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3397, file: !234, line: 31, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3397, file: !234, line: 32, baseType: !283, size: 32, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3397, file: !234, line: 33, baseType: !283, size: 32, offset: 96)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3397, file: !234, line: 34, baseType: !283, size: 32, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3397, file: !234, line: 35, baseType: !287, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3397, file: !234, line: 36, baseType: !3400, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3394, file: !234, line: 47, baseType: !3407, size: 192)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3394, file: !234, line: 39, size: 192, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3430}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3407, file: !234, line: 40, baseType: !2811, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3407, file: !234, line: 41, baseType: !233, size: 32, offset: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3407, file: !234, line: 42, baseType: !3412, size: 64, offset: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3407, file: !234, line: 42, size: 64, elements: !3413)
!3413 = !{!3414, !3422}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3412, file: !234, line: 43, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3417, line: 7, size: 128, elements: !3418)
!3417 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3418 = !{!3419, !3421}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3416, file: !3417, line: 8, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !57, line: 93, baseType: !63)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3416, file: !3417, line: 9, baseType: !63, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3412, file: !234, line: 44, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3425, line: 7, size: 64, elements: !3426)
!3425 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3426 = !{!3427, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3424, file: !3425, line: 8, baseType: !3428, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3425, line: 5, baseType: !658)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3424, file: !3425, line: 9, baseType: !658, size: 32, offset: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3407, file: !234, line: 46, baseType: !287, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3394, file: !234, line: 55, baseType: !3432, size: 256)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3394, file: !234, line: 49, size: 256, elements: !3433)
!3433 = !{!3434, !3442, !3443, !3444, !3445}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3432, file: !234, line: 50, baseType: !3435, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !3437, line: 36, size: 64, elements: !3438)
!3437 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!3438 = !{!3439, !3440, !3441}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !3436, file: !3437, line: 37, baseType: !42, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3436, file: !3437, line: 38, baseType: !800, size: 16, offset: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !3436, file: !3437, line: 39, baseType: !800, size: 16, offset: 48)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3432, file: !234, line: 51, baseType: !42, size: 32, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3432, file: !234, line: 52, baseType: !42, size: 32, offset: 96)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3432, file: !234, line: 53, baseType: !59, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3432, file: !234, line: 54, baseType: !59, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3151, file: !2251, line: 973, baseType: !3447, size: 32, offset: 10688)
!3447 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !45, line: 27, baseType: !3448)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !57, line: 28, baseType: !42)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3151, file: !2251, line: 974, baseType: !3447, size: 32, offset: 10720)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3151, file: !2251, line: 978, baseType: !59, size: 64, offset: 10752)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3151, file: !2251, line: 987, baseType: !3150, size: 64, offset: 10816)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3151, file: !2251, line: 990, baseType: !3150, size: 64, offset: 10880)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3151, file: !2251, line: 995, baseType: !117, size: 128, offset: 10944)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3151, file: !2251, line: 996, baseType: !117, size: 128, offset: 11072)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3151, file: !2251, line: 997, baseType: !3150, size: 64, offset: 11200)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3151, file: !2251, line: 1005, baseType: !117, size: 128, offset: 11264)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3151, file: !2251, line: 1006, baseType: !117, size: 128, offset: 11392)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3151, file: !2251, line: 1009, baseType: !1208, size: 64, offset: 11520)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3151, file: !2251, line: 1010, baseType: !3460, size: 512, offset: 11584)
!3460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 512, elements: !892)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3151, file: !2251, line: 1011, baseType: !117, size: 128, offset: 12096)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3151, file: !2251, line: 1012, baseType: !117, size: 128, offset: 12224)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3151, file: !2251, line: 1014, baseType: !610, size: 64, offset: 12352)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3151, file: !2251, line: 1017, baseType: !791, size: 64, offset: 12416)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3151, file: !2251, line: 1020, baseType: !791, size: 64, offset: 12480)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3151, file: !2251, line: 1023, baseType: !40, size: 64, offset: 12544)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3151, file: !2251, line: 1025, baseType: !287, size: 64, offset: 12608)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3151, file: !2251, line: 1026, baseType: !287, size: 64, offset: 12672)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3151, file: !2251, line: 1031, baseType: !287, size: 64, offset: 12736)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3151, file: !2251, line: 1032, baseType: !3471, size: 192, offset: 12800)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2251, line: 324, size: 192, elements: !3472)
!3472 = !{!3473, !3474, !3475}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3471, file: !2251, line: 326, baseType: !287, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3471, file: !2251, line: 327, baseType: !287, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3471, file: !2251, line: 328, baseType: !620, size: 32, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3151, file: !2251, line: 1041, baseType: !59, size: 64, offset: 12992)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3151, file: !2251, line: 1042, baseType: !59, size: 64, offset: 13056)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3151, file: !2251, line: 1045, baseType: !287, size: 64, offset: 13120)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3151, file: !2251, line: 1048, baseType: !287, size: 64, offset: 13184)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3151, file: !2251, line: 1051, baseType: !59, size: 64, offset: 13248)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3151, file: !2251, line: 1052, baseType: !59, size: 64, offset: 13312)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3151, file: !2251, line: 1055, baseType: !3483, size: 640, offset: 13376)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3484, line: 132, size: 640, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3485 = !{!3486, !3492, !3493}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3483, file: !3484, line: 133, baseType: !3487, size: 576)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3488, size: 576, elements: !336)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3484, line: 117, size: 192, elements: !3489)
!3489 = !{!3490, !3491}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3488, file: !3484, line: 118, baseType: !287, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3488, file: !3484, line: 119, baseType: !2820, size: 128, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3483, file: !3484, line: 134, baseType: !7, size: 32, offset: 576)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3483, file: !3484, line: 135, baseType: !7, size: 32, offset: 608)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3151, file: !2251, line: 1058, baseType: !3495, size: 448, offset: 14016)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3484, line: 144, size: 448, elements: !3496)
!3496 = !{!3497, !3498, !3499}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3495, file: !3484, line: 145, baseType: !882, size: 128, align: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3495, file: !3484, line: 146, baseType: !662, size: 256, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3495, file: !3484, line: 147, baseType: !7, size: 32, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3151, file: !2251, line: 1064, baseType: !1239, size: 64, offset: 14464)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3151, file: !2251, line: 1067, baseType: !1239, size: 64, offset: 14528)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3151, file: !2251, line: 1070, baseType: !1239, size: 64, offset: 14592)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3151, file: !2251, line: 1074, baseType: !1266, size: 64, offset: 14656)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3151, file: !2251, line: 1084, baseType: !3505, size: 128, offset: 14720)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !3506)
!3506 = !{!3507}
!3507 = !DISubrange(count: 16)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3151, file: !2251, line: 1086, baseType: !3509, size: 64, offset: 14848)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2251, line: 55, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3151, file: !2251, line: 1089, baseType: !3512, size: 64, offset: 14912)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3513, line: 12, size: 64, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3514 = !{!3515}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3512, file: !3513, line: 13, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3513, line: 8, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3151, file: !2251, line: 1090, baseType: !3519, size: 128, offset: 14976)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3520, line: 13, size: 128, elements: !3521)
!3520 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3521 = !{!3522}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3519, file: !3520, line: 14, baseType: !117, size: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3151, file: !2251, line: 1097, baseType: !3524, size: 64, offset: 15104)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2251, line: 50, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3151, file: !2251, line: 1100, baseType: !3527, size: 64, offset: 15168)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2251, line: 1100, flags: DIFlagFwdDecl)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3151, file: !2251, line: 1103, baseType: !3530, size: 64, offset: 15232)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2251, line: 53, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3151, file: !2251, line: 1107, baseType: !3533, size: 64, offset: 15296)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3535, line: 31, size: 576, elements: !3536)
!3535 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3536 = !{!3537, !3538, !3541, !3544, !3547, !3548, !3551, !3554, !3555}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3534, file: !3535, line: 32, baseType: !1212, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3534, file: !3535, line: 33, baseType: !3539, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3535, line: 9, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3534, file: !3535, line: 34, baseType: !3542, size: 64, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3535, line: 10, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3534, file: !3535, line: 35, baseType: !3545, size: 64, offset: 192)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3535, line: 8, flags: DIFlagFwdDecl)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3534, file: !3535, line: 36, baseType: !1230, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3534, file: !3535, line: 37, baseType: !3549, size: 64, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1268, line: 34, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3534, file: !3535, line: 38, baseType: !3552, size: 64, offset: 384)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3535, line: 38, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3534, file: !3535, line: 39, baseType: !3552, size: 64, offset: 448)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3534, file: !3535, line: 40, baseType: !3556, size: 64, offset: 512)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3558, line: 771, size: 384, elements: !3559)
!3558 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3559 = !{!3560, !3561, !3562, !3563}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3557, file: !3558, line: 772, baseType: !1452, size: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3557, file: !3558, line: 773, baseType: !1419, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3557, file: !3558, line: 774, baseType: !1532, size: 64, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3557, file: !3558, line: 775, baseType: !3564, size: 64, offset: 320)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3566, line: 209, size: 4736, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3567 = !{!3568, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3565, file: !3566, line: 215, baseType: !3569, size: 896)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3570, size: 896, elements: !3717)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3566, line: 152, size: 1600, elements: !3572)
!3572 = !{!3573, !3768, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3898}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3571, file: !3566, line: 154, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3566, line: 389, size: 7872, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3680, !3686, !3687, !3691, !3692, !3693, !3694, !3695, !3696, !3714, !3715, !3719, !3720, !3721, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3755, !3758, !3759, !3766}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3575, file: !3566, line: 391, baseType: !3571, size: 1600)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3575, file: !3566, line: 393, baseType: !59, size: 64, offset: 1600)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3575, file: !3566, line: 401, baseType: !42, size: 32, offset: 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3575, file: !3566, line: 404, baseType: !42, size: 32, offset: 1696)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3575, file: !3566, line: 417, baseType: !42, size: 32, offset: 1728)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3575, file: !3566, line: 418, baseType: !42, size: 32, offset: 1760)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3575, file: !3566, line: 419, baseType: !42, size: 32, offset: 1792)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3575, file: !3566, line: 432, baseType: !42, size: 32, offset: 1824)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3575, file: !3566, line: 433, baseType: !42, size: 32, offset: 1856)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3575, file: !3566, line: 434, baseType: !42, size: 32, offset: 1888)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3575, file: !3566, line: 436, baseType: !42, size: 32, offset: 1920)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3575, file: !3566, line: 439, baseType: !7, size: 32, offset: 1952)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3575, file: !3566, line: 441, baseType: !3590, size: 64, offset: 1984)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !577, line: 190, size: 1152, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3672, !3673, !3674, !3675, !3676, !3679}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3591, file: !577, line: 191, baseType: !69, size: 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3591, file: !577, line: 192, baseType: !69, size: 32, offset: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3591, file: !577, line: 202, baseType: !3590, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3591, file: !577, line: 203, baseType: !36, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3591, file: !577, line: 205, baseType: !774, size: 192, align: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3591, file: !577, line: 207, baseType: !1914, size: 64, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3591, file: !577, line: 208, baseType: !7, size: 32, offset: 448)
!3600 = !DIDerivedType(tag: DW_TAG_member, scope: !3591, file: !577, line: 209, baseType: !3601, size: 256, offset: 512)
!3601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3591, file: !577, line: 209, size: 256, elements: !3602)
!3602 = !{!3603, !3612, !3616}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3601, file: !577, line: 210, baseType: !3604, size: 256)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !577, line: 153, size: 256, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3611}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3604, file: !577, line: 154, baseType: !59, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3604, file: !577, line: 156, baseType: !1527, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3604, file: !577, line: 162, baseType: !3609, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !577, line: 162, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3604, file: !577, line: 167, baseType: !59, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3601, file: !577, line: 211, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !577, line: 170, size: 64, elements: !3614)
!3614 = !{!3615}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3613, file: !577, line: 171, baseType: !3590, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3601, file: !577, line: 212, baseType: !3617, size: 256)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !577, line: 174, size: 256, elements: !3618)
!3618 = !{!3619, !3667, !3670, !3671}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3617, file: !577, line: 175, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3622)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !577, line: 271, size: 768, elements: !3623)
!3623 = !{!3624, !3644, !3648, !3649, !3650, !3651, !3652, !3656, !3657, !3658, !3659, !3663}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3622, file: !577, line: 276, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!42, !3628}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !577, line: 251, size: 1216, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3629, file: !577, line: 253, baseType: !3590, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3629, file: !577, line: 254, baseType: !1588, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3629, file: !577, line: 255, baseType: !1126, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3629, file: !577, line: 256, baseType: !40, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3629, file: !577, line: 259, baseType: !662, size: 256, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3629, file: !577, line: 260, baseType: !662, size: 256, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3629, file: !577, line: 261, baseType: !42, size: 32, offset: 768)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3629, file: !577, line: 262, baseType: !117, size: 128, offset: 832)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3629, file: !577, line: 263, baseType: !335, size: 64, offset: 960)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3629, file: !577, line: 265, baseType: !55, size: 64, offset: 1024)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3629, file: !577, line: 266, baseType: !742, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3629, file: !577, line: 267, baseType: !742, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3629, file: !577, line: 268, baseType: !1983, size: 64, offset: 1152)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3622, file: !577, line: 277, baseType: !3645, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3628}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3622, file: !577, line: 290, baseType: !1156, size: 64, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3622, file: !577, line: 292, baseType: !1144, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3622, file: !577, line: 293, baseType: !1152, size: 64, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3622, file: !577, line: 294, baseType: !1148, size: 64, offset: 320)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3622, file: !577, line: 296, baseType: !3653, size: 64, offset: 384)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!367, !3628, !335, !55, !61}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3622, file: !577, line: 306, baseType: !55, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3622, file: !577, line: 313, baseType: !742, size: 8, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3622, file: !577, line: 314, baseType: !3653, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3622, file: !577, line: 317, baseType: !3660, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!2192, !3628, !2194}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3622, file: !577, line: 320, baseType: !3664, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!42, !3628, !1764}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3617, file: !577, line: 176, baseType: !3668, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !577, line: 35, flags: DIFlagFwdDecl)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3617, file: !577, line: 177, baseType: !61, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3617, file: !577, line: 178, baseType: !3590, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3591, file: !577, line: 215, baseType: !40, size: 64, offset: 768)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3591, file: !577, line: 221, baseType: !287, size: 64, offset: 832)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3591, file: !577, line: 223, baseType: !46, size: 16, offset: 896)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3591, file: !577, line: 224, baseType: !44, size: 16, offset: 912)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3591, file: !577, line: 225, baseType: !3677, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !577, line: 36, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3591, file: !577, line: 227, baseType: !882, size: 128, align: 64, offset: 1024)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3575, file: !3566, line: 442, baseType: !3681, size: 448, offset: 2048)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3566, line: 138, size: 448, elements: !3682)
!3682 = !{!3683, !3684, !3685}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3681, file: !3566, line: 140, baseType: !3590, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3681, file: !3566, line: 141, baseType: !59, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3681, file: !3566, line: 142, baseType: !904, size: 320, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3575, file: !3566, line: 443, baseType: !3681, size: 448, offset: 2496)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3575, file: !3566, line: 446, baseType: !3688, offset: 2944)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3681, elements: !3689)
!3689 = !{!3690}
!3690 = !DISubrange(count: 0)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3575, file: !3566, line: 455, baseType: !113, size: 16, offset: 2944)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3575, file: !3566, line: 456, baseType: !113, size: 16, offset: 2960)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3575, file: !3566, line: 457, baseType: !113, size: 16, offset: 2976)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3575, file: !3566, line: 458, baseType: !113, size: 16, offset: 2992)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3575, file: !3566, line: 461, baseType: !3569, size: 896, offset: 3008)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3575, file: !3566, line: 463, baseType: !3697, size: 64, offset: 3904)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3566, line: 537, size: 41664, elements: !3699)
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3713}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3698, file: !3566, line: 538, baseType: !3609, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3698, file: !3566, line: 541, baseType: !7, size: 32, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3698, file: !3566, line: 544, baseType: !42, size: 32, offset: 96)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3698, file: !3566, line: 547, baseType: !117, size: 128, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3698, file: !3566, line: 548, baseType: !882, size: 128, align: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3698, file: !3566, line: 555, baseType: !3575, size: 7872, offset: 384)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3698, file: !3566, line: 558, baseType: !3574, size: 64, offset: 8256)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3698, file: !3566, line: 561, baseType: !69, size: 32, offset: 8320)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3698, file: !3566, line: 564, baseType: !7, size: 32, offset: 8352)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3698, file: !3566, line: 567, baseType: !3710, size: 32768, offset: 8384)
!3710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !3711)
!3711 = !{!3712}
!3712 = !DISubrange(count: 4096)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3698, file: !3566, line: 570, baseType: !3076, size: 512, offset: 41152)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3575, file: !3566, line: 469, baseType: !117, size: 128, offset: 3968)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3575, file: !3566, line: 478, baseType: !3716, size: 1792, offset: 4096)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1792, elements: !3717)
!3717 = !{!3718}
!3718 = !DISubrange(count: 14)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3575, file: !3566, line: 487, baseType: !3574, size: 64, offset: 5888)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3575, file: !3566, line: 488, baseType: !3574, size: 64, offset: 5952)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3575, file: !3566, line: 491, baseType: !3722, size: 64, offset: 6016)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3566, line: 327, size: 896, elements: !3724)
!3724 = !{!3725, !3728, !3738, !3739, !3740, !3741, !3742}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3723, file: !3566, line: 332, baseType: !3726)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3727, line: 64, elements: !951)
!3727 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3723, file: !3566, line: 333, baseType: !3729, size: 192)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3566, line: 299, size: 192, elements: !3730)
!3730 = !{!3731}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3729, file: !3566, line: 300, baseType: !3732, size: 192)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3733, line: 17, size: 192, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3734 = !{!3735, !3736, !3737}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3732, file: !3733, line: 18, baseType: !287, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3732, file: !3733, line: 19, baseType: !287, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3732, file: !3733, line: 20, baseType: !289, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3723, file: !3566, line: 339, baseType: !3729, size: 192, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3723, file: !3566, line: 347, baseType: !3729, size: 192, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3723, file: !3566, line: 353, baseType: !3729, size: 192, offset: 576)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3723, file: !3566, line: 366, baseType: !3574, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3723, file: !3566, line: 367, baseType: !3574, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3575, file: !3566, line: 492, baseType: !117, size: 128, offset: 6080)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3575, file: !3566, line: 495, baseType: !3729, size: 192, offset: 6208)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3575, file: !3566, line: 496, baseType: !3729, size: 192, offset: 6400)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3575, file: !3566, line: 497, baseType: !3471, size: 192, offset: 6592)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3575, file: !3566, line: 503, baseType: !117, size: 128, offset: 6784)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3575, file: !3566, line: 504, baseType: !662, size: 256, offset: 6912)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3575, file: !3566, line: 507, baseType: !74, size: 192, offset: 7168)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3575, file: !3566, line: 510, baseType: !922, size: 256, offset: 7360)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3575, file: !3566, line: 513, baseType: !3752, size: 64, offset: 7616)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3754, line: 214, elements: !951)
!3754 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3575, file: !3566, line: 516, baseType: !3756, offset: 7680)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3757, line: 76, elements: !951)
!3757 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3575, file: !3566, line: 519, baseType: !69, size: 32, offset: 7680)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3575, file: !3566, line: 522, baseType: !3760, size: 128, offset: 7712)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3566, line: 370, size: 128, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3760, file: !3566, line: 372, baseType: !742, size: 8)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3760, file: !3566, line: 375, baseType: !42, size: 32, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3760, file: !3566, line: 380, baseType: !42, size: 32, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3760, file: !3566, line: 386, baseType: !42, size: 32, offset: 96)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3575, file: !3566, line: 529, baseType: !3767, offset: 7872)
!3767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3574, elements: !1232)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3571, file: !3566, line: 157, baseType: !3769, size: 64, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3566, line: 669, size: 1984, elements: !3771)
!3771 = !{!3772, !3776, !3780, !3784, !3785, !3786, !3787, !3791, !3795, !3796, !3802, !3806, !3807, !3808, !3812, !3816, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3843, !3844, !3881, !3882}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3770, file: !3566, line: 670, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!3570, !3570}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3770, file: !3566, line: 671, baseType: !3777, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!42, !3570}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3770, file: !3566, line: 672, baseType: !3781, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3570}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3770, file: !3566, line: 673, baseType: !3781, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3770, file: !3566, line: 674, baseType: !3781, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3770, file: !3566, line: 675, baseType: !3781, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3770, file: !3566, line: 676, baseType: !3788, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{null, !3570, !42}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3770, file: !3566, line: 677, baseType: !3792, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!42, !1126, !3570}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3770, file: !3566, line: 679, baseType: !3792, size: 64, offset: 512)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3770, file: !3566, line: 682, baseType: !3797, size: 64, offset: 576)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!42, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3566, line: 30, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3770, file: !3566, line: 683, baseType: !3803, size: 64, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3800}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3770, file: !3566, line: 684, baseType: !3803, size: 64, offset: 704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3770, file: !3566, line: 685, baseType: !1030, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3770, file: !3566, line: 686, baseType: !3809, size: 64, offset: 832)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!42, !3150, !3564}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3770, file: !3566, line: 688, baseType: !3813, size: 64, offset: 896)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !3150, !3564}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3770, file: !3566, line: 689, baseType: !3817, size: 64, offset: 960)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3150}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3770, file: !3566, line: 690, baseType: !3817, size: 64, offset: 1024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3770, file: !3566, line: 691, baseType: !3817, size: 64, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3770, file: !3566, line: 692, baseType: !3781, size: 64, offset: 1152)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3770, file: !3566, line: 694, baseType: !742, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3770, file: !3566, line: 707, baseType: !742, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3770, file: !3566, line: 719, baseType: !742, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3770, file: !3566, line: 722, baseType: !42, size: 32, offset: 1248)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3770, file: !3566, line: 723, baseType: !36, size: 64, offset: 1280)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3770, file: !3566, line: 726, baseType: !36, size: 64, offset: 1344)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3770, file: !3566, line: 729, baseType: !3697, size: 64, offset: 1408)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3770, file: !3566, line: 732, baseType: !3831, size: 192, offset: 1472)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3832, line: 19, size: 192, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3833 = !{!3834, !3841, !3842}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3831, file: !3832, line: 20, baseType: !3835, size: 128)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3836, line: 296, size: 128, elements: !3837)
!3836 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3837 = !{!3838, !3839, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3835, file: !3836, line: 297, baseType: !79, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3835, file: !3836, line: 299, baseType: !269, size: 32, offset: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3835, file: !3836, line: 300, baseType: !40, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3831, file: !3832, line: 21, baseType: !7, size: 32, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3831, file: !3832, line: 22, baseType: !7, size: 32, offset: 160)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3770, file: !3566, line: 738, baseType: !117, size: 128, offset: 1664)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3770, file: !3566, line: 744, baseType: !3845, size: 64, offset: 1792)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3566, line: 580, size: 1728, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3857, !3858, !3859, !3863, !3867, !3868, !3869, !3870, !3871, !3875, !3879, !3880}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3846, file: !3566, line: 586, baseType: !3076, size: 512)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3846, file: !3566, line: 587, baseType: !59, size: 64, offset: 512)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3846, file: !3566, line: 593, baseType: !55, size: 64, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3846, file: !3566, line: 596, baseType: !7, size: 32, offset: 640)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3846, file: !3566, line: 604, baseType: !7, size: 32, offset: 672)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3846, file: !3566, line: 610, baseType: !3769, size: 64, offset: 704)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3846, file: !3566, line: 611, baseType: !117, size: 128, offset: 768)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3846, file: !3566, line: 612, baseType: !3856, size: 64, offset: 896)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3846, file: !3566, line: 614, baseType: !3625, size: 64, offset: 960)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3846, file: !3566, line: 615, baseType: !3645, size: 64, offset: 1024)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3846, file: !3566, line: 621, baseType: !3860, size: 64, offset: 1088)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!287, !3570, !3845}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3846, file: !3566, line: 625, baseType: !3864, size: 64, offset: 1152)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!672, !3570, !3845}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3846, file: !3566, line: 628, baseType: !1156, size: 64, offset: 1216)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3846, file: !3566, line: 631, baseType: !1144, size: 64, offset: 1280)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3846, file: !3566, line: 632, baseType: !1152, size: 64, offset: 1344)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3846, file: !3566, line: 633, baseType: !1148, size: 64, offset: 1408)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3846, file: !3566, line: 640, baseType: !3872, size: 64, offset: 1472)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!42, !3570, !3845, !287}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3846, file: !3566, line: 645, baseType: !3876, size: 64, offset: 1536)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!42, !3570, !3845, !672}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3846, file: !3566, line: 654, baseType: !3653, size: 64, offset: 1600)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3846, file: !3566, line: 657, baseType: !3660, size: 64, offset: 1664)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3770, file: !3566, line: 745, baseType: !3845, size: 64, offset: 1856)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3770, file: !3566, line: 754, baseType: !7, size: 32, offset: 1920)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3571, file: !3566, line: 160, baseType: !1717, size: 128, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3571, file: !3566, line: 163, baseType: !117, size: 128, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3571, file: !3566, line: 164, baseType: !117, size: 128, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3571, file: !3566, line: 167, baseType: !117, size: 128, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3571, file: !3566, line: 173, baseType: !42, size: 32, offset: 640)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3571, file: !3566, line: 175, baseType: !7, size: 32, offset: 672)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3571, file: !3566, line: 183, baseType: !287, size: 64, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3571, file: !3566, line: 189, baseType: !69, size: 32, offset: 768)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3571, file: !3566, line: 192, baseType: !922, size: 256, offset: 832)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3571, file: !3566, line: 193, baseType: !3893, size: 448, offset: 1088)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !923, line: 120, size: 448, elements: !3894)
!3894 = !{!3895, !3896, !3897}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3893, file: !923, line: 121, baseType: !922, size: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3893, file: !923, line: 122, baseType: !882, size: 128, align: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3893, file: !923, line: 125, baseType: !984, size: 64, offset: 384)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3571, file: !3566, line: 199, baseType: !3570, size: 64, offset: 1536)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3565, file: !3566, line: 218, baseType: !1212, size: 32, offset: 896)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3565, file: !3566, line: 226, baseType: !3564, size: 64, offset: 960)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3565, file: !3566, line: 229, baseType: !3574, size: 64, offset: 1024)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3565, file: !3566, line: 232, baseType: !42, size: 32, offset: 1088)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3565, file: !3566, line: 241, baseType: !117, size: 128, offset: 1152)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3565, file: !3566, line: 242, baseType: !117, size: 128, offset: 1280)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3565, file: !3566, line: 243, baseType: !117, size: 128, offset: 1408)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3565, file: !3566, line: 246, baseType: !117, size: 128, offset: 1536)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3565, file: !3566, line: 255, baseType: !3716, size: 1792, offset: 1664)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3565, file: !3566, line: 258, baseType: !117, size: 128, offset: 3456)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3565, file: !3566, line: 259, baseType: !117, size: 128, offset: 3584)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3565, file: !3566, line: 265, baseType: !908, size: 128, offset: 3712)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3565, file: !3566, line: 271, baseType: !117, size: 128, offset: 3840)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3565, file: !3566, line: 277, baseType: !117, size: 128, offset: 3968)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3565, file: !3566, line: 278, baseType: !117, size: 128, offset: 4096)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3565, file: !3566, line: 279, baseType: !117, size: 128, offset: 4224)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3565, file: !3566, line: 288, baseType: !3574, size: 64, offset: 4352)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3565, file: !3566, line: 289, baseType: !3574, size: 64, offset: 4416)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3565, file: !3566, line: 290, baseType: !3564, size: 64, offset: 4480)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3565, file: !3566, line: 293, baseType: !742, size: 8, offset: 4544)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3565, file: !3566, line: 296, baseType: !882, size: 128, align: 64, offset: 4608)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3151, file: !2251, line: 1110, baseType: !3921, size: 64, offset: 15360)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3923, line: 93, size: 8768, elements: !3924)
!3923 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3924 = !{!3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3973, !3982, !3983, !3985, !3986, !3987, !3990, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4028, !4029, !4036, !4046, !4109, !4110, !4113, !4114, !4115, !4116, !4117, !4118}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3922, file: !3923, line: 94, baseType: !1212, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3922, file: !3923, line: 95, baseType: !69, size: 32, offset: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3922, file: !3923, line: 96, baseType: !42, size: 32, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3922, file: !3923, line: 97, baseType: !42, size: 32, offset: 96)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3922, file: !3923, line: 98, baseType: !117, size: 128, offset: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3922, file: !3923, line: 100, baseType: !74, size: 192, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3922, file: !3923, line: 103, baseType: !3150, size: 64, offset: 448)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3922, file: !3923, line: 106, baseType: !3933, size: 192, offset: 512)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3934, line: 32, size: 192, elements: !3935)
!3934 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3935 = !{!3936, !3937}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3933, file: !3934, line: 33, baseType: !117, size: 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3933, file: !3934, line: 34, baseType: !3938, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3939, line: 25, baseType: !3940)
!3939 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3939, line: 23, size: 64, elements: !3941)
!3941 = !{!3942}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3940, file: !3939, line: 24, baseType: !3313, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3922, file: !3923, line: 109, baseType: !1036, size: 64, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3922, file: !3923, line: 112, baseType: !42, size: 32, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3922, file: !3923, line: 114, baseType: !42, size: 32, offset: 800)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3922, file: !3923, line: 115, baseType: !3150, size: 64, offset: 832)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3922, file: !3923, line: 118, baseType: !42, size: 32, offset: 896)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3922, file: !3923, line: 119, baseType: !7, size: 32, offset: 928)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3922, file: !3923, line: 121, baseType: !3950, size: 64, offset: 960)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3923, line: 80, size: 448, elements: !3952)
!3952 = !{!3953, !3954, !3960}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3951, file: !3923, line: 81, baseType: !69, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3951, file: !3923, line: 82, baseType: !3955, size: 128, offset: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3923, line: 75, size: 128, elements: !3956)
!3956 = !{!3957, !3958}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3955, file: !3923, line: 76, baseType: !3150, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3955, file: !3923, line: 77, baseType: !3959, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3951, file: !3923, line: 83, baseType: !611, size: 256, offset: 192)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3922, file: !3923, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3922, file: !3923, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3922, file: !3923, line: 138, baseType: !7, size: 32, offset: 1056)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3922, file: !3923, line: 139, baseType: !117, size: 128, offset: 1088)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3922, file: !3923, line: 142, baseType: !2766, size: 512, offset: 1216)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3922, file: !3923, line: 143, baseType: !2746, size: 64, offset: 1728)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3922, file: !3923, line: 150, baseType: !3968, size: 256, offset: 1792)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3969, size: 256, elements: !781)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3923, line: 38, size: 128, elements: !3970)
!3970 = !{!3971, !3972}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3969, file: !3923, line: 39, baseType: !287, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3969, file: !3923, line: 40, baseType: !287, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3922, file: !3923, line: 156, baseType: !3974, size: 192, offset: 2048)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3923, line: 66, size: 192, elements: !3975)
!3975 = !{!3976}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3974, file: !3923, line: 67, baseType: !3977, size: 192)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3923, line: 47, size: 192, elements: !3978)
!3978 = !{!3979, !3980, !3981}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3977, file: !3923, line: 48, baseType: !668, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3977, file: !3923, line: 49, baseType: !668, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3977, file: !3923, line: 50, baseType: !668, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3922, file: !3923, line: 160, baseType: !3483, size: 640, offset: 2240)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3922, file: !3923, line: 163, baseType: !3984, size: 256, offset: 2880)
!3984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1208, size: 256, elements: !892)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3922, file: !3923, line: 169, baseType: !1208, size: 64, offset: 3136)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3922, file: !3923, line: 172, baseType: !42, size: 32, offset: 3200)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3922, file: !3923, line: 174, baseType: !3988, size: 64, offset: 3264)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3923, line: 174, flags: DIFlagFwdDecl)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3922, file: !3923, line: 185, baseType: !3991, size: 64, offset: 3328)
!3991 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !451, line: 860, baseType: !3992)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 853, size: 64, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3992, file: !451, line: 858, baseType: !450, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3992, file: !451, line: 859, baseType: !79, size: 32, offset: 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3922, file: !3923, line: 186, baseType: !287, size: 64, offset: 3392)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3922, file: !3923, line: 186, baseType: !287, size: 64, offset: 3456)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3922, file: !3923, line: 186, baseType: !287, size: 64, offset: 3520)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3922, file: !3923, line: 186, baseType: !287, size: 64, offset: 3584)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3922, file: !3923, line: 187, baseType: !287, size: 64, offset: 3648)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3922, file: !3923, line: 188, baseType: !287, size: 64, offset: 3712)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3922, file: !3923, line: 189, baseType: !3471, size: 192, offset: 3776)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3922, file: !3923, line: 190, baseType: !59, size: 64, offset: 3968)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3922, file: !3923, line: 190, baseType: !59, size: 64, offset: 4032)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3922, file: !3923, line: 190, baseType: !59, size: 64, offset: 4096)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3922, file: !3923, line: 190, baseType: !59, size: 64, offset: 4160)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3922, file: !3923, line: 191, baseType: !59, size: 64, offset: 4224)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3922, file: !3923, line: 191, baseType: !59, size: 64, offset: 4288)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3922, file: !3923, line: 191, baseType: !59, size: 64, offset: 4352)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3922, file: !3923, line: 191, baseType: !59, size: 64, offset: 4416)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3922, file: !3923, line: 192, baseType: !59, size: 64, offset: 4480)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3922, file: !3923, line: 192, baseType: !59, size: 64, offset: 4544)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3922, file: !3923, line: 192, baseType: !59, size: 64, offset: 4608)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3922, file: !3923, line: 192, baseType: !59, size: 64, offset: 4672)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3922, file: !3923, line: 193, baseType: !59, size: 64, offset: 4736)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3922, file: !3923, line: 193, baseType: !59, size: 64, offset: 4800)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3922, file: !3923, line: 194, baseType: !4018, size: 448, offset: 4864)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4019, line: 12, size: 448, elements: !4020)
!4019 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4018, file: !4019, line: 15, baseType: !287, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4018, file: !4019, line: 17, baseType: !287, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4018, file: !4019, line: 19, baseType: !287, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4018, file: !4019, line: 21, baseType: !287, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4018, file: !4019, line: 29, baseType: !287, size: 64, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4018, file: !4019, line: 35, baseType: !287, size: 64, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4018, file: !4019, line: 44, baseType: !287, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3922, file: !3923, line: 202, baseType: !289, size: 64, offset: 5312)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3922, file: !3923, line: 213, baseType: !4030, size: 2048, offset: 5376)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 2048, elements: !3506)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4032, line: 43, size: 128, elements: !4033)
!4032 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4033 = !{!4034, !4035}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4031, file: !4032, line: 44, baseType: !58, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4031, file: !4032, line: 45, baseType: !58, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3922, file: !3923, line: 216, baseType: !4037, size: 448, offset: 7424)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3923, line: 30, size: 448, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4042, !4043, !4044, !4045}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4037, file: !3923, line: 31, baseType: !42, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4037, file: !3923, line: 32, baseType: !370, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4037, file: !3923, line: 33, baseType: !59, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4037, file: !3923, line: 34, baseType: !287, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4037, file: !3923, line: 34, baseType: !287, size: 64, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4037, file: !3923, line: 35, baseType: !59, size: 64, offset: 320)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4037, file: !3923, line: 35, baseType: !59, size: 64, offset: 384)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3922, file: !3923, line: 219, baseType: !4047, size: 64, offset: 7872)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4049, line: 41, size: 3456, elements: !4050)
!4049 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4065, !4066, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4048, file: !4049, line: 47, baseType: !114, size: 16)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4048, file: !4049, line: 48, baseType: !284, size: 32, offset: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4048, file: !4049, line: 54, baseType: !105, size: 8, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4048, file: !4049, line: 55, baseType: !105, size: 8, offset: 72)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4048, file: !4049, line: 73, baseType: !288, size: 64, align: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4048, file: !4049, line: 74, baseType: !288, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4048, file: !4049, line: 81, baseType: !288, size: 64, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4048, file: !4049, line: 82, baseType: !288, size: 64, offset: 320)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4048, file: !4049, line: 85, baseType: !288, size: 64, offset: 384)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4048, file: !4049, line: 86, baseType: !288, size: 64, offset: 448)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4048, file: !4049, line: 94, baseType: !288, size: 64, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4048, file: !4049, line: 102, baseType: !288, size: 64, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4048, file: !4049, line: 107, baseType: !4064, size: 256, offset: 640)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !486)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4048, file: !4049, line: 108, baseType: !105, size: 8, align: 64, offset: 896)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4048, file: !4049, line: 110, baseType: !4067, size: 24, offset: 904)
!4067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !336)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4048, file: !4049, line: 111, baseType: !284, size: 32, align: 64, offset: 960)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4048, file: !4049, line: 113, baseType: !284, size: 32, offset: 992)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4048, file: !4049, line: 114, baseType: !284, size: 32, offset: 1024)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4048, file: !4049, line: 115, baseType: !284, size: 32, offset: 1056)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4048, file: !4049, line: 117, baseType: !284, size: 32, offset: 1088)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4048, file: !4049, line: 118, baseType: !288, size: 64, align: 64, offset: 1152)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4048, file: !4049, line: 120, baseType: !288, size: 64, offset: 1216)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4048, file: !4049, line: 121, baseType: !288, size: 64, offset: 1280)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4048, file: !4049, line: 122, baseType: !288, size: 64, offset: 1344)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4048, file: !4049, line: 123, baseType: !288, size: 64, offset: 1408)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4048, file: !4049, line: 133, baseType: !288, size: 64, offset: 1472)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4048, file: !4049, line: 137, baseType: !288, size: 64, offset: 1536)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4048, file: !4049, line: 142, baseType: !288, size: 64, offset: 1600)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4048, file: !4049, line: 143, baseType: !288, size: 64, offset: 1664)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4048, file: !4049, line: 146, baseType: !288, size: 64, offset: 1728)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4048, file: !4049, line: 147, baseType: !288, size: 64, offset: 1792)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4048, file: !4049, line: 148, baseType: !288, size: 64, offset: 1856)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4048, file: !4049, line: 149, baseType: !288, size: 64, offset: 1920)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4048, file: !4049, line: 154, baseType: !288, size: 64, offset: 1984)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4048, file: !4049, line: 155, baseType: !288, size: 64, offset: 2048)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4048, file: !4049, line: 156, baseType: !288, size: 64, offset: 2112)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4048, file: !4049, line: 158, baseType: !288, size: 64, offset: 2176)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4048, file: !4049, line: 159, baseType: !288, size: 64, offset: 2240)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4048, file: !4049, line: 162, baseType: !288, size: 64, offset: 2304)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4048, file: !4049, line: 163, baseType: !288, size: 64, offset: 2368)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4048, file: !4049, line: 164, baseType: !288, size: 64, offset: 2432)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4048, file: !4049, line: 167, baseType: !288, size: 64, offset: 2496)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4048, file: !4049, line: 168, baseType: !288, size: 64, offset: 2560)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4048, file: !4049, line: 171, baseType: !288, size: 64, offset: 2624)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4048, file: !4049, line: 172, baseType: !288, size: 64, offset: 2688)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4048, file: !4049, line: 175, baseType: !288, size: 64, offset: 2752)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4048, file: !4049, line: 178, baseType: !288, size: 64, offset: 2816)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4048, file: !4049, line: 179, baseType: !288, size: 64, offset: 2880)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4048, file: !4049, line: 182, baseType: !284, size: 32, offset: 2944)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4048, file: !4049, line: 186, baseType: !288, size: 64, align: 64, offset: 3008)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4048, file: !4049, line: 194, baseType: !288, size: 64, offset: 3072)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4048, file: !4049, line: 195, baseType: !288, size: 64, offset: 3136)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4048, file: !4049, line: 199, baseType: !288, size: 64, offset: 3200)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4048, file: !4049, line: 200, baseType: !288, size: 64, offset: 3264)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4048, file: !4049, line: 203, baseType: !288, size: 64, offset: 3328)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4048, file: !4049, line: 204, baseType: !288, size: 64, offset: 3392)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3922, file: !3923, line: 222, baseType: !7, size: 32, offset: 7936)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3922, file: !3923, line: 223, baseType: !4111, size: 64, offset: 8000)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3923, line: 223, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3922, file: !3923, line: 230, baseType: !742, size: 8, offset: 8064)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3922, file: !3923, line: 231, baseType: !800, size: 16, offset: 8080)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3922, file: !3923, line: 232, baseType: !800, size: 16, offset: 8096)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3922, file: !3923, line: 234, baseType: !1777, size: 64, offset: 8128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3922, file: !3923, line: 237, baseType: !662, size: 256, offset: 8192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3922, file: !3923, line: 243, baseType: !1280, size: 320, offset: 8448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3151, file: !2251, line: 1111, baseType: !4120, size: 64, offset: 15424)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3923, line: 20, size: 16640, elements: !4122)
!4122 = !{!4123, !4124, !4125, !4126}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4121, file: !3923, line: 21, baseType: !79, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4121, file: !3923, line: 22, baseType: !1212, size: 32, offset: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4121, file: !3923, line: 23, baseType: !74, size: 192, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4121, file: !3923, line: 24, baseType: !4127, size: 16384, offset: 256)
!4127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4128, size: 16384, elements: !340)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3934, line: 51, size: 256, elements: !4129)
!4129 = !{!4130}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4128, file: !3934, line: 52, baseType: !4131, size: 256)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3934, line: 37, size: 256, elements: !4132)
!4132 = !{!4133, !4140, !4141, !4145}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4131, file: !3934, line: 39, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4135, line: 83, baseType: !4136)
!4135 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4135, line: 82, baseType: !4138)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !42}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4131, file: !3934, line: 40, baseType: !59, size: 64, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4131, file: !3934, line: 46, baseType: !4142, size: 64, offset: 128)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4135, line: 86, baseType: !4143)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4135, line: 85, baseType: !1031)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4131, file: !3934, line: 48, baseType: !3938, size: 64, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3151, file: !2251, line: 1112, baseType: !3938, size: 64, offset: 15488)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3151, file: !2251, line: 1113, baseType: !3938, size: 64, offset: 15552)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3151, file: !2251, line: 1115, baseType: !3938, size: 64, offset: 15616)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3151, file: !2251, line: 1116, baseType: !3933, size: 192, offset: 15680)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3151, file: !2251, line: 1117, baseType: !59, size: 64, offset: 15872)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3151, file: !2251, line: 1118, baseType: !55, size: 64, offset: 15936)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3151, file: !2251, line: 1119, baseType: !7, size: 32, offset: 16000)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3151, file: !2251, line: 1121, baseType: !881, size: 64, offset: 16064)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3151, file: !2251, line: 1125, baseType: !4155, size: 64, offset: 16128)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2251, line: 43, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3151, file: !2251, line: 1127, baseType: !415, size: 32, offset: 16192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3151, file: !2251, line: 1128, baseType: !7, size: 32, offset: 16224)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3151, file: !2251, line: 1130, baseType: !4160, size: 128, offset: 16256)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4161, line: 37, size: 128, elements: !4162)
!4161 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4162 = !{!4163, !4164, !4165}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4160, file: !4161, line: 38, baseType: !42, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4160, file: !4161, line: 39, baseType: !69, size: 32, offset: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4160, file: !4161, line: 40, baseType: !4166, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4161, line: 24, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3151, file: !2251, line: 1131, baseType: !4169, size: 256, offset: 16384)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4170, line: 12, size: 256, elements: !4171)
!4170 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4171 = !{!4172, !4173, !4174, !4175}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4169, file: !4170, line: 13, baseType: !335, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4169, file: !4170, line: 14, baseType: !59, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4169, file: !4170, line: 15, baseType: !59, size: 64, offset: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4169, file: !4170, line: 16, baseType: !742, size: 8, offset: 192)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3151, file: !2251, line: 1134, baseType: !287, size: 64, offset: 16640)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3151, file: !2251, line: 1135, baseType: !287, size: 64, offset: 16704)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3151, file: !2251, line: 1138, baseType: !79, size: 32, offset: 16768)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3151, file: !2251, line: 1141, baseType: !620, size: 32, offset: 16800)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3151, file: !2251, line: 1143, baseType: !4181, size: 64, offset: 16832)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2251, line: 735, size: 64, elements: !4182)
!4182 = !{!4183}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4181, file: !2251, line: 736, baseType: !4184, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3151, file: !2251, line: 1147, baseType: !2823, size: 128, offset: 16896)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3151, file: !2251, line: 1149, baseType: !3150, size: 64, offset: 17024)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3151, file: !2251, line: 1151, baseType: !4188, size: 64, offset: 17088)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2251, line: 1151, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3151, file: !2251, line: 1188, baseType: !40, size: 64, offset: 17152)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3151, file: !2251, line: 1191, baseType: !4192, size: 64, offset: 17216)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2251, line: 44, flags: DIFlagFwdDecl)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3151, file: !2251, line: 1194, baseType: !4195, size: 64, offset: 17280)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2251, line: 45, flags: DIFlagFwdDecl)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3151, file: !2251, line: 1197, baseType: !4198, size: 64, offset: 17344)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !4200, line: 155, size: 64, elements: !4201)
!4200 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!4201 = !{!4202}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4199, file: !4200, line: 157, baseType: !59, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3151, file: !2251, line: 1199, baseType: !4204, size: 64, offset: 17408)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2540, line: 99, size: 128, elements: !4206)
!4206 = !{!4207, !4208, !4209}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4205, file: !2540, line: 100, baseType: !666, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4205, file: !2540, line: 101, baseType: !69, size: 32, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4205, file: !2540, line: 103, baseType: !46, size: 16, offset: 96)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3151, file: !2251, line: 1202, baseType: !4211, size: 64, offset: 17472)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2251, line: 48, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3151, file: !2251, line: 1205, baseType: !59, size: 64, offset: 17536)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3151, file: !2251, line: 1206, baseType: !4215, size: 64, offset: 17600)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3934, line: 14, baseType: !4217)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3934, line: 12, size: 384, elements: !4218)
!4218 = !{!4219}
!4219 = !DIDerivedType(tag: DW_TAG_member, scope: !4217, file: !3934, line: 13, baseType: !4220, size: 384)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4217, file: !3934, line: 13, size: 384, elements: !4221)
!4221 = !{!4222, !4223, !4224, !4225}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4220, file: !3934, line: 13, baseType: !42, size: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4220, file: !3934, line: 13, baseType: !42, size: 32, offset: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4220, file: !3934, line: 13, baseType: !42, size: 32, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4220, file: !3934, line: 13, baseType: !4226, size: 256, offset: 128)
!4226 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4227, line: 37, size: 256, elements: !4228)
!4227 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4228 = !{!4229, !4234, !4247, !4253, !4262, !4289, !4294}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4226, file: !4227, line: 42, baseType: !4230, size: 64)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4226, file: !4227, line: 39, size: 64, elements: !4231)
!4231 = !{!4232, !4233}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4230, file: !4227, line: 40, baseType: !3448, size: 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4230, file: !4227, line: 41, baseType: !421, size: 32, offset: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4226, file: !4227, line: 50, baseType: !4235, size: 192)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4226, file: !4227, line: 45, size: 192, elements: !4236)
!4236 = !{!4237, !4239, !4240, !4246}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4235, file: !4227, line: 46, baseType: !4238, size: 32)
!4238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !57, line: 95, baseType: !42)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4235, file: !4227, line: 47, baseType: !42, size: 32, offset: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4235, file: !4227, line: 48, baseType: !4241, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4227, line: 11, baseType: !4242)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4227, line: 8, size: 64, elements: !4243)
!4243 = !{!4244, !4245}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4242, file: !4227, line: 9, baseType: !42, size: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4242, file: !4227, line: 10, baseType: !40, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4235, file: !4227, line: 49, baseType: !42, size: 32, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4226, file: !4227, line: 57, baseType: !4248, size: 128)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4226, file: !4227, line: 53, size: 128, elements: !4249)
!4249 = !{!4250, !4251, !4252}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4248, file: !4227, line: 54, baseType: !3448, size: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4248, file: !4227, line: 55, baseType: !421, size: 32, offset: 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4248, file: !4227, line: 56, baseType: !4241, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4226, file: !4227, line: 66, baseType: !4254, size: 256)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4226, file: !4227, line: 60, size: 256, elements: !4255)
!4255 = !{!4256, !4257, !4258, !4259, !4261}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4254, file: !4227, line: 61, baseType: !3448, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4254, file: !4227, line: 62, baseType: !421, size: 32, offset: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4254, file: !4227, line: 63, baseType: !42, size: 32, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4254, file: !4227, line: 64, baseType: !4260, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !57, line: 94, baseType: !369)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4254, file: !4227, line: 65, baseType: !4260, size: 64, offset: 192)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4226, file: !4227, line: 105, baseType: !4263, size: 256)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4226, file: !4227, line: 69, size: 256, elements: !4264)
!4264 = !{!4265, !4266}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4263, file: !4227, line: 70, baseType: !40, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, scope: !4263, file: !4227, line: 79, baseType: !4267, size: 192, offset: 64)
!4267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4263, file: !4227, line: 79, size: 192, elements: !4268)
!4268 = !{!4269, !4270, !4271, !4278, !4283}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4267, file: !4227, line: 81, baseType: !42, size: 32)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4267, file: !4227, line: 86, baseType: !800, size: 16)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4267, file: !4227, line: 92, baseType: !4272, size: 192)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4267, file: !4227, line: 88, size: 192, elements: !4273)
!4273 = !{!4274, !4276, !4277}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4272, file: !4227, line: 89, baseType: !4275, size: 64)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !2807)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4272, file: !4227, line: 90, baseType: !40, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4272, file: !4227, line: 91, baseType: !40, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4267, file: !4227, line: 97, baseType: !4279, size: 96)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4267, file: !4227, line: 94, size: 96, elements: !4280)
!4280 = !{!4281, !4282}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4279, file: !4227, line: 95, baseType: !4275, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4279, file: !4227, line: 96, baseType: !284, size: 32, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4267, file: !4227, line: 103, baseType: !4284, size: 128)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4267, file: !4227, line: 99, size: 128, elements: !4285)
!4285 = !{!4286, !4287, !4288}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4284, file: !4227, line: 100, baseType: !59, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4284, file: !4227, line: 101, baseType: !284, size: 32, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4284, file: !4227, line: 102, baseType: !284, size: 32, offset: 96)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4226, file: !4227, line: 111, baseType: !4290, size: 128)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4226, file: !4227, line: 108, size: 128, elements: !4291)
!4291 = !{!4292, !4293}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4290, file: !4227, line: 109, baseType: !370, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4290, file: !4227, line: 110, baseType: !42, size: 32, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4226, file: !4227, line: 118, baseType: !4295, size: 128)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4226, file: !4227, line: 114, size: 128, elements: !4296)
!4296 = !{!4297, !4298, !4299}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4295, file: !4227, line: 115, baseType: !40, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4295, file: !4227, line: 116, baseType: !42, size: 32, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4295, file: !4227, line: 117, baseType: !7, size: 32, offset: 96)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3151, file: !2251, line: 1208, baseType: !4018, size: 448, offset: 17664)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3151, file: !2251, line: 1215, baseType: !287, size: 64, offset: 18112)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3151, file: !2251, line: 1217, baseType: !287, size: 64, offset: 18176)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3151, file: !2251, line: 1219, baseType: !287, size: 64, offset: 18240)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3151, file: !2251, line: 1223, baseType: !4305, size: 64, offset: 18304)
!4305 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4306, line: 99, baseType: !4307)
!4306 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4306, line: 99, size: 64, elements: !4308)
!4308 = !{!4309}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4307, file: !4306, line: 99, baseType: !3313, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3151, file: !2251, line: 1225, baseType: !450, size: 32, offset: 18368)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3151, file: !2251, line: 1226, baseType: !42, size: 32, offset: 18400)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3151, file: !2251, line: 1227, baseType: !42, size: 32, offset: 18432)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3151, file: !2251, line: 1231, baseType: !3564, size: 64, offset: 18496)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3151, file: !2251, line: 1233, baseType: !117, size: 128, offset: 18560)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3151, file: !2251, line: 1240, baseType: !4316, size: 64, offset: 18688)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2251, line: 62, flags: DIFlagFwdDecl)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3151, file: !2251, line: 1242, baseType: !4319, size: 64, offset: 18752)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2251, line: 1242, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3151, file: !2251, line: 1244, baseType: !117, size: 128, offset: 18816)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3151, file: !2251, line: 1245, baseType: !4323, size: 64, offset: 18944)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2251, line: 51, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3151, file: !2251, line: 1246, baseType: !662, size: 256, offset: 19008)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3151, file: !2251, line: 1247, baseType: !7, size: 32, offset: 19264)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3151, file: !2251, line: 1250, baseType: !4328, size: 64, offset: 19328)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2251, line: 57, flags: DIFlagFwdDecl)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3151, file: !2251, line: 1251, baseType: !662, size: 256, offset: 19392)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3151, file: !2251, line: 1252, baseType: !117, size: 128, offset: 19648)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3151, file: !2251, line: 1259, baseType: !2031, size: 64, offset: 19776)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3151, file: !2251, line: 1260, baseType: !800, size: 16, offset: 19840)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3151, file: !2251, line: 1261, baseType: !800, size: 16, offset: 19856)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3151, file: !2251, line: 1314, baseType: !4336, size: 64, offset: 19904)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4338, line: 62, size: 256, align: 256, elements: !4339)
!4338 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4339 = !{!4340, !4341, !4342, !4343, !4344, !4345, !4346}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4337, file: !4338, line: 75, baseType: !284, size: 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4337, file: !4338, line: 90, baseType: !284, size: 32, offset: 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4337, file: !4338, line: 112, baseType: !288, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4337, file: !4338, line: 132, baseType: !284, size: 32, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4337, file: !4338, line: 140, baseType: !284, size: 32, offset: 160)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4337, file: !4338, line: 149, baseType: !284, size: 32, offset: 192)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4337, file: !4338, line: 154, baseType: !4347, offset: 224)
!4347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !1232)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3151, file: !2251, line: 1315, baseType: !283, size: 32, offset: 19968)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3151, file: !2251, line: 1316, baseType: !283, size: 32, offset: 20000)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3151, file: !2251, line: 1321, baseType: !59, size: 64, offset: 20032)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3151, file: !2251, line: 1325, baseType: !42, size: 32, offset: 20096)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3151, file: !2251, line: 1326, baseType: !42, size: 32, offset: 20128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3151, file: !2251, line: 1327, baseType: !42, size: 32, offset: 20160)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3151, file: !2251, line: 1328, baseType: !42, size: 32, offset: 20192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3151, file: !2251, line: 1329, baseType: !882, size: 128, align: 64, offset: 20224)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3151, file: !2251, line: 1332, baseType: !4357, size: 128, offset: 20352)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4358, line: 51, size: 128, elements: !4359)
!4358 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4359 = !{!4360, !4365, !4366}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4357, file: !4358, line: 60, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4362, line: 7, size: 64, elements: !4363)
!4362 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4363 = !{!4364}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4361, file: !4362, line: 12, baseType: !3310, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4357, file: !4358, line: 63, baseType: !742, size: 8, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4357, file: !4358, line: 70, baseType: !742, size: 8, offset: 72)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3151, file: !2251, line: 1335, baseType: !2249, size: 64, offset: 20480)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3151, file: !2251, line: 1337, baseType: !4369, size: 128, offset: 20544)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4358, line: 39, size: 128, elements: !4370)
!4370 = !{!4371, !4372, !4373}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4369, file: !4358, line: 40, baseType: !1750, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4369, file: !4358, line: 42, baseType: !284, size: 32, offset: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4369, file: !4358, line: 43, baseType: !284, size: 32, offset: 96)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3151, file: !2251, line: 1340, baseType: !4375, size: 64, offset: 20672)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2251, line: 69, flags: DIFlagFwdDecl)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3151, file: !2251, line: 1351, baseType: !42, size: 32, offset: 20736)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3151, file: !2251, line: 1352, baseType: !42, size: 32, offset: 20768)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3151, file: !2251, line: 1354, baseType: !59, size: 64, offset: 20800)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3151, file: !2251, line: 1364, baseType: !287, size: 64, offset: 20864)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3151, file: !2251, line: 1365, baseType: !287, size: 64, offset: 20928)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3151, file: !2251, line: 1412, baseType: !59, size: 64, offset: 20992)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3151, file: !2251, line: 1453, baseType: !2535, size: 64, offset: 21056)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3151, file: !2251, line: 1457, baseType: !4385, size: 64, offset: 21120)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !240, line: 61, size: 576, elements: !4387)
!4387 = !{!4388, !4389, !4408, !4411, !4412, !4445, !4455}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4386, file: !240, line: 62, baseType: !239, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, scope: !4386, file: !240, line: 64, baseType: !4390, size: 192, offset: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4386, file: !240, line: 64, size: 192, elements: !4391)
!4391 = !{!4392, !4403}
!4392 = !DIDerivedType(tag: DW_TAG_member, scope: !4390, file: !240, line: 65, baseType: !4393, size: 192)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4390, file: !240, line: 65, size: 192, elements: !4394)
!4394 = !{!4395, !4402}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4393, file: !240, line: 66, baseType: !4396, size: 128)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4397, line: 50, size: 128, elements: !4398)
!4397 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4398 = !{!4399, !4400, !4401}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4396, file: !4397, line: 52, baseType: !59, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4396, file: !4397, line: 54, baseType: !7, size: 32, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4396, file: !4397, line: 55, baseType: !7, size: 32, offset: 96)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4393, file: !240, line: 67, baseType: !59, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, scope: !4390, file: !240, line: 70, baseType: !4404, size: 192)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4390, file: !240, line: 70, size: 192, elements: !4405)
!4405 = !{!4406, !4407}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4404, file: !240, line: 71, baseType: !882, size: 128, align: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4404, file: !240, line: 72, baseType: !59, size: 64, offset: 128)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4386, file: !240, line: 76, baseType: !4409, size: 64, offset: 256)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !240, line: 76, flags: DIFlagFwdDecl)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4386, file: !240, line: 77, baseType: !59, size: 64, offset: 320)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4386, file: !240, line: 79, baseType: !4413, size: 64, offset: 384)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4397, line: 25, size: 256, elements: !4415)
!4415 = !{!4416, !4422, !4426}
!4416 = !DIDerivedType(tag: DW_TAG_member, scope: !4414, file: !4397, line: 26, baseType: !4417, size: 128)
!4417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4414, file: !4397, line: 26, size: 128, elements: !4418)
!4418 = !{!4419, !4421}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4417, file: !4397, line: 27, baseType: !4420, size: 128)
!4420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !3506)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4417, file: !4397, line: 28, baseType: !4420, size: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4414, file: !4397, line: 31, baseType: !4423, size: 64, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4425)
!4425 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4397, line: 23, flags: DIFlagFwdDecl)
!4426 = !DIDerivedType(tag: DW_TAG_member, scope: !4414, file: !4397, line: 33, baseType: !4427, size: 64, offset: 192)
!4427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4414, file: !4397, line: 33, size: 64, elements: !4428)
!4428 = !{!4429, !4435, !4440}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4427, file: !4397, line: 38, baseType: !4430, size: 64)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4427, file: !4397, line: 34, size: 64, elements: !4431)
!4431 = !{!4432, !4433, !4434}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4430, file: !4397, line: 35, baseType: !658, size: 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4430, file: !4397, line: 36, baseType: !103, size: 8, offset: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4430, file: !4397, line: 37, baseType: !103, size: 8, offset: 40)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4427, file: !4397, line: 42, baseType: !4436, size: 16)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4427, file: !4397, line: 39, size: 16, elements: !4437)
!4437 = !{!4438, !4439}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4436, file: !4397, line: 40, baseType: !103, size: 8)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4436, file: !4397, line: 41, baseType: !103, size: 8, offset: 8)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4427, file: !4397, line: 46, baseType: !4441, size: 16)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4427, file: !4397, line: 43, size: 16, elements: !4442)
!4442 = !{!4443, !4444}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4441, file: !4397, line: 44, baseType: !103, size: 8)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4441, file: !4397, line: 45, baseType: !103, size: 8, offset: 8)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4386, file: !240, line: 81, baseType: !4446, size: 64, offset: 448)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !240, line: 85, size: 384, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4447, file: !240, line: 86, baseType: !4409, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4447, file: !240, line: 87, baseType: !59, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4447, file: !240, line: 88, baseType: !59, size: 64, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4447, file: !240, line: 89, baseType: !59, size: 64, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4447, file: !240, line: 90, baseType: !742, size: 8, offset: 256)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4447, file: !240, line: 92, baseType: !4446, size: 64, offset: 320)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4386, file: !240, line: 82, baseType: !7, size: 32, offset: 512)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3151, file: !2251, line: 1463, baseType: !4457, offset: 21184)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2251, line: 739, elements: !951)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3151, file: !2251, line: 1470, baseType: !882, size: 128, align: 64, offset: 21184)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3151, file: !2251, line: 1471, baseType: !1212, size: 32, offset: 21312)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3151, file: !2251, line: 1472, baseType: !42, size: 32, offset: 21344)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3151, file: !2251, line: 1474, baseType: !3150, size: 64, offset: 21376)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3151, file: !2251, line: 1475, baseType: !904, size: 320, offset: 21440)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3151, file: !2251, line: 1478, baseType: !4464, size: 64, offset: 21760)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2251, line: 1478, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3151, file: !2251, line: 1482, baseType: !1212, size: 32, offset: 21824)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3151, file: !2251, line: 1489, baseType: !40, size: 64, offset: 21888)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3151, file: !2251, line: 1504, baseType: !40, size: 64, offset: 21952)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3151, file: !2251, line: 1505, baseType: !288, size: 64, offset: 22016)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3151, file: !2251, line: 1506, baseType: !287, size: 64, offset: 22080)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3151, file: !2251, line: 1507, baseType: !288, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3151, file: !2251, line: 1508, baseType: !288, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3151, file: !2251, line: 1509, baseType: !288, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3151, file: !2251, line: 1510, baseType: !882, size: 128, align: 64, offset: 22208)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3151, file: !2251, line: 1511, baseType: !42, size: 32, offset: 22336)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3151, file: !2251, line: 1515, baseType: !4477, size: 64, offset: 22400)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1170, line: 56, size: 64, elements: !4478)
!4478 = !{!4479}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4477, file: !1170, line: 57, baseType: !1173, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3151, file: !2251, line: 1518, baseType: !4477, size: 64, offset: 22464)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3151, file: !2251, line: 1528, baseType: !882, size: 128, align: 64, offset: 22528)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3151, file: !2251, line: 1552, baseType: !4483, size: 35328, offset: 23040)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4484, line: 430, size: 35328, elements: !4485)
!4484 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4485 = !{!4486, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4499, !4500, !4501, !4502, !4503, !4504, !4507, !4508, !4509, !4510}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4483, file: !4484, line: 432, baseType: !4487, size: 192)
!4487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1880, size: 192, elements: !336)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4483, file: !4484, line: 436, baseType: !59, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4483, file: !4484, line: 440, baseType: !46, size: 16, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4483, file: !4484, line: 441, baseType: !46, size: 16, offset: 272)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4483, file: !4484, line: 442, baseType: !46, size: 16, offset: 288)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4483, file: !4484, line: 443, baseType: !46, size: 16, offset: 304)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4483, file: !4484, line: 447, baseType: !59, size: 64, offset: 320)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4483, file: !4484, line: 448, baseType: !59, size: 64, offset: 384)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4483, file: !4484, line: 459, baseType: !4496, size: 256, offset: 448)
!4496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4497, size: 256, elements: !892)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4484, line: 428, flags: DIFlagFwdDecl)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4483, file: !4484, line: 461, baseType: !59, size: 64, offset: 704)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4483, file: !4484, line: 463, baseType: !59, size: 64, offset: 768)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4483, file: !4484, line: 465, baseType: !59, size: 64, offset: 832)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4483, file: !4484, line: 466, baseType: !59, size: 64, offset: 896)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4483, file: !4484, line: 467, baseType: !59, size: 64, offset: 960)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4483, file: !4484, line: 473, baseType: !4505, size: 64, offset: 1024)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4484, line: 10, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4483, file: !4484, line: 480, baseType: !59, size: 64, offset: 1088)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4483, file: !4484, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4483, file: !4484, line: 491, baseType: !283, size: 32, offset: 1184)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4483, file: !4484, line: 501, baseType: !4511, size: 33792, offset: 1536)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4512, line: 448, size: 33792, elements: !4513)
!4512 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4513 = !{!4514, !4515, !4516, !4676, !4677, !4683, !4684}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4511, file: !4512, line: 461, baseType: !7, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4511, file: !4512, line: 468, baseType: !59, size: 64, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4511, file: !4512, line: 476, baseType: !4517, size: 64, offset: 128)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4512, line: 356, size: 33280, align: 512, elements: !4519)
!4519 = !{!4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4518, file: !4512, line: 358, baseType: !7, size: 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4518, file: !4512, line: 361, baseType: !7, size: 32, offset: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4518, file: !4512, line: 364, baseType: !287, size: 64, offset: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4518, file: !4512, line: 367, baseType: !287, size: 64, offset: 128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4518, file: !4512, line: 370, baseType: !287, size: 64, offset: 192)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4518, file: !4512, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4518, file: !4512, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4518, file: !4512, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4518, file: !4512, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4518, file: !4512, line: 397, baseType: !4530, size: 32768, offset: 512)
!4530 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4512, line: 348, size: 32768, elements: !4531)
!4531 = !{!4532, !4547, !4584, !4661, !4674}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4530, file: !4512, line: 349, baseType: !4533, size: 896)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4512, line: 12, size: 896, elements: !4534)
!4534 = !{!4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4546}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4533, file: !4512, line: 13, baseType: !283, size: 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4533, file: !4512, line: 14, baseType: !283, size: 32, offset: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4533, file: !4512, line: 15, baseType: !283, size: 32, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4533, file: !4512, line: 16, baseType: !283, size: 32, offset: 96)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4533, file: !4512, line: 17, baseType: !283, size: 32, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4533, file: !4512, line: 18, baseType: !283, size: 32, offset: 160)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4533, file: !4512, line: 19, baseType: !283, size: 32, offset: 192)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4533, file: !4512, line: 22, baseType: !4543, size: 640, offset: 224)
!4543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 640, elements: !4544)
!4544 = !{!4545}
!4545 = !DISubrange(count: 20)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4533, file: !4512, line: 25, baseType: !283, size: 32, offset: 864)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4530, file: !4512, line: 350, baseType: !4548, size: 4096, align: 128)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4512, line: 34, size: 4096, align: 128, elements: !4549)
!4549 = !{!4550, !4551, !4552, !4553, !4554, !4569, !4570, !4571, !4573, !4575, !4579}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4548, file: !4512, line: 35, baseType: !113, size: 16)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4548, file: !4512, line: 36, baseType: !113, size: 16, offset: 16)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4548, file: !4512, line: 37, baseType: !113, size: 16, offset: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4548, file: !4512, line: 38, baseType: !113, size: 16, offset: 48)
!4554 = !DIDerivedType(tag: DW_TAG_member, scope: !4548, file: !4512, line: 39, baseType: !4555, size: 128, offset: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4548, file: !4512, line: 39, size: 128, elements: !4556)
!4556 = !{!4557, !4562}
!4557 = !DIDerivedType(tag: DW_TAG_member, scope: !4555, file: !4512, line: 40, baseType: !4558, size: 128)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4555, file: !4512, line: 40, size: 128, elements: !4559)
!4559 = !{!4560, !4561}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4558, file: !4512, line: 41, baseType: !287, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4558, file: !4512, line: 42, baseType: !287, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, scope: !4555, file: !4512, line: 44, baseType: !4563, size: 128)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4555, file: !4512, line: 44, size: 128, elements: !4564)
!4564 = !{!4565, !4566, !4567, !4568}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4563, file: !4512, line: 45, baseType: !283, size: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4563, file: !4512, line: 46, baseType: !283, size: 32, offset: 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4563, file: !4512, line: 47, baseType: !283, size: 32, offset: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4563, file: !4512, line: 48, baseType: !283, size: 32, offset: 96)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4548, file: !4512, line: 51, baseType: !283, size: 32, offset: 192)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4548, file: !4512, line: 52, baseType: !283, size: 32, offset: 224)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4548, file: !4512, line: 55, baseType: !4572, size: 1024, offset: 256)
!4572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 1024, elements: !486)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4548, file: !4512, line: 58, baseType: !4574, size: 2048, offset: 1280)
!4574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 2048, elements: !340)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4548, file: !4512, line: 60, baseType: !4576, size: 384, offset: 3328)
!4576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 384, elements: !4577)
!4577 = !{!4578}
!4578 = !DISubrange(count: 12)
!4579 = !DIDerivedType(tag: DW_TAG_member, scope: !4548, file: !4512, line: 62, baseType: !4580, size: 384, offset: 3712)
!4580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4548, file: !4512, line: 62, size: 384, elements: !4581)
!4581 = !{!4582, !4583}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4580, file: !4512, line: 63, baseType: !4576, size: 384)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4580, file: !4512, line: 64, baseType: !4576, size: 384)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4530, file: !4512, line: 351, baseType: !4585, size: 1088)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4512, line: 79, size: 1088, elements: !4586)
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4660}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4585, file: !4512, line: 80, baseType: !283, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4585, file: !4512, line: 81, baseType: !283, size: 32, offset: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4585, file: !4512, line: 82, baseType: !283, size: 32, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4585, file: !4512, line: 83, baseType: !283, size: 32, offset: 96)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4585, file: !4512, line: 84, baseType: !283, size: 32, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4585, file: !4512, line: 85, baseType: !283, size: 32, offset: 160)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4585, file: !4512, line: 86, baseType: !283, size: 32, offset: 192)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4585, file: !4512, line: 88, baseType: !4543, size: 640, offset: 224)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4585, file: !4512, line: 89, baseType: !103, size: 8, offset: 864)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4585, file: !4512, line: 90, baseType: !103, size: 8, offset: 872)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4585, file: !4512, line: 91, baseType: !103, size: 8, offset: 880)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4585, file: !4512, line: 92, baseType: !103, size: 8, offset: 888)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4585, file: !4512, line: 93, baseType: !103, size: 8, offset: 896)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4585, file: !4512, line: 94, baseType: !103, size: 8, offset: 904)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4585, file: !4512, line: 95, baseType: !4602, size: 64, offset: 960)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4604, line: 11, size: 128, elements: !4605)
!4604 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4605 = !{!4606, !4607}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4603, file: !4604, line: 12, baseType: !370, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4603, file: !4604, line: 13, baseType: !4608, size: 64, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4610, line: 103, size: 1344, elements: !4611)
!4610 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4640, !4641, !4642}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4609, file: !4610, line: 109, baseType: !59, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4609, file: !4610, line: 110, baseType: !59, size: 64, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4609, file: !4610, line: 111, baseType: !59, size: 64, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4609, file: !4610, line: 112, baseType: !59, size: 64, offset: 192)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4609, file: !4610, line: 113, baseType: !59, size: 64, offset: 256)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4609, file: !4610, line: 114, baseType: !59, size: 64, offset: 320)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4609, file: !4610, line: 117, baseType: !59, size: 64, offset: 384)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4609, file: !4610, line: 118, baseType: !59, size: 64, offset: 448)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4609, file: !4610, line: 119, baseType: !59, size: 64, offset: 512)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4609, file: !4610, line: 120, baseType: !59, size: 64, offset: 576)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4609, file: !4610, line: 121, baseType: !59, size: 64, offset: 640)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4609, file: !4610, line: 122, baseType: !59, size: 64, offset: 704)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4609, file: !4610, line: 123, baseType: !59, size: 64, offset: 768)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4609, file: !4610, line: 124, baseType: !59, size: 64, offset: 832)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4609, file: !4610, line: 125, baseType: !59, size: 64, offset: 896)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4609, file: !4610, line: 139, baseType: !59, size: 64, offset: 960)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4609, file: !4610, line: 142, baseType: !59, size: 64, offset: 1024)
!4629 = !DIDerivedType(tag: DW_TAG_member, scope: !4609, file: !4610, line: 144, baseType: !4630, size: 64, offset: 1088)
!4630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4609, file: !4610, line: 144, size: 64, elements: !4631)
!4631 = !{!4632, !4633, !4634}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4630, file: !4610, line: 146, baseType: !113, size: 16)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4630, file: !4610, line: 148, baseType: !287, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4630, file: !4610, line: 150, baseType: !4635, size: 64)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4610, line: 59, size: 64, elements: !4636)
!4636 = !{!4637, !4638, !4639}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4635, file: !4610, line: 61, baseType: !287, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4635, file: !4610, line: 63, baseType: !287, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4635, file: !4610, line: 65, baseType: !287, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4609, file: !4610, line: 153, baseType: !59, size: 64, offset: 1152)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4609, file: !4610, line: 154, baseType: !59, size: 64, offset: 1216)
!4642 = !DIDerivedType(tag: DW_TAG_member, scope: !4609, file: !4610, line: 156, baseType: !4643, size: 64, offset: 1280)
!4643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4609, file: !4610, line: 156, size: 64, elements: !4644)
!4644 = !{!4645, !4646, !4647}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4643, file: !4610, line: 158, baseType: !113, size: 16)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4643, file: !4610, line: 160, baseType: !287, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4643, file: !4610, line: 162, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4610, line: 69, size: 64, elements: !4649)
!4649 = !{!4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4648, file: !4610, line: 71, baseType: !287, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4648, file: !4610, line: 73, baseType: !287, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4648, file: !4610, line: 75, baseType: !287, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4648, file: !4610, line: 77, baseType: !287, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4648, file: !4610, line: 80, baseType: !287, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4648, file: !4610, line: 83, baseType: !287, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4648, file: !4610, line: 86, baseType: !287, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4648, file: !4610, line: 88, baseType: !287, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4648, file: !4610, line: 93, baseType: !287, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4648, file: !4610, line: 100, baseType: !287, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4585, file: !4512, line: 96, baseType: !283, size: 32, offset: 1024)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4530, file: !4512, line: 352, baseType: !4662, size: 4608, align: 512)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4512, line: 333, size: 4608, align: 512, elements: !4663)
!4663 = !{!4664, !4665, !4672}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4662, file: !4512, line: 334, baseType: !4548, size: 4096, align: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4662, file: !4512, line: 335, baseType: !4666, size: 512, offset: 4096)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4512, line: 312, size: 512, elements: !4667)
!4667 = !{!4668, !4669, !4670}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4666, file: !4512, line: 313, baseType: !287, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4666, file: !4512, line: 314, baseType: !287, size: 64, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4666, file: !4512, line: 315, baseType: !4671, size: 384, offset: 128)
!4671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 384, elements: !1325)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4662, file: !4512, line: 336, baseType: !4673, offset: 4608)
!4673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !1232)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4530, file: !4512, line: 353, baseType: !4675, size: 32768)
!4675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32768, elements: !3711)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4511, file: !4512, line: 484, baseType: !4517, size: 64, offset: 192)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4511, file: !4512, line: 491, baseType: !4678, size: 128, offset: 256)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4512, line: 404, size: 128, elements: !4679)
!4679 = !{!4680, !4681, !4682}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4678, file: !4512, line: 424, baseType: !287, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4678, file: !4512, line: 432, baseType: !7, size: 32, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4678, file: !4512, line: 440, baseType: !7, size: 32, offset: 96)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4511, file: !4512, line: 498, baseType: !4678, size: 128, offset: 384)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4511, file: !4512, line: 508, baseType: !4518, size: 33280, align: 512, offset: 512)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3133, file: !3134, line: 16, baseType: !74, size: 192, offset: 512)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3133, file: !3134, line: 17, baseType: !69, size: 32, offset: 704)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !556, file: !19, line: 1240, baseType: !40, size: 64, offset: 6912)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !556, file: !19, line: 1243, baseType: !283, size: 32, offset: 6976)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !556, file: !19, line: 1245, baseType: !1296, size: 64, offset: 7040)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !556, file: !19, line: 1246, baseType: !1296, size: 64, offset: 7104)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !556, file: !19, line: 1248, baseType: !284, size: 32, offset: 7168)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !556, file: !19, line: 1249, baseType: !4693, size: 64, offset: 7232)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !556, file: !19, line: 1252, baseType: !4064, size: 256, offset: 7296)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !556, file: !19, line: 1253, baseType: !4697, size: 128, offset: 7552)
!4697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4698, line: 21, baseType: !4699)
!4698 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4698, line: 19, size: 128, elements: !4700)
!4700 = !{!4701}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4699, file: !4698, line: 20, baseType: !4702, size: 128)
!4702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !3506)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !556, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !556, file: !19, line: 1261, baseType: !662, size: 256, offset: 7744)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !556, file: !19, line: 1267, baseType: !36, size: 64, offset: 8000)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !556, file: !19, line: 1269, baseType: !502, size: 64, offset: 8064)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !556, file: !19, line: 1271, baseType: !4708, size: 448, offset: 8128)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2368, line: 63, size: 448, elements: !4709)
!4709 = !{!4710, !4715, !4716, !4717, !4718, !4719, !4720}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4708, file: !2368, line: 64, baseType: !4711, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!59, !4714, !2366}
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4708, file: !2368, line: 66, baseType: !4711, size: 64, offset: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4708, file: !2368, line: 69, baseType: !370, size: 64, offset: 128)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4708, file: !2368, line: 70, baseType: !42, size: 32, offset: 192)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4708, file: !2368, line: 71, baseType: !7, size: 32, offset: 224)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4708, file: !2368, line: 74, baseType: !117, size: 128, offset: 256)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4708, file: !2368, line: 85, baseType: !4721, size: 64, offset: 384)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !556, file: !19, line: 1274, baseType: !666, size: 64, offset: 8576)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !556, file: !19, line: 1280, baseType: !666, size: 64, offset: 8640)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !556, file: !19, line: 1283, baseType: !42, size: 32, offset: 8704)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !556, file: !19, line: 1286, baseType: !2300, size: 32, offset: 8736)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !556, file: !19, line: 1289, baseType: !984, size: 64, offset: 8768)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !556, file: !19, line: 1290, baseType: !1036, size: 64, offset: 8832)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !556, file: !19, line: 1297, baseType: !1419, size: 64, offset: 8896)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !556, file: !19, line: 1304, baseType: !4730, size: 64, offset: 8960)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4731, line: 49, size: 64, elements: !4732)
!4731 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4732 = !{!4733}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4730, file: !4731, line: 50, baseType: !4734, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4731, line: 41, size: 512, align: 512, elements: !4736)
!4736 = !{!4737, !4738, !4743}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4735, file: !4731, line: 43, baseType: !79, size: 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4735, file: !4731, line: 45, baseType: !4739, size: 192, offset: 64)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4731, line: 29, size: 192, elements: !4740)
!4740 = !{!4741, !4742}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4739, file: !4731, line: 30, baseType: !117, size: 128)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4739, file: !4731, line: 32, baseType: !370, size: 64, offset: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4735, file: !4731, line: 46, baseType: !370, size: 64, offset: 256)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !556, file: !19, line: 1305, baseType: !4730, size: 64, offset: 9024)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !556, file: !19, line: 1306, baseType: !882, size: 128, align: 64, offset: 9088)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !556, file: !19, line: 1307, baseType: !922, size: 256, offset: 9216)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !556, file: !19, line: 1309, baseType: !662, size: 256, offset: 9472)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !556, file: !19, line: 1314, baseType: !42, size: 32, offset: 9728)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !556, file: !19, line: 1317, baseType: !79, size: 32, align: 512, offset: 10240)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !556, file: !19, line: 1318, baseType: !117, size: 128, offset: 10304)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !556, file: !19, line: 1320, baseType: !79, size: 32, offset: 10432)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !556, file: !19, line: 1321, baseType: !117, size: 128, offset: 10496)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !550, file: !551, line: 73, baseType: !42, size: 32, offset: 128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !550, file: !551, line: 74, baseType: !4755, size: 64, offset: 192)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1256, line: 42, flags: DIFlagFwdDecl)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !504, file: !446, line: 141, baseType: !4759, size: 64, offset: 704)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!42, !2428, !742}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !504, file: !446, line: 142, baseType: !4763, size: 64, offset: 768)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!444, !444, !4766}
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !445, file: !446, line: 96, baseType: !555, size: 64, offset: 832)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !445, file: !446, line: 97, baseType: !59, size: 64, offset: 896)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !445, file: !446, line: 98, baseType: !40, size: 64, offset: 960)
!4771 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !446, line: 100, baseType: !4772, size: 128, offset: 1024)
!4772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !446, line: 100, size: 128, elements: !4773)
!4773 = !{!4774, !4775}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4772, file: !446, line: 101, baseType: !117, size: 128)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4772, file: !446, line: 102, baseType: !2203, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !445, file: !446, line: 104, baseType: !117, size: 128, offset: 1152)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !445, file: !446, line: 105, baseType: !117, size: 128, offset: 1280)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !445, file: !446, line: 113, baseType: !4779, size: 128, offset: 1408)
!4779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !446, line: 109, size: 128, elements: !4780)
!4780 = !{!4781, !4782, !4783}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4779, file: !446, line: 110, baseType: !908, size: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4779, file: !446, line: 111, baseType: !460, size: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4779, file: !446, line: 112, baseType: !882, size: 128, align: 64)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !438, file: !19, line: 1968, baseType: !4785, size: 64, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!36, !444, !409, !4788}
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4790, line: 10, size: 128, elements: !4791)
!4790 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4791 = !{!4792, !4793}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4789, file: !4790, line: 11, baseType: !705, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4789, file: !4790, line: 12, baseType: !40, size: 64, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !438, file: !19, line: 1969, baseType: !4795, size: 64, offset: 128)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!42, !4755, !409, !42}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !438, file: !19, line: 1970, baseType: !4799, size: 64, offset: 192)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!432, !409, !42, !742}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !438, file: !19, line: 1972, baseType: !4803, size: 64, offset: 256)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!42, !444, !335, !42}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !438, file: !19, line: 1974, baseType: !4807, size: 64, offset: 320)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!42, !4755, !409, !444, !44, !742}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !438, file: !19, line: 1976, baseType: !4811, size: 64, offset: 384)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!42, !444, !409, !444}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !438, file: !19, line: 1977, baseType: !4815, size: 64, offset: 448)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!42, !409, !444}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !438, file: !19, line: 1978, baseType: !4819, size: 64, offset: 512)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!42, !4755, !409, !444, !36}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !438, file: !19, line: 1980, baseType: !4823, size: 64, offset: 576)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!42, !4755, !409, !444, !44}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !438, file: !19, line: 1982, baseType: !4815, size: 64, offset: 640)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !438, file: !19, line: 1983, baseType: !4828, size: 64, offset: 704)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!42, !4755, !409, !444, !44, !560}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !438, file: !19, line: 1985, baseType: !4832, size: 64, offset: 768)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!42, !4755, !409, !444, !409, !444, !7}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !438, file: !19, line: 1987, baseType: !4836, size: 64, offset: 832)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!42, !4755, !444, !4839}
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !4841)
!4841 = !{!4842, !4843, !4844, !4854, !4863, !4864, !4869, !4870, !4871}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4840, file: !19, line: 227, baseType: !7, size: 32)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4840, file: !19, line: 228, baseType: !44, size: 16, offset: 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, scope: !4840, file: !19, line: 241, baseType: !4845, size: 32, offset: 64)
!4845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4840, file: !19, line: 241, size: 32, elements: !4846)
!4846 = !{!4847, !4848}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4845, file: !19, line: 242, baseType: !415, size: 32)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4845, file: !19, line: 243, baseType: !4849, size: 32)
!4849 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4850, line: 16, baseType: !4851)
!4850 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4850, line: 14, size: 32, elements: !4852)
!4852 = !{!4853}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4851, file: !4850, line: 15, baseType: !420, size: 32)
!4854 = !DIDerivedType(tag: DW_TAG_member, scope: !4840, file: !19, line: 245, baseType: !4855, size: 32, offset: 96)
!4855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4840, file: !19, line: 245, size: 32, elements: !4856)
!4856 = !{!4857, !4858}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4855, file: !19, line: 246, baseType: !424, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4855, file: !19, line: 247, baseType: !4859, size: 32)
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4850, line: 20, baseType: !4860)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4850, line: 18, size: 32, elements: !4861)
!4861 = !{!4862}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4860, file: !4850, line: 19, baseType: !428, size: 32)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4840, file: !19, line: 249, baseType: !61, size: 64, offset: 128)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4840, file: !19, line: 250, baseType: !4865, size: 128, offset: 192)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1297, line: 13, size: 128, elements: !4866)
!4866 = !{!4867, !4868}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4865, file: !1297, line: 14, baseType: !1296, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4865, file: !1297, line: 15, baseType: !370, size: 64, offset: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4840, file: !19, line: 251, baseType: !4865, size: 128, offset: 320)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4840, file: !19, line: 252, baseType: !4865, size: 128, offset: 448)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4840, file: !19, line: 259, baseType: !1588, size: 64, offset: 576)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !438, file: !19, line: 1988, baseType: !4873, size: 64, offset: 896)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!42, !4755, !2428, !4876, !283, !7}
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4878, line: 22, size: 1280, elements: !4879)
!4878 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4879 = !{!4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4877, file: !4878, line: 23, baseType: !283, size: 32)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4877, file: !4878, line: 24, baseType: !44, size: 16, offset: 32)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4877, file: !4878, line: 25, baseType: !7, size: 32, offset: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4877, file: !4878, line: 26, baseType: !1304, size: 32, offset: 96)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4877, file: !4878, line: 27, baseType: !287, size: 64, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4877, file: !4878, line: 28, baseType: !287, size: 64, offset: 192)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4877, file: !4878, line: 41, baseType: !287, size: 64, offset: 256)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4877, file: !4878, line: 42, baseType: !560, size: 32, offset: 320)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4877, file: !4878, line: 43, baseType: !560, size: 32, offset: 352)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4877, file: !4878, line: 44, baseType: !415, size: 32, offset: 384)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4877, file: !4878, line: 45, baseType: !424, size: 32, offset: 416)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4877, file: !4878, line: 46, baseType: !61, size: 64, offset: 448)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4877, file: !4878, line: 47, baseType: !4865, size: 128, offset: 512)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4877, file: !4878, line: 48, baseType: !4865, size: 128, offset: 640)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4877, file: !4878, line: 49, baseType: !4865, size: 128, offset: 768)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4877, file: !4878, line: 50, baseType: !4865, size: 128, offset: 896)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4877, file: !4878, line: 51, baseType: !287, size: 64, offset: 1024)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4877, file: !4878, line: 52, baseType: !287, size: 64, offset: 1088)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4877, file: !4878, line: 53, baseType: !283, size: 32, offset: 1152)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4877, file: !4878, line: 54, baseType: !283, size: 32, offset: 1184)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4877, file: !4878, line: 55, baseType: !287, size: 64, offset: 1216)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !438, file: !19, line: 1990, baseType: !4902, size: 64, offset: 960)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!367, !444, !335, !55}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !438, file: !19, line: 1991, baseType: !4906, size: 64, offset: 1024)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!42, !409, !4909, !287, !287}
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !438, file: !19, line: 1993, baseType: !4912, size: 64, offset: 1088)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!42, !409, !42}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !438, file: !19, line: 1994, baseType: !4916, size: 64, offset: 1152)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!42, !409, !444, !1588, !7, !44}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !438, file: !19, line: 1997, baseType: !4920, size: 64, offset: 1216)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!42, !4755, !409, !1588, !44}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !438, file: !19, line: 1999, baseType: !4924, size: 64, offset: 1280)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!432, !4755, !444, !42}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !438, file: !19, line: 2001, baseType: !4928, size: 64, offset: 1344)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!42, !4755, !444, !432, !42}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !438, file: !19, line: 2003, baseType: !4932, size: 64, offset: 1408)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!42, !4755, !444, !4935}
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !438, file: !19, line: 2005, baseType: !4938, size: 64, offset: 1472)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!42, !444, !4935}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !438, file: !19, line: 2006, baseType: !4942, size: 64, offset: 1536)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!4945, !409}
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !4947)
!4947 = !{!4948, !4949}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4946, file: !19, line: 3193, baseType: !3835, size: 128)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4946, file: !19, line: 3194, baseType: !283, size: 32, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !410, file: !19, line: 655, baseType: !555, size: 64, offset: 448)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !410, file: !19, line: 656, baseType: !405, size: 64, offset: 512)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !410, file: !19, line: 659, baseType: !40, size: 64, offset: 576)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !410, file: !19, line: 663, baseType: !59, size: 64, offset: 640)
!4954 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !19, line: 671, baseType: !4955, size: 32, offset: 704)
!4955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !19, line: 671, size: 32, elements: !4956)
!4956 = !{!4957, !4959}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4955, file: !19, line: 672, baseType: !4958, size: 32)
!4958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4955, file: !19, line: 673, baseType: !7, size: 32)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !410, file: !19, line: 675, baseType: !560, size: 32, offset: 736)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !410, file: !19, line: 676, baseType: !61, size: 64, offset: 768)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !410, file: !19, line: 677, baseType: !4865, size: 128, offset: 832)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !410, file: !19, line: 678, baseType: !4865, size: 128, offset: 960)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !410, file: !19, line: 679, baseType: !4865, size: 128, offset: 1088)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !410, file: !19, line: 680, baseType: !79, size: 32, offset: 1216)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !410, file: !19, line: 681, baseType: !46, size: 16, offset: 1248)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !410, file: !19, line: 682, baseType: !103, size: 8, offset: 1264)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !410, file: !19, line: 683, baseType: !103, size: 8, offset: 1272)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !410, file: !19, line: 684, baseType: !2501, size: 64, offset: 1280)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !410, file: !19, line: 691, baseType: !59, size: 64, offset: 1344)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !410, file: !19, line: 692, baseType: !1280, size: 320, offset: 1408)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !410, file: !19, line: 694, baseType: !59, size: 64, offset: 1728)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !410, file: !19, line: 695, baseType: !59, size: 64, offset: 1792)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !410, file: !19, line: 697, baseType: !908, size: 128, offset: 1856)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !410, file: !19, line: 698, baseType: !117, size: 128, offset: 1984)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !410, file: !19, line: 707, baseType: !117, size: 128, offset: 2112)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !410, file: !19, line: 708, baseType: !117, size: 128, offset: 2240)
!4978 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !19, line: 709, baseType: !4979, size: 128, offset: 2368)
!4979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !19, line: 709, size: 128, elements: !4980)
!4980 = !{!4981, !4982}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4979, file: !19, line: 710, baseType: !1036, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4979, file: !19, line: 711, baseType: !882, size: 128, align: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !410, file: !19, line: 713, baseType: !668, size: 64, offset: 2496)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !410, file: !19, line: 714, baseType: !668, size: 64, offset: 2560)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !410, file: !19, line: 715, baseType: !69, size: 32, offset: 2624)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !410, file: !19, line: 716, baseType: !69, size: 32, offset: 2656)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !410, file: !19, line: 717, baseType: !69, size: 32, offset: 2688)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !410, file: !19, line: 719, baseType: !69, size: 32, offset: 2720)
!4989 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !19, line: 721, baseType: !4990, size: 64, offset: 2752)
!4990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !19, line: 721, size: 64, elements: !4991)
!4991 = !{!4992, !4993}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4990, file: !19, line: 722, baseType: !1579, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4990, file: !19, line: 723, baseType: !1059, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !410, file: !19, line: 725, baseType: !4995, size: 64, offset: 2816)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !410, file: !19, line: 726, baseType: !406, size: 1536, align: 64, offset: 2880)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !410, file: !19, line: 727, baseType: !117, size: 128, offset: 4416)
!4999 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !19, line: 728, baseType: !5000, size: 64, offset: 4544)
!5000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !19, line: 728, size: 64, elements: !5001)
!5001 = !{!5002, !5003, !5014, !5015}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5000, file: !19, line: 729, baseType: !2249, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5000, file: !19, line: 730, baseType: !5004, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !5006, line: 14, size: 832, elements: !5007)
!5006 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!5007 = !{!5008, !5009, !5010, !5011, !5012, !5013}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5005, file: !5006, line: 15, baseType: !294, size: 512)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5005, file: !5006, line: 16, baseType: !591, size: 64, offset: 512)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5005, file: !5006, line: 17, baseType: !1579, size: 64, offset: 576)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5005, file: !5006, line: 18, baseType: !117, size: 128, offset: 640)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5005, file: !5006, line: 19, baseType: !560, size: 32, offset: 768)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5005, file: !5006, line: 20, baseType: !7, size: 32, offset: 800)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5000, file: !19, line: 731, baseType: !335, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5000, file: !19, line: 732, baseType: !7, size: 32)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !410, file: !19, line: 735, baseType: !284, size: 32, offset: 4608)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !410, file: !19, line: 738, baseType: !284, size: 32, offset: 4640)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !410, file: !19, line: 739, baseType: !4693, size: 64, offset: 4672)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !410, file: !19, line: 750, baseType: !40, size: 64, offset: 4736)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !406, file: !19, line: 474, baseType: !3835, size: 128, offset: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !406, file: !19, line: 475, baseType: !1280, size: 320, offset: 192)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !406, file: !19, line: 476, baseType: !269, size: 32, offset: 512)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !406, file: !19, line: 477, baseType: !69, size: 32, offset: 544)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !406, file: !19, line: 482, baseType: !2823, size: 128, offset: 576)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !406, file: !19, line: 483, baseType: !59, size: 64, offset: 704)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !406, file: !19, line: 484, baseType: !59, size: 64, offset: 768)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !406, file: !19, line: 485, baseType: !5028, size: 64, offset: 832)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5030)
!5030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !5031)
!5031 = !{!5032, !5036, !5040, !5044, !5048, !5064, !5069, !5073, !5077, !5081, !5085, !5089, !5090, !5094, !5098, !5102, !5107, !5111, !5163, !5164}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5030, file: !19, line: 405, baseType: !5033, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!42, !1750, !1071}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5030, file: !19, line: 406, baseType: !5037, size: 64, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!42, !1588, !1622}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5030, file: !19, line: 409, baseType: !5041, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!42, !405, !1071}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5030, file: !19, line: 412, baseType: !5045, size: 64, offset: 192)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!742, !405, !1622}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5030, file: !19, line: 414, baseType: !5049, size: 64, offset: 256)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{null, !5052}
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1619, line: 1276, size: 448, elements: !5054)
!5054 = !{!5055, !5056, !5057, !5059, !5060, !5061, !5062, !5063}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5053, file: !1619, line: 1277, baseType: !1588, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5053, file: !1619, line: 1278, baseType: !405, size: 64, offset: 64)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5053, file: !1619, line: 1279, baseType: !5058, size: 64, offset: 128)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5053, file: !1619, line: 1281, baseType: !59, size: 64, offset: 192)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5053, file: !1619, line: 1282, baseType: !7, size: 32, offset: 256)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5053, file: !1619, line: 1283, baseType: !7, size: 32, offset: 288)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5053, file: !1619, line: 1284, baseType: !742, size: 8, offset: 320)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5053, file: !1619, line: 1285, baseType: !59, size: 64, offset: 384)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5030, file: !19, line: 416, baseType: !5065, size: 64, offset: 320)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!42, !1588, !405, !61, !7, !5068, !2265}
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5030, file: !19, line: 419, baseType: !5070, size: 64, offset: 384)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!42, !1588, !405, !61, !7, !7, !1750, !40}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5030, file: !19, line: 424, baseType: !5074, size: 64, offset: 448)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!2532, !405, !2532}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5030, file: !19, line: 425, baseType: !5078, size: 64, offset: 512)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !1622, !55, !55}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5030, file: !19, line: 426, baseType: !5082, size: 64, offset: 576)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!742, !1622, !269}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5030, file: !19, line: 427, baseType: !5086, size: 64, offset: 640)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{null, !1622}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5030, file: !19, line: 428, baseType: !1598, size: 64, offset: 704)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5030, file: !19, line: 433, baseType: !5091, size: 64, offset: 768)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!42, !405, !1622, !1622, !246}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5030, file: !19, line: 435, baseType: !5095, size: 64, offset: 832)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!42, !1622}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5030, file: !19, line: 436, baseType: !5099, size: 64, offset: 896)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!742, !1622, !55, !55}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5030, file: !19, line: 438, baseType: !5103, size: 64, offset: 960)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{null, !1622, !5106, !5106}
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5030, file: !19, line: 439, baseType: !5108, size: 64, offset: 1024)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!42, !405, !1750}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5030, file: !19, line: 442, baseType: !5112, size: 64, offset: 1088)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!42, !5115, !1588, !5162}
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !4200, line: 282, size: 2176, elements: !5117)
!5117 = !{!5118, !5119, !5120, !5121, !5122, !5123, !5124, !5126, !5133, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5116, file: !4200, line: 283, baseType: !1717, size: 128)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5116, file: !4200, line: 284, baseType: !59, size: 64, offset: 128)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5116, file: !4200, line: 285, baseType: !800, size: 16, offset: 192)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5116, file: !4200, line: 286, baseType: !3354, size: 320, offset: 256)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5116, file: !4200, line: 287, baseType: !713, size: 8, offset: 576)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5116, file: !4200, line: 288, baseType: !7, size: 32, offset: 608)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5116, file: !4200, line: 289, baseType: !5125, size: 64, offset: 640)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5116, file: !4200, line: 290, baseType: !5127, size: 64, offset: 704)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !4200, line: 250, size: 64, elements: !5129)
!5129 = !{!5130, !5131, !5132}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5128, file: !4200, line: 251, baseType: !79, size: 32)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5128, file: !4200, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5128, file: !4200, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5116, file: !4200, line: 291, baseType: !5134, size: 128, offset: 768)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !4200, line: 274, size: 128, elements: !5135)
!5135 = !{!5136, !5137}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5134, file: !4200, line: 275, baseType: !5128, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5134, file: !4200, line: 276, baseType: !5128, size: 64, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5116, file: !4200, line: 292, baseType: !7, size: 32, offset: 896)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5116, file: !4200, line: 293, baseType: !7, size: 32, offset: 928)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5116, file: !4200, line: 294, baseType: !7, size: 32, offset: 960)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5116, file: !4200, line: 295, baseType: !7, size: 32, offset: 992)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5116, file: !4200, line: 296, baseType: !7, size: 32, offset: 1024)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5116, file: !4200, line: 297, baseType: !7, size: 32, offset: 1056)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5116, file: !4200, line: 298, baseType: !734, size: 64, offset: 1088)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5116, file: !4200, line: 299, baseType: !5146, size: 64, offset: 1152)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !4200, line: 269, size: 96, elements: !5148)
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5147, file: !4200, line: 270, baseType: !5128, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5147, file: !4200, line: 271, baseType: !7, size: 32, offset: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5116, file: !4200, line: 300, baseType: !1527, size: 64, offset: 1216)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5116, file: !4200, line: 301, baseType: !2527, size: 64, offset: 1280)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5116, file: !4200, line: 302, baseType: !1588, size: 64, offset: 1344)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5116, file: !4200, line: 303, baseType: !7, size: 32, offset: 1408)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5116, file: !4200, line: 304, baseType: !611, size: 256, offset: 1472)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5116, file: !4200, line: 305, baseType: !79, size: 32, offset: 1728)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5116, file: !4200, line: 318, baseType: !79, size: 32, offset: 1760)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5116, file: !4200, line: 322, baseType: !922, size: 256, offset: 1792)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5116, file: !4200, line: 323, baseType: !5134, size: 128, offset: 2048)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5116, file: !4200, line: 324, baseType: !5161, offset: 2176)
!5161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3354, elements: !1232)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5030, file: !19, line: 444, baseType: !2257, size: 64, offset: 1152)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5030, file: !19, line: 445, baseType: !5165, size: 64, offset: 1216)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!42, !1601, !2166}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !19, line: 486, baseType: !59, size: 64, offset: 896)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !406, file: !19, line: 487, baseType: !1280, size: 320, offset: 960)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !406, file: !19, line: 488, baseType: !2300, size: 32, offset: 1280)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !406, file: !19, line: 489, baseType: !79, size: 32, offset: 1312)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !406, file: !19, line: 490, baseType: !117, size: 128, offset: 1344)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !406, file: !19, line: 491, baseType: !40, size: 64, offset: 1472)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !396, file: !361, line: 180, baseType: !5175, size: 64, offset: 320)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!367, !1588, !300, !395, !335, !61, !55}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !396, file: !361, line: 182, baseType: !5175, size: 64, offset: 384)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !396, file: !361, line: 184, baseType: !5180, size: 64, offset: 448)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{!42, !1588, !300, !395, !1764}
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !384, file: !361, line: 90, baseType: !5184, size: 64, offset: 192)
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !384, file: !361, line: 91, baseType: !5186, size: 64, offset: 256)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !351, file: !295, line: 120, baseType: !5188, size: 64, offset: 192)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!2959, !318}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !351, file: !295, line: 121, baseType: !5192, size: 64, offset: 256)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!1914, !318}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !351, file: !295, line: 122, baseType: !5196, size: 64, offset: 320)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{null, !318, !1510, !1511}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !294, file: !295, line: 70, baseType: !3590, size: 64, offset: 384)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !294, file: !295, line: 71, baseType: !3028, size: 32, offset: 448)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !294, file: !295, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !294, file: !295, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !294, file: !295, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !294, file: !295, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !294, file: !295, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_attribute", file: !3, line: 23, size: 192, elements: !5208)
!5208 = !{!5209, !5210}
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5207, file: !3, line: 24, baseType: !372, size: 128)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5207, file: !3, line: 25, baseType: !5211, size: 64, offset: 128)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!367, !274, !335}
!5214 = !{!0, !5215, !5220, !5223, !5226, !5229, !5231, !5233, !5235, !5238, !5240, !5243, !5246, !5248, !5250, !5253, !5255, !5257, !5259, !5261, !5263, !5265, !5267}
!5215 = !DIGlobalVariableExpression(var: !5216, expr: !DIExpression())
!5216 = distinct !DIGlobalVariable(scope: null, file: !259, line: 480, type: !5217, isLocal: true, isDefinition: true)
!5217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 168, elements: !5218)
!5218 = !{!5219}
!5219 = !DISubrange(count: 21)
!5220 = !DIGlobalVariableExpression(var: !5221, expr: !DIExpression())
!5221 = distinct !DIGlobalVariable(name: "map_entries", scope: !2, file: !3, line: 21, type: !5222, isLocal: true, isDefinition: true)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!5223 = !DIGlobalVariableExpression(var: !5224, expr: !DIExpression())
!5224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !5225, isLocal: true, isDefinition: true)
!5225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 96, elements: !4577)
!5226 = !DIGlobalVariableExpression(var: !5227, expr: !DIExpression())
!5227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !5228, isLocal: true, isDefinition: true)
!5228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 24, elements: !336)
!5229 = !DIGlobalVariableExpression(var: !5230, expr: !DIExpression())
!5230 = distinct !DIGlobalVariable(name: "map_kset", scope: !2, file: !3, line: 102, type: !302, isLocal: true, isDefinition: true)
!5231 = !DIGlobalVariableExpression(var: !5232, expr: !DIExpression())
!5232 = distinct !DIGlobalVariable(name: "map_ktype", scope: !2, file: !3, line: 96, type: !350, isLocal: true, isDefinition: true)
!5233 = !DIGlobalVariableExpression(var: !5234, expr: !DIExpression())
!5234 = distinct !DIGlobalVariable(name: "map_attr_ops", scope: !2, file: !3, line: 84, type: !359, isLocal: true, isDefinition: true)
!5235 = !DIGlobalVariableExpression(var: !5236, expr: !DIExpression())
!5236 = distinct !DIGlobalVariable(name: "def_groups", scope: !2, file: !3, line: 82, type: !5237, isLocal: true, isDefinition: true)
!5237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 128, elements: !781)
!5238 = !DIGlobalVariableExpression(var: !5239, expr: !DIExpression())
!5239 = distinct !DIGlobalVariable(name: "def_group", scope: !2, file: !3, line: 82, type: !383, isLocal: true, isDefinition: true)
!5240 = !DIGlobalVariableExpression(var: !5241, expr: !DIExpression())
!5241 = distinct !DIGlobalVariable(name: "def_attrs", scope: !2, file: !3, line: 74, type: !5242, isLocal: true, isDefinition: true)
!5242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 384, elements: !1325)
!5243 = !DIGlobalVariableExpression(var: !5244, expr: !DIExpression())
!5244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !5245, isLocal: true, isDefinition: true)
!5245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 40, elements: !1437)
!5246 = !DIGlobalVariableExpression(var: !5247, expr: !DIExpression())
!5247 = distinct !DIGlobalVariable(name: "map_type_attr", scope: !2, file: !3, line: 65, type: !5207, isLocal: true, isDefinition: true)
!5248 = !DIGlobalVariableExpression(var: !5249, expr: !DIExpression())
!5249 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !1324, isLocal: true, isDefinition: true)
!5250 = !DIGlobalVariableExpression(var: !5251, expr: !DIExpression())
!5251 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !5252, isLocal: true, isDefinition: true)
!5252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 80, elements: !1541)
!5253 = !DIGlobalVariableExpression(var: !5254, expr: !DIExpression())
!5254 = distinct !DIGlobalVariable(name: "map_phys_addr_attr", scope: !2, file: !3, line: 66, type: !5207, isLocal: true, isDefinition: true)
!5255 = !DIGlobalVariableExpression(var: !5256, expr: !DIExpression())
!5256 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !4275, isLocal: true, isDefinition: true)
!5257 = !DIGlobalVariableExpression(var: !5258, expr: !DIExpression())
!5258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !5252, isLocal: true, isDefinition: true)
!5259 = !DIGlobalVariableExpression(var: !5260, expr: !DIExpression())
!5260 = distinct !DIGlobalVariable(name: "map_virt_addr_attr", scope: !2, file: !3, line: 67, type: !5207, isLocal: true, isDefinition: true)
!5261 = !DIGlobalVariableExpression(var: !5262, expr: !DIExpression())
!5262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !5252, isLocal: true, isDefinition: true)
!5263 = !DIGlobalVariableExpression(var: !5264, expr: !DIExpression())
!5264 = distinct !DIGlobalVariable(name: "map_num_pages_attr", scope: !2, file: !3, line: 68, type: !5207, isLocal: true, isDefinition: true)
!5265 = !DIGlobalVariableExpression(var: !5266, expr: !DIExpression())
!5266 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !5252, isLocal: true, isDefinition: true)
!5267 = !DIGlobalVariableExpression(var: !5268, expr: !DIExpression())
!5268 = distinct !DIGlobalVariable(name: "map_attribute_attr", scope: !2, file: !3, line: 69, type: !5207, isLocal: true, isDefinition: true)
!5269 = !{i32 7, !"Dwarf Version", i32 5}
!5270 = !{i32 2, !"Debug Info Version", i32 3}
!5271 = !{i32 1, !"wchar_size", i32 2}
!5272 = !{i32 8, !"cf-protection-branch", i32 1}
!5273 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5274 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5275 = !{i32 1, !"Code Model", i32 2}
!5276 = !{i32 1, !"override-stack-alignment", i32 8}
!5277 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5278 = distinct !DISubprogram(name: "efi_get_runtime_map_size", scope: !3, file: !3, line: 139, type: !756, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5279 = !DILocation(line: 141, column: 20, scope: !5278)
!5280 = !DILocation(line: 141, column: 9, scope: !5278)
!5281 = !DILocation(line: 141, column: 40, scope: !5278)
!5282 = !DILocation(line: 141, column: 27, scope: !5278)
!5283 = !DILocation(line: 141, column: 2, scope: !5278)
!5284 = distinct !DISubprogram(name: "efi_get_runtime_map_desc_size", scope: !3, file: !3, line: 144, type: !756, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5285 = !DILocation(line: 146, column: 20, scope: !5284)
!5286 = !DILocation(line: 146, column: 9, scope: !5284)
!5287 = !DILocation(line: 146, column: 2, scope: !5284)
!5288 = distinct !DISubprogram(name: "efi_runtime_map_copy", scope: !3, file: !3, line: 149, type: !5289, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5291)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!42, !40, !55}
!5291 = !{!5292, !5293, !5294}
!5292 = !DILocalVariable(name: "buf", arg: 1, scope: !5288, file: !3, line: 149, type: !40)
!5293 = !DILocalVariable(name: "bufsz", arg: 2, scope: !5288, file: !3, line: 149, type: !55)
!5294 = !DILocalVariable(name: "sz", scope: !5288, file: !3, line: 151, type: !55)
!5295 = !DILocation(line: 149, column: 32, scope: !5288)
!5296 = !DILocation(line: 149, column: 44, scope: !5288)
!5297 = !DILocation(line: 151, column: 2, scope: !5288)
!5298 = !DILocation(line: 151, column: 9, scope: !5288)
!5299 = !DILocation(line: 151, column: 14, scope: !5288)
!5300 = !DILocation(line: 153, column: 6, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 153, column: 6)
!5302 = !DILocation(line: 153, column: 11, scope: !5301)
!5303 = !DILocation(line: 153, column: 9, scope: !5301)
!5304 = !DILocation(line: 153, column: 6, scope: !5288)
!5305 = !DILocation(line: 154, column: 8, scope: !5301)
!5306 = !DILocation(line: 154, column: 6, scope: !5301)
!5307 = !DILocation(line: 154, column: 3, scope: !5301)
!5308 = !DILocation(line: 156, column: 9, scope: !5288)
!5309 = !DILocation(line: 156, column: 25, scope: !5288)
!5310 = !DILocation(line: 156, column: 30, scope: !5288)
!5311 = !DILocation(line: 156, column: 2, scope: !5288)
!5312 = !DILocation(line: 158, column: 1, scope: !5288)
!5313 = !DILocation(line: 157, column: 2, scope: !5288)
!5314 = distinct !DISubprogram(name: "__initstub__kmod_runtime_map__345_194_efi_runtime_map_init4s", scope: !3, file: !3, line: 194, type: !756, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5315 = !DILocation(line: 194, column: 1, scope: !5314)
!5316 = distinct !DISubprogram(name: "efi_runtime_map_init", scope: !3, file: !3, line: 160, type: !756, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5317)
!5317 = !{!5318, !5319, !5320, !5321, !5322, !5324, !5325}
!5318 = !DILocalVariable(name: "i", scope: !5316, file: !3, line: 162, type: !42)
!5319 = !DILocalVariable(name: "j", scope: !5316, file: !3, line: 162, type: !42)
!5320 = !DILocalVariable(name: "ret", scope: !5316, file: !3, line: 162, type: !42)
!5321 = !DILocalVariable(name: "entry", scope: !5316, file: !3, line: 163, type: !274)
!5322 = !DILocalVariable(name: "md", scope: !5316, file: !3, line: 164, type: !5323)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!5324 = !DILabel(scope: !5316, name: "out_add_entry", file: !3, line: 186)
!5325 = !DILabel(scope: !5316, name: "out", file: !3, line: 191)
!5326 = !DILocation(line: 162, column: 2, scope: !5316)
!5327 = !DILocation(line: 162, column: 6, scope: !5316)
!5328 = !DILocation(line: 162, column: 9, scope: !5316)
!5329 = !DILocation(line: 162, column: 12, scope: !5316)
!5330 = !DILocation(line: 163, column: 2, scope: !5316)
!5331 = !DILocation(line: 163, column: 32, scope: !5316)
!5332 = !DILocation(line: 164, column: 2, scope: !5316)
!5333 = !DILocation(line: 164, column: 21, scope: !5316)
!5334 = !DILocation(line: 166, column: 7, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 166, column: 6)
!5336 = !DILocation(line: 166, column: 31, scope: !5335)
!5337 = !DILocation(line: 166, column: 35, scope: !5335)
!5338 = !DILocation(line: 166, column: 6, scope: !5316)
!5339 = !DILocation(line: 167, column: 3, scope: !5335)
!5340 = !DILocation(line: 169, column: 35, scope: !5316)
!5341 = !DILocation(line: 169, column: 24, scope: !5316)
!5342 = !DILocation(line: 169, column: 16, scope: !5316)
!5343 = !DILocation(line: 169, column: 14, scope: !5316)
!5344 = !DILocation(line: 170, column: 7, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 170, column: 6)
!5346 = !DILocation(line: 170, column: 6, scope: !5316)
!5347 = !DILocation(line: 171, column: 7, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 170, column: 20)
!5349 = !DILocation(line: 172, column: 3, scope: !5348)
!5350 = !DILocation(line: 175, column: 4, scope: !5316)
!5351 = !DILocation(line: 176, column: 2, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 176, column: 2)
!5353 = !DILocation(line: 176, column: 2, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 176, column: 2)
!5355 = !DILocation(line: 0, scope: !5354)
!5356 = !DILocation(line: 177, column: 39, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 176, column: 31)
!5358 = !DILocation(line: 177, column: 49, scope: !5357)
!5359 = !DILocation(line: 177, column: 52, scope: !5357)
!5360 = !DILocation(line: 177, column: 11, scope: !5357)
!5361 = !DILocation(line: 177, column: 9, scope: !5357)
!5362 = !DILocation(line: 178, column: 14, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 178, column: 7)
!5364 = !DILocation(line: 178, column: 7, scope: !5363)
!5365 = !DILocation(line: 178, column: 7, scope: !5357)
!5366 = !DILocation(line: 179, column: 18, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 178, column: 22)
!5368 = !DILocation(line: 179, column: 10, scope: !5367)
!5369 = !DILocation(line: 179, column: 8, scope: !5367)
!5370 = !DILocation(line: 180, column: 4, scope: !5367)
!5371 = !DILocation(line: 182, column: 26, scope: !5357)
!5372 = !DILocation(line: 182, column: 5, scope: !5357)
!5373 = !DILocation(line: 182, column: 20, scope: !5357)
!5374 = !DILocation(line: 182, column: 17, scope: !5357)
!5375 = !DILocation(line: 182, column: 24, scope: !5357)
!5376 = !DILocation(line: 183, column: 2, scope: !5357)
!5377 = distinct !{!5377, !5351, !5378, !5379, !5380}
!5378 = !DILocation(line: 183, column: 2, scope: !5352)
!5379 = !{!"llvm.loop.mustprogress"}
!5380 = !{!"llvm.loop.unroll.disable"}
!5381 = !DILocation(line: 185, column: 2, scope: !5316)
!5382 = !DILocation(line: 186, column: 1, scope: !5316)
!5383 = !DILocation(line: 187, column: 11, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 187, column: 2)
!5385 = !DILocation(line: 187, column: 13, scope: !5384)
!5386 = !DILocation(line: 187, column: 9, scope: !5384)
!5387 = !DILocation(line: 187, column: 7, scope: !5384)
!5388 = !DILocation(line: 187, column: 18, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 187, column: 2)
!5390 = !DILocation(line: 187, column: 20, scope: !5389)
!5391 = !DILocation(line: 187, column: 2, scope: !5384)
!5392 = !DILocation(line: 188, column: 13, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 187, column: 31)
!5394 = !DILocation(line: 188, column: 27, scope: !5393)
!5395 = !DILocation(line: 188, column: 25, scope: !5393)
!5396 = !DILocation(line: 188, column: 11, scope: !5393)
!5397 = !DILocation(line: 188, column: 9, scope: !5393)
!5398 = !DILocation(line: 189, column: 16, scope: !5393)
!5399 = !DILocation(line: 189, column: 23, scope: !5393)
!5400 = !DILocation(line: 189, column: 3, scope: !5393)
!5401 = !DILocation(line: 190, column: 2, scope: !5393)
!5402 = !DILocation(line: 187, column: 27, scope: !5389)
!5403 = !DILocation(line: 187, column: 2, scope: !5389)
!5404 = distinct !{!5404, !5391, !5405, !5379, !5380}
!5405 = !DILocation(line: 190, column: 2, scope: !5384)
!5406 = !DILocation(line: 191, column: 1, scope: !5316)
!5407 = !DILocation(line: 192, column: 9, scope: !5316)
!5408 = !DILocation(line: 192, column: 2, scope: !5316)
!5409 = !DILocation(line: 193, column: 1, scope: !5316)
!5410 = distinct !DISubprogram(name: "efi_enabled", scope: !279, file: !279, line: 880, type: !5411, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5413)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!742, !42}
!5413 = !{!5414}
!5414 = !DILocalVariable(name: "feature", arg: 1, scope: !5410, file: !279, line: 880, type: !42)
!5415 = !DILocation(line: 880, column: 36, scope: !5410)
!5416 = !DILocation(line: 882, column: 9, scope: !5410)
!5417 = !DILocation(line: 882, column: 39, scope: !5410)
!5418 = !DILocation(line: 882, column: 2, scope: !5410)
!5419 = distinct !DISubprogram(name: "kcalloc", scope: !259, file: !259, line: 666, type: !5420, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5422)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!40, !55, !55, !269}
!5422 = !{!5423, !5424, !5425}
!5423 = !DILocalVariable(name: "n", arg: 1, scope: !5419, file: !259, line: 666, type: !55)
!5424 = !DILocalVariable(name: "size", arg: 2, scope: !5419, file: !259, line: 666, type: !55)
!5425 = !DILocalVariable(name: "flags", arg: 3, scope: !5419, file: !259, line: 666, type: !269)
!5426 = !DILocation(line: 666, column: 55, scope: !5419)
!5427 = !DILocation(line: 666, column: 65, scope: !5419)
!5428 = !DILocation(line: 666, column: 77, scope: !5419)
!5429 = !DILocation(line: 668, column: 23, scope: !5419)
!5430 = !DILocation(line: 668, column: 26, scope: !5419)
!5431 = !DILocation(line: 668, column: 32, scope: !5419)
!5432 = !DILocation(line: 668, column: 38, scope: !5419)
!5433 = !DILocation(line: 668, column: 9, scope: !5419)
!5434 = !DILocation(line: 668, column: 2, scope: !5419)
!5435 = distinct !DISubprogram(name: "add_sysfs_runtime_map_entry", scope: !3, file: !3, line: 105, type: !5436, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5438)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!274, !300, !42, !5323}
!5438 = !{!5439, !5440, !5441, !5442, !5443}
!5439 = !DILocalVariable(name: "kobj", arg: 1, scope: !5435, file: !3, line: 105, type: !300)
!5440 = !DILocalVariable(name: "nr", arg: 2, scope: !5435, file: !3, line: 105, type: !42)
!5441 = !DILocalVariable(name: "md", arg: 3, scope: !5435, file: !3, line: 106, type: !5323)
!5442 = !DILocalVariable(name: "ret", scope: !5435, file: !3, line: 108, type: !42)
!5443 = !DILocalVariable(name: "entry", scope: !5435, file: !3, line: 109, type: !274)
!5444 = !DILocation(line: 105, column: 45, scope: !5435)
!5445 = !DILocation(line: 105, column: 55, scope: !5435)
!5446 = !DILocation(line: 106, column: 27, scope: !5435)
!5447 = !DILocation(line: 108, column: 2, scope: !5435)
!5448 = !DILocation(line: 108, column: 6, scope: !5435)
!5449 = !DILocation(line: 109, column: 2, scope: !5435)
!5450 = !DILocation(line: 109, column: 32, scope: !5435)
!5451 = !DILocation(line: 111, column: 7, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 111, column: 6)
!5453 = !DILocation(line: 111, column: 6, scope: !5435)
!5454 = !DILocation(line: 112, column: 55, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 111, column: 17)
!5456 = !DILocation(line: 112, column: 14, scope: !5455)
!5457 = !DILocation(line: 112, column: 12, scope: !5455)
!5458 = !DILocation(line: 113, column: 8, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 113, column: 7)
!5460 = !DILocation(line: 113, column: 7, scope: !5455)
!5461 = !DILocation(line: 114, column: 11, scope: !5459)
!5462 = !DILocation(line: 114, column: 4, scope: !5459)
!5463 = !DILocation(line: 115, column: 2, scope: !5455)
!5464 = !DILocation(line: 117, column: 10, scope: !5435)
!5465 = !DILocation(line: 117, column: 8, scope: !5435)
!5466 = !DILocation(line: 118, column: 7, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 118, column: 6)
!5468 = !DILocation(line: 118, column: 6, scope: !5435)
!5469 = !DILocation(line: 119, column: 19, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 118, column: 14)
!5471 = !DILocation(line: 119, column: 3, scope: !5470)
!5472 = !DILocation(line: 120, column: 12, scope: !5470)
!5473 = !DILocation(line: 121, column: 10, scope: !5470)
!5474 = !DILocation(line: 121, column: 3, scope: !5470)
!5475 = !DILocation(line: 124, column: 10, scope: !5435)
!5476 = !DILocation(line: 124, column: 17, scope: !5435)
!5477 = !DILocation(line: 124, column: 21, scope: !5435)
!5478 = !DILocation(line: 124, column: 2, scope: !5435)
!5479 = !DILocation(line: 126, column: 16, scope: !5435)
!5480 = !DILocation(line: 126, column: 23, scope: !5435)
!5481 = !DILocation(line: 126, column: 2, scope: !5435)
!5482 = !DILocation(line: 127, column: 21, scope: !5435)
!5483 = !DILocation(line: 127, column: 2, scope: !5435)
!5484 = !DILocation(line: 127, column: 9, scope: !5435)
!5485 = !DILocation(line: 127, column: 14, scope: !5435)
!5486 = !DILocation(line: 127, column: 19, scope: !5435)
!5487 = !DILocation(line: 128, column: 21, scope: !5435)
!5488 = !DILocation(line: 128, column: 28, scope: !5435)
!5489 = !DILocation(line: 128, column: 46, scope: !5435)
!5490 = !DILocation(line: 128, column: 8, scope: !5435)
!5491 = !DILocation(line: 128, column: 6, scope: !5435)
!5492 = !DILocation(line: 129, column: 6, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 129, column: 6)
!5494 = !DILocation(line: 129, column: 6, scope: !5435)
!5495 = !DILocation(line: 130, column: 16, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 129, column: 11)
!5497 = !DILocation(line: 130, column: 23, scope: !5496)
!5498 = !DILocation(line: 130, column: 3, scope: !5496)
!5499 = !DILocation(line: 131, column: 19, scope: !5496)
!5500 = !DILocation(line: 131, column: 3, scope: !5496)
!5501 = !DILocation(line: 132, column: 12, scope: !5496)
!5502 = !DILocation(line: 133, column: 18, scope: !5496)
!5503 = !DILocation(line: 133, column: 10, scope: !5496)
!5504 = !DILocation(line: 133, column: 3, scope: !5496)
!5505 = !DILocation(line: 136, column: 9, scope: !5435)
!5506 = !DILocation(line: 136, column: 2, scope: !5435)
!5507 = !DILocation(line: 137, column: 1, scope: !5435)
!5508 = distinct !DISubprogram(name: "IS_ERR", scope: !5509, file: !5509, line: 59, type: !5510, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5512)
!5509 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!742, !1914}
!5512 = !{!5513}
!5513 = !DILocalVariable(name: "ptr", arg: 1, scope: !5508, file: !5509, line: 59, type: !1914)
!5514 = !DILocation(line: 59, column: 60, scope: !5508)
!5515 = !DILocation(line: 61, column: 9, scope: !5508)
!5516 = !DILocation(line: 61, column: 2, scope: !5508)
!5517 = distinct !DISubprogram(name: "PTR_ERR", scope: !5509, file: !5509, line: 49, type: !5518, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5520)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{!370, !1914}
!5520 = !{!5521}
!5521 = !DILocalVariable(name: "ptr", arg: 1, scope: !5517, file: !5509, line: 49, type: !1914)
!5522 = !DILocation(line: 49, column: 61, scope: !5517)
!5523 = !DILocation(line: 51, column: 16, scope: !5517)
!5524 = !DILocation(line: 51, column: 9, scope: !5517)
!5525 = !DILocation(line: 51, column: 2, scope: !5517)
!5526 = !DISubprogram(name: "kobject_put", scope: !295, file: !295, line: 110, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5527 = distinct !DISubprogram(name: "const_test_bit", scope: !5528, file: !5528, line: 166, type: !5529, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5534)
!5528 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!742, !59, !5531}
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5533)
!5533 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!5534 = !{!5535, !5536, !5537, !5538, !5539}
!5535 = !DILocalVariable(name: "nr", arg: 1, scope: !5527, file: !5528, line: 166, type: !59)
!5536 = !DILocalVariable(name: "addr", arg: 2, scope: !5527, file: !5528, line: 166, type: !5531)
!5537 = !DILocalVariable(name: "p", scope: !5527, file: !5528, line: 168, type: !271)
!5538 = !DILocalVariable(name: "mask", scope: !5527, file: !5528, line: 169, type: !59)
!5539 = !DILocalVariable(name: "val", scope: !5527, file: !5528, line: 170, type: !59)
!5540 = !DILocation(line: 166, column: 30, scope: !5527)
!5541 = !DILocation(line: 166, column: 64, scope: !5527)
!5542 = !DILocation(line: 168, column: 2, scope: !5527)
!5543 = !DILocation(line: 168, column: 23, scope: !5527)
!5544 = !DILocation(line: 168, column: 50, scope: !5527)
!5545 = !DILocation(line: 168, column: 57, scope: !5527)
!5546 = !DILocation(line: 168, column: 55, scope: !5527)
!5547 = !DILocation(line: 169, column: 2, scope: !5527)
!5548 = !DILocation(line: 169, column: 16, scope: !5527)
!5549 = !DILocation(line: 169, column: 23, scope: !5527)
!5550 = !DILocation(line: 170, column: 2, scope: !5527)
!5551 = !DILocation(line: 170, column: 16, scope: !5527)
!5552 = !DILocation(line: 170, column: 23, scope: !5527)
!5553 = !DILocation(line: 170, column: 22, scope: !5527)
!5554 = !DILocation(line: 172, column: 12, scope: !5527)
!5555 = !DILocation(line: 172, column: 18, scope: !5527)
!5556 = !DILocation(line: 172, column: 16, scope: !5527)
!5557 = !DILocation(line: 172, column: 10, scope: !5527)
!5558 = !DILocation(line: 172, column: 9, scope: !5527)
!5559 = !DILocation(line: 173, column: 1, scope: !5527)
!5560 = !DILocation(line: 172, column: 2, scope: !5527)
!5561 = distinct !DISubprogram(name: "_test_bit", scope: !5562, file: !5562, line: 139, type: !5529, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5563)
!5562 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5563 = !{!5564, !5565}
!5564 = !DILocalVariable(name: "nr", arg: 1, scope: !5561, file: !5562, line: 139, type: !59)
!5565 = !DILocalVariable(name: "addr", arg: 2, scope: !5561, file: !5562, line: 139, type: !5531)
!5566 = !DILocation(line: 139, column: 25, scope: !5561)
!5567 = !DILocation(line: 139, column: 59, scope: !5561)
!5568 = !DILocation(line: 141, column: 25, scope: !5561)
!5569 = !DILocation(line: 141, column: 32, scope: !5561)
!5570 = !DILocation(line: 141, column: 30, scope: !5561)
!5571 = !DILocation(line: 141, column: 2, scope: !5561)
!5572 = !DILocation(line: 142, column: 23, scope: !5561)
!5573 = !DILocation(line: 142, column: 27, scope: !5561)
!5574 = !DILocation(line: 142, column: 9, scope: !5561)
!5575 = !DILocation(line: 142, column: 2, scope: !5561)
!5576 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5577, file: !5577, line: 66, type: !5578, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5583)
!5577 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5578 = !DISubroutineType(types: !5579)
!5579 = !{null, !5580, !55}
!5580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5581, size: 64)
!5581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5582)
!5582 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5583 = !{!5584, !5585}
!5584 = !DILocalVariable(name: "v", arg: 1, scope: !5576, file: !5577, line: 66, type: !5580)
!5585 = !DILocalVariable(name: "size", arg: 2, scope: !5576, file: !5577, line: 66, type: !55)
!5586 = !DILocation(line: 66, column: 73, scope: !5576)
!5587 = !DILocation(line: 66, column: 83, scope: !5576)
!5588 = !DILocation(line: 68, column: 19, scope: !5576)
!5589 = !DILocation(line: 68, column: 22, scope: !5576)
!5590 = !DILocation(line: 68, column: 2, scope: !5576)
!5591 = !DILocation(line: 69, column: 2, scope: !5576)
!5592 = !DILocation(line: 70, column: 1, scope: !5576)
!5593 = distinct !DISubprogram(name: "arch_test_bit", scope: !5594, file: !5594, line: 237, type: !5529, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5595)
!5594 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5595 = !{!5596, !5597}
!5596 = !DILocalVariable(name: "nr", arg: 1, scope: !5593, file: !5594, line: 237, type: !59)
!5597 = !DILocalVariable(name: "addr", arg: 2, scope: !5593, file: !5594, line: 237, type: !5531)
!5598 = !DILocation(line: 237, column: 29, scope: !5593)
!5599 = !DILocation(line: 237, column: 63, scope: !5593)
!5600 = !DILocation(line: 239, column: 30, scope: !5593)
!5601 = !DILocation(line: 239, column: 9, scope: !5593)
!5602 = !DILocation(line: 239, column: 54, scope: !5593)
!5603 = !DILocation(line: 239, column: 58, scope: !5593)
!5604 = !DILocation(line: 239, column: 36, scope: !5593)
!5605 = !DILocation(line: 240, column: 26, scope: !5593)
!5606 = !DILocation(line: 240, column: 30, scope: !5593)
!5607 = !DILocation(line: 240, column: 8, scope: !5593)
!5608 = !DILocation(line: 239, column: 2, scope: !5593)
!5609 = distinct !DISubprogram(name: "kasan_check_read", scope: !5610, file: !5610, line: 40, type: !5611, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5613)
!5610 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!742, !5580, !7}
!5613 = !{!5614, !5615}
!5614 = !DILocalVariable(name: "p", arg: 1, scope: !5609, file: !5610, line: 40, type: !5580)
!5615 = !DILocalVariable(name: "size", arg: 2, scope: !5609, file: !5610, line: 40, type: !7)
!5616 = !DILocation(line: 40, column: 58, scope: !5609)
!5617 = !DILocation(line: 40, column: 74, scope: !5609)
!5618 = !DILocation(line: 42, column: 2, scope: !5609)
!5619 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5620, file: !5620, line: 229, type: !5621, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5623)
!5620 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5621 = !DISubroutineType(types: !5622)
!5622 = !{null, !5580, !55, !42}
!5623 = !{!5624, !5625, !5626}
!5624 = !DILocalVariable(name: "ptr", arg: 1, scope: !5619, file: !5620, line: 229, type: !5580)
!5625 = !DILocalVariable(name: "size", arg: 2, scope: !5619, file: !5620, line: 229, type: !55)
!5626 = !DILocalVariable(name: "type", arg: 3, scope: !5619, file: !5620, line: 230, type: !42)
!5627 = !DILocation(line: 229, column: 60, scope: !5619)
!5628 = !DILocation(line: 229, column: 72, scope: !5619)
!5629 = !DILocation(line: 230, column: 15, scope: !5619)
!5630 = !DILocation(line: 230, column: 23, scope: !5619)
!5631 = distinct !DISubprogram(name: "constant_test_bit", scope: !5594, file: !5594, line: 204, type: !5632, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5634)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!742, !370, !5531}
!5634 = !{!5635, !5636}
!5635 = !DILocalVariable(name: "nr", arg: 1, scope: !5631, file: !5594, line: 204, type: !370)
!5636 = !DILocalVariable(name: "addr", arg: 2, scope: !5631, file: !5594, line: 204, type: !5531)
!5637 = !DILocation(line: 204, column: 52, scope: !5631)
!5638 = !DILocation(line: 204, column: 86, scope: !5631)
!5639 = !DILocation(line: 206, column: 19, scope: !5631)
!5640 = !DILocation(line: 206, column: 22, scope: !5631)
!5641 = !DILocation(line: 206, column: 15, scope: !5631)
!5642 = !DILocation(line: 207, column: 4, scope: !5631)
!5643 = !DILocation(line: 207, column: 9, scope: !5631)
!5644 = !DILocation(line: 207, column: 12, scope: !5631)
!5645 = !DILocation(line: 206, column: 44, scope: !5631)
!5646 = !DILocation(line: 207, column: 37, scope: !5631)
!5647 = !DILocation(line: 206, column: 2, scope: !5631)
!5648 = distinct !DISubprogram(name: "variable_test_bit", scope: !5594, file: !5594, line: 224, type: !5632, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5649 = !{!5650, !5651, !5652}
!5650 = !DILocalVariable(name: "nr", arg: 1, scope: !5648, file: !5594, line: 224, type: !370)
!5651 = !DILocalVariable(name: "addr", arg: 2, scope: !5648, file: !5594, line: 224, type: !5531)
!5652 = !DILocalVariable(name: "oldbit", scope: !5648, file: !5594, line: 226, type: !742)
!5653 = !DILocation(line: 224, column: 52, scope: !5648)
!5654 = !DILocation(line: 224, column: 86, scope: !5648)
!5655 = !DILocation(line: 226, column: 2, scope: !5648)
!5656 = !DILocation(line: 226, column: 7, scope: !5648)
!5657 = !DILocation(line: 231, column: 33, scope: !5648)
!5658 = !DILocation(line: 231, column: 46, scope: !5648)
!5659 = !DILocation(line: 228, column: 2, scope: !5648)
!5660 = !{i64 2147867137, i64 2147867211}
!5661 = !DILocation(line: 233, column: 9, scope: !5648)
!5662 = !{i8 0, i8 2}
!5663 = !DILocation(line: 234, column: 1, scope: !5648)
!5664 = !DILocation(line: 233, column: 2, scope: !5648)
!5665 = distinct !DISubprogram(name: "kmalloc_array", scope: !259, file: !259, line: 629, type: !5420, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5666)
!5666 = !{!5667, !5668, !5669, !5670}
!5667 = !DILocalVariable(name: "n", arg: 1, scope: !5665, file: !259, line: 629, type: !55)
!5668 = !DILocalVariable(name: "size", arg: 2, scope: !5665, file: !259, line: 629, type: !55)
!5669 = !DILocalVariable(name: "flags", arg: 3, scope: !5665, file: !259, line: 629, type: !269)
!5670 = !DILocalVariable(name: "bytes", scope: !5665, file: !259, line: 631, type: !55)
!5671 = !DILocation(line: 629, column: 61, scope: !5665)
!5672 = !DILocation(line: 629, column: 71, scope: !5665)
!5673 = !DILocation(line: 629, column: 83, scope: !5665)
!5674 = !DILocation(line: 631, column: 2, scope: !5665)
!5675 = !DILocation(line: 631, column: 9, scope: !5665)
!5676 = !DILocation(line: 633, column: 6, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5665, file: !259, line: 633, column: 6)
!5678 = !DILocation(line: 633, column: 6, scope: !5665)
!5679 = !DILocation(line: 634, column: 3, scope: !5677)
!5680 = !DILocation(line: 635, column: 27, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5665, file: !259, line: 635, column: 6)
!5682 = !DILocation(line: 635, column: 6, scope: !5681)
!5683 = !DILocation(line: 635, column: 30, scope: !5681)
!5684 = !DILocation(line: 635, column: 54, scope: !5681)
!5685 = !DILocation(line: 635, column: 33, scope: !5681)
!5686 = !DILocation(line: 635, column: 6, scope: !5665)
!5687 = !DILocation(line: 636, column: 18, scope: !5681)
!5688 = !DILocation(line: 636, column: 25, scope: !5681)
!5689 = !DILocation(line: 636, column: 10, scope: !5681)
!5690 = !DILocation(line: 636, column: 3, scope: !5681)
!5691 = !DILocation(line: 637, column: 19, scope: !5665)
!5692 = !DILocation(line: 637, column: 26, scope: !5665)
!5693 = !DILocation(line: 637, column: 9, scope: !5665)
!5694 = !DILocation(line: 637, column: 2, scope: !5665)
!5695 = !DILocation(line: 638, column: 1, scope: !5665)
!5696 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5697, file: !5697, line: 51, type: !5698, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5700)
!5697 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!742, !742}
!5700 = !{!5701}
!5701 = !DILocalVariable(name: "overflow", arg: 1, scope: !5696, file: !5697, line: 51, type: !742)
!5702 = !DILocation(line: 51, column: 60, scope: !5696)
!5703 = !DILocation(line: 53, column: 9, scope: !5696)
!5704 = !DILocation(line: 53, column: 2, scope: !5696)
!5705 = distinct !DISubprogram(name: "kmalloc", scope: !259, file: !259, line: 591, type: !5706, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5708)
!5706 = !DISubroutineType(types: !5707)
!5707 = !{!40, !55, !269}
!5708 = !{!5709, !5710, !5711}
!5709 = !DILocalVariable(name: "size", arg: 1, scope: !5705, file: !259, line: 591, type: !55)
!5710 = !DILocalVariable(name: "flags", arg: 2, scope: !5705, file: !259, line: 591, type: !269)
!5711 = !DILocalVariable(name: "index", scope: !5712, file: !259, line: 594, type: !7)
!5712 = distinct !DILexicalBlock(scope: !5713, file: !259, line: 593, column: 42)
!5713 = distinct !DILexicalBlock(scope: !5705, file: !259, line: 593, column: 6)
!5714 = !DILocation(line: 591, column: 61, scope: !5705)
!5715 = !DILocation(line: 591, column: 73, scope: !5705)
!5716 = !DILocation(line: 593, column: 27, scope: !5713)
!5717 = !DILocation(line: 593, column: 6, scope: !5713)
!5718 = !DILocation(line: 593, column: 33, scope: !5713)
!5719 = !DILocation(line: 593, column: 36, scope: !5713)
!5720 = !DILocation(line: 593, column: 6, scope: !5705)
!5721 = !DILocation(line: 594, column: 3, scope: !5712)
!5722 = !DILocation(line: 594, column: 16, scope: !5712)
!5723 = !DILocation(line: 596, column: 7, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5712, file: !259, line: 596, column: 7)
!5725 = !DILocation(line: 596, column: 12, scope: !5724)
!5726 = !DILocation(line: 596, column: 7, scope: !5712)
!5727 = !DILocation(line: 597, column: 25, scope: !5724)
!5728 = !DILocation(line: 597, column: 31, scope: !5724)
!5729 = !DILocation(line: 597, column: 11, scope: !5724)
!5730 = !DILocation(line: 597, column: 4, scope: !5724)
!5731 = !DILocation(line: 599, column: 11, scope: !5712)
!5732 = !DILocation(line: 599, column: 9, scope: !5712)
!5733 = !DILocation(line: 601, column: 33, scope: !5712)
!5734 = !DILocation(line: 601, column: 40, scope: !5712)
!5735 = !DILocation(line: 601, column: 20, scope: !5712)
!5736 = !DILocation(line: 601, column: 5, scope: !5712)
!5737 = !DILocation(line: 601, column: 51, scope: !5712)
!5738 = !DILocation(line: 602, column: 5, scope: !5712)
!5739 = !DILocation(line: 602, column: 12, scope: !5712)
!5740 = !DILocation(line: 600, column: 10, scope: !5712)
!5741 = !DILocation(line: 600, column: 3, scope: !5712)
!5742 = !DILocation(line: 603, column: 2, scope: !5713)
!5743 = !DILocation(line: 604, column: 19, scope: !5705)
!5744 = !DILocation(line: 604, column: 25, scope: !5705)
!5745 = !DILocation(line: 604, column: 9, scope: !5705)
!5746 = !DILocation(line: 604, column: 2, scope: !5705)
!5747 = !DILocation(line: 605, column: 1, scope: !5705)
!5748 = !DISubprogram(name: "__kmalloc", scope: !259, file: !259, line: 488, type: !5706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5749 = !DISubprogram(name: "kmalloc_large", scope: !259, file: !259, line: 531, type: !5706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5750 = distinct !DISubprogram(name: "__kmalloc_index", scope: !259, file: !259, line: 444, type: !5751, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5753)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{!7, !55, !742}
!5753 = !{!5754, !5755}
!5754 = !DILocalVariable(name: "size", arg: 1, scope: !5750, file: !259, line: 444, type: !55)
!5755 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5750, file: !259, line: 445, type: !742)
!5756 = !DILocation(line: 444, column: 60, scope: !5750)
!5757 = !DILocation(line: 445, column: 16, scope: !5750)
!5758 = !DILocation(line: 447, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 447, column: 6)
!5760 = !DILocation(line: 447, column: 6, scope: !5750)
!5761 = !DILocation(line: 448, column: 3, scope: !5759)
!5762 = !DILocation(line: 450, column: 6, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 450, column: 6)
!5764 = !DILocation(line: 450, column: 11, scope: !5763)
!5765 = !DILocation(line: 450, column: 6, scope: !5750)
!5766 = !DILocation(line: 451, column: 3, scope: !5763)
!5767 = !DILocation(line: 453, column: 32, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 453, column: 6)
!5769 = !DILocation(line: 453, column: 37, scope: !5768)
!5770 = !DILocation(line: 453, column: 42, scope: !5768)
!5771 = !DILocation(line: 453, column: 45, scope: !5768)
!5772 = !DILocation(line: 453, column: 50, scope: !5768)
!5773 = !DILocation(line: 453, column: 6, scope: !5750)
!5774 = !DILocation(line: 454, column: 3, scope: !5768)
!5775 = !DILocation(line: 455, column: 32, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 455, column: 6)
!5777 = !DILocation(line: 455, column: 37, scope: !5776)
!5778 = !DILocation(line: 455, column: 43, scope: !5776)
!5779 = !DILocation(line: 455, column: 46, scope: !5776)
!5780 = !DILocation(line: 455, column: 51, scope: !5776)
!5781 = !DILocation(line: 455, column: 6, scope: !5750)
!5782 = !DILocation(line: 456, column: 3, scope: !5776)
!5783 = !DILocation(line: 457, column: 6, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 457, column: 6)
!5785 = !DILocation(line: 457, column: 11, scope: !5784)
!5786 = !DILocation(line: 457, column: 6, scope: !5750)
!5787 = !DILocation(line: 457, column: 26, scope: !5784)
!5788 = !DILocation(line: 458, column: 6, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 458, column: 6)
!5790 = !DILocation(line: 458, column: 11, scope: !5789)
!5791 = !DILocation(line: 458, column: 6, scope: !5750)
!5792 = !DILocation(line: 458, column: 26, scope: !5789)
!5793 = !DILocation(line: 459, column: 6, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 459, column: 6)
!5795 = !DILocation(line: 459, column: 11, scope: !5794)
!5796 = !DILocation(line: 459, column: 6, scope: !5750)
!5797 = !DILocation(line: 459, column: 26, scope: !5794)
!5798 = !DILocation(line: 460, column: 6, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 460, column: 6)
!5800 = !DILocation(line: 460, column: 11, scope: !5799)
!5801 = !DILocation(line: 460, column: 6, scope: !5750)
!5802 = !DILocation(line: 460, column: 26, scope: !5799)
!5803 = !DILocation(line: 461, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 461, column: 6)
!5805 = !DILocation(line: 461, column: 11, scope: !5804)
!5806 = !DILocation(line: 461, column: 6, scope: !5750)
!5807 = !DILocation(line: 461, column: 26, scope: !5804)
!5808 = !DILocation(line: 462, column: 6, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 462, column: 6)
!5810 = !DILocation(line: 462, column: 11, scope: !5809)
!5811 = !DILocation(line: 462, column: 6, scope: !5750)
!5812 = !DILocation(line: 462, column: 26, scope: !5809)
!5813 = !DILocation(line: 463, column: 6, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 463, column: 6)
!5815 = !DILocation(line: 463, column: 11, scope: !5814)
!5816 = !DILocation(line: 463, column: 6, scope: !5750)
!5817 = !DILocation(line: 463, column: 26, scope: !5814)
!5818 = !DILocation(line: 464, column: 6, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 464, column: 6)
!5820 = !DILocation(line: 464, column: 11, scope: !5819)
!5821 = !DILocation(line: 464, column: 6, scope: !5750)
!5822 = !DILocation(line: 464, column: 26, scope: !5819)
!5823 = !DILocation(line: 465, column: 6, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 465, column: 6)
!5825 = !DILocation(line: 465, column: 11, scope: !5824)
!5826 = !DILocation(line: 465, column: 6, scope: !5750)
!5827 = !DILocation(line: 465, column: 26, scope: !5824)
!5828 = !DILocation(line: 466, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 466, column: 6)
!5830 = !DILocation(line: 466, column: 11, scope: !5829)
!5831 = !DILocation(line: 466, column: 6, scope: !5750)
!5832 = !DILocation(line: 466, column: 26, scope: !5829)
!5833 = !DILocation(line: 467, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 467, column: 6)
!5835 = !DILocation(line: 467, column: 11, scope: !5834)
!5836 = !DILocation(line: 467, column: 6, scope: !5750)
!5837 = !DILocation(line: 467, column: 26, scope: !5834)
!5838 = !DILocation(line: 468, column: 6, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 468, column: 6)
!5840 = !DILocation(line: 468, column: 11, scope: !5839)
!5841 = !DILocation(line: 468, column: 6, scope: !5750)
!5842 = !DILocation(line: 468, column: 26, scope: !5839)
!5843 = !DILocation(line: 469, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 469, column: 6)
!5845 = !DILocation(line: 469, column: 11, scope: !5844)
!5846 = !DILocation(line: 469, column: 6, scope: !5750)
!5847 = !DILocation(line: 469, column: 26, scope: !5844)
!5848 = !DILocation(line: 470, column: 6, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 470, column: 6)
!5850 = !DILocation(line: 470, column: 11, scope: !5849)
!5851 = !DILocation(line: 470, column: 6, scope: !5750)
!5852 = !DILocation(line: 470, column: 26, scope: !5849)
!5853 = !DILocation(line: 471, column: 6, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 471, column: 6)
!5855 = !DILocation(line: 471, column: 11, scope: !5854)
!5856 = !DILocation(line: 471, column: 6, scope: !5750)
!5857 = !DILocation(line: 471, column: 26, scope: !5854)
!5858 = !DILocation(line: 472, column: 6, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 472, column: 6)
!5860 = !DILocation(line: 472, column: 11, scope: !5859)
!5861 = !DILocation(line: 472, column: 6, scope: !5750)
!5862 = !DILocation(line: 472, column: 26, scope: !5859)
!5863 = !DILocation(line: 473, column: 6, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 473, column: 6)
!5865 = !DILocation(line: 473, column: 11, scope: !5864)
!5866 = !DILocation(line: 473, column: 6, scope: !5750)
!5867 = !DILocation(line: 473, column: 26, scope: !5864)
!5868 = !DILocation(line: 474, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 474, column: 6)
!5870 = !DILocation(line: 474, column: 11, scope: !5869)
!5871 = !DILocation(line: 474, column: 6, scope: !5750)
!5872 = !DILocation(line: 474, column: 27, scope: !5869)
!5873 = !DILocation(line: 475, column: 6, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 475, column: 6)
!5875 = !DILocation(line: 475, column: 11, scope: !5874)
!5876 = !DILocation(line: 475, column: 6, scope: !5750)
!5877 = !DILocation(line: 475, column: 32, scope: !5874)
!5878 = !DILocation(line: 477, column: 50, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5750, file: !259, line: 477, column: 6)
!5880 = !DILocation(line: 477, column: 6, scope: !5750)
!5881 = !DILocation(line: 478, column: 3, scope: !5879)
!5882 = !DILocation(line: 478, column: 3, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5884, file: !259, line: 478, column: 3)
!5884 = distinct !DILexicalBlock(scope: !5879, file: !259, line: 478, column: 3)
!5885 = !{i32 -2141423384}
!5886 = !DILocation(line: 478, column: 3, scope: !5884)
!5887 = !DILocation(line: 480, column: 3, scope: !5879)
!5888 = !DILocation(line: 480, column: 3, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5879, file: !259, line: 480, column: 3)
!5890 = !DILocation(line: 480, column: 3, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5889, file: !259, line: 480, column: 3)
!5892 = !DILocation(line: 480, column: 3, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5889, file: !259, line: 480, column: 3)
!5894 = !{i64 2153544115, i64 2153544144, i64 2153544190, i64 2153544248, i64 2153544302, i64 2153544356, i64 2153544411, i64 2153544442}
!5895 = !DILocation(line: 483, column: 2, scope: !5750)
!5896 = !DILocation(line: 484, column: 1, scope: !5750)
!5897 = !DISubprogram(name: "kmalloc_trace", scope: !259, file: !259, line: 525, type: !5898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!40, !5900, !269, !55}
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5902, line: 325, flags: DIFlagFwdDecl)
!5902 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5903 = distinct !DISubprogram(name: "kmalloc_type", scope: !259, file: !259, line: 401, type: !5904, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5906)
!5904 = !DISubroutineType(types: !5905)
!5905 = !{!258, !269, !59}
!5906 = !{!5907, !5908}
!5907 = !DILocalVariable(name: "flags", arg: 1, scope: !5903, file: !259, line: 401, type: !269)
!5908 = !DILocalVariable(name: "caller", arg: 2, scope: !5903, file: !259, line: 401, type: !59)
!5909 = !DILocation(line: 401, column: 67, scope: !5903)
!5910 = !DILocation(line: 401, column: 88, scope: !5903)
!5911 = !DILocation(line: 407, column: 6, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5903, file: !259, line: 407, column: 6)
!5913 = !DILocation(line: 407, column: 6, scope: !5903)
!5914 = !DILocation(line: 413, column: 3, scope: !5912)
!5915 = !DILocation(line: 423, column: 38, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5903, file: !259, line: 423, column: 6)
!5917 = !DILocation(line: 423, column: 44, scope: !5916)
!5918 = !DILocation(line: 423, column: 6, scope: !5903)
!5919 = !DILocation(line: 424, column: 3, scope: !5916)
!5920 = !DILocation(line: 426, column: 3, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5903, file: !259, line: 425, column: 6)
!5922 = !DILocation(line: 429, column: 1, scope: !5903)
!5923 = !DISubprogram(name: "__compiletime_assert_255", scope: !259, file: !259, line: 478, type: !1031, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5924 = !DISubprogram(name: "kset_create_and_add", scope: !295, file: !295, line: 178, type: !5925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5925 = !DISubroutineType(types: !5926)
!5926 = !{!302, !36, !309, !300}
!5927 = distinct !DISubprogram(name: "ERR_PTR", scope: !5509, file: !5509, line: 39, type: !5928, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5930)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{!40, !370}
!5930 = !{!5931}
!5931 = !DILocalVariable(name: "error", arg: 1, scope: !5927, file: !5509, line: 39, type: !370)
!5932 = !DILocation(line: 39, column: 48, scope: !5927)
!5933 = !DILocation(line: 41, column: 18, scope: !5927)
!5934 = !DILocation(line: 41, column: 9, scope: !5927)
!5935 = !DILocation(line: 41, column: 2, scope: !5927)
!5936 = distinct !DISubprogram(name: "kzalloc", scope: !259, file: !259, line: 719, type: !5706, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5937)
!5937 = !{!5938, !5939}
!5938 = !DILocalVariable(name: "size", arg: 1, scope: !5936, file: !259, line: 719, type: !55)
!5939 = !DILocalVariable(name: "flags", arg: 2, scope: !5936, file: !259, line: 719, type: !269)
!5940 = !DILocation(line: 719, column: 52, scope: !5936)
!5941 = !DILocation(line: 719, column: 64, scope: !5936)
!5942 = !DILocation(line: 721, column: 17, scope: !5936)
!5943 = !DILocation(line: 721, column: 23, scope: !5936)
!5944 = !DILocation(line: 721, column: 29, scope: !5936)
!5945 = !DILocation(line: 721, column: 9, scope: !5936)
!5946 = !DILocation(line: 721, column: 2, scope: !5936)
!5947 = !DISubprogram(name: "kset_unregister", scope: !295, file: !295, line: 177, type: !5948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5948 = !DISubroutineType(types: !5949)
!5949 = !{null, !302}
!5950 = !DISubprogram(name: "kobject_init", scope: !295, file: !295, line: 92, type: !5951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{null, !300, !349}
!5953 = !DISubprogram(name: "kobject_add", scope: !295, file: !295, line: 93, type: !5954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5954 = !DISubroutineType(types: !5955)
!5955 = !{!42, !300, !300, !36, null}
!5956 = distinct !DISubprogram(name: "map_release", scope: !3, file: !3, line: 88, type: !355, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5957)
!5957 = !{!5958, !5959}
!5958 = !DILocalVariable(name: "kobj", arg: 1, scope: !5956, file: !3, line: 88, type: !300)
!5959 = !DILocalVariable(name: "entry", scope: !5956, file: !3, line: 90, type: !274)
!5960 = !DILocation(line: 88, column: 41, scope: !5956)
!5961 = !DILocation(line: 90, column: 2, scope: !5956)
!5962 = !DILocation(line: 90, column: 32, scope: !5956)
!5963 = !DILocation(line: 92, column: 23, scope: !5956)
!5964 = !DILocation(line: 92, column: 10, scope: !5956)
!5965 = !DILocation(line: 92, column: 8, scope: !5956)
!5966 = !DILocation(line: 93, column: 8, scope: !5956)
!5967 = !DILocation(line: 93, column: 2, scope: !5956)
!5968 = !DILocation(line: 94, column: 1, scope: !5956)
!5969 = distinct !DISubprogram(name: "to_map_entry", scope: !3, file: !3, line: 51, type: !5970, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5972)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{!274, !300}
!5972 = !{!5973, !5974}
!5973 = !DILocalVariable(name: "kobj", arg: 1, scope: !5969, file: !3, line: 51, type: !300)
!5974 = !DILocalVariable(name: "__mptr", scope: !5975, file: !3, line: 53, type: !40)
!5975 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 53, column: 9)
!5976 = !DILocation(line: 51, column: 74, scope: !5969)
!5977 = !DILocation(line: 53, column: 9, scope: !5975)
!5978 = !DILocation(line: 53, column: 9, scope: !5969)
!5979 = !DILocation(line: 53, column: 2, scope: !5969)
!5980 = !DISubprogram(name: "kfree", scope: !259, file: !259, line: 227, type: !5981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{null, !1914}
!5983 = distinct !DISubprogram(name: "map_attr_show", scope: !3, file: !3, line: 56, type: !365, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5984)
!5984 = !{!5985, !5986, !5987, !5988, !5989}
!5985 = !DILocalVariable(name: "kobj", arg: 1, scope: !5983, file: !3, line: 56, type: !300)
!5986 = !DILocalVariable(name: "attr", arg: 2, scope: !5983, file: !3, line: 56, type: !371)
!5987 = !DILocalVariable(name: "buf", arg: 3, scope: !5983, file: !3, line: 57, type: !335)
!5988 = !DILocalVariable(name: "entry", scope: !5983, file: !3, line: 59, type: !274)
!5989 = !DILocalVariable(name: "map_attr", scope: !5983, file: !3, line: 60, type: !5206)
!5990 = !DILocation(line: 56, column: 46, scope: !5983)
!5991 = !DILocation(line: 56, column: 70, scope: !5983)
!5992 = !DILocation(line: 57, column: 16, scope: !5983)
!5993 = !DILocation(line: 59, column: 2, scope: !5983)
!5994 = !DILocation(line: 59, column: 32, scope: !5983)
!5995 = !DILocation(line: 59, column: 53, scope: !5983)
!5996 = !DILocation(line: 59, column: 40, scope: !5983)
!5997 = !DILocation(line: 60, column: 2, scope: !5983)
!5998 = !DILocation(line: 60, column: 24, scope: !5983)
!5999 = !DILocation(line: 60, column: 47, scope: !5983)
!6000 = !DILocation(line: 60, column: 35, scope: !5983)
!6001 = !DILocation(line: 62, column: 9, scope: !5983)
!6002 = !DILocation(line: 62, column: 19, scope: !5983)
!6003 = !DILocation(line: 62, column: 24, scope: !5983)
!6004 = !DILocation(line: 62, column: 31, scope: !5983)
!6005 = !DILocation(line: 63, column: 1, scope: !5983)
!6006 = !DILocation(line: 62, column: 2, scope: !5983)
!6007 = distinct !DISubprogram(name: "to_map_attr", scope: !3, file: !3, line: 28, type: !6008, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6010)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{!5206, !371}
!6010 = !{!6011, !6012}
!6011 = !DILocalVariable(name: "attr", arg: 1, scope: !6007, file: !3, line: 28, type: !371)
!6012 = !DILocalVariable(name: "__mptr", scope: !6013, file: !3, line: 30, type: !40)
!6013 = distinct !DILexicalBlock(scope: !6007, file: !3, line: 30, column: 9)
!6014 = !DILocation(line: 28, column: 67, scope: !6007)
!6015 = !DILocation(line: 30, column: 9, scope: !6013)
!6016 = !DILocation(line: 30, column: 9, scope: !6007)
!6017 = !DILocation(line: 30, column: 2, scope: !6007)
!6018 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 33, type: !5212, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6019)
!6019 = !{!6020, !6021}
!6020 = !DILocalVariable(name: "entry", arg: 1, scope: !6018, file: !3, line: 33, type: !274)
!6021 = !DILocalVariable(name: "buf", arg: 2, scope: !6018, file: !3, line: 33, type: !335)
!6022 = !DILocation(line: 33, column: 56, scope: !6018)
!6023 = !DILocation(line: 33, column: 69, scope: !6018)
!6024 = !DILocation(line: 35, column: 18, scope: !6018)
!6025 = !DILocation(line: 35, column: 44, scope: !6018)
!6026 = !DILocation(line: 35, column: 51, scope: !6018)
!6027 = !DILocation(line: 35, column: 54, scope: !6018)
!6028 = !DILocation(line: 35, column: 9, scope: !6018)
!6029 = !DILocation(line: 35, column: 2, scope: !6018)
!6030 = !DISubprogram(name: "snprintf", scope: !6031, file: !6031, line: 12, type: !6032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6031 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6032 = !DISubroutineType(types: !6033)
!6033 = !{!42, !335, !55, !36, null}
!6034 = distinct !DISubprogram(name: "phys_addr_show", scope: !3, file: !3, line: 46, type: !5212, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6035)
!6035 = !{!6036, !6037}
!6036 = !DILocalVariable(name: "entry", arg: 1, scope: !6034, file: !3, line: 46, type: !274)
!6037 = !DILocalVariable(name: "buf", arg: 2, scope: !6034, file: !3, line: 46, type: !335)
!6038 = !DILocation(line: 46, column: 1, scope: !6034)
!6039 = distinct !DISubprogram(name: "virt_addr_show", scope: !3, file: !3, line: 47, type: !5212, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6040)
!6040 = !{!6041, !6042}
!6041 = !DILocalVariable(name: "entry", arg: 1, scope: !6039, file: !3, line: 47, type: !274)
!6042 = !DILocalVariable(name: "buf", arg: 2, scope: !6039, file: !3, line: 47, type: !335)
!6043 = !DILocation(line: 47, column: 1, scope: !6039)
!6044 = distinct !DISubprogram(name: "num_pages_show", scope: !3, file: !3, line: 48, type: !5212, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6045)
!6045 = !{!6046, !6047}
!6046 = !DILocalVariable(name: "entry", arg: 1, scope: !6044, file: !3, line: 48, type: !274)
!6047 = !DILocalVariable(name: "buf", arg: 2, scope: !6044, file: !3, line: 48, type: !335)
!6048 = !DILocation(line: 48, column: 1, scope: !6044)
!6049 = distinct !DISubprogram(name: "attribute_show", scope: !3, file: !3, line: 49, type: !5212, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6050)
!6050 = !{!6051, !6052}
!6051 = !DILocalVariable(name: "entry", arg: 1, scope: !6049, file: !3, line: 49, type: !274)
!6052 = !DILocalVariable(name: "buf", arg: 2, scope: !6049, file: !3, line: 49, type: !335)
!6053 = !DILocation(line: 49, column: 1, scope: !6049)
