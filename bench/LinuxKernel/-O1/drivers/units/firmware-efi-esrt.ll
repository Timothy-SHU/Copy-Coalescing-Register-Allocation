; ModuleID = 'drivers/firmware/efi/esrt.c'
source_filename = "drivers/firmware/efi/esrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_esrt__287_425_esrt_sysfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_esrt__287_425_esrt_sysfs_init6:\09\09\09"
module asm ".long\09__initstub__kmod_esrt__287_425_esrt_sysfs_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.esre_attribute = type { %struct.attribute, ptr, ptr }
%struct.efi_system_resource_table = type { i32, i32, i64, [0 x i8] }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.efi_system_resource_entry_v1 = type { %struct.guid_t, i32, i32, i32, i32, i32, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.esre_entry = type { %union.anon.13, %struct.kobject, %struct.list_head }
%union.anon.13 = type { ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@efi = external dso_local global %struct.efi, align 8
@.str = private unnamed_addr constant [47 x i8] c"\014esrt: ESRT header is not in the memory map.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [82 x i8] c"\013esrt: ESRT header doesn't fit on single memory map entry. (size: %zu max: %zu)\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [41 x i8] c"\013esrt: early_memremap(%p, %zu) failed.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [40 x i8] c"\013esrt: Unsupported ESRT version %lld.\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [78 x i8] c"\013esrt: ESRT memory map entry can only hold the header. (max: %zu size: %zu)\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"\013esrt: ESRT says fw_resource_count has very large value %d.\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [75 x i8] c"\013esrt: ESRT does not fit on single memory map entry (size: %zu max: %zu)\0A\00", align 1, !dbg !32
@esrt_data = internal global i64 0, align 8, !dbg !37
@esrt_data_size = internal global i64 0, align 8, !dbg !4186
@.str.7 = private unnamed_addr constant [47 x i8] c"\016esrt: Reserving ESRT space from %pa to %pa.\0A\00", align 1, !dbg !4182
@__UNIQUE_ID___addressable___initstub__kmod_esrt__287_425_esrt_sysfs_init6288 = internal global ptr @__initstub__kmod_esrt__287_425_esrt_sysfs_init6, section ".discard.addressable", align 8, !dbg !4184
@esrt = internal global ptr null, align 8, !dbg !4215
@.str.8 = private unnamed_addr constant [36 x i8] c"\013esrt: memremap(%pa, %zu) failed.\0A\00", align 1, !dbg !4188
@.str.9 = private unnamed_addr constant [5 x i8] c"esrt\00", align 1, !dbg !4193
@efi_kobj = external dso_local global ptr, align 8
@esrt_kobj = internal global ptr null, align 8, !dbg !4224
@.str.10 = private unnamed_addr constant [45 x i8] c"\013esrt: Firmware table registration failed.\0A\00", align 1, !dbg !4198
@esrt_attr_group = internal constant %struct.attribute_group { ptr null, ptr @esrt_attr_is_visible, ptr null, ptr @esrt_attrs, ptr null }, align 8, !dbg !4226
@.str.11 = private unnamed_addr constant [54 x i8] c"\013esrt: Sysfs attribute export failed with error %d.\0A\00", align 1, !dbg !4203
@.str.12 = private unnamed_addr constant [8 x i8] c"entries\00", align 1, !dbg !4208
@esrt_kset = internal global ptr null, align 8, !dbg !4267
@.str.13 = private unnamed_addr constant [31 x i8] c"\013esrt: kset creation failed.\0A\00", align 1, !dbg !4210
@esrt_attrs = internal global [4 x ptr] [ptr @esrt_fw_resource_count, ptr @esrt_fw_resource_count_max, ptr @esrt_fw_resource_version, ptr null], align 16, !dbg !4228
@esrt_fw_resource_count = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.14, i16 256 }, ptr @fw_resource_count_show, ptr null }, align 8, !dbg !4236
@esrt_fw_resource_count_max = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.16, i16 256 }, ptr @fw_resource_count_max_show, ptr null }, align 8, !dbg !4258
@esrt_fw_resource_version = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.17, i16 256 }, ptr @fw_resource_version_show, ptr null }, align 8, !dbg !4263
@.str.14 = private unnamed_addr constant [18 x i8] c"fw_resource_count\00", align 1, !dbg !4231
@.str.15 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !4250
@.str.16 = private unnamed_addr constant [22 x i8] c"fw_resource_count_max\00", align 1, !dbg !4253
@.str.17 = private unnamed_addr constant [20 x i8] c"fw_resource_version\00", align 1, !dbg !4260
@.str.18 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1, !dbg !4265
@.str.19 = private unnamed_addr constant [51 x i8] c"\013esrt: ESRT entry creation failed with error %d.\0A\00", align 1, !dbg !4269
@esre1_ktype = internal constant %struct.kobj_type { ptr @esre_release, ptr @esre_attr_ops, ptr @esre1_groups, ptr null, ptr null, ptr null }, align 8, !dbg !4281
@.str.20 = private unnamed_addr constant [8 x i8] c"entry%d\00", align 1, !dbg !4274
@entry_list = internal global %struct.list_head { ptr @entry_list, ptr @entry_list }, align 8, !dbg !4340
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.21 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4276
@esre_attr_ops = internal constant %struct.sysfs_ops { ptr @esre_attr_show, ptr null }, align 8, !dbg !4283
@esre1_groups = internal global [2 x ptr] [ptr @esre1_group, ptr null], align 16, !dbg !4285
@esre1_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @esre1_attrs, ptr null }, align 8, !dbg !4288
@esre1_attrs = internal global [8 x ptr] [ptr @esre_fw_class, ptr @esre_fw_type, ptr @esre_fw_version, ptr @esre_lowest_supported_fw_version, ptr @esre_capsule_flags, ptr @esre_last_attempt_version, ptr @esre_last_attempt_status, ptr null], align 16, !dbg !4290
@esre_fw_class = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.22, i16 256 }, ptr @fw_class_show, ptr null }, align 8, !dbg !4298
@esre_fw_type = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.25, i16 256 }, ptr @fw_type_show, ptr null }, align 8, !dbg !4307
@esre_fw_version = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.26, i16 256 }, ptr @fw_version_show, ptr null }, align 8, !dbg !4314
@esre_lowest_supported_fw_version = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.27, i16 256 }, ptr @lowest_supported_fw_version_show, ptr null }, align 8, !dbg !4321
@esre_capsule_flags = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.28, i16 256 }, ptr @capsule_flags_show, ptr null }, align 8, !dbg !4328
@esre_last_attempt_version = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.30, i16 256 }, ptr @last_attempt_version_show, ptr null }, align 8, !dbg !4334
@esre_last_attempt_status = internal global %struct.esre_attribute { %struct.attribute { ptr @.str.31, i16 256 }, ptr @last_attempt_status_show, ptr null }, align 8, !dbg !4338
@.str.22 = private unnamed_addr constant [9 x i8] c"fw_class\00", align 1, !dbg !4293
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !4300
@.str.24 = private unnamed_addr constant [5 x i8] c"%pUl\00", align 1, !dbg !4303
@.str.25 = private unnamed_addr constant [8 x i8] c"fw_type\00", align 1, !dbg !4305
@.str.26 = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1, !dbg !4309
@.str.27 = private unnamed_addr constant [28 x i8] c"lowest_supported_fw_version\00", align 1, !dbg !4316
@.str.28 = private unnamed_addr constant [14 x i8] c"capsule_flags\00", align 1, !dbg !4323
@.str.29 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1, !dbg !4330
@.str.30 = private unnamed_addr constant [21 x i8] c"last_attempt_version\00", align 1, !dbg !4332
@.str.31 = private unnamed_addr constant [20 x i8] c"last_attempt_status\00", align 1, !dbg !4336
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_esrt__287_425_esrt_sysfs_init6288], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @efi_esrt_init() #0 section ".init.text" align 16 !dbg !4351 {
entry:
  %va = alloca ptr, align 8
  %tmpesrt = alloca %struct.efi_system_resource_table, align 8
  %size = alloca i64, align 8
  %max = alloca i64, align 8
  %entry_size = alloca i64, align 8
  %entries_size = alloca i64, align 8
  %md = alloca %struct.efi_memory_desc_t, align 8
  %rc = alloca i32, align 4
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  %tmp86 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %va) #17, !dbg !4371
  call void @llvm.dbg.declare(metadata ptr %va, metadata !4353, metadata !DIExpression()), !dbg !4372
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmpesrt) #17, !dbg !4373
  call void @llvm.dbg.declare(metadata ptr %tmpesrt, metadata !4354, metadata !DIExpression()), !dbg !4374
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !4375
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4355, metadata !DIExpression()), !dbg !4376
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #17, !dbg !4375
  call void @llvm.dbg.declare(metadata ptr %max, metadata !4356, metadata !DIExpression()), !dbg !4377
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_size) #17, !dbg !4375
  call void @llvm.dbg.declare(metadata ptr %entry_size, metadata !4357, metadata !DIExpression()), !dbg !4378
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries_size) #17, !dbg !4375
  call void @llvm.dbg.declare(metadata ptr %entries_size, metadata !4358, metadata !DIExpression()), !dbg !4379
  call void @llvm.lifetime.start.p0(i64 40, ptr %md) #17, !dbg !4380
  call void @llvm.dbg.declare(metadata ptr %md, metadata !4359, metadata !DIExpression()), !dbg !4381
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !4382
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4369, metadata !DIExpression()), !dbg !4383
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #17, !dbg !4384
  call void @llvm.dbg.declare(metadata ptr %end, metadata !4370, metadata !DIExpression()), !dbg !4385
  %call = call zeroext i1 @efi_enabled(i32 noundef 4) #18, !dbg !4386
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !4388

land.lhs.true:                                    ; preds = %entry
  %call1 = call zeroext i1 @efi_enabled(i32 noundef 6) #18, !dbg !4389
  br i1 %call1, label %if.end, label %if.then, !dbg !4390

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4391

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %tmp, align 4, !dbg !4392
  %0 = load i32, ptr %tmp, align 4, !dbg !4395
  %call2 = call i32 @esrt_table_exists() #18, !dbg !4396
  %tobool = icmp ne i32 %call2, 0, !dbg !4396
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !4398

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4399

if.end4:                                          ; preds = %if.end
  %1 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 8, !dbg !4400
  %call5 = call i32 @efi_mem_desc_lookup(i64 noundef %1, ptr noundef %md) #18, !dbg !4401
  store i32 %call5, ptr %rc, align 4, !dbg !4402
  %2 = load i32, ptr %rc, align 4, !dbg !4403
  %cmp = icmp slt i32 %2, 0, !dbg !4405
  br i1 %cmp, label %if.then18, label %lor.lhs.false, !dbg !4406

lor.lhs.false:                                    ; preds = %if.end4
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 5, !dbg !4407
  %3 = load i64, ptr %attribute, align 8, !dbg !4407
  %and = and i64 %3, -9223372036854775808, !dbg !4408
  %tobool6 = icmp ne i64 %and, 0, !dbg !4408
  br i1 %tobool6, label %if.end21, label %land.lhs.true7, !dbg !4409

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 0, !dbg !4410
  %4 = load i32, ptr %type, align 8, !dbg !4410
  %cmp8 = icmp ne i32 %4, 4, !dbg !4411
  br i1 %cmp8, label %land.lhs.true9, label %if.end21, !dbg !4412

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %type10 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 0, !dbg !4413
  %5 = load i32, ptr %type10, align 8, !dbg !4413
  %cmp11 = icmp ne i32 %5, 6, !dbg !4414
  br i1 %cmp11, label %land.lhs.true12, label %if.end21, !dbg !4415

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %type13 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 0, !dbg !4416
  %6 = load i32, ptr %type13, align 8, !dbg !4416
  %cmp14 = icmp ne i32 %6, 9, !dbg !4417
  br i1 %cmp14, label %land.lhs.true15, label %if.end21, !dbg !4418

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %type16 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 0, !dbg !4419
  %7 = load i32, ptr %type16, align 8, !dbg !4419
  %cmp17 = icmp ne i32 %7, 10, !dbg !4420
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !4421

if.then18:                                        ; preds = %land.lhs.true15, %if.end4
  br label %do.body, !dbg !4422

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !4425

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4425

do.end:                                           ; preds = %do.cond
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #19, !dbg !4422
  store i32 %call20, ptr %tmp19, align 4, !dbg !4425
  %8 = load i32, ptr %tmp19, align 4, !dbg !4422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4427

if.end21:                                         ; preds = %land.lhs.true15, %land.lhs.true12, %land.lhs.true9, %land.lhs.true7, %lor.lhs.false
  %call22 = call i64 @efi_mem_desc_end(ptr noundef %md) #18, !dbg !4428
  %9 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 8, !dbg !4429
  %sub = sub i64 %call22, %9, !dbg !4430
  store i64 %sub, ptr %max, align 8, !dbg !4431
  store i64 16, ptr %size, align 8, !dbg !4432
  %10 = load i64, ptr %max, align 8, !dbg !4433
  %11 = load i64, ptr %size, align 8, !dbg !4435
  %cmp23 = icmp ult i64 %10, %11, !dbg !4436
  br i1 %cmp23, label %if.then24, label %if.end30, !dbg !4437

if.then24:                                        ; preds = %if.end21
  br label %do.body25, !dbg !4438

do.body25:                                        ; preds = %if.then24
  br label %do.cond26, !dbg !4441

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !4441

do.end27:                                         ; preds = %do.cond26
  %12 = load i64, ptr %size, align 8, !dbg !4438
  %13 = load i64, ptr %max, align 8, !dbg !4438
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %12, i64 noundef %13) #19, !dbg !4438
  store i32 %call29, ptr %tmp28, align 4, !dbg !4441
  %14 = load i32, ptr %tmp28, align 4, !dbg !4438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4443

if.end30:                                         ; preds = %if.end21
  %15 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 8, !dbg !4444
  %16 = load i64, ptr %size, align 8, !dbg !4445
  %call31 = call ptr @early_memremap(i64 noundef %15, i64 noundef %16) #18, !dbg !4446
  store ptr %call31, ptr %va, align 8, !dbg !4447
  %17 = load ptr, ptr %va, align 8, !dbg !4448
  %tobool32 = icmp ne ptr %17, null, !dbg !4448
  br i1 %tobool32, label %if.end39, label %if.then33, !dbg !4450

if.then33:                                        ; preds = %if.end30
  br label %do.body34, !dbg !4451

do.body34:                                        ; preds = %if.then33
  br label %do.cond35, !dbg !4454

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4454

do.end36:                                         ; preds = %do.cond35
  %18 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 8, !dbg !4451
  %19 = inttoptr i64 %18 to ptr, !dbg !4451
  %20 = load i64, ptr %size, align 8, !dbg !4451
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %19, i64 noundef %20) #19, !dbg !4451
  store i32 %call38, ptr %tmp37, align 4, !dbg !4454
  %21 = load i32, ptr %tmp37, align 4, !dbg !4451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4456

if.end39:                                         ; preds = %if.end30
  %22 = load ptr, ptr %va, align 8, !dbg !4457
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmpesrt, ptr align 1 %22, i64 16, i1 false), !dbg !4458
  %23 = load ptr, ptr %va, align 8, !dbg !4459
  %24 = load i64, ptr %size, align 8, !dbg !4460
  call void @early_memunmap(ptr noundef %23, i64 noundef %24) #18, !dbg !4461
  %fw_resource_version = getelementptr inbounds %struct.efi_system_resource_table, ptr %tmpesrt, i32 0, i32 2, !dbg !4462
  %25 = load i64, ptr %fw_resource_version, align 8, !dbg !4462
  %cmp40 = icmp ne i64 %25, 1, !dbg !4464
  br i1 %cmp40, label %if.then41, label %if.end48, !dbg !4465

if.then41:                                        ; preds = %if.end39
  br label %do.body42, !dbg !4466

do.body42:                                        ; preds = %if.then41
  br label %do.cond43, !dbg !4469

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !4469

do.end44:                                         ; preds = %do.cond43
  %fw_resource_version46 = getelementptr inbounds %struct.efi_system_resource_table, ptr %tmpesrt, i32 0, i32 2, !dbg !4466
  %26 = load i64, ptr %fw_resource_version46, align 8, !dbg !4466
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i64 noundef %26) #19, !dbg !4466
  store i32 %call47, ptr %tmp45, align 4, !dbg !4469
  %27 = load i32, ptr %tmp45, align 4, !dbg !4466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4471

if.end48:                                         ; preds = %if.end39
  store i64 40, ptr %entry_size, align 8, !dbg !4472
  %fw_resource_count = getelementptr inbounds %struct.efi_system_resource_table, ptr %tmpesrt, i32 0, i32 0, !dbg !4473
  %28 = load i32, ptr %fw_resource_count, align 8, !dbg !4473
  %cmp49 = icmp ugt i32 %28, 0, !dbg !4475
  br i1 %cmp49, label %land.lhs.true50, label %if.end60, !dbg !4476

land.lhs.true50:                                  ; preds = %if.end48
  %29 = load i64, ptr %max, align 8, !dbg !4477
  %30 = load i64, ptr %size, align 8, !dbg !4478
  %sub51 = sub i64 %29, %30, !dbg !4479
  %31 = load i64, ptr %entry_size, align 8, !dbg !4480
  %cmp52 = icmp ult i64 %sub51, %31, !dbg !4481
  br i1 %cmp52, label %if.then53, label %if.end60, !dbg !4482

if.then53:                                        ; preds = %land.lhs.true50
  br label %do.body54, !dbg !4483

do.body54:                                        ; preds = %if.then53
  br label %do.cond55, !dbg !4486

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !4486

do.end56:                                         ; preds = %do.cond55
  %32 = load i64, ptr %max, align 8, !dbg !4483
  %33 = load i64, ptr %size, align 8, !dbg !4483
  %sub58 = sub i64 %32, %33, !dbg !4483
  %34 = load i64, ptr %entry_size, align 8, !dbg !4483
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i64 noundef %sub58, i64 noundef %34) #19, !dbg !4483
  store i32 %call59, ptr %tmp57, align 4, !dbg !4486
  %35 = load i32, ptr %tmp57, align 4, !dbg !4483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4488

if.end60:                                         ; preds = %land.lhs.true50, %if.end48
  %fw_resource_count61 = getelementptr inbounds %struct.efi_system_resource_table, ptr %tmpesrt, i32 0, i32 0, !dbg !4489
  %36 = load i32, ptr %fw_resource_count61, align 8, !dbg !4489
  %cmp62 = icmp ugt i32 %36, 128, !dbg !4491
  br i1 %cmp62, label %if.then63, label %if.end70, !dbg !4492

if.then63:                                        ; preds = %if.end60
  br label %do.body64, !dbg !4493

do.body64:                                        ; preds = %if.then63
  br label %do.cond65, !dbg !4496

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !4496

do.end66:                                         ; preds = %do.cond65
  %fw_resource_count68 = getelementptr inbounds %struct.efi_system_resource_table, ptr %tmpesrt, i32 0, i32 0, !dbg !4493
  %37 = load i32, ptr %fw_resource_count68, align 8, !dbg !4493
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %37) #19, !dbg !4493
  store i32 %call69, ptr %tmp67, align 4, !dbg !4496
  %38 = load i32, ptr %tmp67, align 4, !dbg !4493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4498

if.end70:                                         ; preds = %if.end60
  %fw_resource_count71 = getelementptr inbounds %struct.efi_system_resource_table, ptr %tmpesrt, i32 0, i32 0, !dbg !4499
  %39 = load i32, ptr %fw_resource_count71, align 8, !dbg !4499
  %conv = zext i32 %39 to i64, !dbg !4500
  %40 = load i64, ptr %entry_size, align 8, !dbg !4501
  %mul = mul i64 %conv, %40, !dbg !4502
  store i64 %mul, ptr %entries_size, align 8, !dbg !4503
  %41 = load i64, ptr %max, align 8, !dbg !4504
  %42 = load i64, ptr %size, align 8, !dbg !4506
  %43 = load i64, ptr %entries_size, align 8, !dbg !4507
  %add = add i64 %42, %43, !dbg !4508
  %cmp72 = icmp ult i64 %41, %add, !dbg !4509
  br i1 %cmp72, label %if.then74, label %if.end80, !dbg !4510

if.then74:                                        ; preds = %if.end70
  br label %do.body75, !dbg !4511

do.body75:                                        ; preds = %if.then74
  br label %do.cond76, !dbg !4514

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !4514

do.end77:                                         ; preds = %do.cond76
  %44 = load i64, ptr %size, align 8, !dbg !4511
  %45 = load i64, ptr %max, align 8, !dbg !4511
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i64 noundef %44, i64 noundef %45) #19, !dbg !4511
  store i32 %call79, ptr %tmp78, align 4, !dbg !4514
  %46 = load i32, ptr %tmp78, align 4, !dbg !4511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4516

if.end80:                                         ; preds = %if.end70
  %47 = load i64, ptr %entries_size, align 8, !dbg !4517
  %48 = load i64, ptr %size, align 8, !dbg !4518
  %add81 = add i64 %48, %47, !dbg !4518
  store i64 %add81, ptr %size, align 8, !dbg !4518
  %49 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 8, !dbg !4519
  store i64 %49, ptr @esrt_data, align 8, !dbg !4520
  %50 = load i64, ptr %size, align 8, !dbg !4521
  store i64 %50, ptr @esrt_data_size, align 8, !dbg !4522
  %51 = load i64, ptr @esrt_data, align 8, !dbg !4523
  %52 = load i64, ptr %size, align 8, !dbg !4524
  %add82 = add i64 %51, %52, !dbg !4525
  store i64 %add82, ptr %end, align 8, !dbg !4526
  br label %do.body83, !dbg !4527

do.body83:                                        ; preds = %if.end80
  br label %do.cond84, !dbg !4529

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !4529

do.end85:                                         ; preds = %do.cond84
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @esrt_data, ptr noundef %end) #19, !dbg !4527
  store i32 %call87, ptr %tmp86, align 4, !dbg !4529
  %53 = load i32, ptr %tmp86, align 4, !dbg !4527
  %type88 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %md, i32 0, i32 0, !dbg !4531
  %54 = load i32, ptr %type88, align 8, !dbg !4531
  %cmp89 = icmp eq i32 %54, 4, !dbg !4533
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !4534

if.then91:                                        ; preds = %do.end85
  %55 = load i64, ptr @esrt_data, align 8, !dbg !4535
  %56 = load i64, ptr @esrt_data_size, align 8, !dbg !4536
  call void @efi_mem_reserve(i64 noundef %55, i64 noundef %56) #18, !dbg !4537
  br label %if.end92, !dbg !4537

if.end92:                                         ; preds = %if.then91, %do.end85
  store i32 0, ptr %tmp93, align 4, !dbg !4538
  %57 = load i32, ptr %tmp93, align 4, !dbg !4541
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4542
  br label %cleanup, !dbg !4542

cleanup:                                          ; preds = %if.end92, %do.end77, %do.end66, %do.end56, %do.end44, %do.end36, %do.end27, %do.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #17, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 40, ptr %md) #17, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries_size) #17, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_size) #17, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #17, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmpesrt) #17, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %va) #17, !dbg !4542
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4542

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #3 align 16 !dbg !4543 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  %0 = load i32, ptr %feature.addr, align 4, !dbg !4549
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4549
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4549

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !4549
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4549
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !4549

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !4549

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !4549
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !4549
  br i1 %4, label %cond.true, label %cond.false, !dbg !4549

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !4549
  %conv4 = sext i32 %5 to i64, !dbg !4549
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #18, !dbg !4549
  %conv5 = zext i1 %call to i32, !dbg !4549
  br label %cond.end, !dbg !4549

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !4549
  %conv6 = sext i32 %6 to i64, !dbg !4549
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #18, !dbg !4549
  %conv8 = zext i1 %call7 to i32, !dbg !4549
  br label %cond.end, !dbg !4549

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !4549
  %cmp = icmp ne i32 %cond, 0, !dbg !4550
  ret i1 %cmp, !dbg !4551
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @esrt_table_exists() #3 align 16 !dbg !4552 {
entry:
  %retval = alloca i32, align 4
  %call = call zeroext i1 @efi_enabled(i32 noundef 2) #18, !dbg !4553
  br i1 %call, label %if.end, label %if.then, !dbg !4555

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4556
  br label %return, !dbg !4556

if.end:                                           ; preds = %entry
  %0 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 7), align 8, !dbg !4557
  %cmp = icmp eq i64 %0, -1, !dbg !4559
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4560

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4561
  br label %return, !dbg !4561

if.end2:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4562
  br label %return, !dbg !4562

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !4563
  ret i32 %1, !dbg !4563
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4564 dso_local i32 @efi_mem_desc_lookup(i64 noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4568 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4572 dso_local i64 @efi_mem_desc_end(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4575 dso_local ptr @early_memremap(i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4580 dso_local void @early_memunmap(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4583 dso_local void @efi_mem_reserve(i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_esrt__287_425_esrt_sysfs_init6() #0 section ".init.text" align 16 !dbg !4586 {
entry:
  %call = call i32 @esrt_sysfs_init() #19, !dbg !4587
  ret i32 %call, !dbg !4587
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @esrt_sysfs_init() #0 section ".init.text" align 16 !dbg !4588 {
entry:
  %retval = alloca i32, align 4
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !4595
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4590, metadata !DIExpression()), !dbg !4596
  store i32 0, ptr %tmp, align 4, !dbg !4597
  %0 = load i32, ptr %tmp, align 4, !dbg !4600
  %1 = load i64, ptr @esrt_data, align 8, !dbg !4601
  %tobool = icmp ne i64 %1, 0, !dbg !4601
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4603

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr @esrt_data_size, align 8, !dbg !4604
  %tobool1 = icmp ne i64 %2, 0, !dbg !4604
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4605

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -38, ptr %retval, align 4, !dbg !4606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4606

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, ptr @esrt_data, align 8, !dbg !4607
  %4 = load i64, ptr @esrt_data_size, align 8, !dbg !4608
  %call = call ptr @memremap(i64 noundef %3, i64 noundef %4, i64 noundef 1) #18, !dbg !4609
  store ptr %call, ptr @esrt, align 8, !dbg !4610
  %5 = load ptr, ptr @esrt, align 8, !dbg !4611
  %tobool2 = icmp ne ptr %5, null, !dbg !4611
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !4613

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !4614

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !4617

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4617

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr @esrt_data_size, align 8, !dbg !4614
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef @esrt_data, i64 noundef %6) #19, !dbg !4614
  store i32 %call5, ptr %tmp4, align 4, !dbg !4617
  %7 = load i32, ptr %tmp4, align 4, !dbg !4614
  store i32 -12, ptr %retval, align 4, !dbg !4619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4619

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr @efi_kobj, align 8, !dbg !4620
  %call7 = call ptr @kobject_create_and_add(ptr noundef @.str.9, ptr noundef %8) #18, !dbg !4621
  store ptr %call7, ptr @esrt_kobj, align 8, !dbg !4622
  %9 = load ptr, ptr @esrt_kobj, align 8, !dbg !4623
  %tobool8 = icmp ne ptr %9, null, !dbg !4623
  br i1 %tobool8, label %if.end15, label %if.then9, !dbg !4625

if.then9:                                         ; preds = %if.end6
  br label %do.body10, !dbg !4626

do.body10:                                        ; preds = %if.then9
  br label %do.cond11, !dbg !4629

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4629

do.end12:                                         ; preds = %do.cond11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #19, !dbg !4626
  store i32 %call14, ptr %tmp13, align 4, !dbg !4629
  %10 = load i32, ptr %tmp13, align 4, !dbg !4626
  store i32 -12, ptr %error, align 4, !dbg !4631
  br label %err, !dbg !4632

if.end15:                                         ; preds = %if.end6
  %11 = load ptr, ptr @esrt_kobj, align 8, !dbg !4633
  %call16 = call i32 @sysfs_create_group(ptr noundef %11, ptr noundef @esrt_attr_group) #18, !dbg !4634
  store i32 %call16, ptr %error, align 4, !dbg !4635
  %12 = load i32, ptr %error, align 4, !dbg !4636
  %tobool17 = icmp ne i32 %12, 0, !dbg !4636
  br i1 %tobool17, label %if.then18, label %if.end24, !dbg !4638

if.then18:                                        ; preds = %if.end15
  br label %do.body19, !dbg !4639

do.body19:                                        ; preds = %if.then18
  br label %do.cond20, !dbg !4642

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !4642

do.end21:                                         ; preds = %do.cond20
  %13 = load i32, ptr %error, align 4, !dbg !4639
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, i32 noundef %13) #19, !dbg !4639
  store i32 %call23, ptr %tmp22, align 4, !dbg !4642
  %14 = load i32, ptr %tmp22, align 4, !dbg !4639
  br label %err_remove_esrt, !dbg !4644

if.end24:                                         ; preds = %if.end15
  %15 = load ptr, ptr @esrt_kobj, align 8, !dbg !4645
  %call25 = call ptr @kset_create_and_add(ptr noundef @.str.12, ptr noundef null, ptr noundef %15) #18, !dbg !4646
  store ptr %call25, ptr @esrt_kset, align 8, !dbg !4647
  %16 = load ptr, ptr @esrt_kset, align 8, !dbg !4648
  %tobool26 = icmp ne ptr %16, null, !dbg !4648
  br i1 %tobool26, label %if.end33, label %if.then27, !dbg !4650

if.then27:                                        ; preds = %if.end24
  br label %do.body28, !dbg !4651

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !4654

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !4654

do.end30:                                         ; preds = %do.cond29
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #19, !dbg !4651
  store i32 %call32, ptr %tmp31, align 4, !dbg !4654
  %17 = load i32, ptr %tmp31, align 4, !dbg !4651
  store i32 -12, ptr %error, align 4, !dbg !4656
  br label %err_remove_group, !dbg !4657

if.end33:                                         ; preds = %if.end24
  %call34 = call i32 @register_entries() #19, !dbg !4658
  store i32 %call34, ptr %error, align 4, !dbg !4659
  %18 = load i32, ptr %error, align 4, !dbg !4660
  %tobool35 = icmp ne i32 %18, 0, !dbg !4660
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4662

if.then36:                                        ; preds = %if.end33
  br label %err_cleanup_list, !dbg !4663

if.end37:                                         ; preds = %if.end33
  store i32 0, ptr %tmp38, align 4, !dbg !4664
  %19 = load i32, ptr %tmp38, align 4, !dbg !4667
  store i32 0, ptr %retval, align 4, !dbg !4668
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4668

err_cleanup_list:                                 ; preds = %if.then36
  call void @llvm.dbg.label(metadata !4591), !dbg !4669
  call void @cleanup_entry_list() #18, !dbg !4670
  %20 = load ptr, ptr @esrt_kset, align 8, !dbg !4671
  call void @kset_unregister(ptr noundef %20) #18, !dbg !4672
  br label %err_remove_group, !dbg !4672

err_remove_group:                                 ; preds = %err_cleanup_list, %do.end30
  call void @llvm.dbg.label(metadata !4592), !dbg !4673
  %21 = load ptr, ptr @esrt_kobj, align 8, !dbg !4674
  call void @sysfs_remove_group(ptr noundef %21, ptr noundef @esrt_attr_group) #18, !dbg !4675
  br label %err_remove_esrt, !dbg !4675

err_remove_esrt:                                  ; preds = %err_remove_group, %do.end21
  call void @llvm.dbg.label(metadata !4593), !dbg !4676
  %22 = load ptr, ptr @esrt_kobj, align 8, !dbg !4677
  call void @kobject_put(ptr noundef %22) #18, !dbg !4678
  br label %err, !dbg !4678

err:                                              ; preds = %err_remove_esrt, %do.end12
  call void @llvm.dbg.label(metadata !4594), !dbg !4679
  %23 = load ptr, ptr @esrt, align 8, !dbg !4680
  call void @memunmap(ptr noundef %23) #18, !dbg !4681
  store ptr null, ptr @esrt, align 8, !dbg !4682
  %24 = load i32, ptr %error, align 4, !dbg !4683
  store i32 %24, ptr %retval, align 4, !dbg !4684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4684

cleanup:                                          ; preds = %err, %if.end37, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !4685
  %25 = load i32, ptr %retval, align 4, !dbg !4685
  ret i32 %25, !dbg !4685
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !4686 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4694, metadata !DIExpression()), !dbg !4699
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4695, metadata !DIExpression()), !dbg !4700
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !4701
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4696, metadata !DIExpression()), !dbg !4702
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4703
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4704
  %div = udiv i64 %1, 64, !dbg !4704
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4705
  store ptr %add.ptr, ptr %p, align 8, !dbg !4702
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4697, metadata !DIExpression()), !dbg !4707
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4708
  %rem = urem i64 %2, 64, !dbg !4708
  %shl = shl i64 1, %rem, !dbg !4708
  store i64 %shl, ptr %mask, align 8, !dbg !4707
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !4709
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4698, metadata !DIExpression()), !dbg !4710
  %3 = load ptr, ptr %p, align 8, !dbg !4711
  %4 = load i64, ptr %3, align 8, !dbg !4712
  store i64 %4, ptr %val, align 8, !dbg !4710
  %5 = load i64, ptr %val, align 8, !dbg !4713
  %6 = load i64, ptr %mask, align 8, !dbg !4714
  %and = and i64 %5, %6, !dbg !4715
  %tobool = icmp ne i64 %and, 0, !dbg !4716
  %lnot = xor i1 %tobool, true, !dbg !4716
  %lnot1 = xor i1 %lnot, true, !dbg !4717
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !4718
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !4718
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !4718
  ret i1 %lnot1, !dbg !4719
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !4720 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4723, metadata !DIExpression()), !dbg !4725
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4724, metadata !DIExpression()), !dbg !4726
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4727
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4728
  %div = udiv i64 %1, 64, !dbg !4728
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4729
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !4730
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4731
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4732
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !4733
  ret i1 %call, !dbg !4734
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !4735 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4743, metadata !DIExpression()), !dbg !4745
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4744, metadata !DIExpression()), !dbg !4746
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4747
  %1 = load i64, ptr %size.addr, align 8, !dbg !4748
  %conv = trunc i64 %1 to i32, !dbg !4748
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !4749
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4750
  %3 = load i64, ptr %size.addr, align 8, !dbg !4750
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !4750
  ret void, !dbg !4751
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !4752 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4755, metadata !DIExpression()), !dbg !4757
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4756, metadata !DIExpression()), !dbg !4758
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4759
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4760
  br i1 %1, label %cond.true, label %cond.false, !dbg !4760

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4761
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4762
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !4763
  %conv = zext i1 %call to i32, !dbg !4763
  br label %cond.end, !dbg !4760

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4764
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4765
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !4766
  %conv2 = zext i1 %call1 to i32, !dbg !4766
  br label %cond.end, !dbg !4760

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4760
  %tobool = icmp ne i32 %cond, 0, !dbg !4760
  ret i1 %tobool, !dbg !4767
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4768 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4773, metadata !DIExpression()), !dbg !4775
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4774, metadata !DIExpression()), !dbg !4776
  ret i1 true, !dbg !4777
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4778 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4783, metadata !DIExpression()), !dbg !4786
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4784, metadata !DIExpression()), !dbg !4787
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4785, metadata !DIExpression()), !dbg !4788
  ret void, !dbg !4789
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !4790 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4794, metadata !DIExpression()), !dbg !4796
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4795, metadata !DIExpression()), !dbg !4797
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4798
  %and = and i64 %0, 63, !dbg !4799
  %shl = shl i64 1, %and, !dbg !4800
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4801
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4802
  %shr = ashr i64 %2, 6, !dbg !4803
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4801
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4801
  %and1 = and i64 %shl, %3, !dbg !4804
  %cmp = icmp ne i64 %and1, 0, !dbg !4805
  ret i1 %cmp, !dbg !4806
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !4807 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4809, metadata !DIExpression()), !dbg !4812
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4810, metadata !DIExpression()), !dbg !4813
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !4814
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4811, metadata !DIExpression()), !dbg !4815
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4816
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4817
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !4818, !srcloc !4819
  %3 = icmp ult i8 %2, 2, !dbg !4818
  call void @llvm.assume(i1 %3), !dbg !4818
  store i8 %2, ptr %oldbit, align 1, !dbg !4818
  %4 = load i8, ptr %oldbit, align 1, !dbg !4820, !range !4821, !noundef !907
  %tobool = trunc i8 %4 to i1, !dbg !4820
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !4822
  ret i1 %tobool, !dbg !4823
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4824 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4827 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4830 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4833 dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @register_entries() #0 section ".init.text" align 16 !dbg !4836 {
entry:
  %retval = alloca i32, align 4
  %v1_entries = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %esre = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1_entries) #17, !dbg !4845
  call void @llvm.dbg.declare(metadata ptr %v1_entries, metadata !4838, metadata !DIExpression()), !dbg !4846
  %0 = load ptr, ptr @esrt, align 8, !dbg !4847
  %entries = getelementptr inbounds %struct.efi_system_resource_table, ptr %0, i32 0, i32 3, !dbg !4848
  %arraydecay = getelementptr inbounds [0 x i8], ptr %entries, i64 0, i64 0, !dbg !4847
  store ptr %arraydecay, ptr %v1_entries, align 8, !dbg !4846
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4839, metadata !DIExpression()), !dbg !4850
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4840, metadata !DIExpression()), !dbg !4851
  %call = call i32 @esrt_table_exists() #18, !dbg !4852
  %tobool = icmp ne i32 %call, 0, !dbg !4852
  br i1 %tobool, label %if.end, label %if.then, !dbg !4854

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !4855

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !4856
  br label %for.cond, !dbg !4857

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !4858
  %2 = load ptr, ptr @esrt, align 8, !dbg !4859
  %fw_resource_count = getelementptr inbounds %struct.efi_system_resource_table, ptr %2, i32 0, i32 0, !dbg !4859
  %3 = load i32, ptr %fw_resource_count, align 8, !dbg !4859
  %cmp = icmp ult i32 %1, %3, !dbg !4860
  br i1 %cmp, label %for.body, label %for.end, !dbg !4861

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %esre) #17, !dbg !4862
  call void @llvm.dbg.declare(metadata ptr %esre, metadata !4841, metadata !DIExpression()), !dbg !4863
  store ptr null, ptr %esre, align 8, !dbg !4863
  %4 = load ptr, ptr @esrt, align 8, !dbg !4864
  %fw_resource_version = getelementptr inbounds %struct.efi_system_resource_table, ptr %4, i32 0, i32 2, !dbg !4866
  %5 = load i64, ptr %fw_resource_version, align 8, !dbg !4866
  %cmp1 = icmp eq i64 %5, 1, !dbg !4867
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4868

if.then2:                                         ; preds = %for.body
  %6 = load ptr, ptr %v1_entries, align 8, !dbg !4869
  %7 = load i32, ptr %i, align 4, !dbg !4871
  %idxprom = sext i32 %7 to i64, !dbg !4869
  %arrayidx = getelementptr %struct.efi_system_resource_entry_v1, ptr %6, i64 %idxprom, !dbg !4869
  store ptr %arrayidx, ptr %esre, align 8, !dbg !4872
  br label %if.end5, !dbg !4873

if.else:                                          ; preds = %for.body
  br label %do.body, !dbg !4874

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !4877

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4877

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr @esrt, align 8, !dbg !4874
  %fw_resource_version3 = getelementptr inbounds %struct.efi_system_resource_table, ptr %8, i32 0, i32 2, !dbg !4874
  %9 = load i64, ptr %fw_resource_version3, align 8, !dbg !4874
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i64 noundef %9) #19, !dbg !4874
  store i32 %call4, ptr %tmp, align 4, !dbg !4877
  %10 = load i32, ptr %tmp, align 4, !dbg !4874
  store i32 -22, ptr %retval, align 4, !dbg !4879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4879

if.end5:                                          ; preds = %if.then2
  %11 = load ptr, ptr %esre, align 8, !dbg !4880
  %12 = load i32, ptr %i, align 4, !dbg !4881
  %call6 = call i32 @esre_create_sysfs_entry(ptr noundef %11, i32 noundef %12) #18, !dbg !4882
  store i32 %call6, ptr %rc, align 4, !dbg !4883
  %13 = load i32, ptr %rc, align 4, !dbg !4884
  %cmp7 = icmp slt i32 %13, 0, !dbg !4886
  br i1 %cmp7, label %if.then8, label %if.end14, !dbg !4887

if.then8:                                         ; preds = %if.end5
  br label %do.body9, !dbg !4888

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !4891

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4891

do.end11:                                         ; preds = %do.cond10
  %14 = load i32, ptr %rc, align 4, !dbg !4888
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, i32 noundef %14) #19, !dbg !4888
  store i32 %call13, ptr %tmp12, align 4, !dbg !4891
  %15 = load i32, ptr %tmp12, align 4, !dbg !4888
  %16 = load i32, ptr %rc, align 4, !dbg !4893
  store i32 %16, ptr %retval, align 4, !dbg !4894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4894

if.end14:                                         ; preds = %if.end5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4895
  br label %cleanup, !dbg !4895

cleanup:                                          ; preds = %if.end14, %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %esre) #17, !dbg !4895
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4896

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, ptr %i, align 4, !dbg !4897
  %inc = add i32 %17, 1, !dbg !4897
  store i32 %inc, ptr %i, align 4, !dbg !4897
  br label %for.cond, !dbg !4898, !llvm.loop !4899

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !4903

cleanup15:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !4904
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !4904
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1_entries) #17, !dbg !4904
  %18 = load i32, ptr %retval, align 4, !dbg !4904
  ret i32 %18, !dbg !4904
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cleanup_entry_list() #10 align 16 !dbg !4905 {
entry:
  %entry1 = alloca ptr, align 8
  %next = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4907, metadata !DIExpression()), !dbg !4918
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #17, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %next, metadata !4908, metadata !DIExpression()), !dbg !4919
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4920
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4909, metadata !DIExpression()), !dbg !4920
  %0 = load ptr, ptr @entry_list, align 8, !dbg !4920
  store ptr %0, ptr %__mptr, align 8, !dbg !4920
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4920
  %add.ptr = getelementptr i8, ptr %1, i64 -72, !dbg !4920
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4920
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4921
  %2 = load ptr, ptr %tmp, align 8, !dbg !4920
  store ptr %2, ptr %entry1, align 8, !dbg !4921
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !4922
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !4912, metadata !DIExpression()), !dbg !4922
  %3 = load ptr, ptr %entry1, align 8, !dbg !4922
  %list = getelementptr inbounds %struct.esre_entry, ptr %3, i32 0, i32 2, !dbg !4922
  %next3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !4922
  %4 = load ptr, ptr %next3, align 8, !dbg !4922
  store ptr %4, ptr %__mptr2, align 8, !dbg !4922
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !4922
  %add.ptr5 = getelementptr i8, ptr %5, i64 -72, !dbg !4922
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !4922
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !4921
  %6 = load ptr, ptr %tmp4, align 8, !dbg !4922
  store ptr %6, ptr %next, align 8, !dbg !4921
  br label %for.cond, !dbg !4921

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %entry1, align 8, !dbg !4923
  %list6 = getelementptr inbounds %struct.esre_entry, ptr %7, i32 0, i32 2, !dbg !4923
  %cmp = icmp eq ptr %list6, @entry_list, !dbg !4923
  %lnot = xor i1 %cmp, true, !dbg !4923
  br i1 %lnot, label %for.body, label %for.end, !dbg !4921

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %entry1, align 8, !dbg !4924
  %kobj = getelementptr inbounds %struct.esre_entry, ptr %8, i32 0, i32 1, !dbg !4926
  call void @kobject_put(ptr noundef %kobj) #18, !dbg !4927
  br label %for.inc, !dbg !4928

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %next, align 8, !dbg !4923
  store ptr %9, ptr %entry1, align 8, !dbg !4923
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #17, !dbg !4929
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !4914, metadata !DIExpression()), !dbg !4929
  %10 = load ptr, ptr %next, align 8, !dbg !4929
  %list8 = getelementptr inbounds %struct.esre_entry, ptr %10, i32 0, i32 2, !dbg !4929
  %next9 = getelementptr inbounds %struct.list_head, ptr %list8, i32 0, i32 0, !dbg !4929
  %11 = load ptr, ptr %next9, align 8, !dbg !4929
  store ptr %11, ptr %__mptr7, align 8, !dbg !4929
  %12 = load ptr, ptr %__mptr7, align 8, !dbg !4929
  %add.ptr11 = getelementptr i8, ptr %12, i64 -72, !dbg !4929
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !4929
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #17, !dbg !4923
  %13 = load ptr, ptr %tmp10, align 8, !dbg !4929
  store ptr %13, ptr %next, align 8, !dbg !4923
  br label %for.cond, !dbg !4923, !llvm.loop !4930

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #17, !dbg !4932
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !4932
  ret void, !dbg !4932
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4933 dso_local void @kset_unregister(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4936 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4939 dso_local void @kobject_put(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4940 dso_local void @memunmap(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @esrt_attr_is_visible(ptr noundef %kobj, ptr noundef %attr, i32 noundef %n) #10 align 16 !dbg !4941 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4943, metadata !DIExpression()), !dbg !4946
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4944, metadata !DIExpression()), !dbg !4947
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4945, metadata !DIExpression()), !dbg !4948
  %call = call i32 @esrt_table_exists() #18, !dbg !4949
  %tobool = icmp ne i32 %call, 0, !dbg !4949
  br i1 %tobool, label %if.end, label %if.then, !dbg !4951

if.then:                                          ; preds = %entry
  store i16 0, ptr %retval, align 2, !dbg !4952
  br label %return, !dbg !4952

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !4953
  %mode = getelementptr inbounds %struct.attribute, ptr %0, i32 0, i32 1, !dbg !4954
  %1 = load i16, ptr %mode, align 8, !dbg !4954
  store i16 %1, ptr %retval, align 2, !dbg !4955
  br label %return, !dbg !4955

return:                                           ; preds = %if.end, %if.then
  %2 = load i16, ptr %retval, align 2, !dbg !4956
  ret i16 %2, !dbg !4956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fw_resource_count_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #10 align 16 !dbg !4957 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4959, metadata !DIExpression()), !dbg !4962
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4960, metadata !DIExpression()), !dbg !4962
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4962
  %1 = load ptr, ptr @esrt, align 8, !dbg !4962
  %fw_resource_count = getelementptr inbounds %struct.efi_system_resource_table, ptr %1, i32 0, i32 0, !dbg !4962
  %2 = load i32, ptr %fw_resource_count, align 8, !dbg !4962
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i32 noundef %2) #18, !dbg !4962
  %conv = sext i32 %call to i64, !dbg !4962
  ret i64 %conv, !dbg !4962
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4963 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fw_resource_count_max_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #10 align 16 !dbg !4967 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4969, metadata !DIExpression()), !dbg !4972
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4970, metadata !DIExpression()), !dbg !4972
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4972
  %1 = load ptr, ptr @esrt, align 8, !dbg !4972
  %fw_resource_count_max = getelementptr inbounds %struct.efi_system_resource_table, ptr %1, i32 0, i32 1, !dbg !4972
  %2 = load i32, ptr %fw_resource_count_max, align 4, !dbg !4972
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i32 noundef %2) #18, !dbg !4972
  %conv = sext i32 %call to i64, !dbg !4972
  ret i64 %conv, !dbg !4972
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fw_resource_version_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #10 align 16 !dbg !4973 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4975, metadata !DIExpression()), !dbg !4978
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4976, metadata !DIExpression()), !dbg !4978
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4978
  %1 = load ptr, ptr @esrt, align 8, !dbg !4978
  %fw_resource_version = getelementptr inbounds %struct.efi_system_resource_table, ptr %1, i32 0, i32 2, !dbg !4978
  %2 = load i64, ptr %fw_resource_version, align 8, !dbg !4978
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.18, i64 noundef %2) #18, !dbg !4978
  %conv = sext i32 %call to i64, !dbg !4978
  ret i64 %conv, !dbg !4978
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @esre_create_sysfs_entry(ptr noundef %esre, i32 noundef %entry_num) #10 align 16 !dbg !4979 {
entry:
  %retval = alloca i32, align 4
  %esre.addr = alloca ptr, align 8
  %entry_num.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %esre, ptr %esre.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %esre.addr, metadata !4983, metadata !DIExpression()), !dbg !4989
  store i32 %entry_num, ptr %entry_num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %entry_num.addr, metadata !4984, metadata !DIExpression()), !dbg !4990
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4985, metadata !DIExpression()), !dbg !4992
  %call = call noalias ptr @kzalloc(i64 noundef 88, i32 noundef 3264) #20, !dbg !4993
  store ptr %call, ptr %entry1, align 8, !dbg !4994
  %0 = load ptr, ptr %entry1, align 8, !dbg !4995
  %tobool = icmp ne ptr %0, null, !dbg !4995
  br i1 %tobool, label %if.end, label %if.then, !dbg !4997

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !4998

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @esrt_kset, align 8, !dbg !4999
  %2 = load ptr, ptr %entry1, align 8, !dbg !5000
  %kobj = getelementptr inbounds %struct.esre_entry, ptr %2, i32 0, i32 1, !dbg !5001
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 3, !dbg !5002
  store ptr %1, ptr %kset, align 8, !dbg !5003
  %3 = load ptr, ptr @esrt, align 8, !dbg !5004
  %fw_resource_version = getelementptr inbounds %struct.efi_system_resource_table, ptr %3, i32 0, i32 2, !dbg !5005
  %4 = load i64, ptr %fw_resource_version, align 8, !dbg !5005
  %cmp = icmp eq i64 %4, 1, !dbg !5006
  br i1 %cmp, label %if.then2, label %if.end10, !dbg !5007

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !5008
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4986, metadata !DIExpression()), !dbg !5009
  store i32 0, ptr %rc, align 4, !dbg !5009
  %5 = load ptr, ptr %esre.addr, align 8, !dbg !5010
  %6 = load ptr, ptr %entry1, align 8, !dbg !5011
  %esre3 = getelementptr inbounds %struct.esre_entry, ptr %6, i32 0, i32 0, !dbg !5012
  store ptr %5, ptr %esre3, align 8, !dbg !5013
  %7 = load ptr, ptr %entry1, align 8, !dbg !5014
  %kobj4 = getelementptr inbounds %struct.esre_entry, ptr %7, i32 0, i32 1, !dbg !5015
  %8 = load i32, ptr %entry_num.addr, align 4, !dbg !5016
  %call5 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj4, ptr noundef @esre1_ktype, ptr noundef null, ptr noundef @.str.20, i32 noundef %8) #18, !dbg !5017
  store i32 %call5, ptr %rc, align 4, !dbg !5018
  %9 = load i32, ptr %rc, align 4, !dbg !5019
  %tobool6 = icmp ne i32 %9, 0, !dbg !5019
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5021

if.then7:                                         ; preds = %if.then2
  %10 = load ptr, ptr %entry1, align 8, !dbg !5022
  %kobj8 = getelementptr inbounds %struct.esre_entry, ptr %10, i32 0, i32 1, !dbg !5024
  call void @kobject_put(ptr noundef %kobj8) #18, !dbg !5025
  %11 = load i32, ptr %rc, align 4, !dbg !5026
  store i32 %11, ptr %retval, align 4, !dbg !5027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5027

if.end9:                                          ; preds = %if.then2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5028
  br label %cleanup, !dbg !5028

cleanup:                                          ; preds = %if.end9, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !5028
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end10, !dbg !5029

if.end10:                                         ; preds = %cleanup.cont, %if.end
  %12 = load ptr, ptr %entry1, align 8, !dbg !5030
  %list = getelementptr inbounds %struct.esre_entry, ptr %12, i32 0, i32 2, !dbg !5031
  call void @list_add_tail(ptr noundef %list, ptr noundef @entry_list) #18, !dbg !5032
  store i32 0, ptr %retval, align 4, !dbg !5033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !5033

cleanup11:                                        ; preds = %if.end10, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !5034
  %13 = load i32, ptr %retval, align 4, !dbg !5034
  ret i32 %13, !dbg !5034
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5035 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5039, metadata !DIExpression()), !dbg !5041
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5040, metadata !DIExpression()), !dbg !5042
  %0 = load i64, ptr %size.addr, align 8, !dbg !5043
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5044
  %or = or i32 %1, 256, !dbg !5045
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !5046
  ret ptr %call, !dbg !5047
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5048 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5051 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5056, metadata !DIExpression()), !dbg !5058
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5057, metadata !DIExpression()), !dbg !5059
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5060
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5061
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5062
  %2 = load ptr, ptr %prev, align 8, !dbg !5062
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5063
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !5064
  ret void, !dbg !5065
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !5066 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5068, metadata !DIExpression()), !dbg !5073
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5069, metadata !DIExpression()), !dbg !5074
  %0 = load i64, ptr %size.addr, align 8, !dbg !5075
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5076
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5077

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5078
  %tobool = icmp ne i64 %2, 0, !dbg !5078
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5079

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5070, metadata !DIExpression()), !dbg !5081
  %3 = load i64, ptr %size.addr, align 8, !dbg !5082
  %cmp = icmp ugt i64 %3, 8192, !dbg !5084
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5085

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5086
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5087
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !5088
  store ptr %call, ptr %retval, align 8, !dbg !5089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5089

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5090
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5090
  store i32 %call2, ptr %index, align 4, !dbg !5091
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5092
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5093
  %9 = ptrtoint ptr %8 to i64, !dbg !5093
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5094
  %idxprom = zext i32 %call3 to i64, !dbg !5095
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5095
  %10 = load i32, ptr %index, align 4, !dbg !5096
  %idxprom4 = zext i32 %10 to i64, !dbg !5095
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5095
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5095
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5097
  %13 = load i64, ptr %size.addr, align 8, !dbg !5098
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !5099
  store ptr %call6, ptr %retval, align 8, !dbg !5100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5100

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5101
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5102
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5103
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !5104
  store ptr %call8, ptr %retval, align 8, !dbg !5105
  br label %return, !dbg !5105

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5106
  ret ptr %16, !dbg !5106
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5107 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !5108 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5112, metadata !DIExpression()), !dbg !5114
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5113, metadata !DIExpression()), !dbg !5115
  %0 = load i64, ptr %size.addr, align 8, !dbg !5116
  %tobool = icmp ne i64 %0, 0, !dbg !5116
  br i1 %tobool, label %if.end, label %if.then, !dbg !5118

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5119
  br label %return, !dbg !5119

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5120
  %cmp = icmp ule i64 %1, 8, !dbg !5122
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5123

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5125
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5127
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5128

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5129
  %cmp4 = icmp ule i64 %3, 96, !dbg !5130
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5131

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5132
  br label %return, !dbg !5132

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5133
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5135
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5136

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5137
  %cmp9 = icmp ule i64 %5, 192, !dbg !5138
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5139

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5140
  br label %return, !dbg !5140

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5141
  %cmp12 = icmp ule i64 %6, 8, !dbg !5143
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5144

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5145
  br label %return, !dbg !5145

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5146
  %cmp15 = icmp ule i64 %7, 16, !dbg !5148
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5149

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5150
  br label %return, !dbg !5150

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5151
  %cmp18 = icmp ule i64 %8, 32, !dbg !5153
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5154

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5156
  %cmp21 = icmp ule i64 %9, 64, !dbg !5158
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5159

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5161
  %cmp24 = icmp ule i64 %10, 128, !dbg !5163
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5164

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5165
  br label %return, !dbg !5165

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5166
  %cmp27 = icmp ule i64 %11, 256, !dbg !5168
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5169

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5171
  %cmp30 = icmp ule i64 %12, 512, !dbg !5173
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5174

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5175
  br label %return, !dbg !5175

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5176
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5178
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5179

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5180
  br label %return, !dbg !5180

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5181
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5183
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5184

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5185
  br label %return, !dbg !5185

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5186
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5188
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5189

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5190
  br label %return, !dbg !5190

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5191
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5193
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5194

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5195
  br label %return, !dbg !5195

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5196
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5198
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5199

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5200
  br label %return, !dbg !5200

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5201
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5203
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5204

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5205
  br label %return, !dbg !5205

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5206
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5208
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5209

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5210
  br label %return, !dbg !5210

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5211
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5213
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5214

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5215
  br label %return, !dbg !5215

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5216
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5218
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5219

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5220
  br label %return, !dbg !5220

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5221
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5223
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5224

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5225
  br label %return, !dbg !5225

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5226
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5228
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5229

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5230
  br label %return, !dbg !5230

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5231
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5233
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5234

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5235
  br label %return, !dbg !5235

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5236, !range !4821, !noundef !907
  %tobool69 = trunc i8 %25 to i1, !dbg !5236
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5238

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5239

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #22, !dbg !5240, !srcloc !5243
  unreachable, !dbg !5240

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5244

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5245

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5246

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5248

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5246

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.21, i32 480, i32 0, i64 12) #17, !dbg !5250, !srcloc !5252
  br label %do.end75, !dbg !5250

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5246

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5253
  br label %return, !dbg !5253

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5254
  ret i32 %26, !dbg !5254
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5255 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !5261 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5265, metadata !DIExpression()), !dbg !5267
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5266, metadata !DIExpression()), !dbg !5268
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5269
  %and = and i32 %0, 17, !dbg !5269
  %cmp = icmp eq i32 %and, 0, !dbg !5269
  %lnot = xor i1 %cmp, true, !dbg !5269
  %lnot1 = xor i1 %lnot, true, !dbg !5269
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5269
  %conv = sext i32 %lnot.ext to i64, !dbg !5269
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5269
  %tobool = icmp ne i64 %expval, 0, !dbg !5269
  br i1 %tobool, label %if.then, label %if.end, !dbg !5271

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5272
  br label %return, !dbg !5272

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5273
  %and2 = and i32 %1, 1, !dbg !5275
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5275
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5276

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5277
  br label %return, !dbg !5277

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5278
  br label %return, !dbg !5278

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5280
  ret i32 %2, !dbg !5280
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5281 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5282 dso_local void @__compiletime_assert_263() #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @esre_release(ptr noundef %kobj) #10 align 16 !dbg !5283 {
entry:
  %kobj.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5285, metadata !DIExpression()), !dbg !5287
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5286, metadata !DIExpression()), !dbg !5289
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5290
  %call = call ptr @to_entry(ptr noundef %0) #18, !dbg !5291
  store ptr %call, ptr %entry1, align 8, !dbg !5289
  %1 = load ptr, ptr %entry1, align 8, !dbg !5292
  %list = getelementptr inbounds %struct.esre_entry, ptr %1, i32 0, i32 2, !dbg !5293
  call void @list_del(ptr noundef %list) #18, !dbg !5294
  %2 = load ptr, ptr %entry1, align 8, !dbg !5295
  call void @kfree(ptr noundef %2) #18, !dbg !5296
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !5297
  ret void, !dbg !5297
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_entry(ptr noundef %kobj) #10 align 16 !dbg !5298 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5302, metadata !DIExpression()), !dbg !5305
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5303, metadata !DIExpression()), !dbg !5306
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5306
  store ptr %0, ptr %__mptr, align 8, !dbg !5306
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5306
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5306
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5306
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5307
  %2 = load ptr, ptr %tmp, align 8, !dbg !5306
  ret ptr %2, !dbg !5308
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !5309 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5315
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !5316
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5317
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5318
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5319
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5320
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5321
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5322
  ret void, !dbg !5323
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5324 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !5327 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5331
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !5333
  br i1 %call, label %if.end, label %if.then, !dbg !5334

if.then:                                          ; preds = %entry
  br label %return, !dbg !5335

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5336
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5337
  %2 = load ptr, ptr %prev, align 8, !dbg !5337
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5338
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5339
  %4 = load ptr, ptr %next, align 8, !dbg !5339
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !5340
  br label %return, !dbg !5341

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5341
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !5342 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  ret i1 true, !dbg !5348
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5349 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5351, metadata !DIExpression()), !dbg !5353
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5352, metadata !DIExpression()), !dbg !5354
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5355
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5356
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5357
  store ptr %0, ptr %prev1, align 8, !dbg !5358
  br label %do.body, !dbg !5359

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5360

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5362

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5360

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5364
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5364
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5364
  store volatile ptr %2, ptr %next4, align 8, !dbg !5364
  br label %do.end5, !dbg !5364

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5360

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5366
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @esre_attr_show(ptr noundef %kobj, ptr noundef %_attr, ptr noundef %buf) #10 align 16 !dbg !5367 {
entry:
  %kobj.addr = alloca ptr, align 8
  %_attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %attr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5369, metadata !DIExpression()), !dbg !5374
  store ptr %_attr, ptr %_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_attr.addr, metadata !5370, metadata !DIExpression()), !dbg !5375
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5371, metadata !DIExpression()), !dbg !5376
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !5377
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5372, metadata !DIExpression()), !dbg !5378
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5379
  %call = call ptr @to_entry(ptr noundef %0) #18, !dbg !5380
  store ptr %call, ptr %entry1, align 8, !dbg !5378
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #17, !dbg !5381
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !5373, metadata !DIExpression()), !dbg !5382
  %1 = load ptr, ptr %_attr.addr, align 8, !dbg !5383
  %call2 = call ptr @to_attr(ptr noundef %1) #18, !dbg !5384
  store ptr %call2, ptr %attr, align 8, !dbg !5382
  %2 = load ptr, ptr %attr, align 8, !dbg !5385
  %show = getelementptr inbounds %struct.esre_attribute, ptr %2, i32 0, i32 1, !dbg !5386
  %3 = load ptr, ptr %show, align 8, !dbg !5386
  %4 = load ptr, ptr %entry1, align 8, !dbg !5387
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5388
  %call3 = call i64 %3(ptr noundef %4, ptr noundef %5) #18, !dbg !5385
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #17, !dbg !5389
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !5389
  ret i64 %call3, !dbg !5390
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_attr(ptr noundef %attr) #10 align 16 !dbg !5391 {
entry:
  %attr.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5395, metadata !DIExpression()), !dbg !5398
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5396, metadata !DIExpression()), !dbg !5399
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !5399
  store ptr %0, ptr %__mptr, align 8, !dbg !5399
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5399
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5399
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5399
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5400
  %2 = load ptr, ptr %tmp, align 8, !dbg !5399
  ret ptr %2, !dbg !5401
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fw_class_show(ptr noundef %entry1, ptr noundef %buf) #10 align 16 !dbg !5402 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5404, metadata !DIExpression()), !dbg !5407
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5405, metadata !DIExpression()), !dbg !5408
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #17, !dbg !5409
  call void @llvm.dbg.declare(metadata ptr %str, metadata !5406, metadata !DIExpression()), !dbg !5410
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5411
  store ptr %0, ptr %str, align 8, !dbg !5410
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5412
  %esre = getelementptr inbounds %struct.esre_entry, ptr %1, i32 0, i32 0, !dbg !5413
  %2 = load ptr, ptr %esre, align 8, !dbg !5414
  %fw_class = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %2, i32 0, i32 0, !dbg !5415
  %3 = load ptr, ptr %str, align 8, !dbg !5416
  %call = call ptr @efi_guid_to_str(ptr noundef %fw_class, ptr noundef %3) #18, !dbg !5417
  %4 = load ptr, ptr %str, align 8, !dbg !5418
  %call2 = call i64 @strlen(ptr noundef %4) #18, !dbg !5419
  %5 = load ptr, ptr %str, align 8, !dbg !5420
  %add.ptr = getelementptr i8, ptr %5, i64 %call2, !dbg !5420
  store ptr %add.ptr, ptr %str, align 8, !dbg !5420
  %6 = load ptr, ptr %str, align 8, !dbg !5421
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.23) #18, !dbg !5422
  %7 = load ptr, ptr %str, align 8, !dbg !5423
  %idx.ext = sext i32 %call3 to i64, !dbg !5423
  %add.ptr4 = getelementptr i8, ptr %7, i64 %idx.ext, !dbg !5423
  store ptr %add.ptr4, ptr %str, align 8, !dbg !5423
  %8 = load ptr, ptr %str, align 8, !dbg !5424
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !5425
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64, !dbg !5426
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64, !dbg !5426
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5426
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #17, !dbg !5427
  ret i64 %sub.ptr.sub, !dbg !5428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @efi_guid_to_str(ptr noundef %guid, ptr noundef %out) #3 align 16 !dbg !5429 {
entry:
  %guid.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !5434, metadata !DIExpression()), !dbg !5436
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !5435, metadata !DIExpression()), !dbg !5437
  %0 = load ptr, ptr %out.addr, align 8, !dbg !5438
  %1 = load ptr, ptr %guid.addr, align 8, !dbg !5439
  %b = getelementptr inbounds %struct.guid_t, ptr %1, i32 0, i32 0, !dbg !5440
  %arraydecay = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !5439
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.24, ptr noundef %arraydecay) #18, !dbg !5441
  %2 = load ptr, ptr %out.addr, align 8, !dbg !5442
  ret ptr %2, !dbg !5443
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5444 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fw_type_show(ptr noundef %entry1, ptr noundef %buf) #10 align 16 !dbg !5448 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5450, metadata !DIExpression()), !dbg !5452
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5452
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5452
  %esre = getelementptr inbounds %struct.esre_entry, ptr %1, i32 0, i32 0, !dbg !5452
  %2 = load ptr, ptr %esre, align 8, !dbg !5452
  %fw_type = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %2, i32 0, i32 1, !dbg !5452
  %3 = load i32, ptr %fw_type, align 4, !dbg !5452
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i32 noundef %3) #18, !dbg !5452
  %conv = sext i32 %call to i64, !dbg !5452
  ret i64 %conv, !dbg !5452
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @fw_version_show(ptr noundef %entry1, ptr noundef %buf) #10 align 16 !dbg !5453 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5455, metadata !DIExpression()), !dbg !5457
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5457
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5457
  %esre = getelementptr inbounds %struct.esre_entry, ptr %1, i32 0, i32 0, !dbg !5457
  %2 = load ptr, ptr %esre, align 8, !dbg !5457
  %fw_version = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %2, i32 0, i32 2, !dbg !5457
  %3 = load i32, ptr %fw_version, align 4, !dbg !5457
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i32 noundef %3) #18, !dbg !5457
  %conv = sext i32 %call to i64, !dbg !5457
  ret i64 %conv, !dbg !5457
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @lowest_supported_fw_version_show(ptr noundef %entry1, ptr noundef %buf) #10 align 16 !dbg !5458 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5460, metadata !DIExpression()), !dbg !5462
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5461, metadata !DIExpression()), !dbg !5462
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5462
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5462
  %esre = getelementptr inbounds %struct.esre_entry, ptr %1, i32 0, i32 0, !dbg !5462
  %2 = load ptr, ptr %esre, align 8, !dbg !5462
  %lowest_supported_fw_version = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %2, i32 0, i32 3, !dbg !5462
  %3 = load i32, ptr %lowest_supported_fw_version, align 4, !dbg !5462
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i32 noundef %3) #18, !dbg !5462
  %conv = sext i32 %call to i64, !dbg !5462
  ret i64 %conv, !dbg !5462
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @capsule_flags_show(ptr noundef %entry1, ptr noundef %buf) #10 align 16 !dbg !5463 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5465, metadata !DIExpression()), !dbg !5467
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5467
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5467
  %esre = getelementptr inbounds %struct.esre_entry, ptr %1, i32 0, i32 0, !dbg !5467
  %2 = load ptr, ptr %esre, align 8, !dbg !5467
  %capsule_flags = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %2, i32 0, i32 4, !dbg !5467
  %3 = load i32, ptr %capsule_flags, align 4, !dbg !5467
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.29, i32 noundef %3) #18, !dbg !5467
  %conv = sext i32 %call to i64, !dbg !5467
  ret i64 %conv, !dbg !5467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @last_attempt_version_show(ptr noundef %entry1, ptr noundef %buf) #10 align 16 !dbg !5468 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5470, metadata !DIExpression()), !dbg !5472
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5471, metadata !DIExpression()), !dbg !5472
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5472
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5472
  %esre = getelementptr inbounds %struct.esre_entry, ptr %1, i32 0, i32 0, !dbg !5472
  %2 = load ptr, ptr %esre, align 8, !dbg !5472
  %last_attempt_version = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %2, i32 0, i32 5, !dbg !5472
  %3 = load i32, ptr %last_attempt_version, align 4, !dbg !5472
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i32 noundef %3) #18, !dbg !5472
  %conv = sext i32 %call to i64, !dbg !5472
  ret i64 %conv, !dbg !5472
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @last_attempt_status_show(ptr noundef %entry1, ptr noundef %buf) #10 align 16 !dbg !5473 {
entry:
  %entry.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5475, metadata !DIExpression()), !dbg !5477
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5477
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5477
  %esre = getelementptr inbounds %struct.esre_entry, ptr %1, i32 0, i32 0, !dbg !5477
  %2 = load ptr, ptr %esre, align 8, !dbg !5477
  %last_attempt_status = getelementptr inbounds %struct.efi_system_resource_entry_v1, ptr %2, i32 0, i32 6, !dbg !5477
  %3 = load i32, ptr %last_attempt_status, align 4, !dbg !5477
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i32 noundef %3) #18, !dbg !5477
  %conv = sext i32 %call to i64, !dbg !5477
  ret i64 %conv, !dbg !5477
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5478 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5482, metadata !DIExpression()), !dbg !5485
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5483, metadata !DIExpression()), !dbg !5486
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5484, metadata !DIExpression()), !dbg !5487
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5488
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5490
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5491
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !5492
  br i1 %call, label %if.end, label %if.then, !dbg !5493

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5494

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5495
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5496
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5497
  store ptr %3, ptr %prev1, align 8, !dbg !5498
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5499
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5500
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5501
  store ptr %5, ptr %next2, align 8, !dbg !5502
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5503
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5504
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5505
  store ptr %7, ptr %prev3, align 8, !dbg !5506
  br label %do.body, !dbg !5507

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5508

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5510

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5508

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5512
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5512
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5512
  store volatile ptr %9, ptr %next6, align 8, !dbg !5512
  br label %do.end7, !dbg !5512

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5508

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5514
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5515 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5519, metadata !DIExpression()), !dbg !5522
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5520, metadata !DIExpression()), !dbg !5523
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5521, metadata !DIExpression()), !dbg !5524
  ret i1 true, !dbg !5525
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!39}
!llvm.module.flags = !{!4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349}
!llvm.ident = !{!4350}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/esrt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "851c14c191abb70c121c0f3103523262")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 47)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 656, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 82)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 41)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 40)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 78)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 75)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "esrt_data", scope: !39, file: !2, line: 57, type: !153, isLocal: true, isDefinition: true)
!39 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/.esrt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/firmware/efi/esrt\22 -D KBUILD_BASENAME=\22esrt\22 -D KBUILD_MODNAME=\22esrt\22 -D __KBUILD_MODNAME=kmod_esrt -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/esrt.ll drivers/firmware/efi/esrt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !146, globals: !4181, splitDebugInlining: false, nameTableKind: None)
!40 = !{!41, !47, !55, !62, !67, !75, !91, !99, !105, !110, !116, !123, !130, !136}
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 10, baseType: !43, size: 32, elements: !44)
!42 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "false", value: 0)
!46 = !DIEnumerator(name: "true", value: 1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 140, baseType: !43, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!51 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!52 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!53 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!54 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !56, line: 312, baseType: !43, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!59 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!60 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!61 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !63, line: 2052, baseType: !43, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!66 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !68, line: 9, baseType: !43, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!69 = !{!70, !71, !72, !73, !74}
!70 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!71 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!72 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!73 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!74 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !76, line: 1325, baseType: !43, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!78 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!79 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!80 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!81 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!82 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!83 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!84 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!85 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!86 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!87 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!88 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!89 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!90 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !92, line: 68, baseType: !43, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!95 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!96 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!97 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!98 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !100, line: 54, baseType: !43, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "USRQUOTA", value: 0)
!103 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!104 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !106, line: 65, baseType: !43, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!109 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !111, line: 16, baseType: !43, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "TT_NONE", value: 0)
!114 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!115 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !117, line: 51, baseType: !43, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!120 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!121 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!122 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !124, line: 15, baseType: !43, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!127 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!128 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!129 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !131, line: 26, baseType: !43, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!134 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!135 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !137, line: 364, baseType: !43, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!138 = !{!139, !140, !141, !142, !143, !144, !145}
!139 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!140 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!141 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!142 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!143 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!144 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!145 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!146 = !{!147, !152, !153, !155, !157, !159, !160, !161, !149, !163, !164, !156, !165, !4167, !4169}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !148, line: 23, baseType: !149)
!148 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !150, line: 31, baseType: !151)
!150 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!151 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !154, line: 159, baseType: !147)
!154 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !154, line: 42, baseType: !156)
!156 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !150, line: 27, baseType: !43)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !162, line: 38, baseType: !160)
!162 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !162, line: 40, baseType: !149)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !154, line: 154, baseType: !43)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "esre_entry", file: !2, line: 62, size: 704, elements: !167)
!167 = !{!168, !195, !4166}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "esre", scope: !166, file: !2, line: 65, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !2, line: 63, size: 64, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "esre1", scope: !169, file: !2, line: 64, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_system_resource_entry_v1", file: !2, line: 31, size: 320, elements: !174)
!174 = !{!175, !188, !190, !191, !192, !193, !194}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fw_class", scope: !173, file: !2, line: 32, baseType: !176, size: 128, align: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !177, line: 74, baseType: !178, align: 32)
!177 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !179, line: 17, baseType: !180)
!179 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 15, size: 128, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !180, file: !179, line: 16, baseType: !183, size: 128)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !186)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !150, line: 21, baseType: !185)
!185 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !{!187}
!187 = !DISubrange(count: 16)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fw_type", scope: !173, file: !2, line: 33, baseType: !189, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !148, line: 21, baseType: !160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fw_version", scope: !173, file: !2, line: 34, baseType: !189, size: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_supported_fw_version", scope: !173, file: !2, line: 35, baseType: !189, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "capsule_flags", scope: !173, file: !2, line: 36, baseType: !189, size: 32, offset: 224)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "last_attempt_version", scope: !173, file: !2, line: 37, baseType: !189, size: 32, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "last_attempt_status", scope: !173, file: !2, line: 38, baseType: !189, size: 32, offset: 288)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !166, file: !2, line: 67, baseType: !196, size: 512, offset: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !197, line: 64, size: 512, elements: !198)
!197 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!198 = !{!199, !202, !208, !210, !296, !4065, !4156, !4161, !4162, !4163, !4164, !4165}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !197, line: 65, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !196, file: !197, line: 66, baseType: !203, size: 128, offset: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !154, line: 190, size: 128, elements: !204)
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !154, line: 191, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !203, file: !154, line: 191, baseType: !206, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !197, line: 67, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !196, file: !197, line: 68, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !197, line: 168, size: 768, elements: !213)
!213 = !{!214, !215, !255, !256}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !212, file: !197, line: 169, baseType: !203, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !212, file: !197, line: 170, baseType: !216, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !217, line: 29, baseType: !218)
!217 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !217, line: 17, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !217, line: 18, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 18, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !221, file: !217, line: 19, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !225, line: 14, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !224, file: !225, line: 15, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !229, line: 44, baseType: !230)
!229 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !229, line: 14, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !229, line: 15, baseType: !233, size: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !229, line: 15, size: 32, elements: !234)
!234 = !{!235, !241, !247}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !233, file: !229, line: 16, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !154, line: 174, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 172, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !237, file: !154, line: 173, baseType: !240, size: 32)
!240 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !229, line: 24, baseType: !242, size: 16)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !229, line: 24, size: 16, elements: !243)
!243 = !{!244, !246}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !242, file: !229, line: 25, baseType: !245, size: 8)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !148, line: 17, baseType: !184)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !242, file: !229, line: 26, baseType: !245, size: 8, offset: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !229, line: 28, baseType: !248, size: 32)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !229, line: 28, size: 32, elements: !249)
!249 = !{!250, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !248, file: !229, line: 29, baseType: !251, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !148, line: 19, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !150, line: 24, baseType: !253)
!253 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !248, file: !229, line: 30, baseType: !251, size: 16, offset: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !212, file: !197, line: 171, baseType: !196, size: 512, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !212, file: !197, line: 172, baseType: !257, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !197, line: 133, size: 192, elements: !260)
!260 = !{!261, !268, !273}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !259, file: !197, line: 134, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!240, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !197, line: 135, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!200, !266}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !259, file: !197, line: 136, baseType: !274, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!240, !266, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !197, line: 125, size: 20736, elements: !280)
!280 = !{!281, !286, !290, !291, !295}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !279, file: !197, line: 126, baseType: !282, size: 192)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 192, elements: !284)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!284 = !{!285}
!285 = !DISubrange(count: 3)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !279, file: !197, line: 127, baseType: !287, size: 4096, offset: 192)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 4096, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !279, file: !197, line: 128, baseType: !240, size: 32, offset: 4288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !279, file: !197, line: 129, baseType: !292, size: 16384, offset: 4320)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 2048)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !279, file: !197, line: 130, baseType: !240, size: 32, offset: 20704)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !196, file: !197, line: 69, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !197, line: 116, size: 384, elements: !300)
!300 = !{!301, !305, !333, !4027, !4055, !4059}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !299, file: !197, line: 117, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !209}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !299, file: !197, line: 118, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !309, line: 254, size: 128, elements: !310)
!309 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!310 = !{!311, !326}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !308, file: !309, line: 255, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !209, !320, !283}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !154, line: 66, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !317, line: 73, baseType: !318)
!317 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !317, line: 15, baseType: !319)
!319 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !309, line: 30, size: 128, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !309, line: 31, baseType: !200, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !321, file: !309, line: 32, baseType: !325, size: 16, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !154, line: 24, baseType: !253)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !308, file: !309, line: 256, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!315, !209, !320, !200, !330}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 61, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !317, line: 72, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !317, line: 16, baseType: !156)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !299, file: !197, line: 119, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !309, line: 84, size: 320, elements: !338)
!338 = !{!339, !340, !344, !4023, !4025}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !309, line: 85, baseType: !200, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !337, file: !309, line: 86, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!325, !209, !320, !240}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !337, file: !309, line: 88, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!325, !209, !348, !240}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !309, line: 175, size: 512, elements: !350)
!350 = !{!351, !352, !353, !354, !4014, !4018, !4019}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !349, file: !309, line: 176, baseType: !321, size: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !349, file: !309, line: 177, baseType: !330, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !349, file: !309, line: 178, baseType: !152, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !349, file: !309, line: 179, baseType: !355, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !63, line: 472, size: 1536, align: 64, elements: !360)
!360 = !{!361, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !4008, !4009, !4010, !4011, !4012, !4013}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !359, file: !63, line: 473, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !63, line: 641, size: 4800, elements: !364)
!364 = !{!365, !366, !367, !375, !376, !383, !384, !387, !388, !3779, !3780, !3781, !3782, !3783, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3823, !3826, !3827, !3828, !3845, !3846, !3847, !3848}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !363, file: !63, line: 642, baseType: !325, size: 16)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !363, file: !63, line: 643, baseType: !253, size: 16, offset: 16)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !363, file: !63, line: 644, baseType: !368, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !369, line: 23, baseType: !370)
!369 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 21, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !370, file: !369, line: 22, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !154, line: 37, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !317, line: 49, baseType: !43)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !363, file: !63, line: 645, baseType: !203, size: 128, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !363, file: !63, line: 646, baseType: !377, size: 32, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !369, line: 28, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 26, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !369, line: 27, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !154, line: 38, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !317, line: 50, baseType: !43)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !363, file: !63, line: 647, baseType: !43, size: 32, offset: 224)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !363, file: !63, line: 650, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !63, line: 607, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !363, file: !63, line: 651, baseType: !385, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !363, file: !63, line: 654, baseType: !389, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !63, line: 1966, size: 2048, align: 512, elements: !392)
!392 = !{!393, !3607, !3617, !3621, !3625, !3629, !3633, !3637, !3641, !3645, !3649, !3650, !3654, !3658, !3695, !3724, !3728, !3734, !3738, !3742, !3746, !3750, !3754, !3760, !3764}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !391, file: !63, line: 1967, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !362, !397, !43}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !399, line: 82, size: 1536, elements: !400)
!399 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!400 = !{!401, !402, !412, !420, !421, !436, !437, !441, !454, !3591, !3592, !3593, !3594, !3599, !3600, !3601}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !398, file: !399, line: 84, baseType: !43, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !398, file: !399, line: 85, baseType: !403, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !404, line: 275, baseType: !405)
!404 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !404, line: 275, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !405, file: !404, line: 275, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !404, line: 69, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !404, line: 64, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !409, file: !404, line: 65, baseType: !43, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !398, file: !399, line: 86, baseType: !413, size: 128, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !414, line: 38, size: 128, elements: !415)
!414 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !414, line: 39, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !413, file: !414, line: 39, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !398, file: !399, line: 87, baseType: !397, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !398, file: !399, line: 88, baseType: !422, size: 128, offset: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !399, line: 49, size: 128, elements: !423)
!423 = !{!424, !433}
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !422, file: !399, line: 50, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !399, line: 50, size: 64, elements: !426)
!426 = !{!427, !432}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !399, line: 51, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !425, file: !399, line: 51, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !428, file: !399, line: 52, baseType: !189, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !428, file: !399, line: 52, baseType: !189, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !425, file: !399, line: 54, baseType: !147, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !422, file: !399, line: 56, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !398, file: !399, line: 89, baseType: !362, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !398, file: !399, line: 91, baseType: !438, size: 256, offset: 448)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !398, file: !399, line: 94, baseType: !442, size: 64, offset: 704)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !443, line: 25, size: 64, elements: !444)
!443 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 26, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 26, size: 64, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !446, file: !443, line: 28, baseType: !149, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !443, line: 30, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !443, line: 30, size: 64, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !450, file: !443, line: 31, baseType: !216, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !450, file: !443, line: 32, baseType: !240, size: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !398, file: !399, line: 95, baseType: !455, size: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !399, line: 128, size: 1024, align: 512, elements: !458)
!458 = !{!459, !463, !464, !471, !477, !481, !485, !489, !490, !494, !498, !3581, !3585}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !457, file: !399, line: 129, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!240, !397, !43}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !457, file: !399, line: 130, baseType: !460, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !457, file: !399, line: 131, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!240, !468, !470}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !457, file: !399, line: 132, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!240, !468, !43, !200, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !457, file: !399, line: 134, baseType: !478, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!240, !468}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !457, file: !399, line: 135, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!240, !397}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !457, file: !399, line: 136, baseType: !486, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !397}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !457, file: !399, line: 137, baseType: !486, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !457, file: !399, line: 138, baseType: !491, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !397, !362}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !457, file: !399, line: 139, baseType: !495, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!283, !397, !283, !240}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !457, file: !399, line: 140, baseType: !499, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !3580}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !504, line: 70, size: 256, elements: !505)
!504 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!505 = !{!506, !507, !3576, !3577}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !503, file: !504, line: 71, baseType: !397, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !503, file: !504, line: 72, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !63, line: 1190, size: 10752, elements: !510)
!510 = !{!511, !512, !515, !516, !517, !521, !1000, !2089, !2129, !2214, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2231, !2235, !2236, !2239, !2242, !2245, !2248, !2249, !2250, !2291, !3511, !3512, !3513, !3514, !3515, !3516, !3519, !3521, !3526, !3527, !3528, !3529, !3530, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !509, file: !63, line: 1191, baseType: !203, size: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !509, file: !63, line: 1192, baseType: !513, size: 32, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !154, line: 21, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !154, line: 18, baseType: !189)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !509, file: !63, line: 1193, baseType: !185, size: 8, offset: 160)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !509, file: !63, line: 1194, baseType: !156, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !509, file: !63, line: 1195, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !154, line: 52, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !317, line: 88, baseType: !520)
!520 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !509, file: !63, line: 1196, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !63, line: 2366, size: 576, elements: !524)
!524 = !{!525, !526, !527, !534, !538, !542, !546, !985, !986, !990, !992, !993, !994, !996, !997, !998, !999}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !523, file: !63, line: 2367, baseType: !200, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !523, file: !63, line: 2368, baseType: !240, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !523, file: !63, line: 2376, baseType: !528, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!240, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !533, line: 32, flags: DIFlagFwdDecl)
!533 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!534 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !523, file: !63, line: 2377, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !63, line: 75, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !523, file: !63, line: 2378, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!397, !522, !240, !200, !152}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !523, file: !63, line: 2380, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !508}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !523, file: !63, line: 2381, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !56, line: 402, size: 9216, align: 512, elements: !549)
!549 = !{!550, !551, !552, !556, !578, !604, !605, !606, !607, !611, !616, !617, !637, !693, !694, !695, !696, !697, !700, !701, !702, !710, !714, !741, !762, !763, !764, !765, !774, !797, !798, !801, !804, !805, !806, !807, !808, !809, !810, !815, !816, !944, !952, !953, !954, !956, !960, !961, !965, !966, !967, !968, !969, !970, !971, !978, !979, !980, !984}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !548, file: !56, line: 403, baseType: !55, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !548, file: !56, line: 406, baseType: !203, size: 128, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !56, line: 409, baseType: !553, size: 448, offset: 192)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 56)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !548, file: !56, line: 417, baseType: !557, size: 768, offset: 640)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !56, line: 45, size: 768, elements: !558)
!558 = !{!559, !560, !561, !562, !565}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !557, file: !56, line: 46, baseType: !196, size: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !557, file: !56, line: 47, baseType: !547, size: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !557, file: !56, line: 48, baseType: !209, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !557, file: !56, line: 49, baseType: !563, size: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !56, line: 49, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !557, file: !56, line: 50, baseType: !566, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !568, line: 26, size: 256, elements: !569)
!568 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !567, file: !568, line: 27, baseType: !43, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !567, file: !568, line: 28, baseType: !572, size: 192, offset: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !573, line: 43, size: 192, elements: !574)
!573 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!574 = !{!575, !577}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !572, file: !573, line: 44, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !225, line: 23, baseType: !224)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !572, file: !573, line: 45, baseType: !203, size: 128, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !548, file: !56, line: 418, baseType: !579, size: 64, offset: 1408)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !56, line: 53, size: 448, elements: !581)
!581 = !{!582, !583, !588, !592, !596, !600}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !580, file: !56, line: 54, baseType: !321, size: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !580, file: !56, line: 55, baseType: !584, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!315, !579, !587, !283}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !580, file: !56, line: 57, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!315, !579, !587, !200, !330}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !580, file: !56, line: 59, baseType: !593, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !547, !200}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !580, file: !56, line: 60, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!240, !547}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !580, file: !56, line: 61, baseType: !601, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !547}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !548, file: !56, line: 419, baseType: !200, size: 64, offset: 1472)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !548, file: !56, line: 420, baseType: !200, size: 64, offset: 1536)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !548, file: !56, line: 421, baseType: !209, size: 64, offset: 1600)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !548, file: !56, line: 424, baseType: !608, size: 64, offset: 1664)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !56, line: 424, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !548, file: !56, line: 425, baseType: !612, size: 64, offset: 1728)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !148, line: 20, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !150, line: 26, baseType: !240)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !548, file: !56, line: 426, baseType: !43, size: 32, offset: 1792)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !548, file: !56, line: 435, baseType: !618, size: 256, offset: 1856)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !619, line: 66, size: 256, elements: !620)
!619 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!620 = !{!621, !630, !631, !636}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !618, file: !619, line: 67, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !623, line: 13, baseType: !624)
!623 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !154, line: 181, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 179, size: 64, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !625, file: !154, line: 180, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !148, line: 22, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !150, line: 30, baseType: !520)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !618, file: !619, line: 68, baseType: !576, size: 32, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !618, file: !619, line: 70, baseType: !632, size: 32, offset: 96)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !633, line: 15, size: 32, elements: !634)
!633 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !632, file: !633, line: 20, baseType: !236, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !618, file: !619, line: 72, baseType: !203, size: 128, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !548, file: !56, line: 437, baseType: !638, size: 64, offset: 2112)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !640, line: 69, size: 320, elements: !641)
!640 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!641 = !{!642, !643, !644, !664, !666, !670, !671}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !639, file: !640, line: 70, baseType: !200, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !639, file: !640, line: 71, baseType: !547, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !639, file: !640, line: 72, baseType: !645, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !640, line: 47, size: 256, elements: !648)
!648 = !{!649, !650, !656, !660}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !640, line: 49, baseType: !43, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !647, file: !640, line: 51, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!240, !200, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !647, file: !640, line: 53, baseType: !657, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!240, !283, !654}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !647, file: !640, line: 55, baseType: !661, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !152}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !639, file: !640, line: 73, baseType: !665, size: 16, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !639, file: !640, line: 74, baseType: !667, size: 8, offset: 208)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !148, line: 16, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !150, line: 20, baseType: !669)
!669 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !640, line: 75, baseType: !245, size: 8, offset: 216)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !640, line: 76, baseType: !672, size: 64, offset: 256)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !640, line: 76, size: 64, elements: !673)
!673 = !{!674, !675, !682}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !672, file: !640, line: 77, baseType: !152, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !672, file: !640, line: 78, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !640, line: 86, size: 128, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !678, file: !640, line: 87, baseType: !43, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !678, file: !640, line: 88, baseType: !283, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !672, file: !640, line: 79, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !640, line: 92, size: 256, elements: !686)
!686 = !{!687, !688, !689, !691, !692}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !685, file: !640, line: 94, baseType: !43, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !685, file: !640, line: 95, baseType: !43, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !685, file: !640, line: 96, baseType: !690, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !685, file: !640, line: 97, baseType: !645, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !685, file: !640, line: 98, baseType: !152, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !548, file: !56, line: 438, baseType: !43, size: 32, offset: 2176)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !548, file: !56, line: 441, baseType: !43, size: 32, offset: 2208)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !548, file: !56, line: 442, baseType: !608, size: 64, offset: 2240)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !548, file: !56, line: 443, baseType: !612, size: 64, offset: 2304)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !548, file: !56, line: 444, baseType: !698, size: 8, offset: 2368)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !154, line: 35, baseType: !699)
!699 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !548, file: !56, line: 451, baseType: !698, size: 8, offset: 2376)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !548, file: !56, line: 454, baseType: !43, size: 32, offset: 2400)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !548, file: !56, line: 455, baseType: !703, size: 64, offset: 2432)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !705, line: 23, size: 96, elements: !706)
!705 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !704, file: !705, line: 24, baseType: !240, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !704, file: !705, line: 24, baseType: !240, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !704, file: !705, line: 24, baseType: !240, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !548, file: !56, line: 458, baseType: !711, size: 64, offset: 2496)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!240}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !548, file: !56, line: 460, baseType: !715, size: 4032, align: 512, offset: 2560)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 4032, elements: !739)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !56, line: 362, size: 576, elements: !717)
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !716, file: !56, line: 363, baseType: !152, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !716, file: !56, line: 364, baseType: !43, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !716, file: !56, line: 367, baseType: !721, size: 448, offset: 128)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !56, line: 319, size: 448, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !721, file: !56, line: 320, baseType: !547, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !56, line: 321, baseType: !725, size: 384, offset: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !726, line: 40, size: 384, elements: !727)
!726 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !726, line: 41, baseType: !729, size: 384, align: 64)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 384, align: 64, elements: !737)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !731, line: 5, size: 192, align: 64, elements: !732)
!731 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!732 = !{!733, !734, !736}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !730, file: !731, line: 6, baseType: !156, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !730, file: !731, line: 7, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !730, file: !731, line: 8, baseType: !735, size: 64, offset: 128)
!737 = !{!738}
!738 = !DISubrange(count: 2)
!739 = !{!740}
!740 = !DISubrange(count: 7)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !548, file: !56, line: 463, baseType: !742, size: 192, offset: 6592)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !743, line: 8, size: 192, elements: !744)
!743 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!744 = !{!745, !746, !748}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !742, file: !743, line: 10, baseType: !43, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !742, file: !743, line: 11, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !742, file: !743, line: 12, baseType: !749, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !751, line: 59, size: 48, elements: !752)
!751 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!752 = !{!753, !757, !758, !759, !760, !761}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !750, file: !751, line: 60, baseType: !754, size: 16)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !148, line: 18, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !150, line: 23, baseType: !756)
!756 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !750, file: !751, line: 61, baseType: !754, size: 16, offset: 16)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !750, file: !751, line: 63, baseType: !43, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !750, file: !751, line: 64, baseType: !43, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !751, line: 65, baseType: !43, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !750, file: !751, line: 66, baseType: !43, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !548, file: !56, line: 465, baseType: !156, size: 64, offset: 6784)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !548, file: !56, line: 469, baseType: !43, size: 32, offset: 6848)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !548, file: !56, line: 470, baseType: !203, size: 128, offset: 6912)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !548, file: !56, line: 471, baseType: !766, size: 64, offset: 7040)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !768, line: 33, size: 96, elements: !769)
!768 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!769 = !{!770, !771, !772, !773}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !767, file: !768, line: 37, baseType: !240, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !767, file: !768, line: 43, baseType: !240, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !767, file: !768, line: 45, baseType: !253, size: 16, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !768, line: 47, baseType: !253, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !548, file: !56, line: 476, baseType: !775, size: 64, offset: 7104)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !56, line: 378, size: 256, elements: !777)
!777 = !{!778, !794, !795, !796}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !776, file: !56, line: 379, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !781, line: 204, baseType: !782)
!781 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !781, line: 197, size: 192, elements: !783)
!783 = !{!784, !786, !787, !788, !790, !792}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !782, file: !781, line: 198, baseType: !785, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !781, line: 21, baseType: !160)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !782, file: !781, line: 199, baseType: !185, size: 8, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !782, file: !781, line: 200, baseType: !185, size: 8, offset: 40)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !782, file: !781, line: 201, baseType: !789, size: 16, offset: 48)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !781, line: 17, baseType: !252)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !782, file: !781, line: 202, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !781, line: 16, baseType: !149)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !782, file: !781, line: 203, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !781, line: 22, baseType: !149)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !776, file: !56, line: 380, baseType: !43, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !776, file: !56, line: 381, baseType: !283, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !776, file: !56, line: 382, baseType: !283, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !548, file: !56, line: 477, baseType: !776, size: 256, offset: 7168)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !548, file: !56, line: 480, baseType: !799, size: 64, offset: 7424)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !56, line: 480, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !548, file: !56, line: 483, baseType: !802, size: 64, offset: 7488)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !56, line: 483, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !548, file: !56, line: 488, baseType: !283, size: 64, offset: 7552)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !548, file: !56, line: 492, baseType: !152, size: 64, offset: 7616)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !548, file: !56, line: 493, baseType: !43, size: 32, offset: 7680)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !548, file: !56, line: 495, baseType: !152, size: 64, offset: 7744)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !548, file: !56, line: 496, baseType: !43, size: 32, offset: 7808)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !548, file: !56, line: 499, baseType: !43, size: 32, offset: 7840)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !548, file: !56, line: 500, baseType: !811, size: 64, offset: 7872)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !813, line: 45, baseType: !814)
!813 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !548, file: !56, line: 503, baseType: !43, size: 32, offset: 7936)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !548, file: !56, line: 504, baseType: !817, size: 64, offset: 8000)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !820, line: 96, size: 192, elements: !821)
!820 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!821 = !{!822, !823, !904, !908}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !819, file: !820, line: 97, baseType: !43, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !819, file: !820, line: 98, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !820, line: 24, size: 3072, elements: !826)
!826 = !{!827, !829, !830, !831, !832, !856, !857, !858, !859, !877, !889, !890, !901, !902, !903}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !825, file: !820, line: 26, baseType: !828, size: 128)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 128, elements: !737)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !825, file: !820, line: 27, baseType: !828, size: 128, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !825, file: !820, line: 28, baseType: !240, size: 32, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !825, file: !820, line: 31, baseType: !216, size: 32, align: 512, offset: 512)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !825, file: !820, line: 32, baseType: !833, size: 960, offset: 576)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !834, line: 206, size: 960, elements: !835)
!834 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!835 = !{!836, !845, !850, !852, !853, !855}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !833, file: !834, line: 207, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !154, line: 232, size: 128, align: 64, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !838, file: !154, line: 233, baseType: !837, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !838, file: !154, line: 234, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !837}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !833, file: !834, line: 208, baseType: !846, size: 256, offset: 64)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 256, elements: !848)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!848 = !{!849}
!849 = !DISubrange(count: 4)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !833, file: !834, line: 209, baseType: !851, size: 256, offset: 320)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 256, elements: !848)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !833, file: !834, line: 213, baseType: !319, size: 64, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !833, file: !834, line: 215, baseType: !854, size: 256, offset: 640)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 256, elements: !848)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !834, line: 216, baseType: !245, size: 8, offset: 896)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !825, file: !820, line: 33, baseType: !156, size: 64, offset: 1536)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !825, file: !820, line: 34, baseType: !156, size: 64, offset: 1600)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !825, file: !820, line: 35, baseType: !698, size: 8, offset: 1664)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !825, file: !820, line: 36, baseType: !860, size: 320, offset: 1728)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !861, line: 11, size: 320, elements: !862)
!861 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!862 = !{!863, !870, !871, !876}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !860, file: !861, line: 16, baseType: !864, size: 128)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !154, line: 198, size: 128, elements: !865)
!865 = !{!866, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !864, file: !154, line: 199, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !864, file: !154, line: 199, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !860, file: !861, line: 17, baseType: !156, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !860, file: !861, line: 18, baseType: !872, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !875}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !860, file: !861, line: 19, baseType: !189, size: 32, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !825, file: !820, line: 37, baseType: !878, size: 256, offset: 2048)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !879, line: 98, size: 256, elements: !880)
!879 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !878, file: !879, line: 99, baseType: !622, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !878, file: !879, line: 100, baseType: !203, size: 128, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !878, file: !879, line: 101, baseType: !884, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !879, line: 21, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !825, file: !820, line: 38, baseType: !838, size: 128, align: 64, offset: 2304)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !825, file: !820, line: 39, baseType: !891, size: 64, offset: 2432)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !820, line: 49, size: 768, elements: !893)
!893 = !{!894, !895, !896, !897, !898, !899, !900}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !892, file: !820, line: 50, baseType: !216, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !892, file: !820, line: 51, baseType: !851, size: 256, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !892, file: !820, line: 53, baseType: !851, size: 256, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !892, file: !820, line: 54, baseType: !156, size: 64, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !892, file: !820, line: 55, baseType: !891, size: 64, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !892, file: !820, line: 56, baseType: !240, size: 32, offset: 704)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !892, file: !820, line: 57, baseType: !240, size: 32, offset: 736)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !825, file: !820, line: 40, baseType: !156, size: 64, offset: 2496)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !825, file: !820, line: 42, baseType: !240, size: 32, offset: 2560)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !825, file: !820, line: 43, baseType: !818, size: 64, offset: 2624)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !819, file: !820, line: 99, baseType: !905, offset: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !906, line: 211, elements: !907)
!906 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!907 = !{}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !819, file: !820, line: 100, baseType: !909, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !820, line: 63, size: 3008, elements: !911)
!911 = !{!912, !913, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !943}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !910, file: !820, line: 64, baseType: !891, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !910, file: !820, line: 65, baseType: !914, size: 192, offset: 64)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 192, elements: !284)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !910, file: !820, line: 67, baseType: !240, size: 32, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !910, file: !820, line: 68, baseType: !618, size: 256, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !910, file: !820, line: 69, baseType: !216, size: 32, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !910, file: !820, line: 70, baseType: !618, size: 256, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !910, file: !820, line: 71, baseType: !156, size: 64, offset: 896)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !910, file: !820, line: 72, baseType: !156, size: 64, offset: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !910, file: !820, line: 73, baseType: !156, size: 64, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !910, file: !820, line: 74, baseType: !156, size: 64, offset: 1088)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !910, file: !820, line: 75, baseType: !156, size: 64, offset: 1152)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !910, file: !820, line: 76, baseType: !156, size: 64, offset: 1216)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !910, file: !820, line: 77, baseType: !156, size: 64, offset: 1280)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !910, file: !820, line: 78, baseType: !156, size: 64, offset: 1344)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !910, file: !820, line: 79, baseType: !698, size: 8, offset: 1408)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !910, file: !820, line: 80, baseType: !156, size: 64, offset: 1472)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !910, file: !820, line: 81, baseType: !618, size: 256, offset: 1536)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !910, file: !820, line: 82, baseType: !567, size: 256, offset: 1792)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !910, file: !820, line: 84, baseType: !236, size: 32, offset: 2048)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !910, file: !820, line: 87, baseType: !156, size: 64, offset: 2112)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !910, file: !820, line: 88, baseType: !156, size: 64, offset: 2176)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !910, file: !820, line: 89, baseType: !935, size: 704, offset: 2240)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !879, line: 111, size: 704, elements: !936)
!936 = !{!937, !938, !939, !942}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !935, file: !879, line: 112, baseType: !878, size: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !935, file: !879, line: 113, baseType: !860, size: 320, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !935, file: !879, line: 116, baseType: !940, size: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !879, line: 18, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !935, file: !879, line: 117, baseType: !240, size: 32, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !910, file: !820, line: 90, baseType: !818, size: 64, offset: 2944)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !548, file: !56, line: 515, baseType: !945, size: 64, offset: 8064)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !947, line: 117, size: 128, elements: !948)
!947 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !946, file: !947, line: 118, baseType: !614, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !946, file: !947, line: 119, baseType: !614, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !946, file: !947, line: 120, baseType: !319, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !548, file: !56, line: 516, baseType: !43, size: 32, offset: 8128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !548, file: !56, line: 519, baseType: !43, size: 32, offset: 8160)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !548, file: !56, line: 520, baseType: !955, size: 64, offset: 8192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !548, file: !56, line: 523, baseType: !957, size: 64, offset: 8256)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !56, line: 523, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !548, file: !56, line: 524, baseType: !43, size: 32, offset: 8320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !548, file: !56, line: 525, baseType: !962, size: 64, offset: 8384)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !56, line: 525, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !548, file: !56, line: 526, baseType: !43, size: 32, offset: 8448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !548, file: !56, line: 533, baseType: !152, size: 64, offset: 8512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !548, file: !56, line: 534, baseType: !43, size: 32, offset: 8576)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !548, file: !56, line: 535, baseType: !159, size: 64, offset: 8640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !548, file: !56, line: 536, baseType: !43, size: 32, offset: 8704)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !548, file: !56, line: 539, baseType: !240, size: 32, offset: 8736)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !548, file: !56, line: 540, baseType: !972, size: 64, offset: 8768)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !974, line: 32, size: 64, elements: !975)
!974 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !973, file: !974, line: 33, baseType: !614, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !973, file: !974, line: 34, baseType: !614, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !548, file: !56, line: 563, baseType: !203, size: 128, offset: 8832)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !548, file: !56, line: 565, baseType: !203, size: 128, offset: 8960)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !548, file: !56, line: 568, baseType: !981, size: 64, offset: 9088)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !548, file: !56, line: 570, baseType: !236, size: 32, offset: 9152)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !63, line: 2382, baseType: !522, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !523, file: !63, line: 2383, baseType: !987, size: 64, offset: 512)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !154, line: 194, size: 64, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !987, file: !154, line: 195, baseType: !867, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !523, file: !63, line: 2385, baseType: !991, offset: 576)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !906, line: 206, elements: !907)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !523, file: !63, line: 2386, baseType: !991, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !523, file: !63, line: 2387, baseType: !991, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !523, file: !63, line: 2388, baseType: !995, offset: 576)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, elements: !284)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !523, file: !63, line: 2390, baseType: !991, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !523, file: !63, line: 2391, baseType: !991, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !523, file: !63, line: 2392, baseType: !991, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !523, file: !63, line: 2393, baseType: !991, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !509, file: !63, line: 1197, baseType: !1001, size: 64, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !63, line: 2057, size: 1664, elements: !1004)
!1004 = !{!1005, !1009, !1013, !1014, !1018, !1024, !1028, !1029, !1030, !1034, !1038, !1042, !1043, !1044, !1050, !1054, !1055, !2014, !2015, !2016, !2017, !2021, !2025, !2072, !2087, !2088}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1003, file: !63, line: 2058, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!362, !508}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1003, file: !63, line: 2059, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !362}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1003, file: !63, line: 2060, baseType: !1010, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1003, file: !63, line: 2062, baseType: !1015, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !362, !240}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1003, file: !63, line: 2063, baseType: !1019, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!240, !362, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !63, line: 309, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1003, file: !63, line: 2064, baseType: !1025, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!240, !362}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1003, file: !63, line: 2065, baseType: !1010, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1003, file: !63, line: 2066, baseType: !543, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1003, file: !63, line: 2067, baseType: !1031, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!240, !508, !240}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1003, file: !63, line: 2068, baseType: !1035, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!240, !508, !62}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1003, file: !63, line: 2069, baseType: !1039, size: 64, offset: 640)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!240, !508}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1003, file: !63, line: 2070, baseType: !1035, size: 64, offset: 704)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1003, file: !63, line: 2071, baseType: !1039, size: 64, offset: 768)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1003, file: !63, line: 2072, baseType: !1045, size: 64, offset: 832)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!240, !397, !1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !63, line: 62, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1003, file: !63, line: 2073, baseType: !1051, size: 64, offset: 896)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!240, !508, !747, !283}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1003, file: !63, line: 2074, baseType: !543, size: 64, offset: 960)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1003, file: !63, line: 2076, baseType: !1056, size: 64, offset: 1024)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!240, !1059, !397}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1061, line: 17, size: 960, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1093, !1094, !2013}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1060, file: !1061, line: 18, baseType: !283, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1060, file: !1061, line: 19, baseType: !330, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1060, file: !1061, line: 20, baseType: !330, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1060, file: !1061, line: 21, baseType: !330, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1060, file: !1061, line: 22, baseType: !330, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1060, file: !1061, line: 23, baseType: !518, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1060, file: !1061, line: 24, baseType: !518, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1060, file: !1061, line: 25, baseType: !618, size: 256, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1060, file: !1061, line: 26, baseType: !1072, size: 64, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1061, line: 32, size: 256, elements: !1075)
!1075 = !{!1076, !1081, !1085, !1089}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1074, file: !1061, line: 33, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!152, !1059, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1074, file: !1061, line: 34, baseType: !1082, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !1059, !152}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1074, file: !1061, line: 35, baseType: !1086, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!152, !1059, !152, !1080}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1074, file: !1061, line: 36, baseType: !1090, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!240, !1059, !152}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1060, file: !1061, line: 27, baseType: !240, size: 32, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1060, file: !1061, line: 28, baseType: !1095, size: 64, offset: 832)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !63, line: 994, size: 1856, align: 64, elements: !1098)
!1098 = !{!1099, !1110, !1111, !1113, !1114, !1115, !1116, !1117, !1178, !1378, !1387, !1393, !1394, !2003, !2004, !2005, !2006, !2008, !2009, !2012}
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1097, file: !63, line: 995, baseType: !1100, size: 128)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1097, file: !63, line: 995, size: 128, elements: !1101)
!1101 = !{!1102, !1108, !1109}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1100, file: !63, line: 996, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1104, line: 60, size: 64, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1103, file: !1104, line: 61, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1100, file: !63, line: 997, baseType: !838, size: 128, align: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1100, file: !63, line: 998, baseType: !43, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1097, file: !63, line: 1005, baseType: !216, size: 32, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1097, file: !63, line: 1006, baseType: !1112, size: 32, offset: 160)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !154, line: 156, baseType: !43)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1097, file: !63, line: 1007, baseType: !622, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1097, file: !63, line: 1008, baseType: !618, size: 256, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1097, file: !63, line: 1009, baseType: !518, size: 64, offset: 512)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1097, file: !63, line: 1010, baseType: !43, size: 32, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1097, file: !63, line: 1011, baseType: !1118, size: 256, offset: 640)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !63, line: 948, size: 256, elements: !1119)
!1119 = !{!1120, !1141, !1174, !1175, !1176, !1177}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1118, file: !63, line: 949, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1122, line: 34, baseType: !1123)
!1122 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1122, line: 25, size: 64, elements: !1124)
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1123, file: !1122, line: 26, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1127, line: 27, baseType: !1128)
!1127 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1127, line: 13, size: 64, elements: !1129)
!1129 = !{!1130, !1140}
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !1127, line: 14, baseType: !1131, size: 32)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !1127, line: 14, size: 32, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1131, file: !1127, line: 15, baseType: !236, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !1127, line: 16, baseType: !1135, size: 32)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !1127, line: 16, size: 32, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1135, file: !1127, line: 18, baseType: !245, size: 8)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1135, file: !1127, line: 19, baseType: !1139, size: 24, offset: 8)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 24, elements: !284)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1128, file: !1127, line: 26, baseType: !228, size: 32, offset: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1118, file: !63, line: 950, baseType: !1142, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !68, line: 59, size: 768, elements: !1144)
!1144 = !{!1145, !1151, !1152, !1153, !1155, !1156, !1163, !1164}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1143, file: !68, line: 61, baseType: !1146, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1147, line: 113, baseType: !1148)
!1147 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1147, line: 111, size: 32, elements: !1149)
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1148, file: !1147, line: 112, baseType: !236, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1143, file: !68, line: 62, baseType: !43, size: 32, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1143, file: !68, line: 63, baseType: !216, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1143, file: !68, line: 65, baseType: !1154, size: 256, offset: 128)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 256, elements: !848)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1143, file: !68, line: 66, baseType: !987, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1143, file: !68, line: 68, baseType: !1157, size: 192, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1158, line: 41, baseType: !1159)
!1158 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1158, line: 37, size: 192, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1159, file: !1158, line: 38, baseType: !216, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1159, file: !1158, line: 39, baseType: !203, size: 128, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1143, file: !68, line: 69, baseType: !838, size: 128, align: 64, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1143, file: !68, line: 70, baseType: !1165, offset: 768)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1166, elements: !1172)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !68, line: 54, size: 128, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1166, file: !68, line: 55, baseType: !240, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1166, file: !68, line: 56, baseType: !1170, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !68, line: 56, flags: DIFlagFwdDecl)
!1172 = !{!1173}
!1173 = !DISubrange(count: -1)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1118, file: !63, line: 951, baseType: !67, size: 32, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1118, file: !63, line: 952, baseType: !368, size: 32, offset: 160)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1118, file: !63, line: 952, baseType: !368, size: 32, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1118, file: !63, line: 953, baseType: !240, size: 32, offset: 224)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1097, file: !63, line: 1012, baseType: !1179, size: 64, offset: 896)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1182, line: 110, size: 1472, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1200, !1201, !1202, !1203, !1204, !1205, !1323, !1324, !1325, !1326, !1327, !1358, !1361, !1365, !1373}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1181, file: !1182, line: 111, baseType: !622, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1181, file: !1182, line: 112, baseType: !368, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1181, file: !1182, line: 113, baseType: !377, size: 32, offset: 96)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1181, file: !1182, line: 114, baseType: !368, size: 32, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1181, file: !1182, line: 115, baseType: !377, size: 32, offset: 160)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1181, file: !1182, line: 116, baseType: !368, size: 32, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1181, file: !1182, line: 117, baseType: !377, size: 32, offset: 224)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1181, file: !1182, line: 118, baseType: !368, size: 32, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1181, file: !1182, line: 119, baseType: !377, size: 32, offset: 288)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1181, file: !1182, line: 120, baseType: !43, size: 32, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1181, file: !1182, line: 121, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1196, line: 24, baseType: !1197)
!1196 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1196, line: 24, size: 64, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1197, file: !1196, line: 24, baseType: !147, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1181, file: !1182, line: 122, baseType: !1195, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1181, file: !1182, line: 123, baseType: !1195, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1181, file: !1182, line: 124, baseType: !1195, size: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1181, file: !1182, line: 125, baseType: !1195, size: 64, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1181, file: !1182, line: 127, baseType: !185, size: 8, offset: 704)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1181, file: !1182, line: 129, baseType: !1206, size: 64, offset: 768)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1208, line: 195, size: 1728, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1209 = !{!1210, !1211, !1214, !1219, !1228, !1231, !1232, !1239, !1240, !1241, !1242, !1245, !1246, !1247, !1248, !1249, !1287, !1308}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1207, file: !1208, line: 196, baseType: !1146, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1207, file: !1208, line: 197, baseType: !1212, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1208, line: 28, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !154, line: 104, baseType: !614)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1208, line: 198, baseType: !1215, size: 192, offset: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1208, line: 198, size: 192, elements: !1216)
!1216 = !{!1217, !1218}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1215, file: !1208, line: 199, baseType: !203, size: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1215, file: !1208, line: 200, baseType: !730, size: 192, align: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1207, file: !1208, line: 205, baseType: !1220, size: 320, offset: 256)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1221, line: 48, size: 320, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1222 = !{!1223, !1224, !1225, !1226, !1227}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1220, file: !1221, line: 49, baseType: !622, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1220, file: !1221, line: 55, baseType: !622, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1220, file: !1221, line: 57, baseType: !632, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1220, file: !1221, line: 59, baseType: !576, size: 32, offset: 160)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1220, file: !1221, line: 60, baseType: !203, size: 128, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1207, file: !1208, line: 206, baseType: !1229, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1208, line: 206, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1207, file: !1208, line: 207, baseType: !152, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1208, line: 208, baseType: !1233, size: 64, offset: 704)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1208, line: 208, size: 64, elements: !1234)
!1234 = !{!1235, !1238}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1233, file: !1208, line: 209, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1237, line: 8, baseType: !629)
!1237 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1233, file: !1208, line: 210, baseType: !1236, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1207, file: !1208, line: 212, baseType: !1236, size: 64, offset: 768)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1207, file: !1208, line: 213, baseType: !368, size: 32, offset: 832)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1207, file: !1208, line: 214, baseType: !377, size: 32, offset: 864)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1207, file: !1208, line: 215, baseType: !1243, size: 32, offset: 896)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1208, line: 31, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !154, line: 110, baseType: !189)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1207, file: !1208, line: 216, baseType: !253, size: 16, offset: 928)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1207, file: !1208, line: 217, baseType: !253, size: 16, offset: 944)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1207, file: !1208, line: 221, baseType: !756, size: 16, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1207, file: !1208, line: 228, baseType: !156, size: 64, offset: 1024)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1208, line: 245, baseType: !1250, size: 320, offset: 1088)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1208, line: 245, size: 320, elements: !1251)
!1251 = !{!1252, !1279}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1250, file: !1208, line: 246, baseType: !1253, size: 320)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1208, line: 114, size: 320, elements: !1254)
!1254 = !{!1255, !1256, !1268, !1271, !1278}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1253, file: !1208, line: 116, baseType: !156, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !1208, line: 117, baseType: !1257, size: 64, offset: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !1208, line: 117, size: 64, elements: !1258)
!1258 = !{!1259, !1267}
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1208, line: 118, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1208, line: 118, size: 64, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1260, file: !1208, line: 120, baseType: !251, size: 16)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1260, file: !1208, line: 121, baseType: !1264, size: 48, offset: 16)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1265)
!1265 = !{!1266}
!1266 = !DISubrange(count: 6)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1257, file: !1208, line: 127, baseType: !156, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1253, file: !1208, line: 129, baseType: !1269, size: 64, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1208, line: 102, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1253, file: !1208, line: 130, baseType: !1272, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1208, line: 108, size: 192, elements: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1273, file: !1208, line: 109, baseType: !838, size: 128, align: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1273, file: !1208, line: 110, baseType: !1146, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1273, file: !1208, line: 111, baseType: !698, size: 8, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1253, file: !1208, line: 131, baseType: !200, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !1208, line: 247, baseType: !1280, size: 320)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !1208, line: 247, size: 320, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1286}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1280, file: !1208, line: 248, baseType: !156, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1280, file: !1208, line: 249, baseType: !156, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1280, file: !1208, line: 250, baseType: !1269, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1280, file: !1208, line: 251, baseType: !1272, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1280, file: !1208, line: 252, baseType: !283, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1208, line: 260, baseType: !1288, size: 256, offset: 1408)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1208, line: 260, size: 256, elements: !1289)
!1289 = !{!1290, !1296}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1288, file: !1208, line: 261, baseType: !1291, size: 256)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1208, line: 134, size: 256, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1291, file: !1208, line: 135, baseType: !152, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1291, file: !1208, line: 136, baseType: !1295, size: 256)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !848)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1208, line: 262, baseType: !1297, size: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1208, line: 262, size: 256, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1297, file: !1208, line: 264, baseType: !203, size: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1297, file: !1208, line: 265, baseType: !1301, size: 128, offset: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1302, line: 22, size: 128, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1303 = !{!1304, !1307}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1301, file: !1302, line: 23, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1302, line: 23, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1301, file: !1302, line: 24, baseType: !156, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1207, file: !1208, line: 280, baseType: !1309, size: 64, offset: 1664)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1208, line: 176, size: 192, elements: !1311)
!1311 = !{!1312, !1321, !1322}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1310, file: !1208, line: 177, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1208, line: 171, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!240, !1206, !1317, !1319, !1206}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1310, file: !1208, line: 178, baseType: !1206, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1310, file: !1208, line: 179, baseType: !1269, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1181, file: !1182, line: 130, baseType: !1206, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1181, file: !1182, line: 131, baseType: !1206, size: 64, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1181, file: !1182, line: 132, baseType: !1206, size: 64, offset: 960)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1181, file: !1182, line: 135, baseType: !152, size: 64, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1181, file: !1182, line: 137, baseType: !1328, size: 64, offset: 1088)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1330, line: 14, size: 1088, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1331 = !{!1332, !1333, !1342, !1343, !1344, !1345, !1346, !1347}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1329, file: !1330, line: 15, baseType: !1146, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1329, file: !1330, line: 17, baseType: !1334, size: 320, offset: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1335, line: 22, size: 320, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1336 = !{!1337, !1338, !1339, !1340}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1334, file: !1335, line: 23, baseType: !576, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1334, file: !1335, line: 24, baseType: !628, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1334, file: !1335, line: 26, baseType: !203, size: 128, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1334, file: !1335, line: 28, baseType: !1341, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1329, file: !1330, line: 19, baseType: !156, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1329, file: !1330, line: 20, baseType: !622, size: 64, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1329, file: !1330, line: 23, baseType: !864, size: 128, offset: 512)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1329, file: !1330, line: 24, baseType: !368, size: 32, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1329, file: !1330, line: 29, baseType: !622, size: 64, offset: 704)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1329, file: !1330, line: 36, baseType: !1348, size: 320, offset: 768)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1349, line: 15, size: 320, elements: !1350)
!1349 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1348, file: !1349, line: 16, baseType: !576, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1348, file: !1349, line: 18, baseType: !240, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1348, file: !1349, line: 19, baseType: !240, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1348, file: !1349, line: 20, baseType: !240, size: 32, offset: 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1348, file: !1349, line: 21, baseType: !240, size: 32, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1348, file: !1349, line: 22, baseType: !156, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1348, file: !1349, line: 23, baseType: !156, size: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1181, file: !1182, line: 138, baseType: !1359, size: 64, offset: 1152)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !369, line: 18, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1181, file: !1182, line: 139, baseType: !1362, size: 64, offset: 1216)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1364, line: 16, flags: DIFlagFwdDecl)
!1364 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1181, file: !1182, line: 140, baseType: !1366, size: 64, offset: 1280)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1182, line: 25, size: 64, elements: !1368)
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1367, file: !1182, line: 26, baseType: !236, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1367, file: !1182, line: 27, baseType: !240, size: 32, offset: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1367, file: !1182, line: 28, baseType: !1372, offset: 64)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, elements: !1172)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !1182, line: 142, baseType: !1374, size: 128, offset: 1344)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !1182, line: 142, size: 128, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1374, file: !1182, line: 143, baseType: !240, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1374, file: !1182, line: 144, baseType: !838, size: 128, align: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1097, file: !63, line: 1013, baseType: !1379, size: 256, offset: 960)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !63, line: 970, size: 256, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1379, file: !63, line: 971, baseType: !156, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1379, file: !63, line: 972, baseType: !43, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1379, file: !63, line: 973, baseType: !43, size: 32, offset: 96)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1379, file: !63, line: 974, baseType: !43, size: 32, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1379, file: !63, line: 975, baseType: !43, size: 32, offset: 160)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1379, file: !63, line: 976, baseType: !518, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1097, file: !63, line: 1014, baseType: !1388, size: 128, offset: 1216)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1389, line: 8, size: 128, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1388, file: !1389, line: 9, baseType: !502, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1388, file: !1389, line: 10, baseType: !397, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1097, file: !63, line: 1015, baseType: !362, size: 64, offset: 1344)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1097, file: !63, line: 1016, baseType: !1395, size: 64, offset: 1408)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !63, line: 1914, size: 2112, elements: !1398)
!1398 = !{!1399, !1400, !1405, !1409, !1413, !1441, !1442, !1448, !1461, !1477, !1481, !1482, !1925, !1926, !1930, !1935, !1936, !1940, !1944, !1950, !1951, !1955, !1956, !1962, !1966, !1970, !1976, !1980, !1984, !1988, !1992, !1993, !1999}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1397, file: !63, line: 1915, baseType: !547, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1397, file: !63, line: 1916, baseType: !1401, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!518, !1404, !518, !240}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1397, file: !63, line: 1917, baseType: !1406, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!315, !1404, !283, !330, !1080}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1397, file: !63, line: 1918, baseType: !1410, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!315, !1404, !200, !330, !1080}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1397, file: !63, line: 1919, baseType: !1414, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!315, !1417, !1439}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !63, line: 373, size: 384, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1426, !1427, !1428, !1429}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1418, file: !63, line: 374, baseType: !1404, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1418, file: !63, line: 375, baseType: !518, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1418, file: !63, line: 376, baseType: !1423, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !1417, !319}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1418, file: !63, line: 377, baseType: !152, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1418, file: !63, line: 378, baseType: !240, size: 32, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1418, file: !63, line: 379, baseType: !251, size: 16, offset: 288)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !63, line: 380, baseType: !1430, size: 64, offset: 320)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !63, line: 380, size: 64, elements: !1431)
!1431 = !{!1432, !1435}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1430, file: !63, line: 386, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !63, line: 386, flags: DIFlagFwdDecl)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1430, file: !63, line: 395, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!315, !152}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !63, line: 69, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1397, file: !63, line: 1920, baseType: !1414, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1397, file: !63, line: 1921, baseType: !1443, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!240, !1417, !1446, !43}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !63, line: 53, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1397, file: !63, line: 1923, baseType: !1449, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!240, !1404, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !63, line: 1858, size: 128, elements: !1454)
!1454 = !{!1455, !1460}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1453, file: !63, line: 1859, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !63, line: 1855, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!698, !1452, !200, !240, !518, !147, !43}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1453, file: !63, line: 1860, baseType: !518, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1397, file: !63, line: 1924, baseType: !1462, size: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1465, !1404, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !162, line: 59, baseType: !43)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1468, line: 37, size: 128, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1469 = !{!1470, !1476}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1467, file: !1468, line: 38, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1468, line: 31, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !1404, !1475, !1466}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1467, file: !1468, line: 39, baseType: !1465, size: 32, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1397, file: !63, line: 1925, baseType: !1478, size: 64, offset: 576)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!319, !1404, !43, !156}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1397, file: !63, line: 1926, baseType: !1478, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1397, file: !63, line: 1927, baseType: !1483, size: 64, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!240, !1404, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !76, line: 625, size: 1344, elements: !1488)
!1488 = !{!1489, !1498, !1653, !1659, !1666, !1667, !1672, !1673, !1678, !1679, !1682, !1918, !1919, !1920, !1921, !1922, !1923}
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !76, line: 628, baseType: !1490, size: 128)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !76, line: 628, size: 128, elements: !1491)
!1491 = !{!1492, !1497}
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !76, line: 629, baseType: !1493, size: 128)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1490, file: !76, line: 629, size: 128, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1493, file: !76, line: 631, baseType: !156, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1493, file: !76, line: 632, baseType: !156, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1490, file: !76, line: 635, baseType: !838, size: 128, align: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1487, file: !76, line: 639, baseType: !1499, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !76, line: 733, size: 10240, elements: !1501)
!1501 = !{!1502, !1651}
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !76, line: 734, baseType: !1503, size: 10240)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1500, file: !76, line: 734, size: 10240, elements: !1504)
!1504 = !{!1505, !1509, !1522, !1526, !1527, !1528, !1529, !1530, !1531, !1540, !1541, !1542, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1581, !1583, !1586, !1631, !1632, !1633, !1636, !1637, !1638, !1641, !1642, !1643, !1649, !1650}
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !76, line: 739, baseType: !1506, size: 512, align: 512)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !76, line: 739, size: 512, align: 512, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1506, file: !76, line: 747, baseType: !236, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1503, file: !76, line: 750, baseType: !1510, size: 128, offset: 512)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1511, line: 218, size: 128, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1512 = !{!1513, !1520, !1521}
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !1511, line: 219, baseType: !1514, size: 32)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !1511, line: 219, size: 32, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1514, file: !1511, line: 220, baseType: !216, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1514, file: !1511, line: 221, baseType: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1511, line: 197, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1511, line: 197, elements: !907)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1510, file: !1511, line: 223, baseType: !43, size: 32, offset: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1510, file: !1511, line: 224, baseType: !152, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1503, file: !76, line: 752, baseType: !1523, size: 64, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!156, !1404, !156, !156, !156, !156}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1503, file: !76, line: 756, baseType: !156, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1503, file: !76, line: 757, baseType: !156, size: 64, offset: 768)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1503, file: !76, line: 760, baseType: !156, size: 64, offset: 832)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1503, file: !76, line: 761, baseType: !156, size: 64, offset: 896)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1503, file: !76, line: 763, baseType: !156, size: 64, offset: 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1503, file: !76, line: 764, baseType: !1532, size: 64, offset: 1024)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1534, line: 299, baseType: !1535)
!1534 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1534, line: 299, size: 64, elements: !1536)
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1535, file: !1534, line: 299, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1539, line: 18, baseType: !156)
!1539 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1503, file: !76, line: 773, baseType: !236, size: 32, offset: 1088)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1503, file: !76, line: 785, baseType: !236, size: 32, offset: 1120)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1503, file: !76, line: 795, baseType: !1543, size: 64, offset: 1152)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !76, line: 726, size: 128, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1544, file: !76, line: 727, baseType: !147, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1544, file: !76, line: 728, baseType: !240, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1503, file: !76, line: 801, baseType: !156, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1503, file: !76, line: 804, baseType: !622, size: 64, offset: 1280)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1503, file: !76, line: 806, baseType: !240, size: 32, offset: 1344)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1503, file: !76, line: 808, baseType: !216, size: 32, offset: 1376)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1503, file: !76, line: 823, baseType: !1220, size: 320, offset: 1408)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1503, file: !76, line: 825, baseType: !203, size: 128, offset: 1728)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1503, file: !76, line: 845, baseType: !240, size: 32, offset: 1856)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1503, file: !76, line: 849, baseType: !156, size: 64, offset: 1920)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1503, file: !76, line: 850, baseType: !156, size: 64, offset: 1984)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1503, file: !76, line: 852, baseType: !156, size: 64, offset: 2048)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1503, file: !76, line: 853, baseType: !156, size: 64, offset: 2112)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1503, file: !76, line: 854, baseType: !624, size: 64, offset: 2176)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1503, file: !76, line: 855, baseType: !156, size: 64, offset: 2240)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1503, file: !76, line: 856, baseType: !156, size: 64, offset: 2304)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1503, file: !76, line: 857, baseType: !156, size: 64, offset: 2368)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1503, file: !76, line: 858, baseType: !156, size: 64, offset: 2432)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1503, file: !76, line: 865, baseType: !408, size: 32, offset: 2496)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1503, file: !76, line: 867, baseType: !216, size: 32, offset: 2528)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1503, file: !76, line: 869, baseType: !156, size: 64, offset: 2560)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1503, file: !76, line: 869, baseType: !156, size: 64, offset: 2624)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1503, file: !76, line: 869, baseType: !156, size: 64, offset: 2688)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1503, file: !76, line: 869, baseType: !156, size: 64, offset: 2752)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1503, file: !76, line: 870, baseType: !156, size: 64, offset: 2816)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1503, file: !76, line: 870, baseType: !156, size: 64, offset: 2880)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1503, file: !76, line: 870, baseType: !156, size: 64, offset: 2944)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1503, file: !76, line: 871, baseType: !156, size: 64, offset: 3008)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1503, file: !76, line: 871, baseType: !156, size: 64, offset: 3072)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1503, file: !76, line: 871, baseType: !156, size: 64, offset: 3136)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1503, file: !76, line: 871, baseType: !156, size: 64, offset: 3200)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1503, file: !76, line: 873, baseType: !1578, size: 3328, offset: 3264)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 3328, elements: !1579)
!1579 = !{!1580}
!1580 = !DISubrange(count: 52)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1503, file: !76, line: 875, baseType: !1582, size: 1280, offset: 6592)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1334, size: 1280, elements: !848)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1503, file: !76, line: 877, baseType: !1584, size: 64, offset: 7872)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !76, line: 877, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1503, file: !76, line: 880, baseType: !1587, size: 1088, offset: 7936)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1588, line: 72, baseType: !1589)
!1588 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1588, line: 23, size: 1088, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1598, !1599, !1600, !1601, !1628, !1629, !1630}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1589, file: !1588, line: 28, baseType: !147, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1589, file: !1588, line: 38, baseType: !624, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1589, file: !1588, line: 40, baseType: !156, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1589, file: !1588, line: 43, baseType: !1220, size: 320, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1589, file: !1588, line: 44, baseType: !1596, size: 64, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1588, line: 44, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1589, file: !1588, line: 48, baseType: !156, size: 64, offset: 576)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1589, file: !1588, line: 59, baseType: !618, size: 256, offset: 640)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1589, file: !1588, line: 60, baseType: !152, size: 64, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1589, file: !1588, line: 61, baseType: !1602, size: 64, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1605, line: 13, size: 1216, elements: !1606)
!1605 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1604, file: !1605, line: 14, baseType: !152, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1604, file: !1605, line: 15, baseType: !156, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1604, file: !1605, line: 17, baseType: !156, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1604, file: !1605, line: 17, baseType: !156, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1604, file: !1605, line: 18, baseType: !156, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1604, file: !1605, line: 18, baseType: !156, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1604, file: !1605, line: 19, baseType: !1614, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1604, file: !1605, line: 21, baseType: !319, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1604, file: !1605, line: 23, baseType: !319, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1604, file: !1605, line: 24, baseType: !319, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1604, file: !1605, line: 25, baseType: !319, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1604, file: !1605, line: 26, baseType: !319, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1604, file: !1605, line: 27, baseType: !319, size: 64, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1604, file: !1605, line: 28, baseType: !319, size: 64, offset: 832)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1604, file: !1605, line: 29, baseType: !319, size: 64, offset: 896)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1604, file: !1605, line: 30, baseType: !319, size: 64, offset: 960)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1604, file: !1605, line: 31, baseType: !319, size: 64, offset: 1024)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1604, file: !1605, line: 32, baseType: !319, size: 64, offset: 1088)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1604, file: !1605, line: 33, baseType: !319, size: 64, offset: 1152)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1589, file: !1588, line: 63, baseType: !236, size: 32, offset: 1024)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1589, file: !1588, line: 69, baseType: !251, size: 16, offset: 1056)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1589, file: !1588, line: 70, baseType: !754, size: 16, offset: 1072)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1503, file: !76, line: 882, baseType: !156, size: 64, offset: 9024)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1503, file: !76, line: 885, baseType: !216, size: 32, offset: 9088)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1503, file: !76, line: 886, baseType: !1634, size: 64, offset: 9152)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !76, line: 732, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1503, file: !76, line: 901, baseType: !1359, size: 64, offset: 9216)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1503, file: !76, line: 904, baseType: !1404, size: 64, offset: 9280)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1503, file: !76, line: 906, baseType: !1639, size: 64, offset: 9344)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !76, line: 906, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1503, file: !76, line: 930, baseType: !236, size: 32, offset: 9408)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1503, file: !76, line: 933, baseType: !236, size: 32, offset: 9440)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1503, file: !76, line: 935, baseType: !1644, size: 64, offset: 9472)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !117, line: 103, size: 64, elements: !1645)
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1644, file: !117, line: 104, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !117, line: 101, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1503, file: !76, line: 940, baseType: !622, size: 64, offset: 9536)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1503, file: !76, line: 942, baseType: !878, size: 256, offset: 9600)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1500, file: !76, line: 986, baseType: !1652, offset: 10240)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, elements: !1172)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1487, file: !76, line: 640, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1534, line: 297, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1534, line: 297, size: 64, elements: !1656)
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1655, file: !1534, line: 297, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1539, line: 19, baseType: !156)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1487, file: !76, line: 646, baseType: !1660, size: 64, offset: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !76, line: 646, size: 64, elements: !1661)
!1661 = !{!1662, !1665}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1660, file: !76, line: 647, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !76, line: 542, baseType: !156)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1660, file: !76, line: 648, baseType: !1664, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1487, file: !76, line: 666, baseType: !240, size: 32, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1487, file: !76, line: 667, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !76, line: 579, size: 320, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1669, file: !76, line: 580, baseType: !1220, size: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1487, file: !76, line: 670, baseType: !698, size: 8, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1487, file: !76, line: 681, baseType: !1674, size: 256, offset: 512)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1487, file: !76, line: 678, size: 256, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1674, file: !76, line: 679, baseType: !730, size: 192, align: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1674, file: !76, line: 680, baseType: !156, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1487, file: !76, line: 689, baseType: !203, size: 128, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1487, file: !76, line: 691, baseType: !1680, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !76, line: 691, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1487, file: !76, line: 694, baseType: !1683, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1686, line: 563, size: 1024, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1687 = !{!1688, !1692, !1693, !1697, !1701, !1705, !1881, !1885, !1889, !1893, !1894, !1895, !1899, !1903, !1910, !1914}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1685, file: !1686, line: 564, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{null, !1486}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1685, file: !1686, line: 569, baseType: !1689, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1685, file: !1686, line: 571, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!240, !1486, !156}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1685, file: !1686, line: 572, baseType: !1698, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!240, !1486}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1685, file: !1686, line: 578, baseType: !1702, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!240, !1486, !156, !156, !156}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1685, file: !1686, line: 580, baseType: !1706, size: 64, offset: 320)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !76, line: 1184, baseType: !43)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1686, line: 512, size: 896, elements: !1712)
!1712 = !{!1713, !1721, !1722, !1729, !1736, !1746, !1874, !1875, !1877, !1879}
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1686, line: 513, baseType: !1714, size: 320)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1711, file: !1686, line: 513, size: 320, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1719, !1720}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1714, file: !1686, line: 514, baseType: !1486, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1714, file: !1686, line: 515, baseType: !164, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1714, file: !1686, line: 516, baseType: !156, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1714, file: !1686, line: 517, baseType: !156, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1714, file: !1686, line: 518, baseType: !156, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1711, file: !1686, line: 520, baseType: !75, size: 32, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1711, file: !1686, line: 522, baseType: !1723, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1539, line: 22, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1539, line: 22, size: 64, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1725, file: !1539, line: 22, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1539, line: 15, baseType: !156)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1711, file: !1686, line: 524, baseType: !1730, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1534, line: 372, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1534, line: 372, size: 64, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1732, file: !1534, line: 372, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1539, line: 16, baseType: !156)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1711, file: !1686, line: 527, baseType: !1737, size: 64, offset: 512)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1711, file: !1686, line: 527, size: 64, elements: !1738)
!1738 = !{!1739, !1745}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1737, file: !1686, line: 528, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1539, line: 21, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1539, line: 21, size: 64, elements: !1742)
!1742 = !{!1743}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1741, file: !1539, line: 21, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1539, line: 14, baseType: !156)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1737, file: !1686, line: 529, baseType: !1724, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1711, file: !1686, line: 534, baseType: !1747, size: 64, offset: 576)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !76, line: 74, size: 512, align: 128, elements: !1749)
!1749 = !{!1750, !1751, !1868, !1873}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1748, file: !76, line: 75, baseType: !156, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !76, line: 83, baseType: !1752, size: 320, offset: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1748, file: !76, line: 83, size: 320, elements: !1753)
!1753 = !{!1754, !1775, !1789, !1793, !1867}
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !76, line: 84, baseType: !1755, size: 320)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1752, file: !76, line: 84, size: 320, elements: !1756)
!1756 = !{!1757, !1768, !1769, !1774}
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !76, line: 90, baseType: !1758, size: 128)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1755, file: !76, line: 90, size: 128, elements: !1759)
!1759 = !{!1760, !1761, !1766, !1767}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1758, file: !76, line: 91, baseType: !203, size: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !76, line: 94, baseType: !1762, size: 128)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !76, line: 94, size: 128, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1762, file: !76, line: 96, baseType: !152, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1762, file: !76, line: 98, baseType: !43, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1758, file: !76, line: 102, baseType: !203, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1758, file: !76, line: 103, baseType: !203, size: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1755, file: !76, line: 106, baseType: !358, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !76, line: 107, baseType: !1770, size: 64, offset: 192)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1755, file: !76, line: 107, size: 64, elements: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1770, file: !76, line: 108, baseType: !156, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1770, file: !76, line: 109, baseType: !156, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1755, file: !76, line: 117, baseType: !156, size: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !76, line: 119, baseType: !1776, size: 320)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1752, file: !76, line: 119, size: 320, elements: !1777)
!1777 = !{!1778, !1779, !1782, !1783, !1784}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1776, file: !76, line: 124, baseType: !156, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1776, file: !76, line: 125, baseType: !1780, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !76, line: 125, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1776, file: !76, line: 126, baseType: !156, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1776, file: !76, line: 127, baseType: !156, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !76, line: 128, baseType: !1785, size: 64, offset: 256)
!1785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !76, line: 128, size: 64, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1785, file: !76, line: 133, baseType: !156, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1785, file: !76, line: 138, baseType: !622, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !76, line: 141, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1752, file: !76, line: 141, size: 64, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1790, file: !76, line: 142, baseType: !156, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !76, line: 144, baseType: !1794, size: 128)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1752, file: !76, line: 144, size: 128, elements: !1795)
!1795 = !{!1796, !1866}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1794, file: !76, line: 146, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !92, line: 126, size: 1216, elements: !1799)
!1799 = !{!1800, !1809, !1830, !1831, !1832, !1833, !1834, !1848, !1849, !1850}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1798, file: !92, line: 127, baseType: !1801, size: 384)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !92, line: 21, size: 384, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1801, file: !92, line: 22, baseType: !156, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1801, file: !92, line: 23, baseType: !158, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1801, file: !92, line: 24, baseType: !158, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1801, file: !92, line: 25, baseType: !156, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1801, file: !92, line: 26, baseType: !156, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1801, file: !92, line: 27, baseType: !156, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1798, file: !92, line: 128, baseType: !1810, size: 128, offset: 384)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1811, line: 105, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1810, file: !1811, line: 110, baseType: !156, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1810, file: !1811, line: 118, baseType: !1815, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1811, line: 95, size: 448, elements: !1817)
!1817 = !{!1818, !1819, !1825, !1826, !1827, !1828, !1829}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1816, file: !1811, line: 96, baseType: !622, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1816, file: !1811, line: 97, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1811, line: 60, baseType: !1822)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !1824}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1816, file: !1811, line: 98, baseType: !1820, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1816, file: !1811, line: 99, baseType: !698, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1816, file: !1811, line: 100, baseType: !698, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1816, file: !1811, line: 101, baseType: !838, size: 128, align: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1816, file: !1811, line: 102, baseType: !1824, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1798, file: !92, line: 129, baseType: !567, size: 256, offset: 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1798, file: !92, line: 130, baseType: !91, size: 32, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !92, line: 131, baseType: !43, size: 32, offset: 800)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1798, file: !92, line: 132, baseType: !156, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1798, file: !92, line: 133, baseType: !1835, size: 64, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !92, line: 77, size: 192, elements: !1838)
!1838 = !{!1839, !1843, !1844}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1837, file: !92, line: 83, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !1747}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1837, file: !92, line: 89, baseType: !1706, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1837, file: !92, line: 100, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!240, !1797, !156, !156, !240}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1798, file: !92, line: 134, baseType: !152, size: 64, offset: 960)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1798, file: !92, line: 135, baseType: !240, size: 32, offset: 1024)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !92, line: 136, baseType: !1851, size: 128, offset: 1088)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !92, line: 136, size: 128, elements: !1852)
!1852 = !{!1853, !1859}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1851, file: !92, line: 137, baseType: !1854, size: 128)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1855, line: 6, size: 128, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1854, file: !1855, line: 7, baseType: !147, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1854, file: !1855, line: 8, baseType: !147, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1851, file: !92, line: 138, baseType: !1860)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1851, file: !92, line: 138, elements: !1861)
!1861 = !{!1862, !1864}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1860, file: !92, line: 138, baseType: !1863)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !92, line: 138, elements: !907)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1860, file: !92, line: 138, baseType: !1865)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1854, elements: !1172)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1794, file: !76, line: 147, baseType: !152, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1752, file: !76, line: 161, baseType: !838, size: 128, align: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !76, line: 164, baseType: !1869, size: 32, offset: 384)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1748, file: !76, line: 164, size: 32, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1869, file: !76, line: 169, baseType: !236, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1869, file: !76, line: 177, baseType: !43, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1748, file: !76, line: 181, baseType: !236, size: 32, offset: 416)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1711, file: !1686, line: 535, baseType: !1747, size: 64, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1711, file: !1686, line: 541, baseType: !1876, size: 64, offset: 704)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1711, file: !1686, line: 545, baseType: !1878, size: 64, offset: 768)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1711, file: !1686, line: 549, baseType: !1880, size: 64, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1534, line: 520, baseType: !1747)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1685, file: !1686, line: 581, baseType: !1882, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1709, !1710, !43}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1685, file: !1686, line: 582, baseType: !1886, size: 64, offset: 448)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!1709, !1710, !156, !156}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1685, file: !1686, line: 584, baseType: !1890, size: 64, offset: 512)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!156, !1486}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1685, file: !1686, line: 588, baseType: !1706, size: 64, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1685, file: !1686, line: 591, baseType: !1706, size: 64, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1685, file: !1686, line: 597, baseType: !1896, size: 64, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!240, !1486, !156, !152, !240, !240}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1685, file: !1686, line: 603, baseType: !1900, size: 64, offset: 768)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!200, !1486}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1685, file: !1686, line: 613, baseType: !1904, size: 64, offset: 832)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!240, !1486, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1909, line: 54, flags: DIFlagFwdDecl)
!1909 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1685, file: !1686, line: 625, baseType: !1911, size: 64, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1907, !1486, !156}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1685, file: !1686, line: 633, baseType: !1915, size: 64, offset: 960)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!1747, !1486, !156}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1487, file: !76, line: 697, baseType: !156, size: 64, offset: 1024)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1487, file: !76, line: 699, baseType: !1404, size: 64, offset: 1088)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1487, file: !76, line: 700, baseType: !152, size: 64, offset: 1152)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1487, file: !76, line: 711, baseType: !622, size: 64, offset: 1216)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1487, file: !76, line: 717, baseType: !1907, size: 64, offset: 1280)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1487, file: !76, line: 722, baseType: !1924, offset: 1344)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !76, line: 570, elements: !907)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1397, file: !63, line: 1928, baseType: !156, size: 64, offset: 768)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1397, file: !63, line: 1929, baseType: !1927, size: 64, offset: 832)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!240, !362, !1404}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1397, file: !63, line: 1930, baseType: !1931, size: 64, offset: 896)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!240, !1404, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !63, line: 1061, baseType: !152)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1397, file: !63, line: 1931, baseType: !1927, size: 64, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1397, file: !63, line: 1932, baseType: !1937, size: 64, offset: 1024)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!240, !1404, !518, !518, !240}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1397, file: !63, line: 1933, baseType: !1941, size: 64, offset: 1088)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!240, !240, !1404, !240}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1397, file: !63, line: 1934, baseType: !1945, size: 64, offset: 1152)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!240, !1404, !240, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !63, line: 1063, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1397, file: !63, line: 1935, baseType: !1523, size: 64, offset: 1216)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1397, file: !63, line: 1936, baseType: !1952, size: 64, offset: 1280)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!240, !240}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1397, file: !63, line: 1937, baseType: !1945, size: 64, offset: 1344)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1397, file: !63, line: 1938, baseType: !1957, size: 64, offset: 1408)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!315, !1960, !1404, !1080, !330, !43}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1909, line: 59, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1397, file: !63, line: 1939, baseType: !1963, size: 64, offset: 1472)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!315, !1404, !1080, !1960, !330, !43}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1397, file: !63, line: 1940, baseType: !1967, size: 64, offset: 1536)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1404}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1397, file: !63, line: 1941, baseType: !1971, size: 64, offset: 1600)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!240, !1404, !240, !1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1397, file: !63, line: 1942, baseType: !1977, size: 64, offset: 1664)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!319, !1404, !240, !518, !518}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1397, file: !63, line: 1944, baseType: !1981, size: 64, offset: 1728)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1059, !1404}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1397, file: !63, line: 1948, baseType: !1985, size: 64, offset: 1792)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!315, !1404, !518, !1404, !518, !330, !43}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1397, file: !63, line: 1950, baseType: !1989, size: 64, offset: 1856)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!518, !1404, !518, !1404, !518, !518, !43}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1397, file: !63, line: 1953, baseType: !1937, size: 64, offset: 1920)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1397, file: !63, line: 1954, baseType: !1994, size: 64, offset: 1984)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!240, !1997, !43}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !63, line: 1911, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1397, file: !63, line: 1955, baseType: !2000, size: 64, offset: 2048)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!240, !1997, !1446, !43}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1097, file: !63, line: 1018, baseType: !147, size: 64, offset: 1472)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1097, file: !63, line: 1020, baseType: !152, size: 64, offset: 1536)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1097, file: !63, line: 1023, baseType: !152, size: 64, offset: 1600)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1097, file: !63, line: 1027, baseType: !2007, size: 64, offset: 1664)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1097, file: !63, line: 1029, baseType: !358, size: 64, offset: 1728)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1097, file: !63, line: 1030, baseType: !2010, size: 32, offset: 1792)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2011, line: 8, baseType: !189)
!2011 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1097, file: !63, line: 1031, baseType: !2010, size: 32, offset: 1824)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1060, file: !1061, line: 29, baseType: !152, size: 64, offset: 896)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1003, file: !63, line: 2077, baseType: !1056, size: 64, offset: 1088)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1003, file: !63, line: 2078, baseType: !1056, size: 64, offset: 1152)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1003, file: !63, line: 2079, baseType: !1056, size: 64, offset: 1216)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1003, file: !63, line: 2081, baseType: !2018, size: 64, offset: 1280)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!315, !508, !240, !283, !330, !518}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1003, file: !63, line: 2082, baseType: !2022, size: 64, offset: 1344)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!315, !508, !240, !200, !330, !518}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1003, file: !63, line: 2083, baseType: !2026, size: 64, offset: 1408)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!2029, !362}
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !100, line: 296, size: 1664, elements: !2032)
!2032 = !{!2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2057, !2058, !2059}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2031, file: !100, line: 297, baseType: !864, size: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2031, file: !100, line: 298, baseType: !203, size: 128, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2031, file: !100, line: 299, baseType: !203, size: 128, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2031, file: !100, line: 300, baseType: !203, size: 128, offset: 384)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2031, file: !100, line: 301, baseType: !618, size: 256, offset: 512)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2031, file: !100, line: 302, baseType: !216, size: 32, offset: 768)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2031, file: !100, line: 303, baseType: !236, size: 32, offset: 800)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2031, file: !100, line: 304, baseType: !508, size: 64, offset: 832)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2031, file: !100, line: 305, baseType: !2042, size: 64, offset: 896)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !100, line: 68, size: 64, elements: !2043)
!2043 = !{!2044, !2056}
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !100, line: 69, baseType: !2045, size: 32)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !100, line: 69, size: 32, elements: !2046)
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2045, file: !100, line: 70, baseType: !368, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2045, file: !100, line: 71, baseType: !377, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2045, file: !100, line: 72, baseType: !2050, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2051, line: 24, baseType: !2052)
!2051 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2051, line: 22, size: 32, elements: !2053)
!2053 = !{!2054}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2052, file: !2051, line: 23, baseType: !2055, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2051, line: 20, baseType: !374)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2042, file: !100, line: 74, baseType: !99, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2031, file: !100, line: 306, baseType: !518, size: 64, offset: 960)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2031, file: !100, line: 307, baseType: !156, size: 64, offset: 1024)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2031, file: !100, line: 308, baseType: !2060, size: 576, offset: 1088)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !100, line: 205, size: 576, elements: !2061)
!2061 = !{!2062, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2060, file: !100, line: 206, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !100, line: 66, baseType: !520)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2060, file: !100, line: 207, baseType: !2063, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2060, file: !100, line: 208, baseType: !2063, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2060, file: !100, line: 209, baseType: !2063, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2060, file: !100, line: 210, baseType: !2063, size: 64, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2060, file: !100, line: 211, baseType: !2063, size: 64, offset: 320)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2060, file: !100, line: 212, baseType: !2063, size: 64, offset: 384)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2060, file: !100, line: 213, baseType: !1236, size: 64, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2060, file: !100, line: 214, baseType: !1236, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1003, file: !63, line: 2085, baseType: !2073, size: 64, offset: 1472)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!319, !508, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2078, line: 15, size: 256, elements: !2079)
!2078 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2079 = !{!2080, !2081, !2082, !2083, !2084}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2077, file: !2078, line: 16, baseType: !164, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2077, file: !2078, line: 19, baseType: !240, size: 32, offset: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2077, file: !2078, line: 26, baseType: !156, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2077, file: !2078, line: 33, baseType: !156, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2077, file: !2078, line: 36, baseType: !2085, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !76, line: 33, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1003, file: !63, line: 2087, baseType: !2073, size: 64, offset: 1536)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1003, file: !63, line: 2089, baseType: !543, size: 64, offset: 1600)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !509, file: !63, line: 1198, baseType: !2090, size: 64, offset: 448)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !100, line: 324, size: 704, elements: !2093)
!2093 = !{!2094, !2098, !2102, !2106, !2107, !2108, !2109, !2110, !2115, !2120, !2124}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2092, file: !100, line: 325, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!240, !2030}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2092, file: !100, line: 326, baseType: !2099, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!2030, !508, !240}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2092, file: !100, line: 327, baseType: !2103, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !2030}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2092, file: !100, line: 328, baseType: !2095, size: 64, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2092, file: !100, line: 329, baseType: !2095, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2092, file: !100, line: 330, baseType: !2095, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2092, file: !100, line: 331, baseType: !1031, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2092, file: !100, line: 334, baseType: !2111, size: 64, offset: 448)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!2114, !362}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2092, file: !100, line: 335, baseType: !2116, size: 64, offset: 512)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!240, !362, !2119}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2092, file: !100, line: 337, baseType: !2121, size: 64, offset: 576)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!240, !362, !2114}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2092, file: !100, line: 339, baseType: !2125, size: 64, offset: 640)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!240, !508, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !509, file: !63, line: 1199, baseType: !2130, size: 64, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2132)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !100, line: 430, size: 704, elements: !2133)
!2133 = !{!2134, !2140, !2141, !2145, !2146, !2147, !2162, !2185, !2189, !2190, !2213}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2132, file: !100, line: 431, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!240, !508, !240, !240, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2132, file: !100, line: 432, baseType: !1031, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2132, file: !100, line: 433, baseType: !2142, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!240, !508, !43}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2132, file: !100, line: 434, baseType: !2142, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2132, file: !100, line: 435, baseType: !1031, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2132, file: !100, line: 436, baseType: !2148, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!240, !508, !240, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !100, line: 417, size: 256, elements: !2153)
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2152, file: !100, line: 418, baseType: !240, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2152, file: !100, line: 419, baseType: !43, size: 32, offset: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2152, file: !100, line: 420, baseType: !43, size: 32, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2152, file: !100, line: 422, baseType: !43, size: 32, offset: 96)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2152, file: !100, line: 423, baseType: !43, size: 32, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2152, file: !100, line: 424, baseType: !43, size: 32, offset: 160)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2152, file: !100, line: 425, baseType: !43, size: 32, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2152, file: !100, line: 426, baseType: !43, size: 32, offset: 224)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2132, file: !100, line: 437, baseType: !2163, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!240, !508, !2042, !2166}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !100, line: 345, size: 960, elements: !2168)
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2167, file: !100, line: 346, baseType: !240, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2167, file: !100, line: 347, baseType: !147, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2167, file: !100, line: 348, baseType: !147, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2167, file: !100, line: 349, baseType: !147, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2167, file: !100, line: 350, baseType: !147, size: 64, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2167, file: !100, line: 351, baseType: !147, size: 64, offset: 320)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2167, file: !100, line: 352, baseType: !147, size: 64, offset: 384)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2167, file: !100, line: 353, baseType: !628, size: 64, offset: 448)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2167, file: !100, line: 355, baseType: !628, size: 64, offset: 512)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2167, file: !100, line: 356, baseType: !240, size: 32, offset: 576)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2167, file: !100, line: 357, baseType: !240, size: 32, offset: 608)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2167, file: !100, line: 358, baseType: !147, size: 64, offset: 640)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2167, file: !100, line: 359, baseType: !147, size: 64, offset: 704)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2167, file: !100, line: 360, baseType: !147, size: 64, offset: 768)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2167, file: !100, line: 361, baseType: !628, size: 64, offset: 832)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2167, file: !100, line: 362, baseType: !240, size: 32, offset: 896)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2132, file: !100, line: 438, baseType: !2186, size: 64, offset: 448)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!240, !508, !2128, !2166}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2132, file: !100, line: 440, baseType: !2163, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2132, file: !100, line: 441, baseType: !2191, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!240, !508, !2194}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !100, line: 411, size: 1408, elements: !2196)
!2196 = !{!2197, !2198}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2195, file: !100, line: 412, baseType: !43, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2195, file: !100, line: 413, baseType: !2199, size: 1344, offset: 64)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2200, size: 1344, elements: !284)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !100, line: 397, size: 448, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2212}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2200, file: !100, line: 398, baseType: !43, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2200, file: !100, line: 399, baseType: !43, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2200, file: !100, line: 401, baseType: !43, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2200, file: !100, line: 402, baseType: !43, size: 32, offset: 96)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2200, file: !100, line: 403, baseType: !43, size: 32, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2200, file: !100, line: 404, baseType: !43, size: 32, offset: 160)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2200, file: !100, line: 405, baseType: !43, size: 32, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2200, file: !100, line: 406, baseType: !151, size: 64, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2200, file: !100, line: 407, baseType: !2211, size: 64, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !154, line: 132, baseType: !147)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2200, file: !100, line: 408, baseType: !2211, size: 64, offset: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2132, file: !100, line: 442, baseType: !2142, size: 64, offset: 640)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !509, file: !63, line: 1200, baseType: !2215, size: 64, offset: 576)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2217)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !63, line: 54, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !509, file: !63, line: 1201, baseType: !156, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !509, file: !63, line: 1202, baseType: !156, size: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !509, file: !63, line: 1203, baseType: !156, size: 64, offset: 768)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !509, file: !63, line: 1204, baseType: !397, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !509, file: !63, line: 1205, baseType: !1220, size: 320, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !509, file: !63, line: 1206, baseType: !240, size: 32, offset: 1216)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !509, file: !63, line: 1207, baseType: !236, size: 32, offset: 1248)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !509, file: !63, line: 1209, baseType: !152, size: 64, offset: 1280)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !509, file: !63, line: 1211, baseType: !2227, size: 64, offset: 1344)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !63, line: 1211, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !509, file: !63, line: 1223, baseType: !2232, size: 64, offset: 1408)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !414, line: 34, size: 64, elements: !2233)
!2233 = !{!2234}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2232, file: !414, line: 35, baseType: !417, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !509, file: !63, line: 1224, baseType: !203, size: 128, offset: 1472)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !509, file: !63, line: 1225, baseType: !2237, size: 64, offset: 1600)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !63, line: 1225, flags: DIFlagFwdDecl)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !509, file: !63, line: 1226, baseType: !2240, size: 64, offset: 1664)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !63, line: 1226, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !509, file: !63, line: 1227, baseType: !2243, size: 64, offset: 1728)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !63, line: 50, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !509, file: !63, line: 1228, baseType: !2246, size: 64, offset: 1792)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !63, line: 1228, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !509, file: !63, line: 1229, baseType: !864, size: 128, offset: 1856)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !509, file: !63, line: 1230, baseType: !43, size: 32, offset: 1984)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !509, file: !63, line: 1231, baseType: !2251, size: 2496, offset: 2048)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !100, line: 521, size: 2496, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2257, !2289}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2251, file: !100, line: 522, baseType: !43, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2251, file: !100, line: 523, baseType: !1220, size: 320, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2251, file: !100, line: 524, baseType: !2256, size: 192, offset: 384)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 192, elements: !284)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2251, file: !100, line: 525, baseType: !2258, size: 1728, offset: 576)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2259, size: 1728, elements: !284)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !100, line: 222, size: 576, elements: !2260)
!2260 = !{!2261, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2259, file: !100, line: 223, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !100, line: 445, size: 256, elements: !2264)
!2264 = !{!2265, !2266, !2279, !2280}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2263, file: !100, line: 446, baseType: !240, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2263, file: !100, line: 447, baseType: !2267, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !100, line: 312, size: 512, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2269, file: !100, line: 313, baseType: !1031, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2269, file: !100, line: 314, baseType: !1031, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2269, file: !100, line: 315, baseType: !1031, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2269, file: !100, line: 316, baseType: !1031, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2269, file: !100, line: 317, baseType: !2095, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2269, file: !100, line: 318, baseType: !2095, size: 64, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2269, file: !100, line: 319, baseType: !2095, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2269, file: !100, line: 320, baseType: !2125, size: 64, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2263, file: !100, line: 448, baseType: !547, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2263, file: !100, line: 449, baseType: !2262, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2259, file: !100, line: 224, baseType: !240, size: 32, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2259, file: !100, line: 226, baseType: !203, size: 128, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2259, file: !100, line: 227, baseType: !156, size: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2259, file: !100, line: 228, baseType: !43, size: 32, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2259, file: !100, line: 229, baseType: !43, size: 32, offset: 352)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2259, file: !100, line: 230, baseType: !2063, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2259, file: !100, line: 231, baseType: !2063, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2259, file: !100, line: 232, baseType: !152, size: 64, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2251, file: !100, line: 526, baseType: !2290, size: 192, offset: 2304)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2267, size: 192, elements: !284)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !509, file: !63, line: 1233, baseType: !2292, size: 2368, offset: 4544)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !63, line: 1184, size: 2368, elements: !2293)
!2293 = !{!2294, !2295, !2296}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2292, file: !63, line: 1185, baseType: !253, size: 16)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2292, file: !63, line: 1186, baseType: !253, size: 16, offset: 16)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2292, file: !63, line: 1187, baseType: !2297, size: 2304, offset: 64)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2298, size: 2304, elements: !284)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2299, line: 12, size: 768, elements: !2300)
!2299 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2300 = !{!2301, !2309, !2310, !3509, !3510}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2298, file: !2299, line: 13, baseType: !2302, size: 384)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2303, line: 17, size: 384, elements: !2304)
!2303 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2304 = !{!2305, !2306, !2307, !2308}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2302, file: !2303, line: 18, baseType: !240, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2302, file: !2303, line: 19, baseType: !240, size: 32, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2302, file: !2303, line: 20, baseType: !1157, size: 192, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2302, file: !2303, line: 22, baseType: !838, size: 128, align: 64, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2298, file: !2299, line: 14, baseType: !690, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2298, file: !2299, line: 15, baseType: !2311, size: 64, offset: 448)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2312, line: 16, size: 64, elements: !2313)
!2312 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2313 = !{!2314}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2311, file: !2312, line: 17, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1909, line: 746, size: 58368, elements: !2317)
!2317 = !{!2318, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2398, !2409, !2504, !2508, !2511, !2542, !2543, !2544, !2545, !2556, !2558, !2559, !2560, !2561, !2562, !2563, !2574, !2575, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2592, !2593, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2686, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2734, !2740, !2741, !2742, !2743, !2744, !2746, !2749, !2756, !2761, !2764, !2767, !2770, !2773, !2911, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2949, !2950, !2951, !2960, !2968, !2969, !2970, !2971, !2972, !2977, !2978, !2979, !2982, !2983, !2986, !2989, !2992, !3000, !3003, !3004, !3090, !3091, !3092, !3093, !3094, !3100, !3101, !3102, !3103, !3106, !3107, !3110, !3113, !3114, !3117, !3118, !3119, !3122, !3123, !3124, !3125, !3126, !3127, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3159, !3160, !3166, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3178, !3250, !3252, !3253, !3254, !3255, !3256, !3257, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3286, !3287, !3288}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2316, file: !1909, line: 752, baseType: !2319, size: 192)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2320, line: 56, size: 192, elements: !2321)
!2320 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2321 = !{!2322, !2323, !2324, !2325}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2319, file: !2320, line: 57, baseType: !156, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2319, file: !2320, line: 58, baseType: !156, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2319, file: !2320, line: 59, baseType: !189, size: 32, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2319, file: !2320, line: 61, baseType: !189, size: 32, offset: 160)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2316, file: !1909, line: 754, baseType: !43, size: 32, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2316, file: !1909, line: 767, baseType: !152, size: 64, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2316, file: !1909, line: 768, baseType: !1146, size: 32, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !1909, line: 770, baseType: !43, size: 32, offset: 352)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2316, file: !1909, line: 771, baseType: !43, size: 32, offset: 384)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2316, file: !1909, line: 774, baseType: !240, size: 32, offset: 416)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2316, file: !1909, line: 775, baseType: !2333, size: 128, offset: 448)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2334, line: 58, size: 128, elements: !2335)
!2334 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2335 = !{!2336, !2337, !2342, !2343}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2333, file: !2334, line: 59, baseType: !1103, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, scope: !2333, file: !2334, line: 60, baseType: !2338, size: 32, offset: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2333, file: !2334, line: 60, size: 32, elements: !2339)
!2339 = !{!2340, !2341}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2338, file: !2334, line: 61, baseType: !43, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2338, file: !2334, line: 62, baseType: !236, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2333, file: !2334, line: 65, baseType: !251, size: 16, offset: 96)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2333, file: !2334, line: 65, baseType: !251, size: 16, offset: 112)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2316, file: !1909, line: 776, baseType: !43, size: 32, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2316, file: !1909, line: 777, baseType: !156, size: 64, offset: 640)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2316, file: !1909, line: 778, baseType: !2315, size: 64, offset: 704)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2316, file: !1909, line: 787, baseType: !240, size: 32, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2316, file: !1909, line: 788, baseType: !240, size: 32, offset: 800)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2316, file: !1909, line: 790, baseType: !240, size: 32, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2316, file: !1909, line: 792, baseType: !240, size: 32, offset: 864)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2316, file: !1909, line: 793, baseType: !240, size: 32, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2316, file: !1909, line: 794, baseType: !240, size: 32, offset: 928)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2316, file: !1909, line: 795, baseType: !43, size: 32, offset: 960)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2316, file: !1909, line: 797, baseType: !2355, size: 2048, offset: 1024)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1909, line: 551, size: 2048, elements: !2356)
!2356 = !{!2357, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2377, !2380, !2381, !2382}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2355, file: !1909, line: 553, baseType: !2358, size: 128)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1909, line: 411, size: 128, elements: !2359)
!2359 = !{!2360, !2361}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2358, file: !1909, line: 412, baseType: !156, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2358, file: !1909, line: 413, baseType: !189, size: 32, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2355, file: !1909, line: 554, baseType: !730, size: 192, align: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2355, file: !1909, line: 555, baseType: !147, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2355, file: !1909, line: 556, baseType: !147, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2355, file: !1909, line: 558, baseType: !203, size: 128, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2355, file: !1909, line: 559, baseType: !43, size: 32, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2355, file: !1909, line: 561, baseType: !147, size: 64, offset: 640)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2355, file: !1909, line: 562, baseType: !147, size: 64, offset: 704)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2355, file: !1909, line: 563, baseType: !147, size: 64, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2355, file: !1909, line: 564, baseType: !147, size: 64, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2355, file: !1909, line: 565, baseType: !628, size: 64, offset: 896)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2355, file: !1909, line: 566, baseType: !147, size: 64, offset: 960)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2355, file: !1909, line: 568, baseType: !147, size: 64, offset: 1024)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2355, file: !1909, line: 571, baseType: !240, size: 32, offset: 1088)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2355, file: !1909, line: 572, baseType: !2376, size: 64, offset: 1152)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2355, file: !1909, line: 574, baseType: !2378, size: 64, offset: 1216)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1909, line: 49, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2355, file: !1909, line: 576, baseType: !2378, size: 64, offset: 1280)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2355, file: !1909, line: 578, baseType: !156, size: 64, offset: 1344)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2355, file: !1909, line: 588, baseType: !2383, size: 512, align: 512, offset: 1536)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1909, line: 497, size: 512, align: 512, elements: !2384)
!2384 = !{!2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2383, file: !1909, line: 498, baseType: !147, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2383, file: !1909, line: 499, baseType: !147, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2383, file: !1909, line: 500, baseType: !147, size: 64, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2383, file: !1909, line: 501, baseType: !189, size: 32, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2383, file: !1909, line: 502, baseType: !189, size: 32, offset: 224)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2383, file: !1909, line: 503, baseType: !156, size: 64, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2383, file: !1909, line: 504, baseType: !156, size: 64, offset: 320)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2383, file: !1909, line: 505, baseType: !156, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2383, file: !1909, line: 506, baseType: !2394, size: 64, align: 64, offset: 448)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1909, line: 445, size: 64, align: 64, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2394, file: !1909, line: 446, baseType: !43, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2394, file: !1909, line: 447, baseType: !43, size: 32, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2316, file: !1909, line: 798, baseType: !2399, size: 384, offset: 3072)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1909, line: 592, size: 384, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2399, file: !1909, line: 593, baseType: !203, size: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2399, file: !1909, line: 594, baseType: !156, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2399, file: !1909, line: 595, baseType: !156, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2399, file: !1909, line: 596, baseType: !43, size: 32, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2399, file: !1909, line: 597, baseType: !253, size: 16, offset: 288)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2399, file: !1909, line: 598, baseType: !253, size: 16, offset: 304)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2399, file: !1909, line: 600, baseType: !2408, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2316, file: !1909, line: 799, baseType: !2410, size: 1792, offset: 3456)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1909, line: 610, size: 1792, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2501, !2502}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2410, file: !1909, line: 611, baseType: !730, size: 192, align: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2410, file: !1909, line: 618, baseType: !147, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2410, file: !1909, line: 619, baseType: !147, size: 64, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2410, file: !1909, line: 620, baseType: !147, size: 64, offset: 320)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2410, file: !1909, line: 621, baseType: !147, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2410, file: !1909, line: 622, baseType: !147, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2410, file: !1909, line: 629, baseType: !628, size: 64, offset: 512)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2410, file: !1909, line: 630, baseType: !147, size: 64, offset: 576)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2410, file: !1909, line: 631, baseType: !43, size: 32, offset: 640)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2410, file: !1909, line: 653, baseType: !43, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2410, file: !1909, line: 654, baseType: !43, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2410, file: !1909, line: 655, baseType: !43, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2410, file: !1909, line: 656, baseType: !43, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2410, file: !1909, line: 662, baseType: !2426, size: 512, offset: 704)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !106, line: 118, size: 512, elements: !2427)
!2427 = !{!2428, !2436, !2437, !2442, !2497, !2498, !2499, !2500}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2426, file: !106, line: 119, baseType: !2429, size: 256)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2430, line: 9, size: 256, elements: !2431)
!2430 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2431 = !{!2432, !2433}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2429, file: !2430, line: 10, baseType: !730, size: 192, align: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2429, file: !2430, line: 11, baseType: !2434, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2435, line: 29, baseType: !628)
!2435 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2426, file: !106, line: 120, baseType: !2434, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2426, file: !106, line: 121, baseType: !2438, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!105, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2426, file: !106, line: 122, baseType: !2443, size: 64, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !106, line: 159, size: 512, align: 512, elements: !2445)
!2445 = !{!2446, !2471, !2472, !2475, !2480, !2481, !2492, !2496}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2444, file: !106, line: 160, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !106, line: 215, size: 4608, align: 512, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2448, file: !106, line: 216, baseType: !576, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2448, file: !106, line: 217, baseType: !43, size: 32, offset: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2448, file: !106, line: 218, baseType: !43, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2448, file: !106, line: 219, baseType: !43, size: 32, offset: 96)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2448, file: !106, line: 220, baseType: !43, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2448, file: !106, line: 221, baseType: !43, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2448, file: !106, line: 222, baseType: !43, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2448, file: !106, line: 223, baseType: !43, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2448, file: !106, line: 224, baseType: !43, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2448, file: !106, line: 226, baseType: !43, size: 32, offset: 160)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2448, file: !106, line: 227, baseType: !253, size: 16, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2448, file: !106, line: 228, baseType: !253, size: 16, offset: 208)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2448, file: !106, line: 229, baseType: !43, size: 32, offset: 224)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2448, file: !106, line: 235, baseType: !2434, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2448, file: !106, line: 236, baseType: !2441, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2448, file: !106, line: 237, baseType: !2434, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2448, file: !106, line: 238, baseType: !2441, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2448, file: !106, line: 239, baseType: !2468, size: 4096, align: 512, offset: 512)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2444, size: 4096, align: 512, elements: !2469)
!2469 = !{!2470}
!2470 = !DISubrange(count: 8)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2444, file: !106, line: 161, baseType: !43, size: 32, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2444, file: !106, line: 162, baseType: !2473, size: 32, offset: 96)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !154, line: 32, baseType: !2474)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !317, line: 96, baseType: !240)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2444, file: !106, line: 163, baseType: !2476, size: 32, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !404, line: 274, baseType: !2477)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !404, line: 274, size: 32, elements: !2478)
!2478 = !{!2479}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2477, file: !404, line: 274, baseType: !408, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2444, file: !106, line: 164, baseType: !2441, size: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2444, file: !106, line: 165, baseType: !2482, size: 128, offset: 256)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2430, line: 14, size: 128, elements: !2483)
!2483 = !{!2484}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2482, file: !2430, line: 15, baseType: !2485, size: 128)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !731, line: 26, size: 128, elements: !2486)
!2486 = !{!2487, !2491}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2485, file: !731, line: 27, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !731, line: 12, size: 64, elements: !2489)
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2488, file: !731, line: 13, baseType: !735, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2485, file: !731, line: 28, baseType: !735, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2444, file: !106, line: 166, baseType: !2493, size: 64, offset: 384)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!2434}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2444, file: !106, line: 167, baseType: !2434, size: 64, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2426, file: !106, line: 123, baseType: !245, size: 8, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2426, file: !106, line: 124, baseType: !245, size: 8, offset: 456)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2426, file: !106, line: 125, baseType: !245, size: 8, offset: 464)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2426, file: !106, line: 126, baseType: !245, size: 8, offset: 472)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2410, file: !1909, line: 671, baseType: !2426, size: 512, offset: 1216)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2410, file: !1909, line: 679, baseType: !2503, size: 64, offset: 1728)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2316, file: !1909, line: 800, baseType: !2505, size: 64, offset: 5248)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1909, line: 800, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2316, file: !1909, line: 809, baseType: !2509, size: 64, offset: 5312)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1909, line: 70, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2316, file: !1909, line: 825, baseType: !2512, size: 2048, align: 512, offset: 5632)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1909, line: 509, size: 2048, align: 512, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2512, file: !1909, line: 511, baseType: !147, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2512, file: !1909, line: 512, baseType: !147, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2512, file: !1909, line: 513, baseType: !147, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2512, file: !1909, line: 514, baseType: !147, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2512, file: !1909, line: 515, baseType: !147, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2512, file: !1909, line: 516, baseType: !147, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2512, file: !1909, line: 518, baseType: !147, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2512, file: !1909, line: 519, baseType: !147, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2512, file: !1909, line: 520, baseType: !628, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2512, file: !1909, line: 522, baseType: !147, size: 64, offset: 576)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2512, file: !1909, line: 523, baseType: !147, size: 64, offset: 640)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2512, file: !1909, line: 524, baseType: !628, size: 64, offset: 704)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2512, file: !1909, line: 526, baseType: !628, size: 64, offset: 768)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2512, file: !1909, line: 527, baseType: !147, size: 64, offset: 832)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2512, file: !1909, line: 529, baseType: !147, size: 64, offset: 896)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2512, file: !1909, line: 530, baseType: !147, size: 64, offset: 960)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2512, file: !1909, line: 531, baseType: !147, size: 64, offset: 1024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2512, file: !1909, line: 532, baseType: !147, size: 64, offset: 1088)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2512, file: !1909, line: 533, baseType: !147, size: 64, offset: 1152)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2512, file: !1909, line: 535, baseType: !147, size: 64, offset: 1216)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2512, file: !1909, line: 536, baseType: !147, size: 64, offset: 1280)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2512, file: !1909, line: 537, baseType: !147, size: 64, offset: 1344)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2512, file: !1909, line: 538, baseType: !147, size: 64, offset: 1408)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2512, file: !1909, line: 539, baseType: !147, size: 64, offset: 1472)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2512, file: !1909, line: 540, baseType: !147, size: 64, offset: 1536)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2512, file: !1909, line: 541, baseType: !147, size: 64, offset: 1600)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2512, file: !1909, line: 542, baseType: !147, size: 64, offset: 1664)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2512, file: !1909, line: 543, baseType: !147, size: 64, offset: 1728)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2316, file: !1909, line: 833, baseType: !43, size: 32, offset: 7680)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2316, file: !1909, line: 836, baseType: !43, size: 32, offset: 7712)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2316, file: !1909, line: 837, baseType: !240, size: 32, offset: 7744)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2316, file: !1909, line: 838, baseType: !2546, size: 64, offset: 7808)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2548)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2549, line: 19, baseType: !2550)
!2549 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2549, line: 19, size: 64, elements: !2551)
!2551 = !{!2552}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2550, file: !2549, line: 19, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !2554)
!2554 = !{!2555}
!2555 = !DISubrange(count: 1)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2316, file: !1909, line: 839, baseType: !2557, size: 64, offset: 7872)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2316, file: !1909, line: 840, baseType: !2548, size: 64, offset: 7936)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2316, file: !1909, line: 841, baseType: !152, size: 64, offset: 8000)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2316, file: !1909, line: 843, baseType: !253, size: 16, offset: 8064)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2316, file: !1909, line: 845, baseType: !253, size: 16, offset: 8080)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2316, file: !1909, line: 848, baseType: !240, size: 32, offset: 8096)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2316, file: !1909, line: 849, baseType: !2564, size: 32, offset: 8128)
!2564 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1909, line: 718, size: 32, elements: !2565)
!2565 = !{!2566, !2573}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2564, file: !1909, line: 724, baseType: !2567, size: 32)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2564, file: !1909, line: 719, size: 32, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2567, file: !1909, line: 720, baseType: !245, size: 8)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2567, file: !1909, line: 721, baseType: !245, size: 8, offset: 8)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2567, file: !1909, line: 722, baseType: !245, size: 8, offset: 16)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2567, file: !1909, line: 723, baseType: !245, size: 8, offset: 24)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2564, file: !1909, line: 725, baseType: !189, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2316, file: !1909, line: 850, baseType: !203, size: 128, offset: 8192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2316, file: !1909, line: 851, baseType: !2576, size: 64, offset: 8320)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1909, line: 60, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2316, file: !1909, line: 855, baseType: !156, size: 64, offset: 8384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2316, file: !1909, line: 856, baseType: !245, size: 8, offset: 8448)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2316, file: !1909, line: 857, baseType: !245, size: 8, offset: 8456)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2316, file: !1909, line: 858, baseType: !240, size: 32, offset: 8480)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2316, file: !1909, line: 859, baseType: !203, size: 128, offset: 8512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2316, file: !1909, line: 860, baseType: !240, size: 32, offset: 8640)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2316, file: !1909, line: 861, baseType: !203, size: 128, offset: 8704)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2316, file: !1909, line: 873, baseType: !2586, size: 256, offset: 8832)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1909, line: 376, size: 256, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2591}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2586, file: !1909, line: 381, baseType: !156, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2586, file: !1909, line: 384, baseType: !151, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2586, file: !1909, line: 389, baseType: !151, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2586, file: !1909, line: 392, baseType: !151, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2316, file: !1909, line: 875, baseType: !203, size: 128, offset: 9088)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2316, file: !1909, line: 877, baseType: !2594, size: 320, offset: 9216)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2595, line: 86, size: 320, elements: !2596)
!2595 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2596 = !{!2597, !2598, !2599}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2594, file: !2595, line: 87, baseType: !240, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2594, file: !2595, line: 88, baseType: !203, size: 128, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2594, file: !2595, line: 89, baseType: !203, size: 128, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2316, file: !1909, line: 878, baseType: !730, size: 192, align: 64, offset: 9536)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2316, file: !1909, line: 881, baseType: !1499, size: 64, offset: 9728)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2316, file: !1909, line: 882, baseType: !1499, size: 64, offset: 9792)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2316, file: !1909, line: 884, baseType: !240, size: 32, offset: 9856)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2316, file: !1909, line: 885, baseType: !240, size: 32, offset: 9888)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2316, file: !1909, line: 886, baseType: !240, size: 32, offset: 9920)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2316, file: !1909, line: 888, baseType: !240, size: 32, offset: 9952)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2316, file: !1909, line: 890, baseType: !156, size: 64, offset: 9984)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2316, file: !1909, line: 893, baseType: !43, size: 32, offset: 10048)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2316, file: !1909, line: 896, baseType: !43, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2316, file: !1909, line: 897, baseType: !43, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2316, file: !1909, line: 898, baseType: !43, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2316, file: !1909, line: 899, baseType: !43, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2316, file: !1909, line: 919, baseType: !43, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2316, file: !1909, line: 922, baseType: !43, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2316, file: !1909, line: 923, baseType: !43, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2316, file: !1909, line: 925, baseType: !43, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2316, file: !1909, line: 939, baseType: !43, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2316, file: !1909, line: 941, baseType: !43, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2316, file: !1909, line: 944, baseType: !43, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2316, file: !1909, line: 956, baseType: !43, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2316, file: !1909, line: 962, baseType: !43, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2316, file: !1909, line: 966, baseType: !43, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2316, file: !1909, line: 969, baseType: !156, size: 64, offset: 10176)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2316, file: !1909, line: 971, baseType: !2625, size: 448, offset: 10240)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !111, line: 25, size: 448, elements: !2626)
!2626 = !{!2627, !2628, !2633}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2625, file: !111, line: 26, baseType: !156, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2625, file: !111, line: 27, baseType: !2629, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!319, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, scope: !2625, file: !111, line: 28, baseType: !2634, size: 320, offset: 128)
!2634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2625, file: !111, line: 28, size: 320, elements: !2635)
!2635 = !{!2636, !2646, !2671}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2634, file: !111, line: 37, baseType: !2637, size: 320)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !111, line: 30, size: 320, elements: !2638)
!2638 = !{!2639, !2641, !2642, !2643, !2644, !2645}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2637, file: !111, line: 31, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2637, file: !111, line: 32, baseType: !189, size: 32, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2637, file: !111, line: 33, baseType: !189, size: 32, offset: 96)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2637, file: !111, line: 34, baseType: !189, size: 32, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2637, file: !111, line: 35, baseType: !147, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2637, file: !111, line: 36, baseType: !2640, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2634, file: !111, line: 47, baseType: !2647, size: 192)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !111, line: 39, size: 192, elements: !2648)
!2648 = !{!2649, !2650, !2651, !2670}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2647, file: !111, line: 40, baseType: !2473, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2647, file: !111, line: 41, baseType: !110, size: 32, offset: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, scope: !2647, file: !111, line: 42, baseType: !2652, size: 64, offset: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2647, file: !111, line: 42, size: 64, elements: !2653)
!2653 = !{!2654, !2662}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2652, file: !111, line: 43, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2657, line: 7, size: 128, elements: !2658)
!2657 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2658 = !{!2659, !2661}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2656, file: !2657, line: 8, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !317, line: 93, baseType: !520)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2656, file: !2657, line: 9, baseType: !520, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2652, file: !111, line: 44, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2665, line: 7, size: 64, elements: !2666)
!2665 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2666 = !{!2667, !2669}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2664, file: !2665, line: 8, baseType: !2668, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2665, line: 5, baseType: !614)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2664, file: !2665, line: 9, baseType: !614, size: 32, offset: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2647, file: !111, line: 46, baseType: !147, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2634, file: !111, line: 55, baseType: !2672, size: 256)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2634, file: !111, line: 49, size: 256, elements: !2673)
!2673 = !{!2674, !2682, !2683, !2684, !2685}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2672, file: !111, line: 50, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2677, line: 36, size: 64, elements: !2678)
!2677 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2678 = !{!2679, !2680, !2681}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2676, file: !2677, line: 37, baseType: !240, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2676, file: !2677, line: 38, baseType: !756, size: 16, offset: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2676, file: !2677, line: 39, baseType: !756, size: 16, offset: 48)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2672, file: !111, line: 51, baseType: !240, size: 32, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2672, file: !111, line: 52, baseType: !240, size: 32, offset: 96)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2672, file: !111, line: 53, baseType: !156, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2672, file: !111, line: 54, baseType: !156, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2316, file: !1909, line: 973, baseType: !2687, size: 32, offset: 10688)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !154, line: 27, baseType: !2688)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !317, line: 28, baseType: !240)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2316, file: !1909, line: 974, baseType: !2687, size: 32, offset: 10720)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2316, file: !1909, line: 978, baseType: !156, size: 64, offset: 10752)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2316, file: !1909, line: 987, baseType: !2315, size: 64, offset: 10816)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2316, file: !1909, line: 990, baseType: !2315, size: 64, offset: 10880)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2316, file: !1909, line: 995, baseType: !203, size: 128, offset: 10944)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2316, file: !1909, line: 996, baseType: !203, size: 128, offset: 11072)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2316, file: !1909, line: 997, baseType: !2315, size: 64, offset: 11200)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2316, file: !1909, line: 1005, baseType: !203, size: 128, offset: 11264)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2316, file: !1909, line: 1006, baseType: !203, size: 128, offset: 11392)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2316, file: !1909, line: 1009, baseType: !1142, size: 64, offset: 11520)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2316, file: !1909, line: 1010, baseType: !2700, size: 512, offset: 11584)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 512, elements: !848)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2316, file: !1909, line: 1011, baseType: !203, size: 128, offset: 12096)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2316, file: !1909, line: 1012, baseType: !203, size: 128, offset: 12224)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2316, file: !1909, line: 1014, baseType: !566, size: 64, offset: 12352)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2316, file: !1909, line: 1017, baseType: !747, size: 64, offset: 12416)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2316, file: !1909, line: 1020, baseType: !747, size: 64, offset: 12480)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2316, file: !1909, line: 1023, baseType: !152, size: 64, offset: 12544)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2316, file: !1909, line: 1025, baseType: !147, size: 64, offset: 12608)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2316, file: !1909, line: 1026, baseType: !147, size: 64, offset: 12672)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2316, file: !1909, line: 1031, baseType: !147, size: 64, offset: 12736)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2316, file: !1909, line: 1032, baseType: !2711, size: 192, offset: 12800)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1909, line: 324, size: 192, elements: !2712)
!2712 = !{!2713, !2714, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2711, file: !1909, line: 326, baseType: !147, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2711, file: !1909, line: 327, baseType: !147, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2711, file: !1909, line: 328, baseType: !576, size: 32, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2316, file: !1909, line: 1041, baseType: !156, size: 64, offset: 12992)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2316, file: !1909, line: 1042, baseType: !156, size: 64, offset: 13056)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2316, file: !1909, line: 1045, baseType: !147, size: 64, offset: 13120)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2316, file: !1909, line: 1048, baseType: !147, size: 64, offset: 13184)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2316, file: !1909, line: 1051, baseType: !156, size: 64, offset: 13248)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2316, file: !1909, line: 1052, baseType: !156, size: 64, offset: 13312)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2316, file: !1909, line: 1055, baseType: !2723, size: 640, offset: 13376)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2724, line: 132, size: 640, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2725 = !{!2726, !2732, !2733}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2723, file: !2724, line: 133, baseType: !2727, size: 576)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2728, size: 576, elements: !284)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2724, line: 117, size: 192, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2728, file: !2724, line: 118, baseType: !147, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2728, file: !2724, line: 119, baseType: !2482, size: 128, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2723, file: !2724, line: 134, baseType: !43, size: 32, offset: 576)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2723, file: !2724, line: 135, baseType: !43, size: 32, offset: 608)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2316, file: !1909, line: 1058, baseType: !2735, size: 448, offset: 14016)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2724, line: 144, size: 448, elements: !2736)
!2736 = !{!2737, !2738, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2735, file: !2724, line: 145, baseType: !838, size: 128, align: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2735, file: !2724, line: 146, baseType: !618, size: 256, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2735, file: !2724, line: 147, baseType: !43, size: 32, offset: 384)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2316, file: !1909, line: 1064, baseType: !1179, size: 64, offset: 14464)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2316, file: !1909, line: 1067, baseType: !1179, size: 64, offset: 14528)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2316, file: !1909, line: 1070, baseType: !1179, size: 64, offset: 14592)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2316, file: !1909, line: 1074, baseType: !1206, size: 64, offset: 14656)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2316, file: !1909, line: 1084, baseType: !2745, size: 128, offset: 14720)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !186)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2316, file: !1909, line: 1086, baseType: !2747, size: 64, offset: 14848)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1909, line: 55, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2316, file: !1909, line: 1089, baseType: !2750, size: 64, offset: 14912)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2751, line: 12, size: 64, elements: !2752)
!2751 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2750, file: !2751, line: 13, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2751, line: 8, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2316, file: !1909, line: 1090, baseType: !2757, size: 128, offset: 14976)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2758, line: 13, size: 128, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2757, file: !2758, line: 14, baseType: !203, size: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2316, file: !1909, line: 1097, baseType: !2762, size: 64, offset: 15104)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1909, line: 50, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2316, file: !1909, line: 1100, baseType: !2765, size: 64, offset: 15168)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1909, line: 1100, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2316, file: !1909, line: 1103, baseType: !2768, size: 64, offset: 15232)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1909, line: 53, flags: DIFlagFwdDecl)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2316, file: !1909, line: 1107, baseType: !2771, size: 64, offset: 15296)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1909, line: 56, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2316, file: !1909, line: 1110, baseType: !2774, size: 64, offset: 15360)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2776, line: 93, size: 8768, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2825, !2834, !2835, !2837, !2838, !2839, !2842, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2880, !2881, !2888, !2898, !2901, !2902, !2905, !2906, !2907, !2908, !2909, !2910}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2775, file: !2776, line: 94, baseType: !1146, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2775, file: !2776, line: 95, baseType: !236, size: 32, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2775, file: !2776, line: 96, baseType: !240, size: 32, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2775, file: !2776, line: 97, baseType: !240, size: 32, offset: 96)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2775, file: !2776, line: 98, baseType: !203, size: 128, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2775, file: !2776, line: 100, baseType: !1157, size: 192, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2775, file: !2776, line: 103, baseType: !2315, size: 64, offset: 448)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2775, file: !2776, line: 106, baseType: !2786, size: 192, offset: 512)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1364, line: 32, size: 192, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2786, file: !1364, line: 33, baseType: !203, size: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2786, file: !1364, line: 34, baseType: !2790, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2791, line: 25, baseType: !2792)
!2791 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2791, line: 23, size: 64, elements: !2793)
!2793 = !{!2794}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2792, file: !2791, line: 24, baseType: !2553, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2775, file: !2776, line: 109, baseType: !987, size: 64, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2775, file: !2776, line: 112, baseType: !240, size: 32, offset: 768)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2775, file: !2776, line: 114, baseType: !240, size: 32, offset: 800)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2775, file: !2776, line: 115, baseType: !2315, size: 64, offset: 832)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2775, file: !2776, line: 118, baseType: !240, size: 32, offset: 896)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2775, file: !2776, line: 119, baseType: !43, size: 32, offset: 928)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2775, file: !2776, line: 121, baseType: !2802, size: 64, offset: 960)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2776, line: 80, size: 448, elements: !2804)
!2804 = !{!2805, !2806, !2812}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2803, file: !2776, line: 81, baseType: !236, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2803, file: !2776, line: 82, baseType: !2807, size: 128, offset: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2776, line: 75, size: 128, elements: !2808)
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2807, file: !2776, line: 76, baseType: !2315, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2807, file: !2776, line: 77, baseType: !2811, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2803, file: !2776, line: 83, baseType: !567, size: 256, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2775, file: !2776, line: 132, baseType: !43, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2775, file: !2776, line: 133, baseType: !43, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2775, file: !2776, line: 138, baseType: !43, size: 32, offset: 1056)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2775, file: !2776, line: 139, baseType: !203, size: 128, offset: 1088)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2775, file: !2776, line: 142, baseType: !2426, size: 512, offset: 1216)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2775, file: !2776, line: 143, baseType: !2434, size: 64, offset: 1728)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2775, file: !2776, line: 150, baseType: !2820, size: 256, offset: 1792)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2821, size: 256, elements: !737)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2776, line: 38, size: 128, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2821, file: !2776, line: 39, baseType: !147, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2821, file: !2776, line: 40, baseType: !147, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2775, file: !2776, line: 156, baseType: !2826, size: 192, offset: 2048)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2776, line: 66, size: 192, elements: !2827)
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2826, file: !2776, line: 67, baseType: !2829, size: 192)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2776, line: 47, size: 192, elements: !2830)
!2830 = !{!2831, !2832, !2833}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2829, file: !2776, line: 48, baseType: !624, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2829, file: !2776, line: 49, baseType: !624, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2829, file: !2776, line: 50, baseType: !624, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2775, file: !2776, line: 160, baseType: !2723, size: 640, offset: 2240)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2775, file: !2776, line: 163, baseType: !2836, size: 256, offset: 2880)
!2836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1142, size: 256, elements: !848)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2775, file: !2776, line: 169, baseType: !1142, size: 64, offset: 3136)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2775, file: !2776, line: 172, baseType: !240, size: 32, offset: 3200)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2775, file: !2776, line: 174, baseType: !2840, size: 64, offset: 3264)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2776, line: 174, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2775, file: !2776, line: 185, baseType: !2843, size: 64, offset: 3328)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !404, line: 860, baseType: !2844)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 853, size: 64, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2844, file: !404, line: 858, baseType: !403, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2844, file: !404, line: 859, baseType: !216, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2775, file: !2776, line: 186, baseType: !147, size: 64, offset: 3392)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2775, file: !2776, line: 186, baseType: !147, size: 64, offset: 3456)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2775, file: !2776, line: 186, baseType: !147, size: 64, offset: 3520)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2775, file: !2776, line: 186, baseType: !147, size: 64, offset: 3584)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2775, file: !2776, line: 187, baseType: !147, size: 64, offset: 3648)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2775, file: !2776, line: 188, baseType: !147, size: 64, offset: 3712)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2775, file: !2776, line: 189, baseType: !2711, size: 192, offset: 3776)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2775, file: !2776, line: 190, baseType: !156, size: 64, offset: 3968)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2775, file: !2776, line: 190, baseType: !156, size: 64, offset: 4032)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2775, file: !2776, line: 190, baseType: !156, size: 64, offset: 4096)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2775, file: !2776, line: 190, baseType: !156, size: 64, offset: 4160)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2775, file: !2776, line: 191, baseType: !156, size: 64, offset: 4224)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2775, file: !2776, line: 191, baseType: !156, size: 64, offset: 4288)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2775, file: !2776, line: 191, baseType: !156, size: 64, offset: 4352)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2775, file: !2776, line: 191, baseType: !156, size: 64, offset: 4416)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2775, file: !2776, line: 192, baseType: !156, size: 64, offset: 4480)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2775, file: !2776, line: 192, baseType: !156, size: 64, offset: 4544)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2775, file: !2776, line: 192, baseType: !156, size: 64, offset: 4608)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2775, file: !2776, line: 192, baseType: !156, size: 64, offset: 4672)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2775, file: !2776, line: 193, baseType: !156, size: 64, offset: 4736)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2775, file: !2776, line: 193, baseType: !156, size: 64, offset: 4800)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2775, file: !2776, line: 194, baseType: !2870, size: 448, offset: 4864)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2871, line: 12, size: 448, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2870, file: !2871, line: 15, baseType: !147, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2870, file: !2871, line: 17, baseType: !147, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2870, file: !2871, line: 19, baseType: !147, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2870, file: !2871, line: 21, baseType: !147, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2870, file: !2871, line: 29, baseType: !147, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2870, file: !2871, line: 35, baseType: !147, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2870, file: !2871, line: 44, baseType: !147, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2775, file: !2776, line: 202, baseType: !151, size: 64, offset: 5312)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2775, file: !2776, line: 213, baseType: !2882, size: 2048, offset: 5376)
!2882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2883, size: 2048, elements: !186)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2884, line: 43, size: 128, elements: !2885)
!2884 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2885 = !{!2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2883, file: !2884, line: 44, baseType: !332, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2883, file: !2884, line: 45, baseType: !332, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2775, file: !2776, line: 216, baseType: !2889, size: 448, offset: 7424)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2776, line: 30, size: 448, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2896, !2897}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2889, file: !2776, line: 31, baseType: !240, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2889, file: !2776, line: 32, baseType: !319, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2889, file: !2776, line: 33, baseType: !156, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2889, file: !2776, line: 34, baseType: !147, size: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2889, file: !2776, line: 34, baseType: !147, size: 64, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2889, file: !2776, line: 35, baseType: !156, size: 64, offset: 320)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2889, file: !2776, line: 35, baseType: !156, size: 64, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2775, file: !2776, line: 219, baseType: !2899, size: 64, offset: 7872)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2776, line: 219, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2775, file: !2776, line: 222, baseType: !43, size: 32, offset: 7936)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2775, file: !2776, line: 223, baseType: !2903, size: 64, offset: 8000)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2776, line: 223, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2775, file: !2776, line: 230, baseType: !698, size: 8, offset: 8064)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2775, file: !2776, line: 231, baseType: !756, size: 16, offset: 8080)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2775, file: !2776, line: 232, baseType: !756, size: 16, offset: 8096)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2775, file: !2776, line: 234, baseType: !1499, size: 64, offset: 8128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2775, file: !2776, line: 237, baseType: !618, size: 256, offset: 8192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2775, file: !2776, line: 243, baseType: !1220, size: 320, offset: 8448)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2316, file: !1909, line: 1111, baseType: !2912, size: 64, offset: 15424)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2776, line: 20, size: 16640, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2913, file: !2776, line: 21, baseType: !216, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2913, file: !2776, line: 22, baseType: !1146, size: 32, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2913, file: !2776, line: 23, baseType: !1157, size: 192, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2913, file: !2776, line: 24, baseType: !2919, size: 16384, offset: 256)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2920, size: 16384, elements: !288)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1364, line: 51, size: 256, elements: !2921)
!2921 = !{!2922}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2920, file: !1364, line: 52, baseType: !2923, size: 256)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1364, line: 37, size: 256, elements: !2924)
!2924 = !{!2925, !2932, !2933, !2937}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2923, file: !1364, line: 39, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2927, line: 83, baseType: !2928)
!2927 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2927, line: 82, baseType: !2930)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !240}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2923, file: !1364, line: 40, baseType: !156, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2923, file: !1364, line: 46, baseType: !2934, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2927, line: 86, baseType: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2927, line: 85, baseType: !982)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2923, file: !1364, line: 48, baseType: !2790, size: 64, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2316, file: !1909, line: 1112, baseType: !2790, size: 64, offset: 15488)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2316, file: !1909, line: 1113, baseType: !2790, size: 64, offset: 15552)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2316, file: !1909, line: 1115, baseType: !2790, size: 64, offset: 15616)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2316, file: !1909, line: 1116, baseType: !2786, size: 192, offset: 15680)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2316, file: !1909, line: 1117, baseType: !156, size: 64, offset: 15872)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2316, file: !1909, line: 1118, baseType: !330, size: 64, offset: 15936)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2316, file: !1909, line: 1119, baseType: !43, size: 32, offset: 16000)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2316, file: !1909, line: 1121, baseType: !837, size: 64, offset: 16064)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2316, file: !1909, line: 1125, baseType: !2947, size: 64, offset: 16128)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1909, line: 43, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2316, file: !1909, line: 1127, baseType: !368, size: 32, offset: 16192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2316, file: !1909, line: 1128, baseType: !43, size: 32, offset: 16224)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2316, file: !1909, line: 1130, baseType: !2952, size: 128, offset: 16256)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2953, line: 37, size: 128, elements: !2954)
!2953 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2954 = !{!2955, !2956, !2957}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2952, file: !2953, line: 38, baseType: !240, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2952, file: !2953, line: 39, baseType: !236, size: 32, offset: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2952, file: !2953, line: 40, baseType: !2958, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2953, line: 24, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2316, file: !1909, line: 1131, baseType: !2961, size: 256, offset: 16384)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2962, line: 12, size: 256, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2963 = !{!2964, !2965, !2966, !2967}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2961, file: !2962, line: 13, baseType: !283, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2961, file: !2962, line: 14, baseType: !156, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2961, file: !2962, line: 15, baseType: !156, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2961, file: !2962, line: 16, baseType: !698, size: 8, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2316, file: !1909, line: 1134, baseType: !147, size: 64, offset: 16640)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2316, file: !1909, line: 1135, baseType: !147, size: 64, offset: 16704)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2316, file: !1909, line: 1138, baseType: !216, size: 32, offset: 16768)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2316, file: !1909, line: 1141, baseType: !576, size: 32, offset: 16800)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2316, file: !1909, line: 1143, baseType: !2973, size: 64, offset: 16832)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1909, line: 735, size: 64, elements: !2974)
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2973, file: !1909, line: 736, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2316, file: !1909, line: 1147, baseType: !2485, size: 128, offset: 16896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2316, file: !1909, line: 1149, baseType: !2315, size: 64, offset: 17024)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2316, file: !1909, line: 1151, baseType: !2980, size: 64, offset: 17088)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1909, line: 1151, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2316, file: !1909, line: 1188, baseType: !152, size: 64, offset: 17152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2316, file: !1909, line: 1191, baseType: !2984, size: 64, offset: 17216)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1909, line: 44, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2316, file: !1909, line: 1194, baseType: !2987, size: 64, offset: 17280)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1909, line: 45, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2316, file: !1909, line: 1197, baseType: !2990, size: 64, offset: 17344)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1909, line: 61, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2316, file: !1909, line: 1199, baseType: !2993, size: 64, offset: 17408)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2995, line: 99, size: 128, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2996 = !{!2997, !2998, !2999}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2994, file: !2995, line: 100, baseType: !622, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2994, file: !2995, line: 101, baseType: !236, size: 32, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2994, file: !2995, line: 103, baseType: !253, size: 16, offset: 96)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2316, file: !1909, line: 1202, baseType: !3001, size: 64, offset: 17472)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1909, line: 48, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2316, file: !1909, line: 1205, baseType: !156, size: 64, offset: 17536)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2316, file: !1909, line: 1206, baseType: !3005, size: 64, offset: 17600)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1364, line: 14, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1364, line: 12, size: 384, elements: !3008)
!3008 = !{!3009}
!3009 = !DIDerivedType(tag: DW_TAG_member, scope: !3007, file: !1364, line: 13, baseType: !3010, size: 384)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3007, file: !1364, line: 13, size: 384, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3015}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3010, file: !1364, line: 13, baseType: !240, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3010, file: !1364, line: 13, baseType: !240, size: 32, offset: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3010, file: !1364, line: 13, baseType: !240, size: 32, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3010, file: !1364, line: 13, baseType: !3016, size: 256, offset: 128)
!3016 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3017, line: 37, size: 256, elements: !3018)
!3017 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3018 = !{!3019, !3024, !3037, !3043, !3052, !3079, !3084}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3016, file: !3017, line: 42, baseType: !3020, size: 64)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 39, size: 64, elements: !3021)
!3021 = !{!3022, !3023}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3020, file: !3017, line: 40, baseType: !2688, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3020, file: !3017, line: 41, baseType: !374, size: 32, offset: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3016, file: !3017, line: 50, baseType: !3025, size: 192)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 45, size: 192, elements: !3026)
!3026 = !{!3027, !3029, !3030, !3036}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3025, file: !3017, line: 46, baseType: !3028, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !317, line: 95, baseType: !240)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3025, file: !3017, line: 47, baseType: !240, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3025, file: !3017, line: 48, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3017, line: 11, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3017, line: 8, size: 64, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3032, file: !3017, line: 9, baseType: !240, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3032, file: !3017, line: 10, baseType: !152, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3025, file: !3017, line: 49, baseType: !240, size: 32, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3016, file: !3017, line: 57, baseType: !3038, size: 128)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 53, size: 128, elements: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3038, file: !3017, line: 54, baseType: !2688, size: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3038, file: !3017, line: 55, baseType: !374, size: 32, offset: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3038, file: !3017, line: 56, baseType: !3031, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3016, file: !3017, line: 66, baseType: !3044, size: 256)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 60, size: 256, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3049, !3051}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3044, file: !3017, line: 61, baseType: !2688, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3044, file: !3017, line: 62, baseType: !374, size: 32, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3044, file: !3017, line: 63, baseType: !240, size: 32, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3044, file: !3017, line: 64, baseType: !3050, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !317, line: 94, baseType: !318)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3044, file: !3017, line: 65, baseType: !3050, size: 64, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3016, file: !3017, line: 105, baseType: !3053, size: 256)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 69, size: 256, elements: !3054)
!3054 = !{!3055, !3056}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3053, file: !3017, line: 70, baseType: !152, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, scope: !3053, file: !3017, line: 79, baseType: !3057, size: 192, offset: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3053, file: !3017, line: 79, size: 192, elements: !3058)
!3058 = !{!3059, !3060, !3061, !3068, !3073}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3057, file: !3017, line: 81, baseType: !240, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3057, file: !3017, line: 86, baseType: !756, size: 16)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3057, file: !3017, line: 92, baseType: !3062, size: 192)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3017, line: 88, size: 192, elements: !3063)
!3063 = !{!3064, !3066, !3067}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3062, file: !3017, line: 89, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2469)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3062, file: !3017, line: 90, baseType: !152, size: 64, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3062, file: !3017, line: 91, baseType: !152, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3057, file: !3017, line: 97, baseType: !3069, size: 96)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3017, line: 94, size: 96, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3069, file: !3017, line: 95, baseType: !3065, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3069, file: !3017, line: 96, baseType: !160, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3057, file: !3017, line: 103, baseType: !3074, size: 128)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3017, line: 99, size: 128, elements: !3075)
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3074, file: !3017, line: 100, baseType: !156, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3074, file: !3017, line: 101, baseType: !160, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3074, file: !3017, line: 102, baseType: !160, size: 32, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3016, file: !3017, line: 111, baseType: !3080, size: 128)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 108, size: 128, elements: !3081)
!3081 = !{!3082, !3083}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3080, file: !3017, line: 109, baseType: !319, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3080, file: !3017, line: 110, baseType: !240, size: 32, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3016, file: !3017, line: 118, baseType: !3085, size: 128)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 114, size: 128, elements: !3086)
!3086 = !{!3087, !3088, !3089}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3085, file: !3017, line: 115, baseType: !152, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3085, file: !3017, line: 116, baseType: !240, size: 32, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3085, file: !3017, line: 117, baseType: !43, size: 32, offset: 96)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2316, file: !1909, line: 1208, baseType: !2870, size: 448, offset: 17664)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2316, file: !1909, line: 1215, baseType: !147, size: 64, offset: 18112)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2316, file: !1909, line: 1217, baseType: !147, size: 64, offset: 18176)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2316, file: !1909, line: 1219, baseType: !147, size: 64, offset: 18240)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2316, file: !1909, line: 1223, baseType: !3095, size: 64, offset: 18304)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3096, line: 99, baseType: !3097)
!3096 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3096, line: 99, size: 64, elements: !3098)
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3097, file: !3096, line: 99, baseType: !2553, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2316, file: !1909, line: 1225, baseType: !403, size: 32, offset: 18368)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2316, file: !1909, line: 1226, baseType: !240, size: 32, offset: 18400)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2316, file: !1909, line: 1227, baseType: !240, size: 32, offset: 18432)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2316, file: !1909, line: 1231, baseType: !3104, size: 64, offset: 18496)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1909, line: 1231, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2316, file: !1909, line: 1233, baseType: !203, size: 128, offset: 18560)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2316, file: !1909, line: 1240, baseType: !3108, size: 64, offset: 18688)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1909, line: 62, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2316, file: !1909, line: 1242, baseType: !3111, size: 64, offset: 18752)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1909, line: 1242, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2316, file: !1909, line: 1244, baseType: !203, size: 128, offset: 18816)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2316, file: !1909, line: 1245, baseType: !3115, size: 64, offset: 18944)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1909, line: 51, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2316, file: !1909, line: 1246, baseType: !618, size: 256, offset: 19008)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2316, file: !1909, line: 1247, baseType: !43, size: 32, offset: 19264)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2316, file: !1909, line: 1250, baseType: !3120, size: 64, offset: 19328)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1909, line: 57, flags: DIFlagFwdDecl)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2316, file: !1909, line: 1251, baseType: !618, size: 256, offset: 19392)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2316, file: !1909, line: 1252, baseType: !203, size: 128, offset: 19648)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2316, file: !1909, line: 1259, baseType: !1907, size: 64, offset: 19776)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2316, file: !1909, line: 1260, baseType: !756, size: 16, offset: 19840)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2316, file: !1909, line: 1261, baseType: !756, size: 16, offset: 19856)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2316, file: !1909, line: 1314, baseType: !3128, size: 64, offset: 19904)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3130, line: 62, size: 256, align: 256, elements: !3131)
!3130 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3129, file: !3130, line: 75, baseType: !160, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3129, file: !3130, line: 90, baseType: !160, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3129, file: !3130, line: 112, baseType: !149, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3129, file: !3130, line: 132, baseType: !160, size: 32, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3129, file: !3130, line: 140, baseType: !160, size: 32, offset: 160)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3129, file: !3130, line: 149, baseType: !160, size: 32, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3129, file: !3130, line: 154, baseType: !3139, offset: 224)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1172)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2316, file: !1909, line: 1315, baseType: !189, size: 32, offset: 19968)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2316, file: !1909, line: 1316, baseType: !189, size: 32, offset: 20000)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2316, file: !1909, line: 1321, baseType: !156, size: 64, offset: 20032)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2316, file: !1909, line: 1325, baseType: !240, size: 32, offset: 20096)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2316, file: !1909, line: 1326, baseType: !240, size: 32, offset: 20128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2316, file: !1909, line: 1327, baseType: !240, size: 32, offset: 20160)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2316, file: !1909, line: 1328, baseType: !240, size: 32, offset: 20192)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2316, file: !1909, line: 1329, baseType: !838, size: 128, align: 64, offset: 20224)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2316, file: !1909, line: 1332, baseType: !3149, size: 128, offset: 20352)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3150, line: 51, size: 128, elements: !3151)
!3150 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3151 = !{!3152, !3157, !3158}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3149, file: !3150, line: 60, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3154, line: 7, size: 64, elements: !3155)
!3154 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3155 = !{!3156}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3153, file: !3154, line: 12, baseType: !2550, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3149, file: !3150, line: 63, baseType: !698, size: 8, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3149, file: !3150, line: 70, baseType: !698, size: 8, offset: 72)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2316, file: !1909, line: 1335, baseType: !1960, size: 64, offset: 20480)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2316, file: !1909, line: 1337, baseType: !3161, size: 128, offset: 20544)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3150, line: 39, size: 128, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3161, file: !3150, line: 40, baseType: !1747, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3161, file: !3150, line: 42, baseType: !160, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3161, file: !3150, line: 43, baseType: !160, size: 32, offset: 96)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2316, file: !1909, line: 1340, baseType: !3167, size: 64, offset: 20672)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1909, line: 69, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2316, file: !1909, line: 1351, baseType: !240, size: 32, offset: 20736)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2316, file: !1909, line: 1352, baseType: !240, size: 32, offset: 20768)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2316, file: !1909, line: 1354, baseType: !156, size: 64, offset: 20800)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2316, file: !1909, line: 1364, baseType: !147, size: 64, offset: 20864)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2316, file: !1909, line: 1365, baseType: !147, size: 64, offset: 20928)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2316, file: !1909, line: 1412, baseType: !156, size: 64, offset: 20992)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2316, file: !1909, line: 1453, baseType: !3176, size: 64, offset: 21056)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1909, line: 1453, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2316, file: !1909, line: 1457, baseType: !3179, size: 64, offset: 21120)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !117, line: 61, size: 576, elements: !3181)
!3181 = !{!3182, !3183, !3202, !3205, !3206, !3239, !3249}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3180, file: !117, line: 62, baseType: !116, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, scope: !3180, file: !117, line: 64, baseType: !3184, size: 192, offset: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3180, file: !117, line: 64, size: 192, elements: !3185)
!3185 = !{!3186, !3197}
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !117, line: 65, baseType: !3187, size: 192)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3184, file: !117, line: 65, size: 192, elements: !3188)
!3188 = !{!3189, !3196}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3187, file: !117, line: 66, baseType: !3190, size: 128)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3191, line: 50, size: 128, elements: !3192)
!3191 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3192 = !{!3193, !3194, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3190, file: !3191, line: 52, baseType: !156, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3190, file: !3191, line: 54, baseType: !43, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3190, file: !3191, line: 55, baseType: !43, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3187, file: !117, line: 67, baseType: !156, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !117, line: 70, baseType: !3198, size: 192)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3184, file: !117, line: 70, size: 192, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3198, file: !117, line: 71, baseType: !838, size: 128, align: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3198, file: !117, line: 72, baseType: !156, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3180, file: !117, line: 76, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !117, line: 76, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3180, file: !117, line: 77, baseType: !156, size: 64, offset: 320)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3180, file: !117, line: 79, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3191, line: 25, size: 256, elements: !3209)
!3209 = !{!3210, !3216, !3220}
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3191, line: 26, baseType: !3211, size: 128)
!3211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !3191, line: 26, size: 128, elements: !3212)
!3212 = !{!3213, !3215}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3211, file: !3191, line: 27, baseType: !3214, size: 128)
!3214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, elements: !186)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3211, file: !3191, line: 28, baseType: !3214, size: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3208, file: !3191, line: 31, baseType: !3217, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3191, line: 23, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3191, line: 33, baseType: !3221, size: 64, offset: 192)
!3221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !3191, line: 33, size: 64, elements: !3222)
!3222 = !{!3223, !3229, !3234}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3221, file: !3191, line: 38, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3191, line: 34, size: 64, elements: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3224, file: !3191, line: 35, baseType: !614, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3224, file: !3191, line: 36, baseType: !245, size: 8, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3224, file: !3191, line: 37, baseType: !245, size: 8, offset: 40)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3221, file: !3191, line: 42, baseType: !3230, size: 16)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3191, line: 39, size: 16, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3230, file: !3191, line: 40, baseType: !245, size: 8)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3230, file: !3191, line: 41, baseType: !245, size: 8, offset: 8)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3221, file: !3191, line: 46, baseType: !3235, size: 16)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3191, line: 43, size: 16, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3235, file: !3191, line: 44, baseType: !245, size: 8)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3235, file: !3191, line: 45, baseType: !245, size: 8, offset: 8)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3180, file: !117, line: 81, baseType: !3240, size: 64, offset: 448)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !117, line: 85, size: 384, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246, !3247, !3248}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3241, file: !117, line: 86, baseType: !3203, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3241, file: !117, line: 87, baseType: !156, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3241, file: !117, line: 88, baseType: !156, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3241, file: !117, line: 89, baseType: !156, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3241, file: !117, line: 90, baseType: !698, size: 8, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3241, file: !117, line: 92, baseType: !3240, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3180, file: !117, line: 82, baseType: !43, size: 32, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2316, file: !1909, line: 1463, baseType: !3251, offset: 21184)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1909, line: 739, elements: !907)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2316, file: !1909, line: 1470, baseType: !838, size: 128, align: 64, offset: 21184)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2316, file: !1909, line: 1471, baseType: !1146, size: 32, offset: 21312)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2316, file: !1909, line: 1472, baseType: !240, size: 32, offset: 21344)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2316, file: !1909, line: 1474, baseType: !2315, size: 64, offset: 21376)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2316, file: !1909, line: 1475, baseType: !860, size: 320, offset: 21440)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2316, file: !1909, line: 1478, baseType: !3258, size: 64, offset: 21760)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3260, line: 49, size: 512, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3261 = !{!3262, !3263, !3264, !3265, !3266, !3268, !3269, !3270, !3271}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3259, file: !3260, line: 50, baseType: !3258, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3259, file: !3260, line: 51, baseType: !152, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3259, file: !3260, line: 52, baseType: !156, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3259, file: !3260, line: 53, baseType: !156, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3259, file: !3260, line: 54, baseType: !3267, size: 64, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3259, file: !3260, line: 56, baseType: !43, size: 32, offset: 320)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3259, file: !3260, line: 58, baseType: !43, size: 32, offset: 352)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3259, file: !3260, line: 59, baseType: !153, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3259, file: !3260, line: 60, baseType: !1614, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2316, file: !1909, line: 1482, baseType: !1146, size: 32, offset: 21824)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2316, file: !1909, line: 1489, baseType: !152, size: 64, offset: 21888)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2316, file: !1909, line: 1504, baseType: !152, size: 64, offset: 21952)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2316, file: !1909, line: 1505, baseType: !149, size: 64, offset: 22016)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2316, file: !1909, line: 1506, baseType: !147, size: 64, offset: 22080)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2316, file: !1909, line: 1507, baseType: !149, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2316, file: !1909, line: 1508, baseType: !149, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2316, file: !1909, line: 1509, baseType: !149, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2316, file: !1909, line: 1510, baseType: !838, size: 128, align: 64, offset: 22208)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2316, file: !1909, line: 1511, baseType: !240, size: 32, offset: 22336)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2316, file: !1909, line: 1515, baseType: !3283, size: 64, offset: 22400)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1104, line: 56, size: 64, elements: !3284)
!3284 = !{!3285}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3283, file: !1104, line: 57, baseType: !1107, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2316, file: !1909, line: 1518, baseType: !3283, size: 64, offset: 22464)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2316, file: !1909, line: 1528, baseType: !838, size: 128, align: 64, offset: 22528)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2316, file: !1909, line: 1552, baseType: !3289, size: 35328, offset: 23040)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3290, line: 430, size: 35328, elements: !3291)
!3290 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3291 = !{!3292, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3321, !3322, !3323, !3324, !3325, !3326, !3329, !3330, !3331, !3332}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3289, file: !3290, line: 432, baseType: !3293, size: 192)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3294, size: 192, elements: !284)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3295, line: 16, size: 64, elements: !3296)
!3295 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3294, file: !3295, line: 17, baseType: !251, size: 16)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3294, file: !3295, line: 18, baseType: !251, size: 16, offset: 16)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3294, file: !3295, line: 19, baseType: !251, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3294, file: !3295, line: 19, baseType: !251, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3294, file: !3295, line: 19, baseType: !251, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3294, file: !3295, line: 19, baseType: !251, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3294, file: !3295, line: 19, baseType: !251, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3294, file: !3295, line: 20, baseType: !251, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3294, file: !3295, line: 20, baseType: !251, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3294, file: !3295, line: 20, baseType: !251, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3294, file: !3295, line: 20, baseType: !251, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3294, file: !3295, line: 20, baseType: !251, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3294, file: !3295, line: 20, baseType: !251, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3289, file: !3290, line: 436, baseType: !156, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3289, file: !3290, line: 440, baseType: !253, size: 16, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3289, file: !3290, line: 441, baseType: !253, size: 16, offset: 272)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3289, file: !3290, line: 442, baseType: !253, size: 16, offset: 288)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3289, file: !3290, line: 443, baseType: !253, size: 16, offset: 304)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3289, file: !3290, line: 447, baseType: !156, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3289, file: !3290, line: 448, baseType: !156, size: 64, offset: 384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3289, file: !3290, line: 459, baseType: !3318, size: 256, offset: 448)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3319, size: 256, elements: !848)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3290, line: 428, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3289, file: !3290, line: 461, baseType: !156, size: 64, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3289, file: !3290, line: 463, baseType: !156, size: 64, offset: 768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3289, file: !3290, line: 465, baseType: !156, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3289, file: !3290, line: 466, baseType: !156, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3289, file: !3290, line: 467, baseType: !156, size: 64, offset: 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3289, file: !3290, line: 473, baseType: !3327, size: 64, offset: 1024)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3290, line: 10, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3289, file: !3290, line: 480, baseType: !156, size: 64, offset: 1088)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3289, file: !3290, line: 482, baseType: !43, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3289, file: !3290, line: 491, baseType: !189, size: 32, offset: 1184)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3289, file: !3290, line: 501, baseType: !3333, size: 33792, offset: 1536)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3334, line: 448, size: 33792, elements: !3335)
!3334 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3335 = !{!3336, !3337, !3338, !3500, !3501, !3507, !3508}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3333, file: !3334, line: 461, baseType: !43, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3333, file: !3334, line: 468, baseType: !156, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3333, file: !3334, line: 476, baseType: !3339, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3334, line: 356, size: 33280, align: 512, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3340, file: !3334, line: 358, baseType: !43, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3340, file: !3334, line: 361, baseType: !43, size: 32, offset: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3340, file: !3334, line: 364, baseType: !147, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3340, file: !3334, line: 367, baseType: !147, size: 64, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3340, file: !3334, line: 370, baseType: !147, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3340, file: !3334, line: 373, baseType: !43, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3340, file: !3334, line: 376, baseType: !43, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3340, file: !3334, line: 391, baseType: !43, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3340, file: !3334, line: 394, baseType: !43, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3340, file: !3334, line: 397, baseType: !3352, size: 32768, offset: 512)
!3352 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3334, line: 348, size: 32768, elements: !3353)
!3353 = !{!3354, !3369, !3406, !3483, !3496}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3352, file: !3334, line: 349, baseType: !3355, size: 896)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3334, line: 12, size: 896, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3368}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3355, file: !3334, line: 13, baseType: !189, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3355, file: !3334, line: 14, baseType: !189, size: 32, offset: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3355, file: !3334, line: 15, baseType: !189, size: 32, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3355, file: !3334, line: 16, baseType: !189, size: 32, offset: 96)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3355, file: !3334, line: 17, baseType: !189, size: 32, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3355, file: !3334, line: 18, baseType: !189, size: 32, offset: 160)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3355, file: !3334, line: 19, baseType: !189, size: 32, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3355, file: !3334, line: 22, baseType: !3365, size: 640, offset: 224)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 640, elements: !3366)
!3366 = !{!3367}
!3367 = !DISubrange(count: 20)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3355, file: !3334, line: 25, baseType: !189, size: 32, offset: 864)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3352, file: !3334, line: 350, baseType: !3370, size: 4096, align: 128)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3334, line: 34, size: 4096, align: 128, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3391, !3392, !3393, !3395, !3397, !3401}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3370, file: !3334, line: 35, baseType: !251, size: 16)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3370, file: !3334, line: 36, baseType: !251, size: 16, offset: 16)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3370, file: !3334, line: 37, baseType: !251, size: 16, offset: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3370, file: !3334, line: 38, baseType: !251, size: 16, offset: 48)
!3376 = !DIDerivedType(tag: DW_TAG_member, scope: !3370, file: !3334, line: 39, baseType: !3377, size: 128, offset: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3370, file: !3334, line: 39, size: 128, elements: !3378)
!3378 = !{!3379, !3384}
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !3334, line: 40, baseType: !3380, size: 128)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !3334, line: 40, size: 128, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3380, file: !3334, line: 41, baseType: !147, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3380, file: !3334, line: 42, baseType: !147, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !3334, line: 44, baseType: !3385, size: 128)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !3334, line: 44, size: 128, elements: !3386)
!3386 = !{!3387, !3388, !3389, !3390}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3385, file: !3334, line: 45, baseType: !189, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3385, file: !3334, line: 46, baseType: !189, size: 32, offset: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3385, file: !3334, line: 47, baseType: !189, size: 32, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3385, file: !3334, line: 48, baseType: !189, size: 32, offset: 96)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3370, file: !3334, line: 51, baseType: !189, size: 32, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3370, file: !3334, line: 52, baseType: !189, size: 32, offset: 224)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3370, file: !3334, line: 55, baseType: !3394, size: 1024, offset: 256)
!3394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1024, elements: !439)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3370, file: !3334, line: 58, baseType: !3396, size: 2048, offset: 1280)
!3396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 2048, elements: !288)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3370, file: !3334, line: 60, baseType: !3398, size: 384, offset: 3328)
!3398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 384, elements: !3399)
!3399 = !{!3400}
!3400 = !DISubrange(count: 12)
!3401 = !DIDerivedType(tag: DW_TAG_member, scope: !3370, file: !3334, line: 62, baseType: !3402, size: 384, offset: 3712)
!3402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3370, file: !3334, line: 62, size: 384, elements: !3403)
!3403 = !{!3404, !3405}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3402, file: !3334, line: 63, baseType: !3398, size: 384)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3402, file: !3334, line: 64, baseType: !3398, size: 384)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3352, file: !3334, line: 351, baseType: !3407, size: 1088)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3334, line: 79, size: 1088, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3482}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3407, file: !3334, line: 80, baseType: !189, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3407, file: !3334, line: 81, baseType: !189, size: 32, offset: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3407, file: !3334, line: 82, baseType: !189, size: 32, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3407, file: !3334, line: 83, baseType: !189, size: 32, offset: 96)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3407, file: !3334, line: 84, baseType: !189, size: 32, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3407, file: !3334, line: 85, baseType: !189, size: 32, offset: 160)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3407, file: !3334, line: 86, baseType: !189, size: 32, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3407, file: !3334, line: 88, baseType: !3365, size: 640, offset: 224)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3407, file: !3334, line: 89, baseType: !245, size: 8, offset: 864)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3407, file: !3334, line: 90, baseType: !245, size: 8, offset: 872)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3407, file: !3334, line: 91, baseType: !245, size: 8, offset: 880)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3407, file: !3334, line: 92, baseType: !245, size: 8, offset: 888)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3407, file: !3334, line: 93, baseType: !245, size: 8, offset: 896)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3407, file: !3334, line: 94, baseType: !245, size: 8, offset: 904)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3407, file: !3334, line: 95, baseType: !3424, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3426, line: 11, size: 128, elements: !3427)
!3426 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3427 = !{!3428, !3429}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3425, file: !3426, line: 12, baseType: !319, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3425, file: !3426, line: 13, baseType: !3430, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3432, line: 103, size: 1344, elements: !3433)
!3432 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3433 = !{!3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3462, !3463, !3464}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3431, file: !3432, line: 109, baseType: !156, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3431, file: !3432, line: 110, baseType: !156, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3431, file: !3432, line: 111, baseType: !156, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3431, file: !3432, line: 112, baseType: !156, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3431, file: !3432, line: 113, baseType: !156, size: 64, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3431, file: !3432, line: 114, baseType: !156, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3431, file: !3432, line: 117, baseType: !156, size: 64, offset: 384)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3431, file: !3432, line: 118, baseType: !156, size: 64, offset: 448)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3431, file: !3432, line: 119, baseType: !156, size: 64, offset: 512)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3431, file: !3432, line: 120, baseType: !156, size: 64, offset: 576)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3431, file: !3432, line: 121, baseType: !156, size: 64, offset: 640)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3431, file: !3432, line: 122, baseType: !156, size: 64, offset: 704)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3431, file: !3432, line: 123, baseType: !156, size: 64, offset: 768)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3431, file: !3432, line: 124, baseType: !156, size: 64, offset: 832)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3431, file: !3432, line: 125, baseType: !156, size: 64, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3431, file: !3432, line: 139, baseType: !156, size: 64, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3431, file: !3432, line: 142, baseType: !156, size: 64, offset: 1024)
!3451 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3432, line: 144, baseType: !3452, size: 64, offset: 1088)
!3452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3431, file: !3432, line: 144, size: 64, elements: !3453)
!3453 = !{!3454, !3455, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3452, file: !3432, line: 146, baseType: !251, size: 16)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3452, file: !3432, line: 148, baseType: !147, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3452, file: !3432, line: 150, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3432, line: 59, size: 64, elements: !3458)
!3458 = !{!3459, !3460, !3461}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3457, file: !3432, line: 61, baseType: !147, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3457, file: !3432, line: 63, baseType: !147, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3457, file: !3432, line: 65, baseType: !147, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3431, file: !3432, line: 153, baseType: !156, size: 64, offset: 1152)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3431, file: !3432, line: 154, baseType: !156, size: 64, offset: 1216)
!3464 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3432, line: 156, baseType: !3465, size: 64, offset: 1280)
!3465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3431, file: !3432, line: 156, size: 64, elements: !3466)
!3466 = !{!3467, !3468, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3465, file: !3432, line: 158, baseType: !251, size: 16)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3465, file: !3432, line: 160, baseType: !147, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3465, file: !3432, line: 162, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3432, line: 69, size: 64, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3470, file: !3432, line: 71, baseType: !147, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3470, file: !3432, line: 73, baseType: !147, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3470, file: !3432, line: 75, baseType: !147, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3470, file: !3432, line: 77, baseType: !147, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3470, file: !3432, line: 80, baseType: !147, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3470, file: !3432, line: 83, baseType: !147, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3470, file: !3432, line: 86, baseType: !147, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3470, file: !3432, line: 88, baseType: !147, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3470, file: !3432, line: 93, baseType: !147, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3470, file: !3432, line: 100, baseType: !147, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3407, file: !3334, line: 96, baseType: !189, size: 32, offset: 1024)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3352, file: !3334, line: 352, baseType: !3484, size: 4608, align: 512)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3334, line: 333, size: 4608, align: 512, elements: !3485)
!3485 = !{!3486, !3487, !3494}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3484, file: !3334, line: 334, baseType: !3370, size: 4096, align: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3484, file: !3334, line: 335, baseType: !3488, size: 512, offset: 4096)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3334, line: 312, size: 512, elements: !3489)
!3489 = !{!3490, !3491, !3492}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3488, file: !3334, line: 313, baseType: !147, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3488, file: !3334, line: 314, baseType: !147, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3488, file: !3334, line: 315, baseType: !3493, size: 384, offset: 128)
!3493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 384, elements: !1265)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3484, file: !3334, line: 336, baseType: !3495, offset: 4608)
!3495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, elements: !1172)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3352, file: !3334, line: 353, baseType: !3497, size: 32768)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 32768, elements: !3498)
!3498 = !{!3499}
!3499 = !DISubrange(count: 4096)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3333, file: !3334, line: 484, baseType: !3339, size: 64, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3333, file: !3334, line: 491, baseType: !3502, size: 128, offset: 256)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3334, line: 404, size: 128, elements: !3503)
!3503 = !{!3504, !3505, !3506}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3502, file: !3334, line: 424, baseType: !147, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3502, file: !3334, line: 432, baseType: !43, size: 32, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3502, file: !3334, line: 440, baseType: !43, size: 32, offset: 96)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3333, file: !3334, line: 498, baseType: !3502, size: 128, offset: 384)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3333, file: !3334, line: 508, baseType: !3340, size: 33280, align: 512, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2298, file: !2299, line: 16, baseType: !1157, size: 192, offset: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2298, file: !2299, line: 17, baseType: !236, size: 32, offset: 704)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !509, file: !63, line: 1240, baseType: !152, size: 64, offset: 6912)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !509, file: !63, line: 1243, baseType: !189, size: 32, offset: 6976)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !509, file: !63, line: 1245, baseType: !1236, size: 64, offset: 7040)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !509, file: !63, line: 1246, baseType: !1236, size: 64, offset: 7104)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !509, file: !63, line: 1248, baseType: !160, size: 32, offset: 7168)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !509, file: !63, line: 1249, baseType: !3517, size: 64, offset: 7232)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !63, line: 634, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !509, file: !63, line: 1252, baseType: !3520, size: 256, offset: 7296)
!3520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !439)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !509, file: !63, line: 1253, baseType: !3522, size: 128, offset: 7552)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !179, line: 21, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 19, size: 128, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3523, file: !179, line: 20, baseType: !183, size: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !509, file: !63, line: 1255, baseType: !43, size: 32, offset: 7680)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !509, file: !63, line: 1261, baseType: !618, size: 256, offset: 7744)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !509, file: !63, line: 1267, baseType: !200, size: 64, offset: 8000)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !509, file: !63, line: 1269, baseType: !455, size: 64, offset: 8064)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !509, file: !63, line: 1271, baseType: !3531, size: 448, offset: 8128)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2078, line: 63, size: 448, elements: !3532)
!3532 = !{!3533, !3538, !3539, !3540, !3541, !3542, !3543}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3531, file: !2078, line: 64, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!156, !3537, !2076}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3531, file: !2078, line: 66, baseType: !3534, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3531, file: !2078, line: 69, baseType: !319, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3531, file: !2078, line: 70, baseType: !240, size: 32, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3531, file: !2078, line: 71, baseType: !43, size: 32, offset: 224)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3531, file: !2078, line: 74, baseType: !203, size: 128, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3531, file: !2078, line: 85, baseType: !3544, size: 64, offset: 384)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !509, file: !63, line: 1274, baseType: !622, size: 64, offset: 8576)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !509, file: !63, line: 1280, baseType: !622, size: 64, offset: 8640)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !509, file: !63, line: 1283, baseType: !240, size: 32, offset: 8704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !509, file: !63, line: 1286, baseType: !2010, size: 32, offset: 8736)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !509, file: !63, line: 1289, baseType: !940, size: 64, offset: 8768)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !509, file: !63, line: 1290, baseType: !987, size: 64, offset: 8832)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !509, file: !63, line: 1297, baseType: !1359, size: 64, offset: 8896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !509, file: !63, line: 1304, baseType: !3553, size: 64, offset: 8960)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3554, line: 49, size: 64, elements: !3555)
!3554 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3555 = !{!3556}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3553, file: !3554, line: 50, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3554, line: 41, size: 512, align: 512, elements: !3559)
!3559 = !{!3560, !3561, !3566}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3558, file: !3554, line: 43, baseType: !216, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3558, file: !3554, line: 45, baseType: !3562, size: 192, offset: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3554, line: 29, size: 192, elements: !3563)
!3563 = !{!3564, !3565}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3562, file: !3554, line: 30, baseType: !203, size: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3562, file: !3554, line: 32, baseType: !319, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3558, file: !3554, line: 46, baseType: !319, size: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !509, file: !63, line: 1305, baseType: !3553, size: 64, offset: 9024)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !509, file: !63, line: 1306, baseType: !838, size: 128, align: 64, offset: 9088)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !509, file: !63, line: 1307, baseType: !878, size: 256, offset: 9216)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !509, file: !63, line: 1309, baseType: !618, size: 256, offset: 9472)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !509, file: !63, line: 1314, baseType: !240, size: 32, offset: 9728)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !509, file: !63, line: 1317, baseType: !216, size: 32, align: 512, offset: 10240)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !509, file: !63, line: 1318, baseType: !203, size: 128, offset: 10304)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !509, file: !63, line: 1320, baseType: !216, size: 32, offset: 10432)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !509, file: !63, line: 1321, baseType: !203, size: 128, offset: 10496)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !503, file: !504, line: 73, baseType: !240, size: 32, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !503, file: !504, line: 74, baseType: !3578, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1196, line: 42, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !457, file: !399, line: 141, baseType: !3582, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!240, !2138, !698}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !457, file: !399, line: 142, baseType: !3586, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!397, !397, !3589}
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !398, file: !399, line: 96, baseType: !508, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !398, file: !399, line: 97, baseType: !156, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !398, file: !399, line: 98, baseType: !152, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !399, line: 100, baseType: !3595, size: 128, offset: 1024)
!3595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !399, line: 100, size: 128, elements: !3596)
!3596 = !{!3597, !3598}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3595, file: !399, line: 101, baseType: !203, size: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3595, file: !399, line: 102, baseType: !1475, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !398, file: !399, line: 104, baseType: !203, size: 128, offset: 1152)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !398, file: !399, line: 105, baseType: !203, size: 128, offset: 1280)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !398, file: !399, line: 113, baseType: !3602, size: 128, offset: 1408)
!3602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !399, line: 109, size: 128, elements: !3603)
!3603 = !{!3604, !3605, !3606}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3602, file: !399, line: 110, baseType: !864, size: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3602, file: !399, line: 111, baseType: !413, size: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3602, file: !399, line: 112, baseType: !838, size: 128, align: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !391, file: !63, line: 1968, baseType: !3608, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!200, !397, !362, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3613, line: 10, size: 128, elements: !3614)
!3613 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3614 = !{!3615, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3612, file: !3613, line: 11, baseType: !661, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3612, file: !3613, line: 12, baseType: !152, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !391, file: !63, line: 1969, baseType: !3618, size: 64, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!240, !3578, !362, !240}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !391, file: !63, line: 1970, baseType: !3622, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!385, !362, !240, !698}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !391, file: !63, line: 1972, baseType: !3626, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!240, !397, !283, !240}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !391, file: !63, line: 1974, baseType: !3630, size: 64, offset: 320)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!240, !3578, !362, !397, !325, !698}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !391, file: !63, line: 1976, baseType: !3634, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!240, !397, !362, !397}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !391, file: !63, line: 1977, baseType: !3638, size: 64, offset: 448)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!240, !362, !397}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !391, file: !63, line: 1978, baseType: !3642, size: 64, offset: 512)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!240, !3578, !362, !397, !200}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !391, file: !63, line: 1980, baseType: !3646, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!240, !3578, !362, !397, !325}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !391, file: !63, line: 1982, baseType: !3638, size: 64, offset: 640)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !391, file: !63, line: 1983, baseType: !3651, size: 64, offset: 704)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!240, !3578, !362, !397, !325, !513}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !391, file: !63, line: 1985, baseType: !3655, size: 64, offset: 768)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!240, !3578, !362, !397, !362, !397, !43}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !391, file: !63, line: 1987, baseType: !3659, size: 64, offset: 832)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!240, !3578, !397, !3662}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !63, line: 226, size: 640, elements: !3664)
!3664 = !{!3665, !3666, !3667, !3677, !3686, !3687, !3692, !3693, !3694}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3663, file: !63, line: 227, baseType: !43, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3663, file: !63, line: 228, baseType: !325, size: 16, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, scope: !3663, file: !63, line: 241, baseType: !3668, size: 32, offset: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3663, file: !63, line: 241, size: 32, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3668, file: !63, line: 242, baseType: !368, size: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3668, file: !63, line: 243, baseType: !3672, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3673, line: 16, baseType: !3674)
!3673 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3673, line: 14, size: 32, elements: !3675)
!3675 = !{!3676}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3674, file: !3673, line: 15, baseType: !373, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, scope: !3663, file: !63, line: 245, baseType: !3678, size: 32, offset: 96)
!3678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3663, file: !63, line: 245, size: 32, elements: !3679)
!3679 = !{!3680, !3681}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3678, file: !63, line: 246, baseType: !377, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3678, file: !63, line: 247, baseType: !3682, size: 32)
!3682 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3673, line: 20, baseType: !3683)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3673, line: 18, size: 32, elements: !3684)
!3684 = !{!3685}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3683, file: !3673, line: 19, baseType: !381, size: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3663, file: !63, line: 249, baseType: !518, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3663, file: !63, line: 250, baseType: !3688, size: 128, offset: 192)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1237, line: 13, size: 128, elements: !3689)
!3689 = !{!3690, !3691}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3688, file: !1237, line: 14, baseType: !1236, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3688, file: !1237, line: 15, baseType: !319, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3663, file: !63, line: 251, baseType: !3688, size: 128, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3663, file: !63, line: 252, baseType: !3688, size: 128, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3663, file: !63, line: 259, baseType: !1404, size: 64, offset: 576)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !391, file: !63, line: 1988, baseType: !3696, size: 64, offset: 896)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!240, !3578, !2138, !3699, !189, !43}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3701, line: 22, size: 1280, elements: !3702)
!3701 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3700, file: !3701, line: 23, baseType: !189, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3700, file: !3701, line: 24, baseType: !325, size: 16, offset: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3700, file: !3701, line: 25, baseType: !43, size: 32, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3700, file: !3701, line: 26, baseType: !1244, size: 32, offset: 96)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3700, file: !3701, line: 27, baseType: !147, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3700, file: !3701, line: 28, baseType: !147, size: 64, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3700, file: !3701, line: 41, baseType: !147, size: 64, offset: 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3700, file: !3701, line: 42, baseType: !513, size: 32, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3700, file: !3701, line: 43, baseType: !513, size: 32, offset: 352)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3700, file: !3701, line: 44, baseType: !368, size: 32, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3700, file: !3701, line: 45, baseType: !377, size: 32, offset: 416)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3700, file: !3701, line: 46, baseType: !518, size: 64, offset: 448)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3700, file: !3701, line: 47, baseType: !3688, size: 128, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3700, file: !3701, line: 48, baseType: !3688, size: 128, offset: 640)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3700, file: !3701, line: 49, baseType: !3688, size: 128, offset: 768)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3700, file: !3701, line: 50, baseType: !3688, size: 128, offset: 896)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3700, file: !3701, line: 51, baseType: !147, size: 64, offset: 1024)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3700, file: !3701, line: 52, baseType: !147, size: 64, offset: 1088)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3700, file: !3701, line: 53, baseType: !189, size: 32, offset: 1152)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3700, file: !3701, line: 54, baseType: !189, size: 32, offset: 1184)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3700, file: !3701, line: 55, baseType: !147, size: 64, offset: 1216)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !391, file: !63, line: 1990, baseType: !3725, size: 64, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!315, !397, !283, !330}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !391, file: !63, line: 1991, baseType: !3729, size: 64, offset: 1024)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!240, !362, !3732, !147, !147}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !63, line: 55, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !391, file: !63, line: 1993, baseType: !3735, size: 64, offset: 1088)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!240, !362, !240}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !391, file: !63, line: 1994, baseType: !3739, size: 64, offset: 1152)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!240, !362, !397, !1404, !43, !325}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !391, file: !63, line: 1997, baseType: !3743, size: 64, offset: 1216)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!240, !3578, !362, !1404, !325}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !391, file: !63, line: 1999, baseType: !3747, size: 64, offset: 1280)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!385, !3578, !397, !240}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !391, file: !63, line: 2001, baseType: !3751, size: 64, offset: 1344)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!240, !3578, !397, !385, !240}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !391, file: !63, line: 2003, baseType: !3755, size: 64, offset: 1408)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!240, !3578, !397, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !63, line: 76, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !391, file: !63, line: 2005, baseType: !3761, size: 64, offset: 1472)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!240, !397, !3758}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !391, file: !63, line: 2006, baseType: !3765, size: 64, offset: 1536)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!3768, !362}
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !63, line: 3192, size: 192, elements: !3770)
!3770 = !{!3771, !3778}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3769, file: !63, line: 3193, baseType: !3772, size: 128)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3773, line: 296, size: 128, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3774 = !{!3775, !3776, !3777}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3772, file: !3773, line: 297, baseType: !216, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3772, file: !3773, line: 299, baseType: !164, size: 32, offset: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3772, file: !3773, line: 300, baseType: !152, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3769, file: !63, line: 3194, baseType: !189, size: 32, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !363, file: !63, line: 655, baseType: !508, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !363, file: !63, line: 656, baseType: !358, size: 64, offset: 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !363, file: !63, line: 659, baseType: !152, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !363, file: !63, line: 663, baseType: !156, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !63, line: 671, baseType: !3784, size: 32, offset: 704)
!3784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !63, line: 671, size: 32, elements: !3785)
!3785 = !{!3786, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3784, file: !63, line: 672, baseType: !3787, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3784, file: !63, line: 673, baseType: !43, size: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !363, file: !63, line: 675, baseType: !513, size: 32, offset: 736)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !363, file: !63, line: 676, baseType: !518, size: 64, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !363, file: !63, line: 677, baseType: !3688, size: 128, offset: 832)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !363, file: !63, line: 678, baseType: !3688, size: 128, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !363, file: !63, line: 679, baseType: !3688, size: 128, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !363, file: !63, line: 680, baseType: !216, size: 32, offset: 1216)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !363, file: !63, line: 681, baseType: !253, size: 16, offset: 1248)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !363, file: !63, line: 682, baseType: !245, size: 8, offset: 1264)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !363, file: !63, line: 683, baseType: !245, size: 8, offset: 1272)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !363, file: !63, line: 684, baseType: !2211, size: 64, offset: 1280)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !363, file: !63, line: 691, baseType: !156, size: 64, offset: 1344)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !363, file: !63, line: 692, baseType: !1220, size: 320, offset: 1408)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !363, file: !63, line: 694, baseType: !156, size: 64, offset: 1728)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !363, file: !63, line: 695, baseType: !156, size: 64, offset: 1792)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !363, file: !63, line: 697, baseType: !864, size: 128, offset: 1856)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !363, file: !63, line: 698, baseType: !203, size: 128, offset: 1984)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !363, file: !63, line: 707, baseType: !203, size: 128, offset: 2112)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !363, file: !63, line: 708, baseType: !203, size: 128, offset: 2240)
!3807 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !63, line: 709, baseType: !3808, size: 128, offset: 2368)
!3808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !63, line: 709, size: 128, elements: !3809)
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3808, file: !63, line: 710, baseType: !987, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3808, file: !63, line: 711, baseType: !838, size: 128, align: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !363, file: !63, line: 713, baseType: !624, size: 64, offset: 2496)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !363, file: !63, line: 714, baseType: !624, size: 64, offset: 2560)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !363, file: !63, line: 715, baseType: !236, size: 32, offset: 2624)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !363, file: !63, line: 716, baseType: !236, size: 32, offset: 2656)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !363, file: !63, line: 717, baseType: !236, size: 32, offset: 2688)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !363, file: !63, line: 719, baseType: !236, size: 32, offset: 2720)
!3818 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !63, line: 721, baseType: !3819, size: 64, offset: 2752)
!3819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !63, line: 721, size: 64, elements: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3819, file: !63, line: 722, baseType: !1395, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3819, file: !63, line: 723, baseType: !1010, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !363, file: !63, line: 725, baseType: !3824, size: 64, offset: 2816)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !63, line: 725, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !363, file: !63, line: 726, baseType: !359, size: 1536, align: 64, offset: 2880)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !363, file: !63, line: 727, baseType: !203, size: 128, offset: 4416)
!3828 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !63, line: 728, baseType: !3829, size: 64, offset: 4544)
!3829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !63, line: 728, size: 64, elements: !3830)
!3830 = !{!3831, !3832, !3843, !3844}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3829, file: !63, line: 729, baseType: !1960, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3829, file: !63, line: 730, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3835, line: 14, size: 832, elements: !3836)
!3835 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3842}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3834, file: !3835, line: 15, baseType: !196, size: 512)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3834, file: !3835, line: 16, baseType: !547, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3834, file: !3835, line: 17, baseType: !1395, size: 64, offset: 576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3834, file: !3835, line: 18, baseType: !203, size: 128, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3834, file: !3835, line: 19, baseType: !513, size: 32, offset: 768)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3834, file: !3835, line: 20, baseType: !43, size: 32, offset: 800)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3829, file: !63, line: 731, baseType: !283, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3829, file: !63, line: 732, baseType: !43, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !363, file: !63, line: 735, baseType: !160, size: 32, offset: 4608)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !363, file: !63, line: 738, baseType: !160, size: 32, offset: 4640)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !363, file: !63, line: 739, baseType: !3517, size: 64, offset: 4672)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !363, file: !63, line: 750, baseType: !152, size: 64, offset: 4736)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !359, file: !63, line: 474, baseType: !3772, size: 128, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !359, file: !63, line: 475, baseType: !1220, size: 320, offset: 192)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !359, file: !63, line: 476, baseType: !164, size: 32, offset: 512)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !359, file: !63, line: 477, baseType: !236, size: 32, offset: 544)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !359, file: !63, line: 482, baseType: !2485, size: 128, offset: 576)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !359, file: !63, line: 483, baseType: !156, size: 64, offset: 704)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !359, file: !63, line: 484, baseType: !156, size: 64, offset: 768)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !359, file: !63, line: 485, baseType: !3857, size: 64, offset: 832)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !63, line: 404, size: 1280, elements: !3860)
!3860 = !{!3861, !3865, !3935, !3939, !3943, !3949, !3953, !3957, !3962, !3966, !3970, !3974, !3975, !3979, !3983, !3987, !3992, !3996, !4003, !4004}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3859, file: !63, line: 405, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!240, !1747, !1022}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3859, file: !63, line: 406, baseType: !3866, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!240, !1404, !3869}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !76, line: 293, size: 1536, elements: !3871)
!3871 = !{!3872, !3902, !3916}
!3872 = !DIDerivedType(tag: DW_TAG_member, scope: !3870, file: !76, line: 295, baseType: !3873, size: 512)
!3873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3870, file: !76, line: 295, size: 512, elements: !3874)
!3874 = !{!3875, !3901}
!3875 = !DIDerivedType(tag: DW_TAG_member, scope: !3873, file: !76, line: 296, baseType: !3876, size: 448)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3873, file: !76, line: 296, size: 448, elements: !3877)
!3877 = !{!3878, !3879, !3888, !3889, !3890, !3899, !3900}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3876, file: !76, line: 298, baseType: !156, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, scope: !3876, file: !76, line: 299, baseType: !3880, size: 128, offset: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3876, file: !76, line: 299, size: 128, elements: !3881)
!3881 = !{!3882, !3883}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3880, file: !76, line: 300, baseType: !203, size: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, scope: !3880, file: !76, line: 302, baseType: !3884, size: 128)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3880, file: !76, line: 302, size: 128, elements: !3885)
!3885 = !{!3886, !3887}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3884, file: !76, line: 303, baseType: !152, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3884, file: !76, line: 305, baseType: !43, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3876, file: !76, line: 310, baseType: !358, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3876, file: !76, line: 311, baseType: !156, size: 64, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, scope: !3876, file: !76, line: 312, baseType: !3891, size: 64, offset: 320)
!3891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3876, file: !76, line: 312, size: 64, elements: !3892)
!3892 = !{!3893, !3894}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3891, file: !76, line: 313, baseType: !152, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3891, file: !76, line: 314, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !76, line: 257, baseType: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 255, size: 64, elements: !3897)
!3897 = !{!3898}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3896, file: !76, line: 256, baseType: !156, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3876, file: !76, line: 316, baseType: !236, size: 32, offset: 384)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3876, file: !76, line: 317, baseType: !236, size: 32, offset: 416)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3873, file: !76, line: 323, baseType: !1748, size: 512, align: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3870, file: !76, line: 325, baseType: !3903, size: 512, offset: 512)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3870, file: !76, line: 325, size: 512, elements: !3904)
!3904 = !{!3905, !3915}
!3905 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !76, line: 326, baseType: !3906, size: 320)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !76, line: 326, size: 320, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913, !3914}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3906, file: !76, line: 327, baseType: !156, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3906, file: !76, line: 328, baseType: !156, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3906, file: !76, line: 329, baseType: !156, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3906, file: !76, line: 331, baseType: !236, size: 32, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3906, file: !76, line: 332, baseType: !236, size: 32, offset: 224)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3906, file: !76, line: 333, baseType: !236, size: 32, offset: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3906, file: !76, line: 335, baseType: !43, size: 32, offset: 288)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3903, file: !76, line: 339, baseType: !1748, size: 512, align: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, scope: !3870, file: !76, line: 341, baseType: !3917, size: 512, offset: 1024)
!3917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3870, file: !76, line: 341, size: 512, elements: !3918)
!3918 = !{!3919, !3928, !3934}
!3919 = !DIDerivedType(tag: DW_TAG_member, scope: !3917, file: !76, line: 342, baseType: !3920, size: 384)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3917, file: !76, line: 342, size: 384, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3920, file: !76, line: 343, baseType: !156, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3920, file: !76, line: 344, baseType: !156, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3920, file: !76, line: 346, baseType: !152, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3920, file: !76, line: 347, baseType: !152, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3920, file: !76, line: 348, baseType: !152, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3920, file: !76, line: 349, baseType: !152, size: 64, offset: 320)
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3917, file: !76, line: 352, baseType: !3929, size: 256)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3917, file: !76, line: 352, size: 256, elements: !3930)
!3930 = !{!3931, !3932, !3933}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3929, file: !76, line: 353, baseType: !156, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3929, file: !76, line: 354, baseType: !156, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3929, file: !76, line: 356, baseType: !203, size: 128, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3917, file: !76, line: 359, baseType: !1748, size: 512, align: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3859, file: !63, line: 409, baseType: !3936, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!240, !358, !1022}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3859, file: !63, line: 412, baseType: !3940, size: 64, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!698, !358, !3869}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3859, file: !63, line: 414, baseType: !3944, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !63, line: 310, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3859, file: !63, line: 416, baseType: !3950, size: 64, offset: 320)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!240, !1404, !358, !518, !43, !3267, !1975}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3859, file: !63, line: 419, baseType: !3954, size: 64, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!240, !1404, !358, !518, !43, !43, !1747, !152}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3859, file: !63, line: 424, baseType: !3958, size: 64, offset: 448)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!3961, !358, !3961}
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !154, line: 131, baseType: !147)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3859, file: !63, line: 425, baseType: !3963, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !3869, !330, !330}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3859, file: !63, line: 426, baseType: !3967, size: 64, offset: 576)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!698, !3869, !164}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3859, file: !63, line: 427, baseType: !3971, size: 64, offset: 640)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !3869}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3859, file: !63, line: 428, baseType: !1414, size: 64, offset: 704)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3859, file: !63, line: 433, baseType: !3976, size: 64, offset: 768)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!240, !358, !3869, !3869, !123}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3859, file: !63, line: 435, baseType: !3980, size: 64, offset: 832)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!240, !3869}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3859, file: !63, line: 436, baseType: !3984, size: 64, offset: 896)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!698, !3869, !330, !330}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3859, file: !63, line: 438, baseType: !3988, size: 64, offset: 960)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !3869, !3991, !3991}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3859, file: !63, line: 439, baseType: !3993, size: 64, offset: 1024)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!240, !358, !1747}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3859, file: !63, line: 442, baseType: !3997, size: 64, offset: 1088)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!240, !4000, !1404, !4002}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !63, line: 66, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3859, file: !63, line: 444, baseType: !1967, size: 64, offset: 1152)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3859, file: !63, line: 445, baseType: !4005, size: 64, offset: 1216)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!240, !1417, !1439}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !63, line: 486, baseType: !156, size: 64, offset: 896)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !359, file: !63, line: 487, baseType: !1220, size: 320, offset: 960)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !359, file: !63, line: 488, baseType: !2010, size: 32, offset: 1280)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !359, file: !63, line: 489, baseType: !216, size: 32, offset: 1312)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !359, file: !63, line: 490, baseType: !203, size: 128, offset: 1344)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !359, file: !63, line: 491, baseType: !152, size: 64, offset: 1472)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !349, file: !309, line: 180, baseType: !4015, size: 64, offset: 320)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!315, !1404, !209, !348, !283, !518, !330}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !349, file: !309, line: 182, baseType: !4015, size: 64, offset: 384)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !349, file: !309, line: 184, baseType: !4020, size: 64, offset: 448)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!240, !1404, !209, !348, !1486}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !337, file: !309, line: 90, baseType: !4024, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !337, file: !309, line: 91, baseType: !4026, size: 64, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !299, file: !197, line: 120, baseType: !4028, size: 64, offset: 192)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!4031, !266}
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !131, line: 39, size: 384, elements: !4034)
!4034 = !{!4035, !4036, !4040, !4044, !4050, !4054}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4033, file: !131, line: 40, baseType: !130, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4033, file: !131, line: 41, baseType: !4037, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!698}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4033, file: !131, line: 42, baseType: !4041, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!152}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4033, file: !131, line: 43, baseType: !4045, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!1614, !4048}
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !131, line: 19, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4033, file: !131, line: 44, baseType: !4051, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!1614}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4033, file: !131, line: 45, baseType: !661, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !299, file: !197, line: 121, baseType: !4056, size: 64, offset: 256)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!1614, !266}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !299, file: !197, line: 122, baseType: !4060, size: 64, offset: 320)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !266, !4063, !4064}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !196, file: !197, line: 70, baseType: !4066, size: 64, offset: 384)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !533, line: 190, size: 1152, elements: !4068)
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4148, !4149, !4150, !4151, !4152, !4155}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4067, file: !533, line: 191, baseType: !236, size: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4067, file: !533, line: 192, baseType: !236, size: 32, offset: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4067, file: !533, line: 202, baseType: !4066, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4067, file: !533, line: 203, baseType: !200, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4067, file: !533, line: 205, baseType: !730, size: 192, align: 64, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4067, file: !533, line: 207, baseType: !1614, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4067, file: !533, line: 208, baseType: !43, size: 32, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !4067, file: !533, line: 209, baseType: !4077, size: 256, offset: 512)
!4077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4067, file: !533, line: 209, size: 256, elements: !4078)
!4078 = !{!4079, !4088, !4092}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4077, file: !533, line: 210, baseType: !4080, size: 256)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !533, line: 153, size: 256, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4087}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4080, file: !533, line: 154, baseType: !156, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4080, file: !533, line: 156, baseType: !2488, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4080, file: !533, line: 162, baseType: !4085, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !533, line: 162, flags: DIFlagFwdDecl)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4080, file: !533, line: 167, baseType: !156, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4077, file: !533, line: 211, baseType: !4089, size: 64)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !533, line: 170, size: 64, elements: !4090)
!4090 = !{!4091}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4089, file: !533, line: 171, baseType: !4066, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4077, file: !533, line: 212, baseType: !4093, size: 256)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !533, line: 174, size: 256, elements: !4094)
!4094 = !{!4095, !4143, !4146, !4147}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4093, file: !533, line: 175, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4098)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !533, line: 271, size: 768, elements: !4099)
!4099 = !{!4100, !4120, !4124, !4125, !4126, !4127, !4128, !4132, !4133, !4134, !4135, !4139}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4098, file: !533, line: 276, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!240, !4104}
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !533, line: 251, size: 1216, elements: !4106)
!4106 = !{!4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4105, file: !533, line: 253, baseType: !4066, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4105, file: !533, line: 254, baseType: !1404, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4105, file: !533, line: 255, baseType: !1059, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4105, file: !533, line: 256, baseType: !152, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4105, file: !533, line: 259, baseType: !618, size: 256, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4105, file: !533, line: 260, baseType: !618, size: 256, offset: 512)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4105, file: !533, line: 261, baseType: !240, size: 32, offset: 768)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4105, file: !533, line: 262, baseType: !203, size: 128, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4105, file: !533, line: 263, baseType: !283, size: 64, offset: 960)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4105, file: !533, line: 265, baseType: !330, size: 64, offset: 1024)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4105, file: !533, line: 266, baseType: !698, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4105, file: !533, line: 267, baseType: !698, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4105, file: !533, line: 268, baseType: !1683, size: 64, offset: 1152)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4098, file: !533, line: 277, baseType: !4121, size: 64, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !4104}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4098, file: !533, line: 290, baseType: !1090, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4098, file: !533, line: 292, baseType: !1077, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4098, file: !533, line: 293, baseType: !1086, size: 64, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4098, file: !533, line: 294, baseType: !1082, size: 64, offset: 320)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4098, file: !533, line: 296, baseType: !4129, size: 64, offset: 384)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!315, !4104, !283, !330, !518}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4098, file: !533, line: 306, baseType: !330, size: 64, offset: 448)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4098, file: !533, line: 313, baseType: !698, size: 8, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4098, file: !533, line: 314, baseType: !4129, size: 64, offset: 576)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4098, file: !533, line: 317, baseType: !4136, size: 64, offset: 640)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!1465, !4104, !1466}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4098, file: !533, line: 320, baseType: !4140, size: 64, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!240, !4104, !1486}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4093, file: !533, line: 176, baseType: !4144, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !533, line: 35, flags: DIFlagFwdDecl)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4093, file: !533, line: 177, baseType: !518, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4093, file: !533, line: 178, baseType: !4066, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4067, file: !533, line: 215, baseType: !152, size: 64, offset: 768)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4067, file: !533, line: 221, baseType: !147, size: 64, offset: 832)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4067, file: !533, line: 223, baseType: !253, size: 16, offset: 896)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4067, file: !533, line: 224, baseType: !325, size: 16, offset: 912)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4067, file: !533, line: 225, baseType: !4153, size: 64, offset: 960)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !533, line: 36, flags: DIFlagFwdDecl)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4067, file: !533, line: 227, baseType: !838, size: 128, align: 64, offset: 1024)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !196, file: !197, line: 71, baseType: !4157, size: 32, offset: 448)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4158, line: 19, size: 32, elements: !4159)
!4158 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4159 = !{!4160}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4157, file: !4158, line: 20, baseType: !1146, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !196, file: !197, line: 73, baseType: !43, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !196, file: !197, line: 74, baseType: !43, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !196, file: !197, line: 75, baseType: !43, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !196, file: !197, line: 76, baseType: !43, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !196, file: !197, line: 77, baseType: !43, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !166, file: !2, line: 68, baseType: !203, size: 128, offset: 576)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !206)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "esre_attribute", file: !2, line: 75, size: 256, elements: !4171)
!4171 = !{!4172, !4173, !4177}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4170, file: !2, line: 76, baseType: !321, size: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4170, file: !2, line: 77, baseType: !4174, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!315, !165, !283}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4170, file: !2, line: 78, baseType: !4178, size: 64, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!315, !165, !200, !330}
!4181 = !{!0, !7, !12, !17, !22, !27, !32, !4182, !4184, !37, !4186, !4188, !4193, !4198, !4203, !4208, !4210, !4215, !4224, !4226, !4228, !4231, !4236, !4250, !4253, !4258, !4260, !4263, !4265, !4267, !4269, !4274, !4276, !4281, !4283, !4285, !4288, !4290, !4293, !4298, !4300, !4303, !4305, !4307, !4309, !4314, !4316, !4321, !4323, !4328, !4330, !4332, !4334, !4336, !4338, !4340}
!4182 = !DIGlobalVariableExpression(var: !4183, expr: !DIExpression())
!4183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !3, isLocal: true, isDefinition: true)
!4184 = !DIGlobalVariableExpression(var: !4185, expr: !DIExpression())
!4185 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_esrt__287_425_esrt_sysfs_init6288", scope: !39, file: !2, line: 425, type: !152, isLocal: true, isDefinition: true)
!4186 = !DIGlobalVariableExpression(var: !4187, expr: !DIExpression())
!4187 = distinct !DIGlobalVariable(name: "esrt_data_size", scope: !39, file: !2, line: 58, type: !330, isLocal: true, isDefinition: true)
!4188 = !DIGlobalVariableExpression(var: !4189, expr: !DIExpression())
!4189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 380, type: !4190, isLocal: true, isDefinition: true)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !4191)
!4191 = !{!4192}
!4192 = !DISubrange(count: 36)
!4193 = !DIGlobalVariableExpression(var: !4194, expr: !DIExpression())
!4194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 385, type: !4195, isLocal: true, isDefinition: true)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !4196)
!4196 = !{!4197}
!4197 = !DISubrange(count: 5)
!4198 = !DIGlobalVariableExpression(var: !4199, expr: !DIExpression())
!4199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !4200, isLocal: true, isDefinition: true)
!4200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !4201)
!4201 = !{!4202}
!4202 = !DISubrange(count: 45)
!4203 = !DIGlobalVariableExpression(var: !4204, expr: !DIExpression())
!4204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 394, type: !4205, isLocal: true, isDefinition: true)
!4205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !4206)
!4206 = !{!4207}
!4207 = !DISubrange(count: 54)
!4208 = !DIGlobalVariableExpression(var: !4209, expr: !DIExpression())
!4209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !3065, isLocal: true, isDefinition: true)
!4210 = !DIGlobalVariableExpression(var: !4211, expr: !DIExpression())
!4211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !4212, isLocal: true, isDefinition: true)
!4212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !4213)
!4213 = !{!4214}
!4214 = !DISubrange(count: 31)
!4215 = !DIGlobalVariableExpression(var: !4216, expr: !DIExpression())
!4216 = distinct !DIGlobalVariable(name: "esrt", scope: !39, file: !2, line: 60, type: !4217, isLocal: true, isDefinition: true)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_system_resource_table", file: !2, line: 50, size: 128, elements: !4219)
!4219 = !{!4220, !4221, !4222, !4223}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "fw_resource_count", scope: !4218, file: !2, line: 51, baseType: !189, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "fw_resource_count_max", scope: !4218, file: !2, line: 52, baseType: !189, size: 32, offset: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "fw_resource_version", scope: !4218, file: !2, line: 53, baseType: !147, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4218, file: !2, line: 54, baseType: !3495, offset: 128)
!4224 = !DIGlobalVariableExpression(var: !4225, expr: !DIExpression())
!4225 = distinct !DIGlobalVariable(name: "esrt_kobj", scope: !39, file: !2, line: 162, type: !209, isLocal: true, isDefinition: true)
!4226 = !DIGlobalVariableExpression(var: !4227, expr: !DIExpression())
!4227 = distinct !DIGlobalVariable(name: "esrt_attr_group", scope: !39, file: !2, line: 229, type: !336, isLocal: true, isDefinition: true)
!4228 = !DIGlobalVariableExpression(var: !4229, expr: !DIExpression())
!4229 = distinct !DIGlobalVariable(name: "esrt_attrs", scope: !39, file: !2, line: 205, type: !4230, isLocal: true, isDefinition: true)
!4230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 256, elements: !848)
!4231 = !DIGlobalVariableExpression(var: !4232, expr: !DIExpression())
!4232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !4233, isLocal: true, isDefinition: true)
!4233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !4234)
!4234 = !{!4235}
!4235 = !DISubrange(count: 18)
!4236 = !DIGlobalVariableExpression(var: !4237, expr: !DIExpression())
!4237 = distinct !DIGlobalVariable(name: "esrt_fw_resource_count", scope: !39, file: !2, line: 201, type: !4238, isLocal: true, isDefinition: true)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_attribute", file: !197, line: 139, size: 256, elements: !4239)
!4239 = !{!4240, !4241, !4246}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4238, file: !197, line: 140, baseType: !321, size: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4238, file: !197, line: 141, baseType: !4242, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!315, !209, !4245, !283}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4238, file: !197, line: 143, baseType: !4247, size: 64, offset: 192)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!315, !209, !4245, !200, !330}
!4250 = !DIGlobalVariableExpression(var: !4251, expr: !DIExpression())
!4251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !4252, isLocal: true, isDefinition: true)
!4252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !848)
!4253 = !DIGlobalVariableExpression(var: !4254, expr: !DIExpression())
!4254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !4255, isLocal: true, isDefinition: true)
!4255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !4256)
!4256 = !{!4257}
!4257 = !DISubrange(count: 22)
!4258 = !DIGlobalVariableExpression(var: !4259, expr: !DIExpression())
!4259 = distinct !DIGlobalVariable(name: "esrt_fw_resource_count_max", scope: !39, file: !2, line: 202, type: !4238, isLocal: true, isDefinition: true)
!4260 = !DIGlobalVariableExpression(var: !4261, expr: !DIExpression())
!4261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !4262, isLocal: true, isDefinition: true)
!4262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !3366)
!4263 = !DIGlobalVariableExpression(var: !4264, expr: !DIExpression())
!4264 = distinct !DIGlobalVariable(name: "esrt_fw_resource_version", scope: !39, file: !2, line: 203, type: !4238, isLocal: true, isDefinition: true)
!4265 = !DIGlobalVariableExpression(var: !4266, expr: !DIExpression())
!4266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !1264, isLocal: true, isDefinition: true)
!4267 = !DIGlobalVariableExpression(var: !4268, expr: !DIExpression())
!4268 = distinct !DIGlobalVariable(name: "esrt_kset", scope: !39, file: !2, line: 163, type: !211, isLocal: true, isDefinition: true)
!4269 = !DIGlobalVariableExpression(var: !4270, expr: !DIExpression())
!4270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !4271, isLocal: true, isDefinition: true)
!4271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !4272)
!4272 = !{!4273}
!4273 = !DISubrange(count: 51)
!4274 = !DIGlobalVariableExpression(var: !4275, expr: !DIExpression())
!4275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !3065, isLocal: true, isDefinition: true)
!4276 = !DIGlobalVariableExpression(var: !4277, expr: !DIExpression())
!4277 = distinct !DIGlobalVariable(scope: null, file: !137, line: 480, type: !4278, isLocal: true, isDefinition: true)
!4278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4279)
!4279 = !{!4280}
!4280 = !DISubrange(count: 21)
!4281 = !DIGlobalVariableExpression(var: !4282, expr: !DIExpression())
!4282 = distinct !DIGlobalVariable(name: "esre1_ktype", scope: !39, file: !2, line: 155, type: !298, isLocal: true, isDefinition: true)
!4283 = !DIGlobalVariableExpression(var: !4284, expr: !DIExpression())
!4284 = distinct !DIGlobalVariable(name: "esre_attr_ops", scope: !39, file: !2, line: 101, type: !307, isLocal: true, isDefinition: true)
!4285 = !DIGlobalVariableExpression(var: !4286, expr: !DIExpression())
!4286 = distinct !DIGlobalVariable(name: "esre1_groups", scope: !39, file: !2, line: 145, type: !4287, isLocal: true, isDefinition: true)
!4287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 128, elements: !737)
!4288 = !DIGlobalVariableExpression(var: !4289, expr: !DIExpression())
!4289 = distinct !DIGlobalVariable(name: "esre1_group", scope: !39, file: !2, line: 145, type: !336, isLocal: true, isDefinition: true)
!4290 = !DIGlobalVariableExpression(var: !4291, expr: !DIExpression())
!4291 = distinct !DIGlobalVariable(name: "esre1_attrs", scope: !39, file: !2, line: 135, type: !4292, isLocal: true, isDefinition: true)
!4292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 512, elements: !2469)
!4293 = !DIGlobalVariableExpression(var: !4294, expr: !DIExpression())
!4294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !4295, isLocal: true, isDefinition: true)
!4295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !4296)
!4296 = !{!4297}
!4297 = !DISubrange(count: 9)
!4298 = !DIGlobalVariableExpression(var: !4299, expr: !DIExpression())
!4299 = distinct !DIGlobalVariable(name: "esre_fw_class", scope: !39, file: !2, line: 117, type: !4170, isLocal: true, isDefinition: true)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !4302, isLocal: true, isDefinition: true)
!4302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !737)
!4303 = !DIGlobalVariableExpression(var: !4304, expr: !DIExpression())
!4304 = distinct !DIGlobalVariable(scope: null, file: !177, line: 707, type: !4195, isLocal: true, isDefinition: true)
!4305 = !DIGlobalVariableExpression(var: !4306, expr: !DIExpression())
!4306 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !3065, isLocal: true, isDefinition: true)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "esre_fw_type", scope: !39, file: !2, line: 128, type: !4170, isLocal: true, isDefinition: true)
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !4311, isLocal: true, isDefinition: true)
!4311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4312)
!4312 = !{!4313}
!4313 = !DISubrange(count: 11)
!4314 = !DIGlobalVariableExpression(var: !4315, expr: !DIExpression())
!4315 = distinct !DIGlobalVariable(name: "esre_fw_version", scope: !39, file: !2, line: 129, type: !4170, isLocal: true, isDefinition: true)
!4316 = !DIGlobalVariableExpression(var: !4317, expr: !DIExpression())
!4317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !4318, isLocal: true, isDefinition: true)
!4318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !4319)
!4319 = !{!4320}
!4320 = !DISubrange(count: 28)
!4321 = !DIGlobalVariableExpression(var: !4322, expr: !DIExpression())
!4322 = distinct !DIGlobalVariable(name: "esre_lowest_supported_fw_version", scope: !39, file: !2, line: 130, type: !4170, isLocal: true, isDefinition: true)
!4323 = !DIGlobalVariableExpression(var: !4324, expr: !DIExpression())
!4324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !4325, isLocal: true, isDefinition: true)
!4325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !4326)
!4326 = !{!4327}
!4327 = !DISubrange(count: 14)
!4328 = !DIGlobalVariableExpression(var: !4329, expr: !DIExpression())
!4329 = distinct !DIGlobalVariable(name: "esre_capsule_flags", scope: !39, file: !2, line: 131, type: !4170, isLocal: true, isDefinition: true)
!4330 = !DIGlobalVariableExpression(var: !4331, expr: !DIExpression())
!4331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !1264, isLocal: true, isDefinition: true)
!4332 = !DIGlobalVariableExpression(var: !4333, expr: !DIExpression())
!4333 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !4278, isLocal: true, isDefinition: true)
!4334 = !DIGlobalVariableExpression(var: !4335, expr: !DIExpression())
!4335 = distinct !DIGlobalVariable(name: "esre_last_attempt_version", scope: !39, file: !2, line: 132, type: !4170, isLocal: true, isDefinition: true)
!4336 = !DIGlobalVariableExpression(var: !4337, expr: !DIExpression())
!4337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !4262, isLocal: true, isDefinition: true)
!4338 = !DIGlobalVariableExpression(var: !4339, expr: !DIExpression())
!4339 = distinct !DIGlobalVariable(name: "esre_last_attempt_status", scope: !39, file: !2, line: 133, type: !4170, isLocal: true, isDefinition: true)
!4340 = !DIGlobalVariableExpression(var: !4341, expr: !DIExpression())
!4341 = distinct !DIGlobalVariable(name: "entry_list", scope: !39, file: !2, line: 72, type: !203, isLocal: true, isDefinition: true)
!4342 = !{i32 7, !"Dwarf Version", i32 5}
!4343 = !{i32 2, !"Debug Info Version", i32 3}
!4344 = !{i32 1, !"wchar_size", i32 2}
!4345 = !{i32 8, !"cf-protection-branch", i32 1}
!4346 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4347 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4348 = !{i32 1, !"Code Model", i32 2}
!4349 = !{i32 1, !"override-stack-alignment", i32 8}
!4350 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4351 = distinct !DISubprogram(name: "efi_esrt_init", scope: !2, file: !2, line: 237, type: !982, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4369, !4370}
!4353 = !DILocalVariable(name: "va", scope: !4351, file: !2, line: 239, type: !152)
!4354 = !DILocalVariable(name: "tmpesrt", scope: !4351, file: !2, line: 240, type: !4218)
!4355 = !DILocalVariable(name: "size", scope: !4351, file: !2, line: 241, type: !330)
!4356 = !DILocalVariable(name: "max", scope: !4351, file: !2, line: 241, type: !330)
!4357 = !DILocalVariable(name: "entry_size", scope: !4351, file: !2, line: 241, type: !330)
!4358 = !DILocalVariable(name: "entries_size", scope: !4351, file: !2, line: 241, type: !330)
!4359 = !DILocalVariable(name: "md", scope: !4351, file: !2, line: 242, type: !4360)
!4360 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !177, line: 145, baseType: !4361)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 138, size: 320, elements: !4362)
!4362 = !{!4363, !4364, !4365, !4366, !4367, !4368}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4361, file: !177, line: 139, baseType: !189, size: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4361, file: !177, line: 140, baseType: !189, size: 32, offset: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4361, file: !177, line: 141, baseType: !147, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !4361, file: !177, line: 142, baseType: !147, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !4361, file: !177, line: 143, baseType: !147, size: 64, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !4361, file: !177, line: 144, baseType: !147, size: 64, offset: 256)
!4369 = !DILocalVariable(name: "rc", scope: !4351, file: !2, line: 243, type: !240)
!4370 = !DILocalVariable(name: "end", scope: !4351, file: !2, line: 244, type: !153)
!4371 = !DILocation(line: 239, column: 2, scope: !4351)
!4372 = !DILocation(line: 239, column: 8, scope: !4351)
!4373 = !DILocation(line: 240, column: 2, scope: !4351)
!4374 = !DILocation(line: 240, column: 35, scope: !4351)
!4375 = !DILocation(line: 241, column: 2, scope: !4351)
!4376 = !DILocation(line: 241, column: 9, scope: !4351)
!4377 = !DILocation(line: 241, column: 15, scope: !4351)
!4378 = !DILocation(line: 241, column: 20, scope: !4351)
!4379 = !DILocation(line: 241, column: 32, scope: !4351)
!4380 = !DILocation(line: 242, column: 2, scope: !4351)
!4381 = !DILocation(line: 242, column: 20, scope: !4351)
!4382 = !DILocation(line: 243, column: 2, scope: !4351)
!4383 = !DILocation(line: 243, column: 6, scope: !4351)
!4384 = !DILocation(line: 244, column: 2, scope: !4351)
!4385 = !DILocation(line: 244, column: 14, scope: !4351)
!4386 = !DILocation(line: 246, column: 7, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 246, column: 6)
!4388 = !DILocation(line: 246, column: 31, scope: !4387)
!4389 = !DILocation(line: 246, column: 35, scope: !4387)
!4390 = !DILocation(line: 246, column: 6, scope: !4351)
!4391 = !DILocation(line: 247, column: 3, scope: !4387)
!4392 = !DILocation(line: 249, column: 2, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4394, file: !2, line: 249, column: 2)
!4394 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 249, column: 2)
!4395 = !DILocation(line: 249, column: 2, scope: !4394)
!4396 = !DILocation(line: 250, column: 7, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 250, column: 6)
!4398 = !DILocation(line: 250, column: 6, scope: !4351)
!4399 = !DILocation(line: 251, column: 3, scope: !4397)
!4400 = !DILocation(line: 253, column: 31, scope: !4351)
!4401 = !DILocation(line: 253, column: 7, scope: !4351)
!4402 = !DILocation(line: 253, column: 5, scope: !4351)
!4403 = !DILocation(line: 254, column: 6, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 254, column: 6)
!4405 = !DILocation(line: 254, column: 9, scope: !4404)
!4406 = !DILocation(line: 254, column: 13, scope: !4404)
!4407 = !DILocation(line: 255, column: 12, scope: !4404)
!4408 = !DILocation(line: 255, column: 22, scope: !4404)
!4409 = !DILocation(line: 255, column: 44, scope: !4404)
!4410 = !DILocation(line: 256, column: 10, scope: !4404)
!4411 = !DILocation(line: 256, column: 15, scope: !4404)
!4412 = !DILocation(line: 256, column: 41, scope: !4404)
!4413 = !DILocation(line: 257, column: 10, scope: !4404)
!4414 = !DILocation(line: 257, column: 15, scope: !4404)
!4415 = !DILocation(line: 257, column: 44, scope: !4404)
!4416 = !DILocation(line: 258, column: 10, scope: !4404)
!4417 = !DILocation(line: 258, column: 15, scope: !4404)
!4418 = !DILocation(line: 258, column: 42, scope: !4404)
!4419 = !DILocation(line: 259, column: 10, scope: !4404)
!4420 = !DILocation(line: 259, column: 15, scope: !4404)
!4421 = !DILocation(line: 254, column: 6, scope: !4351)
!4422 = !DILocation(line: 260, column: 3, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !2, line: 260, column: 3)
!4424 = distinct !DILexicalBlock(scope: !4404, file: !2, line: 259, column: 40)
!4425 = !DILocation(line: 260, column: 3, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4423, file: !2, line: 260, column: 3)
!4427 = !DILocation(line: 261, column: 3, scope: !4424)
!4428 = !DILocation(line: 264, column: 8, scope: !4351)
!4429 = !DILocation(line: 264, column: 36, scope: !4351)
!4430 = !DILocation(line: 264, column: 30, scope: !4351)
!4431 = !DILocation(line: 264, column: 6, scope: !4351)
!4432 = !DILocation(line: 265, column: 7, scope: !4351)
!4433 = !DILocation(line: 267, column: 6, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 267, column: 6)
!4435 = !DILocation(line: 267, column: 12, scope: !4434)
!4436 = !DILocation(line: 267, column: 10, scope: !4434)
!4437 = !DILocation(line: 267, column: 6, scope: !4351)
!4438 = !DILocation(line: 268, column: 3, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !2, line: 268, column: 3)
!4440 = distinct !DILexicalBlock(scope: !4434, file: !2, line: 267, column: 18)
!4441 = !DILocation(line: 268, column: 3, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4439, file: !2, line: 268, column: 3)
!4443 = !DILocation(line: 270, column: 3, scope: !4440)
!4444 = !DILocation(line: 273, column: 26, scope: !4351)
!4445 = !DILocation(line: 273, column: 32, scope: !4351)
!4446 = !DILocation(line: 273, column: 7, scope: !4351)
!4447 = !DILocation(line: 273, column: 5, scope: !4351)
!4448 = !DILocation(line: 274, column: 7, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 274, column: 6)
!4450 = !DILocation(line: 274, column: 6, scope: !4351)
!4451 = !DILocation(line: 275, column: 3, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !2, line: 275, column: 3)
!4453 = distinct !DILexicalBlock(scope: !4449, file: !2, line: 274, column: 11)
!4454 = !DILocation(line: 275, column: 3, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4452, file: !2, line: 275, column: 3)
!4456 = !DILocation(line: 277, column: 3, scope: !4453)
!4457 = !DILocation(line: 280, column: 19, scope: !4351)
!4458 = !DILocation(line: 280, column: 2, scope: !4351)
!4459 = !DILocation(line: 281, column: 17, scope: !4351)
!4460 = !DILocation(line: 281, column: 21, scope: !4351)
!4461 = !DILocation(line: 281, column: 2, scope: !4351)
!4462 = !DILocation(line: 283, column: 14, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 283, column: 6)
!4464 = !DILocation(line: 283, column: 34, scope: !4463)
!4465 = !DILocation(line: 283, column: 6, scope: !4351)
!4466 = !DILocation(line: 284, column: 3, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !2, line: 284, column: 3)
!4468 = distinct !DILexicalBlock(scope: !4463, file: !2, line: 283, column: 40)
!4469 = !DILocation(line: 284, column: 3, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4467, file: !2, line: 284, column: 3)
!4471 = !DILocation(line: 286, column: 3, scope: !4468)
!4472 = !DILocation(line: 289, column: 13, scope: !4351)
!4473 = !DILocation(line: 290, column: 14, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 290, column: 6)
!4475 = !DILocation(line: 290, column: 32, scope: !4474)
!4476 = !DILocation(line: 290, column: 36, scope: !4474)
!4477 = !DILocation(line: 290, column: 39, scope: !4474)
!4478 = !DILocation(line: 290, column: 45, scope: !4474)
!4479 = !DILocation(line: 290, column: 43, scope: !4474)
!4480 = !DILocation(line: 290, column: 52, scope: !4474)
!4481 = !DILocation(line: 290, column: 50, scope: !4474)
!4482 = !DILocation(line: 290, column: 6, scope: !4351)
!4483 = !DILocation(line: 291, column: 3, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !2, line: 291, column: 3)
!4485 = distinct !DILexicalBlock(scope: !4474, file: !2, line: 290, column: 64)
!4486 = !DILocation(line: 291, column: 3, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4484, file: !2, line: 291, column: 3)
!4488 = !DILocation(line: 293, column: 3, scope: !4485)
!4489 = !DILocation(line: 303, column: 14, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 303, column: 6)
!4491 = !DILocation(line: 303, column: 32, scope: !4490)
!4492 = !DILocation(line: 303, column: 6, scope: !4351)
!4493 = !DILocation(line: 304, column: 3, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !2, line: 304, column: 3)
!4495 = distinct !DILexicalBlock(scope: !4490, file: !2, line: 303, column: 39)
!4496 = !DILocation(line: 304, column: 3, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4494, file: !2, line: 304, column: 3)
!4498 = !DILocation(line: 306, column: 3, scope: !4495)
!4499 = !DILocation(line: 313, column: 25, scope: !4351)
!4500 = !DILocation(line: 313, column: 17, scope: !4351)
!4501 = !DILocation(line: 313, column: 45, scope: !4351)
!4502 = !DILocation(line: 313, column: 43, scope: !4351)
!4503 = !DILocation(line: 313, column: 15, scope: !4351)
!4504 = !DILocation(line: 314, column: 6, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 314, column: 6)
!4506 = !DILocation(line: 314, column: 12, scope: !4505)
!4507 = !DILocation(line: 314, column: 19, scope: !4505)
!4508 = !DILocation(line: 314, column: 17, scope: !4505)
!4509 = !DILocation(line: 314, column: 10, scope: !4505)
!4510 = !DILocation(line: 314, column: 6, scope: !4351)
!4511 = !DILocation(line: 315, column: 3, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !2, line: 315, column: 3)
!4513 = distinct !DILexicalBlock(scope: !4505, file: !2, line: 314, column: 33)
!4514 = !DILocation(line: 315, column: 3, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4512, file: !2, line: 315, column: 3)
!4516 = !DILocation(line: 317, column: 3, scope: !4513)
!4517 = !DILocation(line: 320, column: 10, scope: !4351)
!4518 = !DILocation(line: 320, column: 7, scope: !4351)
!4519 = !DILocation(line: 322, column: 31, scope: !4351)
!4520 = !DILocation(line: 322, column: 12, scope: !4351)
!4521 = !DILocation(line: 323, column: 19, scope: !4351)
!4522 = !DILocation(line: 323, column: 17, scope: !4351)
!4523 = !DILocation(line: 325, column: 8, scope: !4351)
!4524 = !DILocation(line: 325, column: 20, scope: !4351)
!4525 = !DILocation(line: 325, column: 18, scope: !4351)
!4526 = !DILocation(line: 325, column: 6, scope: !4351)
!4527 = !DILocation(line: 326, column: 2, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 326, column: 2)
!4529 = !DILocation(line: 326, column: 2, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4528, file: !2, line: 326, column: 2)
!4531 = !DILocation(line: 327, column: 9, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 327, column: 6)
!4533 = !DILocation(line: 327, column: 14, scope: !4532)
!4534 = !DILocation(line: 327, column: 6, scope: !4351)
!4535 = !DILocation(line: 328, column: 19, scope: !4532)
!4536 = !DILocation(line: 328, column: 30, scope: !4532)
!4537 = !DILocation(line: 328, column: 3, scope: !4532)
!4538 = !DILocation(line: 330, column: 2, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !2, line: 330, column: 2)
!4540 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 330, column: 2)
!4541 = !DILocation(line: 330, column: 2, scope: !4540)
!4542 = !DILocation(line: 331, column: 1, scope: !4351)
!4543 = distinct !DISubprogram(name: "efi_enabled", scope: !177, file: !177, line: 880, type: !4544, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4546)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!698, !240}
!4546 = !{!4547}
!4547 = !DILocalVariable(name: "feature", arg: 1, scope: !4543, file: !177, line: 880, type: !240)
!4548 = !DILocation(line: 880, column: 36, scope: !4543)
!4549 = !DILocation(line: 882, column: 9, scope: !4543)
!4550 = !DILocation(line: 882, column: 39, scope: !4543)
!4551 = !DILocation(line: 882, column: 2, scope: !4543)
!4552 = distinct !DISubprogram(name: "esrt_table_exists", scope: !2, file: !2, line: 212, type: !712, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39)
!4553 = !DILocation(line: 214, column: 7, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4552, file: !2, line: 214, column: 6)
!4555 = !DILocation(line: 214, column: 6, scope: !4552)
!4556 = !DILocation(line: 215, column: 3, scope: !4554)
!4557 = !DILocation(line: 216, column: 10, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4552, file: !2, line: 216, column: 6)
!4559 = !DILocation(line: 216, column: 15, scope: !4558)
!4560 = !DILocation(line: 216, column: 6, scope: !4552)
!4561 = !DILocation(line: 217, column: 3, scope: !4558)
!4562 = !DILocation(line: 218, column: 2, scope: !4552)
!4563 = !DILocation(line: 219, column: 1, scope: !4552)
!4564 = !DISubprogram(name: "efi_mem_desc_lookup", scope: !177, file: !177, line: 754, type: !4565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!240, !147, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4568 = !DISubprogram(name: "_printk", scope: !4569, file: !4569, line: 153, type: !4570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4569 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!240, !200, null}
!4572 = !DISubprogram(name: "efi_mem_desc_end", scope: !177, file: !177, line: 753, type: !4573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!147, !4567}
!4575 = !DISubprogram(name: "early_memremap", scope: !4576, file: !4576, line: 13, type: !4577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4576 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!152, !4579, !156}
!4579 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !154, line: 164, baseType: !153)
!4580 = !DISubprogram(name: "early_memunmap", scope: !4576, file: !4576, line: 20, type: !4581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{null, !152, !156}
!4583 = !DISubprogram(name: "efi_mem_reserve", scope: !177, file: !177, line: 756, type: !4584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !153, !147}
!4586 = distinct !DISubprogram(name: "__initstub__kmod_esrt__287_425_esrt_sysfs_init6", scope: !2, file: !2, line: 425, type: !712, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39)
!4587 = !DILocation(line: 425, column: 1, scope: !4586)
!4588 = distinct !DISubprogram(name: "esrt_sysfs_init", scope: !2, file: !2, line: 370, type: !712, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4589)
!4589 = !{!4590, !4591, !4592, !4593, !4594}
!4590 = !DILocalVariable(name: "error", scope: !4588, file: !2, line: 372, type: !240)
!4591 = !DILabel(scope: !4588, name: "err_cleanup_list", file: !2, line: 413)
!4592 = !DILabel(scope: !4588, name: "err_remove_group", file: !2, line: 416)
!4593 = !DILabel(scope: !4588, name: "err_remove_esrt", file: !2, line: 418)
!4594 = !DILabel(scope: !4588, name: "err", file: !2, line: 420)
!4595 = !DILocation(line: 372, column: 2, scope: !4588)
!4596 = !DILocation(line: 372, column: 6, scope: !4588)
!4597 = !DILocation(line: 374, column: 2, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !2, line: 374, column: 2)
!4599 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 374, column: 2)
!4600 = !DILocation(line: 374, column: 2, scope: !4599)
!4601 = !DILocation(line: 375, column: 7, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 375, column: 6)
!4603 = !DILocation(line: 375, column: 17, scope: !4602)
!4604 = !DILocation(line: 375, column: 21, scope: !4602)
!4605 = !DILocation(line: 375, column: 6, scope: !4588)
!4606 = !DILocation(line: 376, column: 3, scope: !4602)
!4607 = !DILocation(line: 378, column: 18, scope: !4588)
!4608 = !DILocation(line: 378, column: 29, scope: !4588)
!4609 = !DILocation(line: 378, column: 9, scope: !4588)
!4610 = !DILocation(line: 378, column: 7, scope: !4588)
!4611 = !DILocation(line: 379, column: 7, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 379, column: 6)
!4613 = !DILocation(line: 379, column: 6, scope: !4588)
!4614 = !DILocation(line: 380, column: 3, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !2, line: 380, column: 3)
!4616 = distinct !DILexicalBlock(scope: !4612, file: !2, line: 379, column: 13)
!4617 = !DILocation(line: 380, column: 3, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4615, file: !2, line: 380, column: 3)
!4619 = !DILocation(line: 382, column: 3, scope: !4616)
!4620 = !DILocation(line: 385, column: 45, scope: !4588)
!4621 = !DILocation(line: 385, column: 14, scope: !4588)
!4622 = !DILocation(line: 385, column: 12, scope: !4588)
!4623 = !DILocation(line: 386, column: 7, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 386, column: 6)
!4625 = !DILocation(line: 386, column: 6, scope: !4588)
!4626 = !DILocation(line: 387, column: 3, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !2, line: 387, column: 3)
!4628 = distinct !DILexicalBlock(scope: !4624, file: !2, line: 386, column: 18)
!4629 = !DILocation(line: 387, column: 3, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4627, file: !2, line: 387, column: 3)
!4631 = !DILocation(line: 388, column: 9, scope: !4628)
!4632 = !DILocation(line: 389, column: 3, scope: !4628)
!4633 = !DILocation(line: 392, column: 29, scope: !4588)
!4634 = !DILocation(line: 392, column: 10, scope: !4588)
!4635 = !DILocation(line: 392, column: 8, scope: !4588)
!4636 = !DILocation(line: 393, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 393, column: 6)
!4638 = !DILocation(line: 393, column: 6, scope: !4588)
!4639 = !DILocation(line: 394, column: 3, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !2, line: 394, column: 3)
!4641 = distinct !DILexicalBlock(scope: !4637, file: !2, line: 393, column: 13)
!4642 = !DILocation(line: 394, column: 3, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4640, file: !2, line: 394, column: 3)
!4644 = !DILocation(line: 396, column: 3, scope: !4641)
!4645 = !DILocation(line: 399, column: 51, scope: !4588)
!4646 = !DILocation(line: 399, column: 14, scope: !4588)
!4647 = !DILocation(line: 399, column: 12, scope: !4588)
!4648 = !DILocation(line: 400, column: 7, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 400, column: 6)
!4650 = !DILocation(line: 400, column: 6, scope: !4588)
!4651 = !DILocation(line: 401, column: 3, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !2, line: 401, column: 3)
!4653 = distinct !DILexicalBlock(scope: !4649, file: !2, line: 400, column: 18)
!4654 = !DILocation(line: 401, column: 3, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4652, file: !2, line: 401, column: 3)
!4656 = !DILocation(line: 402, column: 9, scope: !4653)
!4657 = !DILocation(line: 403, column: 3, scope: !4653)
!4658 = !DILocation(line: 406, column: 10, scope: !4588)
!4659 = !DILocation(line: 406, column: 8, scope: !4588)
!4660 = !DILocation(line: 407, column: 6, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 407, column: 6)
!4662 = !DILocation(line: 407, column: 6, scope: !4588)
!4663 = !DILocation(line: 408, column: 3, scope: !4661)
!4664 = !DILocation(line: 410, column: 2, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !2, line: 410, column: 2)
!4666 = distinct !DILexicalBlock(scope: !4588, file: !2, line: 410, column: 2)
!4667 = !DILocation(line: 410, column: 2, scope: !4666)
!4668 = !DILocation(line: 412, column: 2, scope: !4588)
!4669 = !DILocation(line: 413, column: 1, scope: !4588)
!4670 = !DILocation(line: 414, column: 2, scope: !4588)
!4671 = !DILocation(line: 415, column: 18, scope: !4588)
!4672 = !DILocation(line: 415, column: 2, scope: !4588)
!4673 = !DILocation(line: 416, column: 1, scope: !4588)
!4674 = !DILocation(line: 417, column: 21, scope: !4588)
!4675 = !DILocation(line: 417, column: 2, scope: !4588)
!4676 = !DILocation(line: 418, column: 1, scope: !4588)
!4677 = !DILocation(line: 419, column: 14, scope: !4588)
!4678 = !DILocation(line: 419, column: 2, scope: !4588)
!4679 = !DILocation(line: 420, column: 1, scope: !4588)
!4680 = !DILocation(line: 421, column: 11, scope: !4588)
!4681 = !DILocation(line: 421, column: 2, scope: !4588)
!4682 = !DILocation(line: 422, column: 7, scope: !4588)
!4683 = !DILocation(line: 423, column: 9, scope: !4588)
!4684 = !DILocation(line: 423, column: 2, scope: !4588)
!4685 = !DILocation(line: 424, column: 1, scope: !4588)
!4686 = distinct !DISubprogram(name: "const_test_bit", scope: !4687, file: !4687, line: 166, type: !4688, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4693)
!4687 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!698, !156, !4690}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4692)
!4692 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !156)
!4693 = !{!4694, !4695, !4696, !4697, !4698}
!4694 = !DILocalVariable(name: "nr", arg: 1, scope: !4686, file: !4687, line: 166, type: !156)
!4695 = !DILocalVariable(name: "addr", arg: 2, scope: !4686, file: !4687, line: 166, type: !4690)
!4696 = !DILocalVariable(name: "p", scope: !4686, file: !4687, line: 168, type: !157)
!4697 = !DILocalVariable(name: "mask", scope: !4686, file: !4687, line: 169, type: !156)
!4698 = !DILocalVariable(name: "val", scope: !4686, file: !4687, line: 170, type: !156)
!4699 = !DILocation(line: 166, column: 30, scope: !4686)
!4700 = !DILocation(line: 166, column: 64, scope: !4686)
!4701 = !DILocation(line: 168, column: 2, scope: !4686)
!4702 = !DILocation(line: 168, column: 23, scope: !4686)
!4703 = !DILocation(line: 168, column: 50, scope: !4686)
!4704 = !DILocation(line: 168, column: 57, scope: !4686)
!4705 = !DILocation(line: 168, column: 55, scope: !4686)
!4706 = !DILocation(line: 169, column: 2, scope: !4686)
!4707 = !DILocation(line: 169, column: 16, scope: !4686)
!4708 = !DILocation(line: 169, column: 23, scope: !4686)
!4709 = !DILocation(line: 170, column: 2, scope: !4686)
!4710 = !DILocation(line: 170, column: 16, scope: !4686)
!4711 = !DILocation(line: 170, column: 23, scope: !4686)
!4712 = !DILocation(line: 170, column: 22, scope: !4686)
!4713 = !DILocation(line: 172, column: 12, scope: !4686)
!4714 = !DILocation(line: 172, column: 18, scope: !4686)
!4715 = !DILocation(line: 172, column: 16, scope: !4686)
!4716 = !DILocation(line: 172, column: 10, scope: !4686)
!4717 = !DILocation(line: 172, column: 9, scope: !4686)
!4718 = !DILocation(line: 173, column: 1, scope: !4686)
!4719 = !DILocation(line: 172, column: 2, scope: !4686)
!4720 = distinct !DISubprogram(name: "_test_bit", scope: !4721, file: !4721, line: 139, type: !4688, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4722)
!4721 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4722 = !{!4723, !4724}
!4723 = !DILocalVariable(name: "nr", arg: 1, scope: !4720, file: !4721, line: 139, type: !156)
!4724 = !DILocalVariable(name: "addr", arg: 2, scope: !4720, file: !4721, line: 139, type: !4690)
!4725 = !DILocation(line: 139, column: 25, scope: !4720)
!4726 = !DILocation(line: 139, column: 59, scope: !4720)
!4727 = !DILocation(line: 141, column: 25, scope: !4720)
!4728 = !DILocation(line: 141, column: 32, scope: !4720)
!4729 = !DILocation(line: 141, column: 30, scope: !4720)
!4730 = !DILocation(line: 141, column: 2, scope: !4720)
!4731 = !DILocation(line: 142, column: 23, scope: !4720)
!4732 = !DILocation(line: 142, column: 27, scope: !4720)
!4733 = !DILocation(line: 142, column: 9, scope: !4720)
!4734 = !DILocation(line: 142, column: 2, scope: !4720)
!4735 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4736, file: !4736, line: 66, type: !4737, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4742)
!4736 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !4739, !330}
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4741)
!4741 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4742 = !{!4743, !4744}
!4743 = !DILocalVariable(name: "v", arg: 1, scope: !4735, file: !4736, line: 66, type: !4739)
!4744 = !DILocalVariable(name: "size", arg: 2, scope: !4735, file: !4736, line: 66, type: !330)
!4745 = !DILocation(line: 66, column: 73, scope: !4735)
!4746 = !DILocation(line: 66, column: 83, scope: !4735)
!4747 = !DILocation(line: 68, column: 19, scope: !4735)
!4748 = !DILocation(line: 68, column: 22, scope: !4735)
!4749 = !DILocation(line: 68, column: 2, scope: !4735)
!4750 = !DILocation(line: 69, column: 2, scope: !4735)
!4751 = !DILocation(line: 70, column: 1, scope: !4735)
!4752 = distinct !DISubprogram(name: "arch_test_bit", scope: !4753, file: !4753, line: 237, type: !4688, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4754)
!4753 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4754 = !{!4755, !4756}
!4755 = !DILocalVariable(name: "nr", arg: 1, scope: !4752, file: !4753, line: 237, type: !156)
!4756 = !DILocalVariable(name: "addr", arg: 2, scope: !4752, file: !4753, line: 237, type: !4690)
!4757 = !DILocation(line: 237, column: 29, scope: !4752)
!4758 = !DILocation(line: 237, column: 63, scope: !4752)
!4759 = !DILocation(line: 239, column: 30, scope: !4752)
!4760 = !DILocation(line: 239, column: 9, scope: !4752)
!4761 = !DILocation(line: 239, column: 54, scope: !4752)
!4762 = !DILocation(line: 239, column: 58, scope: !4752)
!4763 = !DILocation(line: 239, column: 36, scope: !4752)
!4764 = !DILocation(line: 240, column: 26, scope: !4752)
!4765 = !DILocation(line: 240, column: 30, scope: !4752)
!4766 = !DILocation(line: 240, column: 8, scope: !4752)
!4767 = !DILocation(line: 239, column: 2, scope: !4752)
!4768 = distinct !DISubprogram(name: "kasan_check_read", scope: !4769, file: !4769, line: 40, type: !4770, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4772)
!4769 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!698, !4739, !43}
!4772 = !{!4773, !4774}
!4773 = !DILocalVariable(name: "p", arg: 1, scope: !4768, file: !4769, line: 40, type: !4739)
!4774 = !DILocalVariable(name: "size", arg: 2, scope: !4768, file: !4769, line: 40, type: !43)
!4775 = !DILocation(line: 40, column: 58, scope: !4768)
!4776 = !DILocation(line: 40, column: 74, scope: !4768)
!4777 = !DILocation(line: 42, column: 2, scope: !4768)
!4778 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4779, file: !4779, line: 229, type: !4780, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4782)
!4779 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !4739, !330, !240}
!4782 = !{!4783, !4784, !4785}
!4783 = !DILocalVariable(name: "ptr", arg: 1, scope: !4778, file: !4779, line: 229, type: !4739)
!4784 = !DILocalVariable(name: "size", arg: 2, scope: !4778, file: !4779, line: 229, type: !330)
!4785 = !DILocalVariable(name: "type", arg: 3, scope: !4778, file: !4779, line: 230, type: !240)
!4786 = !DILocation(line: 229, column: 60, scope: !4778)
!4787 = !DILocation(line: 229, column: 72, scope: !4778)
!4788 = !DILocation(line: 230, column: 15, scope: !4778)
!4789 = !DILocation(line: 230, column: 23, scope: !4778)
!4790 = distinct !DISubprogram(name: "constant_test_bit", scope: !4753, file: !4753, line: 204, type: !4791, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4793)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!698, !319, !4690}
!4793 = !{!4794, !4795}
!4794 = !DILocalVariable(name: "nr", arg: 1, scope: !4790, file: !4753, line: 204, type: !319)
!4795 = !DILocalVariable(name: "addr", arg: 2, scope: !4790, file: !4753, line: 204, type: !4690)
!4796 = !DILocation(line: 204, column: 52, scope: !4790)
!4797 = !DILocation(line: 204, column: 86, scope: !4790)
!4798 = !DILocation(line: 206, column: 19, scope: !4790)
!4799 = !DILocation(line: 206, column: 22, scope: !4790)
!4800 = !DILocation(line: 206, column: 15, scope: !4790)
!4801 = !DILocation(line: 207, column: 4, scope: !4790)
!4802 = !DILocation(line: 207, column: 9, scope: !4790)
!4803 = !DILocation(line: 207, column: 12, scope: !4790)
!4804 = !DILocation(line: 206, column: 44, scope: !4790)
!4805 = !DILocation(line: 207, column: 37, scope: !4790)
!4806 = !DILocation(line: 206, column: 2, scope: !4790)
!4807 = distinct !DISubprogram(name: "variable_test_bit", scope: !4753, file: !4753, line: 224, type: !4791, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4808)
!4808 = !{!4809, !4810, !4811}
!4809 = !DILocalVariable(name: "nr", arg: 1, scope: !4807, file: !4753, line: 224, type: !319)
!4810 = !DILocalVariable(name: "addr", arg: 2, scope: !4807, file: !4753, line: 224, type: !4690)
!4811 = !DILocalVariable(name: "oldbit", scope: !4807, file: !4753, line: 226, type: !698)
!4812 = !DILocation(line: 224, column: 52, scope: !4807)
!4813 = !DILocation(line: 224, column: 86, scope: !4807)
!4814 = !DILocation(line: 226, column: 2, scope: !4807)
!4815 = !DILocation(line: 226, column: 7, scope: !4807)
!4816 = !DILocation(line: 231, column: 33, scope: !4807)
!4817 = !DILocation(line: 231, column: 46, scope: !4807)
!4818 = !DILocation(line: 228, column: 2, scope: !4807)
!4819 = !{i64 2148041778, i64 2148041852}
!4820 = !DILocation(line: 233, column: 9, scope: !4807)
!4821 = !{i8 0, i8 2}
!4822 = !DILocation(line: 234, column: 1, scope: !4807)
!4823 = !DILocation(line: 233, column: 2, scope: !4807)
!4824 = !DISubprogram(name: "memremap", scope: !48, file: !48, line: 149, type: !4825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!152, !4579, !330, !156}
!4827 = !DISubprogram(name: "kobject_create_and_add", scope: !197, file: !197, line: 103, type: !4828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!209, !200, !209}
!4830 = !DISubprogram(name: "sysfs_create_group", scope: !309, file: !309, line: 307, type: !4831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!240, !209, !335}
!4833 = !DISubprogram(name: "kset_create_and_add", scope: !197, file: !197, line: 178, type: !4834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!211, !200, !257, !209}
!4836 = distinct !DISubprogram(name: "register_entries", scope: !2, file: !2, line: 333, type: !712, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4837)
!4837 = !{!4838, !4839, !4840, !4841}
!4838 = !DILocalVariable(name: "v1_entries", scope: !4836, file: !2, line: 335, type: !172)
!4839 = !DILocalVariable(name: "i", scope: !4836, file: !2, line: 336, type: !240)
!4840 = !DILocalVariable(name: "rc", scope: !4836, file: !2, line: 336, type: !240)
!4841 = !DILocalVariable(name: "esre", scope: !4842, file: !2, line: 342, type: !152)
!4842 = distinct !DILexicalBlock(scope: !4843, file: !2, line: 341, column: 61)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !2, line: 341, column: 2)
!4844 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 341, column: 2)
!4845 = !DILocation(line: 335, column: 2, scope: !4836)
!4846 = !DILocation(line: 335, column: 39, scope: !4836)
!4847 = !DILocation(line: 335, column: 60, scope: !4836)
!4848 = !DILocation(line: 335, column: 66, scope: !4836)
!4849 = !DILocation(line: 336, column: 2, scope: !4836)
!4850 = !DILocation(line: 336, column: 6, scope: !4836)
!4851 = !DILocation(line: 336, column: 9, scope: !4836)
!4852 = !DILocation(line: 338, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 338, column: 6)
!4854 = !DILocation(line: 338, column: 6, scope: !4836)
!4855 = !DILocation(line: 339, column: 3, scope: !4853)
!4856 = !DILocation(line: 341, column: 9, scope: !4844)
!4857 = !DILocation(line: 341, column: 7, scope: !4844)
!4858 = !DILocation(line: 341, column: 14, scope: !4843)
!4859 = !DILocation(line: 341, column: 18, scope: !4843)
!4860 = !DILocation(line: 341, column: 16, scope: !4843)
!4861 = !DILocation(line: 341, column: 2, scope: !4844)
!4862 = !DILocation(line: 342, column: 3, scope: !4842)
!4863 = !DILocation(line: 342, column: 9, scope: !4842)
!4864 = !DILocation(line: 343, column: 7, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4842, file: !2, line: 343, column: 7)
!4866 = !DILocation(line: 343, column: 13, scope: !4865)
!4867 = !DILocation(line: 343, column: 33, scope: !4865)
!4868 = !DILocation(line: 343, column: 7, scope: !4842)
!4869 = !DILocation(line: 344, column: 12, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4865, file: !2, line: 343, column: 39)
!4871 = !DILocation(line: 344, column: 23, scope: !4870)
!4872 = !DILocation(line: 344, column: 9, scope: !4870)
!4873 = !DILocation(line: 345, column: 3, scope: !4870)
!4874 = !DILocation(line: 346, column: 4, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4876, file: !2, line: 346, column: 4)
!4876 = distinct !DILexicalBlock(scope: !4865, file: !2, line: 345, column: 10)
!4877 = !DILocation(line: 346, column: 4, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 346, column: 4)
!4879 = !DILocation(line: 348, column: 4, scope: !4876)
!4880 = !DILocation(line: 351, column: 32, scope: !4842)
!4881 = !DILocation(line: 351, column: 38, scope: !4842)
!4882 = !DILocation(line: 351, column: 8, scope: !4842)
!4883 = !DILocation(line: 351, column: 6, scope: !4842)
!4884 = !DILocation(line: 352, column: 7, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4842, file: !2, line: 352, column: 7)
!4886 = !DILocation(line: 352, column: 10, scope: !4885)
!4887 = !DILocation(line: 352, column: 7, scope: !4842)
!4888 = !DILocation(line: 353, column: 4, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !2, line: 353, column: 4)
!4890 = distinct !DILexicalBlock(scope: !4885, file: !2, line: 352, column: 15)
!4891 = !DILocation(line: 353, column: 4, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4889, file: !2, line: 353, column: 4)
!4893 = !DILocation(line: 355, column: 11, scope: !4890)
!4894 = !DILocation(line: 355, column: 4, scope: !4890)
!4895 = !DILocation(line: 357, column: 2, scope: !4843)
!4896 = !DILocation(line: 357, column: 2, scope: !4842)
!4897 = !DILocation(line: 341, column: 57, scope: !4843)
!4898 = !DILocation(line: 341, column: 2, scope: !4843)
!4899 = distinct !{!4899, !4861, !4900, !4901, !4902}
!4900 = !DILocation(line: 357, column: 2, scope: !4844)
!4901 = !{!"llvm.loop.mustprogress"}
!4902 = !{!"llvm.loop.unroll.disable"}
!4903 = !DILocation(line: 358, column: 2, scope: !4836)
!4904 = !DILocation(line: 359, column: 1, scope: !4836)
!4905 = distinct !DISubprogram(name: "cleanup_entry_list", scope: !2, file: !2, line: 361, type: !982, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4906)
!4906 = !{!4907, !4908, !4909, !4912, !4914}
!4907 = !DILocalVariable(name: "entry", scope: !4905, file: !2, line: 363, type: !165)
!4908 = !DILocalVariable(name: "next", scope: !4905, file: !2, line: 363, type: !165)
!4909 = !DILocalVariable(name: "__mptr", scope: !4910, file: !2, line: 365, type: !152)
!4910 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 365, column: 2)
!4911 = distinct !DILexicalBlock(scope: !4905, file: !2, line: 365, column: 2)
!4912 = !DILocalVariable(name: "__mptr", scope: !4913, file: !2, line: 365, type: !152)
!4913 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 365, column: 2)
!4914 = !DILocalVariable(name: "__mptr", scope: !4915, file: !2, line: 365, type: !152)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !2, line: 365, column: 2)
!4916 = distinct !DILexicalBlock(scope: !4911, file: !2, line: 365, column: 2)
!4917 = !DILocation(line: 363, column: 2, scope: !4905)
!4918 = !DILocation(line: 363, column: 21, scope: !4905)
!4919 = !DILocation(line: 363, column: 29, scope: !4905)
!4920 = !DILocation(line: 365, column: 2, scope: !4910)
!4921 = !DILocation(line: 365, column: 2, scope: !4911)
!4922 = !DILocation(line: 365, column: 2, scope: !4913)
!4923 = !DILocation(line: 365, column: 2, scope: !4916)
!4924 = !DILocation(line: 366, column: 16, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4916, file: !2, line: 365, column: 59)
!4926 = !DILocation(line: 366, column: 23, scope: !4925)
!4927 = !DILocation(line: 366, column: 3, scope: !4925)
!4928 = !DILocation(line: 367, column: 2, scope: !4925)
!4929 = !DILocation(line: 365, column: 2, scope: !4915)
!4930 = distinct !{!4930, !4921, !4931, !4901, !4902}
!4931 = !DILocation(line: 367, column: 2, scope: !4911)
!4932 = !DILocation(line: 368, column: 1, scope: !4905)
!4933 = !DISubprogram(name: "kset_unregister", scope: !197, file: !197, line: 177, type: !4934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{null, !211}
!4936 = !DISubprogram(name: "sysfs_remove_group", scope: !309, file: !309, line: 315, type: !4937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{null, !209, !335}
!4939 = !DISubprogram(name: "kobject_put", scope: !197, file: !197, line: 110, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4940 = !DISubprogram(name: "memunmap", scope: !48, file: !48, line: 150, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4941 = distinct !DISubprogram(name: "esrt_attr_is_visible", scope: !2, file: !2, line: 221, type: !342, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4942)
!4942 = !{!4943, !4944, !4945}
!4943 = !DILocalVariable(name: "kobj", arg: 1, scope: !4941, file: !2, line: 221, type: !209)
!4944 = !DILocalVariable(name: "attr", arg: 2, scope: !4941, file: !2, line: 222, type: !320)
!4945 = !DILocalVariable(name: "n", arg: 3, scope: !4941, file: !2, line: 222, type: !240)
!4946 = !DILocation(line: 221, column: 53, scope: !4941)
!4947 = !DILocation(line: 222, column: 27, scope: !4941)
!4948 = !DILocation(line: 222, column: 37, scope: !4941)
!4949 = !DILocation(line: 224, column: 7, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4941, file: !2, line: 224, column: 6)
!4951 = !DILocation(line: 224, column: 6, scope: !4941)
!4952 = !DILocation(line: 225, column: 3, scope: !4950)
!4953 = !DILocation(line: 226, column: 9, scope: !4941)
!4954 = !DILocation(line: 226, column: 15, scope: !4941)
!4955 = !DILocation(line: 226, column: 2, scope: !4941)
!4956 = !DILocation(line: 227, column: 1, scope: !4941)
!4957 = distinct !DISubprogram(name: "fw_resource_count_show", scope: !2, file: !2, line: 201, type: !4243, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4958)
!4958 = !{!4959, !4960, !4961}
!4959 = !DILocalVariable(name: "kobj", arg: 1, scope: !4957, file: !2, line: 201, type: !209)
!4960 = !DILocalVariable(name: "attr", arg: 2, scope: !4957, file: !2, line: 201, type: !4245)
!4961 = !DILocalVariable(name: "buf", arg: 3, scope: !4957, file: !2, line: 201, type: !283)
!4962 = !DILocation(line: 201, column: 1, scope: !4957)
!4963 = !DISubprogram(name: "sprintf", scope: !4964, file: !4964, line: 10, type: !4965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4964 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!240, !283, !200, null}
!4967 = distinct !DISubprogram(name: "fw_resource_count_max_show", scope: !2, file: !2, line: 202, type: !4243, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4968)
!4968 = !{!4969, !4970, !4971}
!4969 = !DILocalVariable(name: "kobj", arg: 1, scope: !4967, file: !2, line: 202, type: !209)
!4970 = !DILocalVariable(name: "attr", arg: 2, scope: !4967, file: !2, line: 202, type: !4245)
!4971 = !DILocalVariable(name: "buf", arg: 3, scope: !4967, file: !2, line: 202, type: !283)
!4972 = !DILocation(line: 202, column: 1, scope: !4967)
!4973 = distinct !DISubprogram(name: "fw_resource_version_show", scope: !2, file: !2, line: 203, type: !4243, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4974)
!4974 = !{!4975, !4976, !4977}
!4975 = !DILocalVariable(name: "kobj", arg: 1, scope: !4973, file: !2, line: 203, type: !209)
!4976 = !DILocalVariable(name: "attr", arg: 2, scope: !4973, file: !2, line: 203, type: !4245)
!4977 = !DILocalVariable(name: "buf", arg: 3, scope: !4973, file: !2, line: 203, type: !283)
!4978 = !DILocation(line: 203, column: 1, scope: !4973)
!4979 = distinct !DISubprogram(name: "esre_create_sysfs_entry", scope: !2, file: !2, line: 165, type: !4980, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4982)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!240, !152, !240}
!4982 = !{!4983, !4984, !4985, !4986}
!4983 = !DILocalVariable(name: "esre", arg: 1, scope: !4979, file: !2, line: 165, type: !152)
!4984 = !DILocalVariable(name: "entry_num", arg: 2, scope: !4979, file: !2, line: 165, type: !240)
!4985 = !DILocalVariable(name: "entry", scope: !4979, file: !2, line: 167, type: !165)
!4986 = !DILocalVariable(name: "rc", scope: !4987, file: !2, line: 176, type: !240)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !2, line: 175, column: 38)
!4988 = distinct !DILexicalBlock(scope: !4979, file: !2, line: 175, column: 6)
!4989 = !DILocation(line: 165, column: 42, scope: !4979)
!4990 = !DILocation(line: 165, column: 52, scope: !4979)
!4991 = !DILocation(line: 167, column: 2, scope: !4979)
!4992 = !DILocation(line: 167, column: 21, scope: !4979)
!4993 = !DILocation(line: 169, column: 10, scope: !4979)
!4994 = !DILocation(line: 169, column: 8, scope: !4979)
!4995 = !DILocation(line: 170, column: 7, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4979, file: !2, line: 170, column: 6)
!4997 = !DILocation(line: 170, column: 6, scope: !4979)
!4998 = !DILocation(line: 171, column: 3, scope: !4996)
!4999 = !DILocation(line: 173, column: 21, scope: !4979)
!5000 = !DILocation(line: 173, column: 2, scope: !4979)
!5001 = !DILocation(line: 173, column: 9, scope: !4979)
!5002 = !DILocation(line: 173, column: 14, scope: !4979)
!5003 = !DILocation(line: 173, column: 19, scope: !4979)
!5004 = !DILocation(line: 175, column: 6, scope: !4988)
!5005 = !DILocation(line: 175, column: 12, scope: !4988)
!5006 = !DILocation(line: 175, column: 32, scope: !4988)
!5007 = !DILocation(line: 175, column: 6, scope: !4979)
!5008 = !DILocation(line: 176, column: 3, scope: !4987)
!5009 = !DILocation(line: 176, column: 7, scope: !4987)
!5010 = !DILocation(line: 178, column: 23, scope: !4987)
!5011 = !DILocation(line: 178, column: 3, scope: !4987)
!5012 = !DILocation(line: 178, column: 10, scope: !4987)
!5013 = !DILocation(line: 178, column: 21, scope: !4987)
!5014 = !DILocation(line: 179, column: 30, scope: !4987)
!5015 = !DILocation(line: 179, column: 37, scope: !4987)
!5016 = !DILocation(line: 180, column: 19, scope: !4987)
!5017 = !DILocation(line: 179, column: 8, scope: !4987)
!5018 = !DILocation(line: 179, column: 6, scope: !4987)
!5019 = !DILocation(line: 181, column: 7, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4987, file: !2, line: 181, column: 7)
!5021 = !DILocation(line: 181, column: 7, scope: !4987)
!5022 = !DILocation(line: 182, column: 17, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5020, file: !2, line: 181, column: 11)
!5024 = !DILocation(line: 182, column: 24, scope: !5023)
!5025 = !DILocation(line: 182, column: 4, scope: !5023)
!5026 = !DILocation(line: 183, column: 11, scope: !5023)
!5027 = !DILocation(line: 183, column: 4, scope: !5023)
!5028 = !DILocation(line: 185, column: 2, scope: !4988)
!5029 = !DILocation(line: 185, column: 2, scope: !4987)
!5030 = !DILocation(line: 187, column: 17, scope: !4979)
!5031 = !DILocation(line: 187, column: 24, scope: !4979)
!5032 = !DILocation(line: 187, column: 2, scope: !4979)
!5033 = !DILocation(line: 188, column: 2, scope: !4979)
!5034 = !DILocation(line: 189, column: 1, scope: !4979)
!5035 = distinct !DISubprogram(name: "kzalloc", scope: !137, file: !137, line: 719, type: !5036, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5038)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!152, !330, !164}
!5038 = !{!5039, !5040}
!5039 = !DILocalVariable(name: "size", arg: 1, scope: !5035, file: !137, line: 719, type: !330)
!5040 = !DILocalVariable(name: "flags", arg: 2, scope: !5035, file: !137, line: 719, type: !164)
!5041 = !DILocation(line: 719, column: 52, scope: !5035)
!5042 = !DILocation(line: 719, column: 64, scope: !5035)
!5043 = !DILocation(line: 721, column: 17, scope: !5035)
!5044 = !DILocation(line: 721, column: 23, scope: !5035)
!5045 = !DILocation(line: 721, column: 29, scope: !5035)
!5046 = !DILocation(line: 721, column: 9, scope: !5035)
!5047 = !DILocation(line: 721, column: 2, scope: !5035)
!5048 = !DISubprogram(name: "kobject_init_and_add", scope: !197, file: !197, line: 96, type: !5049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!240, !209, !297, !209, !200, null}
!5051 = distinct !DISubprogram(name: "list_add_tail", scope: !5052, file: !5052, line: 181, type: !5053, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5055)
!5052 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5053 = !DISubroutineType(types: !5054)
!5054 = !{null, !206, !206}
!5055 = !{!5056, !5057}
!5056 = !DILocalVariable(name: "new", arg: 1, scope: !5051, file: !5052, line: 181, type: !206)
!5057 = !DILocalVariable(name: "head", arg: 2, scope: !5051, file: !5052, line: 181, type: !206)
!5058 = !DILocation(line: 181, column: 52, scope: !5051)
!5059 = !DILocation(line: 181, column: 75, scope: !5051)
!5060 = !DILocation(line: 183, column: 13, scope: !5051)
!5061 = !DILocation(line: 183, column: 18, scope: !5051)
!5062 = !DILocation(line: 183, column: 24, scope: !5051)
!5063 = !DILocation(line: 183, column: 30, scope: !5051)
!5064 = !DILocation(line: 183, column: 2, scope: !5051)
!5065 = !DILocation(line: 184, column: 1, scope: !5051)
!5066 = distinct !DISubprogram(name: "kmalloc", scope: !137, file: !137, line: 591, type: !5036, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5067)
!5067 = !{!5068, !5069, !5070}
!5068 = !DILocalVariable(name: "size", arg: 1, scope: !5066, file: !137, line: 591, type: !330)
!5069 = !DILocalVariable(name: "flags", arg: 2, scope: !5066, file: !137, line: 591, type: !164)
!5070 = !DILocalVariable(name: "index", scope: !5071, file: !137, line: 594, type: !43)
!5071 = distinct !DILexicalBlock(scope: !5072, file: !137, line: 593, column: 42)
!5072 = distinct !DILexicalBlock(scope: !5066, file: !137, line: 593, column: 6)
!5073 = !DILocation(line: 591, column: 61, scope: !5066)
!5074 = !DILocation(line: 591, column: 73, scope: !5066)
!5075 = !DILocation(line: 593, column: 27, scope: !5072)
!5076 = !DILocation(line: 593, column: 6, scope: !5072)
!5077 = !DILocation(line: 593, column: 33, scope: !5072)
!5078 = !DILocation(line: 593, column: 36, scope: !5072)
!5079 = !DILocation(line: 593, column: 6, scope: !5066)
!5080 = !DILocation(line: 594, column: 3, scope: !5071)
!5081 = !DILocation(line: 594, column: 16, scope: !5071)
!5082 = !DILocation(line: 596, column: 7, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5071, file: !137, line: 596, column: 7)
!5084 = !DILocation(line: 596, column: 12, scope: !5083)
!5085 = !DILocation(line: 596, column: 7, scope: !5071)
!5086 = !DILocation(line: 597, column: 25, scope: !5083)
!5087 = !DILocation(line: 597, column: 31, scope: !5083)
!5088 = !DILocation(line: 597, column: 11, scope: !5083)
!5089 = !DILocation(line: 597, column: 4, scope: !5083)
!5090 = !DILocation(line: 599, column: 11, scope: !5071)
!5091 = !DILocation(line: 599, column: 9, scope: !5071)
!5092 = !DILocation(line: 601, column: 33, scope: !5071)
!5093 = !DILocation(line: 601, column: 40, scope: !5071)
!5094 = !DILocation(line: 601, column: 20, scope: !5071)
!5095 = !DILocation(line: 601, column: 5, scope: !5071)
!5096 = !DILocation(line: 601, column: 51, scope: !5071)
!5097 = !DILocation(line: 602, column: 5, scope: !5071)
!5098 = !DILocation(line: 602, column: 12, scope: !5071)
!5099 = !DILocation(line: 600, column: 10, scope: !5071)
!5100 = !DILocation(line: 600, column: 3, scope: !5071)
!5101 = !DILocation(line: 603, column: 2, scope: !5072)
!5102 = !DILocation(line: 604, column: 19, scope: !5066)
!5103 = !DILocation(line: 604, column: 25, scope: !5066)
!5104 = !DILocation(line: 604, column: 9, scope: !5066)
!5105 = !DILocation(line: 604, column: 2, scope: !5066)
!5106 = !DILocation(line: 605, column: 1, scope: !5066)
!5107 = !DISubprogram(name: "kmalloc_large", scope: !137, file: !137, line: 531, type: !5036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5108 = distinct !DISubprogram(name: "__kmalloc_index", scope: !137, file: !137, line: 444, type: !5109, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5111)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!43, !330, !698}
!5111 = !{!5112, !5113}
!5112 = !DILocalVariable(name: "size", arg: 1, scope: !5108, file: !137, line: 444, type: !330)
!5113 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5108, file: !137, line: 445, type: !698)
!5114 = !DILocation(line: 444, column: 60, scope: !5108)
!5115 = !DILocation(line: 445, column: 16, scope: !5108)
!5116 = !DILocation(line: 447, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 447, column: 6)
!5118 = !DILocation(line: 447, column: 6, scope: !5108)
!5119 = !DILocation(line: 448, column: 3, scope: !5117)
!5120 = !DILocation(line: 450, column: 6, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 450, column: 6)
!5122 = !DILocation(line: 450, column: 11, scope: !5121)
!5123 = !DILocation(line: 450, column: 6, scope: !5108)
!5124 = !DILocation(line: 451, column: 3, scope: !5121)
!5125 = !DILocation(line: 453, column: 32, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 453, column: 6)
!5127 = !DILocation(line: 453, column: 37, scope: !5126)
!5128 = !DILocation(line: 453, column: 42, scope: !5126)
!5129 = !DILocation(line: 453, column: 45, scope: !5126)
!5130 = !DILocation(line: 453, column: 50, scope: !5126)
!5131 = !DILocation(line: 453, column: 6, scope: !5108)
!5132 = !DILocation(line: 454, column: 3, scope: !5126)
!5133 = !DILocation(line: 455, column: 32, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 455, column: 6)
!5135 = !DILocation(line: 455, column: 37, scope: !5134)
!5136 = !DILocation(line: 455, column: 43, scope: !5134)
!5137 = !DILocation(line: 455, column: 46, scope: !5134)
!5138 = !DILocation(line: 455, column: 51, scope: !5134)
!5139 = !DILocation(line: 455, column: 6, scope: !5108)
!5140 = !DILocation(line: 456, column: 3, scope: !5134)
!5141 = !DILocation(line: 457, column: 6, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 457, column: 6)
!5143 = !DILocation(line: 457, column: 11, scope: !5142)
!5144 = !DILocation(line: 457, column: 6, scope: !5108)
!5145 = !DILocation(line: 457, column: 26, scope: !5142)
!5146 = !DILocation(line: 458, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 458, column: 6)
!5148 = !DILocation(line: 458, column: 11, scope: !5147)
!5149 = !DILocation(line: 458, column: 6, scope: !5108)
!5150 = !DILocation(line: 458, column: 26, scope: !5147)
!5151 = !DILocation(line: 459, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 459, column: 6)
!5153 = !DILocation(line: 459, column: 11, scope: !5152)
!5154 = !DILocation(line: 459, column: 6, scope: !5108)
!5155 = !DILocation(line: 459, column: 26, scope: !5152)
!5156 = !DILocation(line: 460, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 460, column: 6)
!5158 = !DILocation(line: 460, column: 11, scope: !5157)
!5159 = !DILocation(line: 460, column: 6, scope: !5108)
!5160 = !DILocation(line: 460, column: 26, scope: !5157)
!5161 = !DILocation(line: 461, column: 6, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 461, column: 6)
!5163 = !DILocation(line: 461, column: 11, scope: !5162)
!5164 = !DILocation(line: 461, column: 6, scope: !5108)
!5165 = !DILocation(line: 461, column: 26, scope: !5162)
!5166 = !DILocation(line: 462, column: 6, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 462, column: 6)
!5168 = !DILocation(line: 462, column: 11, scope: !5167)
!5169 = !DILocation(line: 462, column: 6, scope: !5108)
!5170 = !DILocation(line: 462, column: 26, scope: !5167)
!5171 = !DILocation(line: 463, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 463, column: 6)
!5173 = !DILocation(line: 463, column: 11, scope: !5172)
!5174 = !DILocation(line: 463, column: 6, scope: !5108)
!5175 = !DILocation(line: 463, column: 26, scope: !5172)
!5176 = !DILocation(line: 464, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 464, column: 6)
!5178 = !DILocation(line: 464, column: 11, scope: !5177)
!5179 = !DILocation(line: 464, column: 6, scope: !5108)
!5180 = !DILocation(line: 464, column: 26, scope: !5177)
!5181 = !DILocation(line: 465, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 465, column: 6)
!5183 = !DILocation(line: 465, column: 11, scope: !5182)
!5184 = !DILocation(line: 465, column: 6, scope: !5108)
!5185 = !DILocation(line: 465, column: 26, scope: !5182)
!5186 = !DILocation(line: 466, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 466, column: 6)
!5188 = !DILocation(line: 466, column: 11, scope: !5187)
!5189 = !DILocation(line: 466, column: 6, scope: !5108)
!5190 = !DILocation(line: 466, column: 26, scope: !5187)
!5191 = !DILocation(line: 467, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 467, column: 6)
!5193 = !DILocation(line: 467, column: 11, scope: !5192)
!5194 = !DILocation(line: 467, column: 6, scope: !5108)
!5195 = !DILocation(line: 467, column: 26, scope: !5192)
!5196 = !DILocation(line: 468, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 468, column: 6)
!5198 = !DILocation(line: 468, column: 11, scope: !5197)
!5199 = !DILocation(line: 468, column: 6, scope: !5108)
!5200 = !DILocation(line: 468, column: 26, scope: !5197)
!5201 = !DILocation(line: 469, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 469, column: 6)
!5203 = !DILocation(line: 469, column: 11, scope: !5202)
!5204 = !DILocation(line: 469, column: 6, scope: !5108)
!5205 = !DILocation(line: 469, column: 26, scope: !5202)
!5206 = !DILocation(line: 470, column: 6, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 470, column: 6)
!5208 = !DILocation(line: 470, column: 11, scope: !5207)
!5209 = !DILocation(line: 470, column: 6, scope: !5108)
!5210 = !DILocation(line: 470, column: 26, scope: !5207)
!5211 = !DILocation(line: 471, column: 6, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 471, column: 6)
!5213 = !DILocation(line: 471, column: 11, scope: !5212)
!5214 = !DILocation(line: 471, column: 6, scope: !5108)
!5215 = !DILocation(line: 471, column: 26, scope: !5212)
!5216 = !DILocation(line: 472, column: 6, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 472, column: 6)
!5218 = !DILocation(line: 472, column: 11, scope: !5217)
!5219 = !DILocation(line: 472, column: 6, scope: !5108)
!5220 = !DILocation(line: 472, column: 26, scope: !5217)
!5221 = !DILocation(line: 473, column: 6, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 473, column: 6)
!5223 = !DILocation(line: 473, column: 11, scope: !5222)
!5224 = !DILocation(line: 473, column: 6, scope: !5108)
!5225 = !DILocation(line: 473, column: 26, scope: !5222)
!5226 = !DILocation(line: 474, column: 6, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 474, column: 6)
!5228 = !DILocation(line: 474, column: 11, scope: !5227)
!5229 = !DILocation(line: 474, column: 6, scope: !5108)
!5230 = !DILocation(line: 474, column: 27, scope: !5227)
!5231 = !DILocation(line: 475, column: 6, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 475, column: 6)
!5233 = !DILocation(line: 475, column: 11, scope: !5232)
!5234 = !DILocation(line: 475, column: 6, scope: !5108)
!5235 = !DILocation(line: 475, column: 32, scope: !5232)
!5236 = !DILocation(line: 477, column: 50, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5108, file: !137, line: 477, column: 6)
!5238 = !DILocation(line: 477, column: 6, scope: !5108)
!5239 = !DILocation(line: 478, column: 3, scope: !5237)
!5240 = !DILocation(line: 478, column: 3, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5242, file: !137, line: 478, column: 3)
!5242 = distinct !DILexicalBlock(scope: !5237, file: !137, line: 478, column: 3)
!5243 = !{i32 -2141138369}
!5244 = !DILocation(line: 478, column: 3, scope: !5242)
!5245 = !DILocation(line: 480, column: 3, scope: !5237)
!5246 = !DILocation(line: 480, column: 3, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5237, file: !137, line: 480, column: 3)
!5248 = !DILocation(line: 480, column: 3, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5247, file: !137, line: 480, column: 3)
!5250 = !DILocation(line: 480, column: 3, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5247, file: !137, line: 480, column: 3)
!5252 = !{i64 2153829130, i64 2153829159, i64 2153829205, i64 2153829263, i64 2153829317, i64 2153829371, i64 2153829426, i64 2153829457}
!5253 = !DILocation(line: 483, column: 2, scope: !5108)
!5254 = !DILocation(line: 484, column: 1, scope: !5108)
!5255 = !DISubprogram(name: "kmalloc_trace", scope: !137, file: !137, line: 525, type: !5256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!152, !5258, !164, !330}
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5260, line: 325, flags: DIFlagFwdDecl)
!5260 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5261 = distinct !DISubprogram(name: "kmalloc_type", scope: !137, file: !137, line: 401, type: !5262, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5264)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!136, !164, !156}
!5264 = !{!5265, !5266}
!5265 = !DILocalVariable(name: "flags", arg: 1, scope: !5261, file: !137, line: 401, type: !164)
!5266 = !DILocalVariable(name: "caller", arg: 2, scope: !5261, file: !137, line: 401, type: !156)
!5267 = !DILocation(line: 401, column: 67, scope: !5261)
!5268 = !DILocation(line: 401, column: 88, scope: !5261)
!5269 = !DILocation(line: 407, column: 6, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5261, file: !137, line: 407, column: 6)
!5271 = !DILocation(line: 407, column: 6, scope: !5261)
!5272 = !DILocation(line: 413, column: 3, scope: !5270)
!5273 = !DILocation(line: 423, column: 38, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5261, file: !137, line: 423, column: 6)
!5275 = !DILocation(line: 423, column: 44, scope: !5274)
!5276 = !DILocation(line: 423, column: 6, scope: !5261)
!5277 = !DILocation(line: 424, column: 3, scope: !5274)
!5278 = !DILocation(line: 426, column: 3, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5261, file: !137, line: 425, column: 6)
!5280 = !DILocation(line: 429, column: 1, scope: !5261)
!5281 = !DISubprogram(name: "__kmalloc", scope: !137, file: !137, line: 488, type: !5036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5282 = !DISubprogram(name: "__compiletime_assert_263", scope: !137, file: !137, line: 478, type: !982, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5283 = distinct !DISubprogram(name: "esre_release", scope: !2, file: !2, line: 147, type: !303, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5284)
!5284 = !{!5285, !5286}
!5285 = !DILocalVariable(name: "kobj", arg: 1, scope: !5283, file: !2, line: 147, type: !209)
!5286 = !DILocalVariable(name: "entry", scope: !5283, file: !2, line: 149, type: !165)
!5287 = !DILocation(line: 147, column: 42, scope: !5283)
!5288 = !DILocation(line: 149, column: 2, scope: !5283)
!5289 = !DILocation(line: 149, column: 21, scope: !5283)
!5290 = !DILocation(line: 149, column: 38, scope: !5283)
!5291 = !DILocation(line: 149, column: 29, scope: !5283)
!5292 = !DILocation(line: 151, column: 12, scope: !5283)
!5293 = !DILocation(line: 151, column: 19, scope: !5283)
!5294 = !DILocation(line: 151, column: 2, scope: !5283)
!5295 = !DILocation(line: 152, column: 8, scope: !5283)
!5296 = !DILocation(line: 152, column: 2, scope: !5283)
!5297 = !DILocation(line: 153, column: 1, scope: !5283)
!5298 = distinct !DISubprogram(name: "to_entry", scope: !2, file: !2, line: 82, type: !5299, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5301)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!165, !209}
!5301 = !{!5302, !5303}
!5302 = !DILocalVariable(name: "kobj", arg: 1, scope: !5298, file: !2, line: 82, type: !209)
!5303 = !DILocalVariable(name: "__mptr", scope: !5304, file: !2, line: 84, type: !152)
!5304 = distinct !DILexicalBlock(scope: !5298, file: !2, line: 84, column: 9)
!5305 = !DILocation(line: 82, column: 52, scope: !5298)
!5306 = !DILocation(line: 84, column: 9, scope: !5304)
!5307 = !DILocation(line: 84, column: 9, scope: !5298)
!5308 = !DILocation(line: 84, column: 2, scope: !5298)
!5309 = distinct !DISubprogram(name: "list_del", scope: !5052, file: !5052, line: 227, type: !5310, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5312)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{null, !206}
!5312 = !{!5313}
!5313 = !DILocalVariable(name: "entry", arg: 1, scope: !5309, file: !5052, line: 227, type: !206)
!5314 = !DILocation(line: 227, column: 47, scope: !5309)
!5315 = !DILocation(line: 229, column: 19, scope: !5309)
!5316 = !DILocation(line: 229, column: 2, scope: !5309)
!5317 = !DILocation(line: 230, column: 2, scope: !5309)
!5318 = !DILocation(line: 230, column: 9, scope: !5309)
!5319 = !DILocation(line: 230, column: 14, scope: !5309)
!5320 = !DILocation(line: 231, column: 2, scope: !5309)
!5321 = !DILocation(line: 231, column: 9, scope: !5309)
!5322 = !DILocation(line: 231, column: 14, scope: !5309)
!5323 = !DILocation(line: 232, column: 1, scope: !5309)
!5324 = !DISubprogram(name: "kfree", scope: !137, file: !137, line: 227, type: !5325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{null, !1614}
!5327 = distinct !DISubprogram(name: "__list_del_entry", scope: !5052, file: !5052, line: 213, type: !5310, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5328)
!5328 = !{!5329}
!5329 = !DILocalVariable(name: "entry", arg: 1, scope: !5327, file: !5052, line: 213, type: !206)
!5330 = !DILocation(line: 213, column: 55, scope: !5327)
!5331 = !DILocation(line: 215, column: 30, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5327, file: !5052, line: 215, column: 6)
!5333 = !DILocation(line: 215, column: 7, scope: !5332)
!5334 = !DILocation(line: 215, column: 6, scope: !5327)
!5335 = !DILocation(line: 216, column: 3, scope: !5332)
!5336 = !DILocation(line: 218, column: 13, scope: !5327)
!5337 = !DILocation(line: 218, column: 20, scope: !5327)
!5338 = !DILocation(line: 218, column: 26, scope: !5327)
!5339 = !DILocation(line: 218, column: 33, scope: !5327)
!5340 = !DILocation(line: 218, column: 2, scope: !5327)
!5341 = !DILocation(line: 219, column: 1, scope: !5327)
!5342 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5052, file: !5052, line: 134, type: !5343, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5345)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!698, !206}
!5345 = !{!5346}
!5346 = !DILocalVariable(name: "entry", arg: 1, scope: !5342, file: !5052, line: 134, type: !206)
!5347 = !DILocation(line: 134, column: 61, scope: !5342)
!5348 = !DILocation(line: 136, column: 2, scope: !5342)
!5349 = distinct !DISubprogram(name: "__list_del", scope: !5052, file: !5052, line: 193, type: !5053, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5350)
!5350 = !{!5351, !5352}
!5351 = !DILocalVariable(name: "prev", arg: 1, scope: !5349, file: !5052, line: 193, type: !206)
!5352 = !DILocalVariable(name: "next", arg: 2, scope: !5349, file: !5052, line: 193, type: !206)
!5353 = !DILocation(line: 193, column: 50, scope: !5349)
!5354 = !DILocation(line: 193, column: 75, scope: !5349)
!5355 = !DILocation(line: 195, column: 15, scope: !5349)
!5356 = !DILocation(line: 195, column: 2, scope: !5349)
!5357 = !DILocation(line: 195, column: 8, scope: !5349)
!5358 = !DILocation(line: 195, column: 13, scope: !5349)
!5359 = !DILocation(line: 196, column: 2, scope: !5349)
!5360 = !DILocation(line: 196, column: 2, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5349, file: !5052, line: 196, column: 2)
!5362 = !DILocation(line: 196, column: 2, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5361, file: !5052, line: 196, column: 2)
!5364 = !DILocation(line: 196, column: 2, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5361, file: !5052, line: 196, column: 2)
!5366 = !DILocation(line: 197, column: 1, scope: !5349)
!5367 = distinct !DISubprogram(name: "esre_attr_show", scope: !2, file: !2, line: 92, type: !313, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5368)
!5368 = !{!5369, !5370, !5371, !5372, !5373}
!5369 = !DILocalVariable(name: "kobj", arg: 1, scope: !5367, file: !2, line: 92, type: !209)
!5370 = !DILocalVariable(name: "_attr", arg: 2, scope: !5367, file: !2, line: 93, type: !320)
!5371 = !DILocalVariable(name: "buf", arg: 3, scope: !5367, file: !2, line: 93, type: !283)
!5372 = !DILocalVariable(name: "entry", scope: !5367, file: !2, line: 95, type: !165)
!5373 = !DILocalVariable(name: "attr", scope: !5367, file: !2, line: 96, type: !4169)
!5374 = !DILocation(line: 92, column: 47, scope: !5367)
!5375 = !DILocation(line: 93, column: 28, scope: !5367)
!5376 = !DILocation(line: 93, column: 41, scope: !5367)
!5377 = !DILocation(line: 95, column: 2, scope: !5367)
!5378 = !DILocation(line: 95, column: 21, scope: !5367)
!5379 = !DILocation(line: 95, column: 38, scope: !5367)
!5380 = !DILocation(line: 95, column: 29, scope: !5367)
!5381 = !DILocation(line: 96, column: 2, scope: !5367)
!5382 = !DILocation(line: 96, column: 25, scope: !5367)
!5383 = !DILocation(line: 96, column: 40, scope: !5367)
!5384 = !DILocation(line: 96, column: 32, scope: !5367)
!5385 = !DILocation(line: 98, column: 9, scope: !5367)
!5386 = !DILocation(line: 98, column: 15, scope: !5367)
!5387 = !DILocation(line: 98, column: 20, scope: !5367)
!5388 = !DILocation(line: 98, column: 27, scope: !5367)
!5389 = !DILocation(line: 99, column: 1, scope: !5367)
!5390 = !DILocation(line: 98, column: 2, scope: !5367)
!5391 = distinct !DISubprogram(name: "to_attr", scope: !2, file: !2, line: 87, type: !5392, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5394)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!4169, !320}
!5394 = !{!5395, !5396}
!5395 = !DILocalVariable(name: "attr", arg: 1, scope: !5391, file: !2, line: 87, type: !320)
!5396 = !DILocalVariable(name: "__mptr", scope: !5397, file: !2, line: 89, type: !152)
!5397 = distinct !DILexicalBlock(scope: !5391, file: !2, line: 89, column: 9)
!5398 = !DILocation(line: 87, column: 57, scope: !5391)
!5399 = !DILocation(line: 89, column: 9, scope: !5397)
!5400 = !DILocation(line: 89, column: 9, scope: !5391)
!5401 = !DILocation(line: 89, column: 2, scope: !5391)
!5402 = distinct !DISubprogram(name: "fw_class_show", scope: !2, file: !2, line: 106, type: !4175, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5403)
!5403 = !{!5404, !5405, !5406}
!5404 = !DILocalVariable(name: "entry", arg: 1, scope: !5402, file: !2, line: 106, type: !165)
!5405 = !DILocalVariable(name: "buf", arg: 2, scope: !5402, file: !2, line: 106, type: !283)
!5406 = !DILocalVariable(name: "str", scope: !5402, file: !2, line: 108, type: !283)
!5407 = !DILocation(line: 106, column: 49, scope: !5402)
!5408 = !DILocation(line: 106, column: 62, scope: !5402)
!5409 = !DILocation(line: 108, column: 2, scope: !5402)
!5410 = !DILocation(line: 108, column: 8, scope: !5402)
!5411 = !DILocation(line: 108, column: 14, scope: !5402)
!5412 = !DILocation(line: 110, column: 19, scope: !5402)
!5413 = !DILocation(line: 110, column: 26, scope: !5402)
!5414 = !DILocation(line: 110, column: 31, scope: !5402)
!5415 = !DILocation(line: 110, column: 38, scope: !5402)
!5416 = !DILocation(line: 110, column: 48, scope: !5402)
!5417 = !DILocation(line: 110, column: 2, scope: !5402)
!5418 = !DILocation(line: 111, column: 16, scope: !5402)
!5419 = !DILocation(line: 111, column: 9, scope: !5402)
!5420 = !DILocation(line: 111, column: 6, scope: !5402)
!5421 = !DILocation(line: 112, column: 17, scope: !5402)
!5422 = !DILocation(line: 112, column: 9, scope: !5402)
!5423 = !DILocation(line: 112, column: 6, scope: !5402)
!5424 = !DILocation(line: 114, column: 9, scope: !5402)
!5425 = !DILocation(line: 114, column: 15, scope: !5402)
!5426 = !DILocation(line: 114, column: 13, scope: !5402)
!5427 = !DILocation(line: 115, column: 1, scope: !5402)
!5428 = !DILocation(line: 114, column: 2, scope: !5402)
!5429 = distinct !DISubprogram(name: "efi_guid_to_str", scope: !177, file: !177, line: 705, type: !5430, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5433)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!283, !5432, !283}
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!5433 = !{!5434, !5435}
!5434 = !DILocalVariable(name: "guid", arg: 1, scope: !5429, file: !177, line: 705, type: !5432)
!5435 = !DILocalVariable(name: "out", arg: 2, scope: !5429, file: !177, line: 705, type: !283)
!5436 = !DILocation(line: 705, column: 29, scope: !5429)
!5437 = !DILocation(line: 705, column: 41, scope: !5429)
!5438 = !DILocation(line: 707, column: 10, scope: !5429)
!5439 = !DILocation(line: 707, column: 23, scope: !5429)
!5440 = !DILocation(line: 707, column: 29, scope: !5429)
!5441 = !DILocation(line: 707, column: 2, scope: !5429)
!5442 = !DILocation(line: 708, column: 16, scope: !5429)
!5443 = !DILocation(line: 708, column: 9, scope: !5429)
!5444 = !DISubprogram(name: "strlen", scope: !5445, file: !5445, line: 128, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5445 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!156, !200}
!5448 = distinct !DISubprogram(name: "fw_type_show", scope: !2, file: !2, line: 128, type: !4175, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5449)
!5449 = !{!5450, !5451}
!5450 = !DILocalVariable(name: "entry", arg: 1, scope: !5448, file: !2, line: 128, type: !165)
!5451 = !DILocalVariable(name: "buf", arg: 2, scope: !5448, file: !2, line: 128, type: !283)
!5452 = !DILocation(line: 128, column: 1, scope: !5448)
!5453 = distinct !DISubprogram(name: "fw_version_show", scope: !2, file: !2, line: 129, type: !4175, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5454)
!5454 = !{!5455, !5456}
!5455 = !DILocalVariable(name: "entry", arg: 1, scope: !5453, file: !2, line: 129, type: !165)
!5456 = !DILocalVariable(name: "buf", arg: 2, scope: !5453, file: !2, line: 129, type: !283)
!5457 = !DILocation(line: 129, column: 1, scope: !5453)
!5458 = distinct !DISubprogram(name: "lowest_supported_fw_version_show", scope: !2, file: !2, line: 130, type: !4175, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5459)
!5459 = !{!5460, !5461}
!5460 = !DILocalVariable(name: "entry", arg: 1, scope: !5458, file: !2, line: 130, type: !165)
!5461 = !DILocalVariable(name: "buf", arg: 2, scope: !5458, file: !2, line: 130, type: !283)
!5462 = !DILocation(line: 130, column: 1, scope: !5458)
!5463 = distinct !DISubprogram(name: "capsule_flags_show", scope: !2, file: !2, line: 131, type: !4175, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5464)
!5464 = !{!5465, !5466}
!5465 = !DILocalVariable(name: "entry", arg: 1, scope: !5463, file: !2, line: 131, type: !165)
!5466 = !DILocalVariable(name: "buf", arg: 2, scope: !5463, file: !2, line: 131, type: !283)
!5467 = !DILocation(line: 131, column: 1, scope: !5463)
!5468 = distinct !DISubprogram(name: "last_attempt_version_show", scope: !2, file: !2, line: 132, type: !4175, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5469)
!5469 = !{!5470, !5471}
!5470 = !DILocalVariable(name: "entry", arg: 1, scope: !5468, file: !2, line: 132, type: !165)
!5471 = !DILocalVariable(name: "buf", arg: 2, scope: !5468, file: !2, line: 132, type: !283)
!5472 = !DILocation(line: 132, column: 1, scope: !5468)
!5473 = distinct !DISubprogram(name: "last_attempt_status_show", scope: !2, file: !2, line: 133, type: !4175, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5474)
!5474 = !{!5475, !5476}
!5475 = !DILocalVariable(name: "entry", arg: 1, scope: !5473, file: !2, line: 133, type: !165)
!5476 = !DILocalVariable(name: "buf", arg: 2, scope: !5473, file: !2, line: 133, type: !283)
!5477 = !DILocation(line: 133, column: 1, scope: !5473)
!5478 = distinct !DISubprogram(name: "__list_add", scope: !5052, file: !5052, line: 146, type: !5479, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5481)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{null, !206, !206, !206}
!5481 = !{!5482, !5483, !5484}
!5482 = !DILocalVariable(name: "new", arg: 1, scope: !5478, file: !5052, line: 146, type: !206)
!5483 = !DILocalVariable(name: "prev", arg: 2, scope: !5478, file: !5052, line: 147, type: !206)
!5484 = !DILocalVariable(name: "next", arg: 3, scope: !5478, file: !5052, line: 148, type: !206)
!5485 = !DILocation(line: 146, column: 49, scope: !5478)
!5486 = !DILocation(line: 147, column: 28, scope: !5478)
!5487 = !DILocation(line: 148, column: 28, scope: !5478)
!5488 = !DILocation(line: 150, column: 24, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5478, file: !5052, line: 150, column: 6)
!5490 = !DILocation(line: 150, column: 29, scope: !5489)
!5491 = !DILocation(line: 150, column: 35, scope: !5489)
!5492 = !DILocation(line: 150, column: 7, scope: !5489)
!5493 = !DILocation(line: 150, column: 6, scope: !5478)
!5494 = !DILocation(line: 151, column: 3, scope: !5489)
!5495 = !DILocation(line: 153, column: 15, scope: !5478)
!5496 = !DILocation(line: 153, column: 2, scope: !5478)
!5497 = !DILocation(line: 153, column: 8, scope: !5478)
!5498 = !DILocation(line: 153, column: 13, scope: !5478)
!5499 = !DILocation(line: 154, column: 14, scope: !5478)
!5500 = !DILocation(line: 154, column: 2, scope: !5478)
!5501 = !DILocation(line: 154, column: 7, scope: !5478)
!5502 = !DILocation(line: 154, column: 12, scope: !5478)
!5503 = !DILocation(line: 155, column: 14, scope: !5478)
!5504 = !DILocation(line: 155, column: 2, scope: !5478)
!5505 = !DILocation(line: 155, column: 7, scope: !5478)
!5506 = !DILocation(line: 155, column: 12, scope: !5478)
!5507 = !DILocation(line: 156, column: 2, scope: !5478)
!5508 = !DILocation(line: 156, column: 2, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5478, file: !5052, line: 156, column: 2)
!5510 = !DILocation(line: 156, column: 2, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5509, file: !5052, line: 156, column: 2)
!5512 = !DILocation(line: 156, column: 2, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5509, file: !5052, line: 156, column: 2)
!5514 = !DILocation(line: 157, column: 1, scope: !5478)
!5515 = distinct !DISubprogram(name: "__list_add_valid", scope: !5052, file: !5052, line: 128, type: !5516, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5518)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!698, !206, !206, !206}
!5518 = !{!5519, !5520, !5521}
!5519 = !DILocalVariable(name: "new", arg: 1, scope: !5515, file: !5052, line: 128, type: !206)
!5520 = !DILocalVariable(name: "prev", arg: 2, scope: !5515, file: !5052, line: 129, type: !206)
!5521 = !DILocalVariable(name: "next", arg: 3, scope: !5515, file: !5052, line: 130, type: !206)
!5522 = !DILocation(line: 128, column: 55, scope: !5515)
!5523 = !DILocation(line: 129, column: 23, scope: !5515)
!5524 = !DILocation(line: 130, column: 23, scope: !5515)
!5525 = !DILocation(line: 132, column: 2, scope: !5515)
