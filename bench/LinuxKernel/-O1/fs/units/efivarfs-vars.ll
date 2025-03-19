; ModuleID = 'fs/efivarfs/vars.c'
source_filename = "fs/efivarfs/vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable_validate = type { %struct.guid_t, ptr, ptr }
%struct.guid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.efivar_entry = type { %struct.efi_variable, %struct.list_head, %struct.kobject }
%struct.efi_variable = type <{ [512 x i16], %struct.guid_t, i64, [1024 x i8], i64, i32 }>
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.efi_generic_dev_path = type { i8, i8, i16 }

@__UNIQUE_ID_import_ns253 = internal constant [17 x i8] c"import_ns=EFIVAR\00", section ".modinfo", align 1, !dbg !0
@variable_validate = internal constant [17 x %struct.variable_validate] [%struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.4, ptr @validate_uint16 }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.5, ptr @validate_boot_order }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.6, ptr @validate_load_option }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.7, ptr @validate_boot_order }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.8, ptr @validate_load_option }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.9, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.10, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.11, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.12, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.13, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.14, ptr @validate_device_path }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.15, ptr @validate_ascii_string }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.16, ptr null }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.17, ptr @validate_ascii_string }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"a\DF\E4\8B\CA\93\D2\11\AA\0D\00\E0\98\03+\8C" }, ptr @.str.18, ptr @validate_uint16 }, %struct.variable_validate { %struct.guid_t { [16 x i8] c"y\FC\C8\CF.\BE\DCM\97\F0\9F\98\BF\E2\98\A0" }, ptr @.str.19, ptr null }, %struct.variable_validate { %struct.guid_t zeroinitializer, ptr @.str.20, ptr null }], align 16, !dbg !4195
@.str = private unnamed_addr constant [38 x i8] c"\013efivars: Memory allocation failed.\0A\00", align 1, !dbg !4122
@.str.1 = private unnamed_addr constant [59 x i8] c"\014efivars: Variable name size exceeds maximum (%lu > 512)\0A\00", align 1, !dbg !4127
@.str.2 = private unnamed_addr constant [42 x i8] c"\014efivars: get_next_variable: status=%lx\0A\00", align 1, !dbg !4132
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4137
@.str.4 = private unnamed_addr constant [9 x i8] c"BootNext\00", align 1, !dbg !4142
@.str.5 = private unnamed_addr constant [10 x i8] c"BootOrder\00", align 1, !dbg !4147
@.str.6 = private unnamed_addr constant [6 x i8] c"Boot*\00", align 1, !dbg !4152
@.str.7 = private unnamed_addr constant [12 x i8] c"DriverOrder\00", align 1, !dbg !4154
@.str.8 = private unnamed_addr constant [8 x i8] c"Driver*\00", align 1, !dbg !4157
@.str.9 = private unnamed_addr constant [6 x i8] c"ConIn\00", align 1, !dbg !4159
@.str.10 = private unnamed_addr constant [9 x i8] c"ConInDev\00", align 1, !dbg !4161
@.str.11 = private unnamed_addr constant [7 x i8] c"ConOut\00", align 1, !dbg !4163
@.str.12 = private unnamed_addr constant [10 x i8] c"ConOutDev\00", align 1, !dbg !4166
@.str.13 = private unnamed_addr constant [7 x i8] c"ErrOut\00", align 1, !dbg !4168
@.str.14 = private unnamed_addr constant [10 x i8] c"ErrOutDev\00", align 1, !dbg !4170
@.str.15 = private unnamed_addr constant [5 x i8] c"Lang\00", align 1, !dbg !4172
@.str.16 = private unnamed_addr constant [14 x i8] c"OsIndications\00", align 1, !dbg !4177
@.str.17 = private unnamed_addr constant [13 x i8] c"PlatformLang\00", align 1, !dbg !4182
@.str.18 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1, !dbg !4187
@.str.19 = private unnamed_addr constant [2 x i8] c"*\00", align 1, !dbg !4189
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !4192
@.str.21 = private unnamed_addr constant [40 x i8] c"\014efivars: duplicate variable: %s-%pUl\0A\00", align 1, !dbg !4210
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_import_ns253], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @efivar_validate(i64 %vendor.coerce0, i64 %vendor.coerce1, ptr noundef %var_name, ptr noundef %data, i64 noundef %data_size) #0 align 16 !dbg !4225 {
entry:
  %retval = alloca i1, align 1
  %vendor = alloca %struct.guid_t, align 4
  %var_name.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_size.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %utf8_size = alloca i64, align 8
  %utf8_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %name6 = alloca ptr, align 8
  %match = alloca i32, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 0
  store i64 %vendor.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 1
  store i64 %vendor.coerce1, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !4229, metadata !DIExpression()), !dbg !4241
  store ptr %var_name, ptr %var_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var_name.addr, metadata !4230, metadata !DIExpression()), !dbg !4242
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4231, metadata !DIExpression()), !dbg !4243
  store i64 %data_size, ptr %data_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_size.addr, metadata !4232, metadata !DIExpression()), !dbg !4244
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !4245
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4233, metadata !DIExpression()), !dbg !4246
  call void @llvm.lifetime.start.p0(i64 8, ptr %utf8_size) #14, !dbg !4247
  call void @llvm.dbg.declare(metadata ptr %utf8_size, metadata !4234, metadata !DIExpression()), !dbg !4248
  call void @llvm.lifetime.start.p0(i64 8, ptr %utf8_name) #14, !dbg !4249
  call void @llvm.dbg.declare(metadata ptr %utf8_name, metadata !4235, metadata !DIExpression()), !dbg !4250
  %2 = load ptr, ptr %var_name.addr, align 8, !dbg !4251
  %call = call i64 @ucs2_utf8size(ptr noundef %2) #15, !dbg !4252
  store i64 %call, ptr %utf8_size, align 8, !dbg !4253
  %3 = load i64, ptr %utf8_size, align 8, !dbg !4254
  %add = add i64 %3, 1, !dbg !4255
  %call1 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3264) #16, !dbg !4256
  store ptr %call1, ptr %utf8_name, align 8, !dbg !4257
  %4 = load ptr, ptr %utf8_name, align 8, !dbg !4258
  %tobool = icmp ne ptr %4, null, !dbg !4258
  br i1 %tobool, label %if.end, label %if.then, !dbg !4260

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4261

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %utf8_name, align 8, !dbg !4262
  %6 = load ptr, ptr %var_name.addr, align 8, !dbg !4263
  %7 = load i64, ptr %utf8_size, align 8, !dbg !4264
  %call2 = call i64 @ucs2_as_utf8(ptr noundef %5, ptr noundef %6, i64 noundef %7) #15, !dbg !4265
  %8 = load ptr, ptr %utf8_name, align 8, !dbg !4266
  %9 = load i64, ptr %utf8_size, align 8, !dbg !4267
  %arrayidx = getelementptr i8, ptr %8, i64 %9, !dbg !4266
  store i8 0, ptr %arrayidx, align 1, !dbg !4268
  store i32 0, ptr %i, align 4, !dbg !4269
  br label %for.cond, !dbg !4270

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !4271
  %idxprom = sext i32 %10 to i64, !dbg !4272
  %arrayidx3 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i64 0, i64 %idxprom, !dbg !4272
  %name = getelementptr inbounds %struct.variable_validate, ptr %arrayidx3, i32 0, i32 1, !dbg !4273
  %11 = load ptr, ptr %name, align 16, !dbg !4273
  %arrayidx4 = getelementptr i8, ptr %11, i64 0, !dbg !4272
  %12 = load i8, ptr %arrayidx4, align 1, !dbg !4272
  %conv = zext i8 %12 to i32, !dbg !4272
  %cmp = icmp ne i32 %conv, 0, !dbg !4274
  br i1 %cmp, label %for.body, label %for.end, !dbg !4275

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %name6) #14, !dbg !4276
  call void @llvm.dbg.declare(metadata ptr %name6, metadata !4236, metadata !DIExpression()), !dbg !4277
  %13 = load i32, ptr %i, align 4, !dbg !4278
  %idxprom7 = sext i32 %13 to i64, !dbg !4279
  %arrayidx8 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i64 0, i64 %idxprom7, !dbg !4279
  %name9 = getelementptr inbounds %struct.variable_validate, ptr %arrayidx8, i32 0, i32 1, !dbg !4280
  %14 = load ptr, ptr %name9, align 16, !dbg !4280
  store ptr %14, ptr %name6, align 8, !dbg !4277
  call void @llvm.lifetime.start.p0(i64 4, ptr %match) #14, !dbg !4281
  call void @llvm.dbg.declare(metadata ptr %match, metadata !4240, metadata !DIExpression()), !dbg !4282
  store i32 0, ptr %match, align 4, !dbg !4282
  %15 = load i32, ptr %i, align 4, !dbg !4283
  %idxprom10 = sext i32 %15 to i64, !dbg !4285
  %arrayidx11 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i64 0, i64 %idxprom10, !dbg !4285
  %vendor12 = getelementptr inbounds %struct.variable_validate, ptr %arrayidx11, i32 0, i32 0, !dbg !4286
  %16 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 0, !dbg !4287
  %17 = load i64, ptr %16, align 4, !dbg !4287
  %18 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 1, !dbg !4287
  %19 = load i64, ptr %18, align 4, !dbg !4287
  %20 = getelementptr inbounds { i64, i64 }, ptr %vendor12, i32 0, i32 0, !dbg !4287
  %21 = load i64, ptr %20, align 16, !dbg !4287
  %22 = getelementptr inbounds { i64, i64 }, ptr %vendor12, i32 0, i32 1, !dbg !4287
  %23 = load i64, ptr %22, align 8, !dbg !4287
  %call13 = call i32 @efi_guidcmp(i64 %17, i64 %19, i64 %21, i64 %23) #15, !dbg !4287
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4287
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4288

if.then15:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4289

if.end16:                                         ; preds = %for.body
  %24 = load ptr, ptr %utf8_name, align 8, !dbg !4290
  %25 = load i64, ptr %utf8_size, align 8, !dbg !4292
  %add17 = add i64 %25, 1, !dbg !4293
  %26 = load ptr, ptr %name6, align 8, !dbg !4294
  %call18 = call zeroext i1 @variable_matches(ptr noundef %24, i64 noundef %add17, ptr noundef %26, ptr noundef %match) #15, !dbg !4295
  br i1 %call18, label %if.then19, label %if.end30, !dbg !4296

if.then19:                                        ; preds = %if.end16
  %27 = load i32, ptr %i, align 4, !dbg !4297
  %idxprom20 = sext i32 %27 to i64, !dbg !4300
  %arrayidx21 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i64 0, i64 %idxprom20, !dbg !4300
  %validate = getelementptr inbounds %struct.variable_validate, ptr %arrayidx21, i32 0, i32 2, !dbg !4301
  %28 = load ptr, ptr %validate, align 8, !dbg !4301
  %cmp22 = icmp eq ptr %28, null, !dbg !4302
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !4303

if.then24:                                        ; preds = %if.then19
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4304

if.end25:                                         ; preds = %if.then19
  %29 = load ptr, ptr %utf8_name, align 8, !dbg !4305
  call void @kfree(ptr noundef %29) #15, !dbg !4306
  %30 = load i32, ptr %i, align 4, !dbg !4307
  %idxprom26 = sext i32 %30 to i64, !dbg !4308
  %arrayidx27 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i64 0, i64 %idxprom26, !dbg !4308
  %validate28 = getelementptr inbounds %struct.variable_validate, ptr %arrayidx27, i32 0, i32 2, !dbg !4309
  %31 = load ptr, ptr %validate28, align 8, !dbg !4309
  %32 = load ptr, ptr %var_name.addr, align 8, !dbg !4310
  %33 = load i32, ptr %match, align 4, !dbg !4311
  %34 = load ptr, ptr %data.addr, align 8, !dbg !4312
  %35 = load i64, ptr %data_size.addr, align 8, !dbg !4313
  %call29 = call zeroext i1 %31(ptr noundef %32, i32 noundef %33, ptr noundef %34, i64 noundef %35) #15, !dbg !4308
  store i1 %call29, ptr %retval, align 1, !dbg !4314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4314

if.end30:                                         ; preds = %if.end16
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4315
  br label %cleanup, !dbg !4315

cleanup:                                          ; preds = %if.end30, %if.end25, %if.then24, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %match) #14, !dbg !4315
  call void @llvm.lifetime.end.p0(i64 8, ptr %name6) #14, !dbg !4315
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4316

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %36 = load i32, ptr %i, align 4, !dbg !4317
  %inc = add i32 %36, 1, !dbg !4317
  store i32 %inc, ptr %i, align 4, !dbg !4317
  br label %for.cond, !dbg !4318, !llvm.loop !4319

for.end:                                          ; preds = %cleanup, %for.cond
  %37 = load ptr, ptr %utf8_name, align 8, !dbg !4323
  call void @kfree(ptr noundef %37) #15, !dbg !4324
  store i1 true, ptr %retval, align 1, !dbg !4325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !4325

cleanup32:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %utf8_name) #14, !dbg !4326
  call void @llvm.lifetime.end.p0(i64 8, ptr %utf8_size) #14, !dbg !4326
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !4326
  %38 = load i1, ptr %retval, align 1, !dbg !4326
  ret i1 %38, !dbg !4326
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4327 dso_local i64 @ucs2_utf8size(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !4334 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4338, metadata !DIExpression()), !dbg !4343
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4339, metadata !DIExpression()), !dbg !4344
  %0 = load i64, ptr %size.addr, align 8, !dbg !4345
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4346
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4347

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4348
  %tobool = icmp ne i64 %2, 0, !dbg !4348
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4349

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !4350
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4340, metadata !DIExpression()), !dbg !4351
  %3 = load i64, ptr %size.addr, align 8, !dbg !4352
  %cmp = icmp ugt i64 %3, 8192, !dbg !4354
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4355

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4356
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4357
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4358
  store ptr %call, ptr %retval, align 8, !dbg !4359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4359

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4360
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !4360
  store i32 %call2, ptr %index, align 4, !dbg !4361
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4362
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4363
  %9 = ptrtoint ptr %8 to i64, !dbg !4363
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !4364
  %idxprom = zext i32 %call3 to i64, !dbg !4365
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4365
  %10 = load i32, ptr %index, align 4, !dbg !4366
  %idxprom4 = zext i32 %10 to i64, !dbg !4365
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4365
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4365
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4367
  %13 = load i64, ptr %size.addr, align 8, !dbg !4368
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !4369
  store ptr %call6, ptr %retval, align 8, !dbg !4370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4370

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !4371
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4372
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4373
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4374
  store ptr %call8, ptr %retval, align 8, !dbg !4375
  br label %return, !dbg !4375

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4376
  ret ptr %16, !dbg !4376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4377 dso_local i64 @ucs2_as_utf8(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efi_guidcmp(i64 %left.coerce0, i64 %left.coerce1, i64 %right.coerce0, i64 %right.coerce1) #5 align 16 !dbg !4380 {
entry:
  %left = alloca %struct.guid_t, align 4
  %right = alloca %struct.guid_t, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %left, i32 0, i32 0
  store i64 %left.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %left, i32 0, i32 1
  store i64 %left.coerce1, ptr %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, ptr %right, i32 0, i32 0
  store i64 %right.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds { i64, i64 }, ptr %right, i32 0, i32 1
  store i64 %right.coerce1, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !4384, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.declare(metadata ptr %right, metadata !4385, metadata !DIExpression()), !dbg !4387
  %call = call i32 @memcmp(ptr noundef %left, ptr noundef %right, i64 noundef 16) #15, !dbg !4388
  ret i32 %call, !dbg !4389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_matches(ptr noundef %var_name, i64 noundef %len, ptr noundef %match_name, ptr noundef %match) #0 align 16 !dbg !4390 {
entry:
  %retval = alloca i1, align 1
  %var_name.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %match_name.addr = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %var_name, ptr %var_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var_name.addr, metadata !4394, metadata !DIExpression()), !dbg !4402
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4395, metadata !DIExpression()), !dbg !4403
  store ptr %match_name, ptr %match_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match_name.addr, metadata !4396, metadata !DIExpression()), !dbg !4404
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !4397, metadata !DIExpression()), !dbg !4405
  %0 = load ptr, ptr %match.addr, align 8, !dbg !4406
  store i32 0, ptr %0, align 4, !dbg !4407
  br label %for.cond, !dbg !4408

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !4409
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4398, metadata !DIExpression()), !dbg !4410
  %1 = load ptr, ptr %match_name.addr, align 8, !dbg !4411
  %2 = load ptr, ptr %match.addr, align 8, !dbg !4412
  %3 = load i32, ptr %2, align 4, !dbg !4413
  %idxprom = sext i32 %3 to i64, !dbg !4411
  %arrayidx = getelementptr i8, ptr %1, i64 %idxprom, !dbg !4411
  %4 = load i8, ptr %arrayidx, align 1, !dbg !4411
  store i8 %4, ptr %c, align 1, !dbg !4410
  %5 = load i8, ptr %c, align 1, !dbg !4414
  %conv = zext i8 %5 to i32, !dbg !4414
  switch i32 %conv, label %sw.default [
    i32 42, label %sw.bb
    i32 0, label %sw.bb1
  ], !dbg !4415

sw.bb:                                            ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !4416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4416

sw.bb1:                                           ; preds = %for.cond
  %6 = load ptr, ptr %match.addr, align 8, !dbg !4418
  %7 = load i32, ptr %6, align 4, !dbg !4419
  %conv2 = sext i32 %7 to i64, !dbg !4419
  %8 = load i64, ptr %len.addr, align 8, !dbg !4420
  %cmp = icmp eq i64 %conv2, %8, !dbg !4421
  store i1 %cmp, ptr %retval, align 1, !dbg !4422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4422

sw.default:                                       ; preds = %for.cond
  %9 = load ptr, ptr %match.addr, align 8, !dbg !4423
  %10 = load i32, ptr %9, align 4, !dbg !4425
  %conv4 = sext i32 %10 to i64, !dbg !4425
  %11 = load i64, ptr %len.addr, align 8, !dbg !4426
  %cmp5 = icmp ult i64 %conv4, %11, !dbg !4427
  br i1 %cmp5, label %land.lhs.true, label %if.end, !dbg !4428

land.lhs.true:                                    ; preds = %sw.default
  %12 = load i8, ptr %c, align 1, !dbg !4429
  %conv7 = zext i8 %12 to i32, !dbg !4429
  %13 = load ptr, ptr %var_name.addr, align 8, !dbg !4430
  %14 = load ptr, ptr %match.addr, align 8, !dbg !4431
  %15 = load i32, ptr %14, align 4, !dbg !4432
  %idxprom8 = sext i32 %15 to i64, !dbg !4430
  %arrayidx9 = getelementptr i8, ptr %13, i64 %idxprom8, !dbg !4430
  %16 = load i8, ptr %arrayidx9, align 1, !dbg !4430
  %conv10 = zext i8 %16 to i32, !dbg !4430
  %cmp11 = icmp eq i32 %conv7, %conv10, !dbg !4433
  br i1 %cmp11, label %if.then, label %if.end, !dbg !4434

if.then:                                          ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4435

if.end:                                           ; preds = %land.lhs.true, %sw.default
  store i1 false, ptr %retval, align 1, !dbg !4436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4436

cleanup:                                          ; preds = %if.end, %if.then, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !4437
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 1, label %return
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %17 = load ptr, ptr %match.addr, align 8, !dbg !4438
  %18 = load i32, ptr %17, align 4, !dbg !4439
  %inc = add i32 %18, 1, !dbg !4439
  store i32 %inc, ptr %17, align 4, !dbg !4439
  br label %for.cond, !dbg !4440, !llvm.loop !4441

return:                                           ; preds = %cleanup
  %19 = load i1, ptr %retval, align 1, !dbg !4444
  ret i1 %19, !dbg !4444

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4445 dso_local void @kfree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @efivar_variable_is_removable(i64 %vendor.coerce0, i64 %vendor.coerce1, ptr noundef %var_name, i64 noundef %len) #0 align 16 !dbg !4448 {
entry:
  %vendor = alloca %struct.guid_t, align 4
  %var_name.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %found = alloca i8, align 1
  %match = alloca i32, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 0
  store i64 %vendor.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 1
  store i64 %vendor.coerce1, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !4452, metadata !DIExpression()), !dbg !4458
  store ptr %var_name, ptr %var_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var_name.addr, metadata !4453, metadata !DIExpression()), !dbg !4459
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4454, metadata !DIExpression()), !dbg !4460
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !4461
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4455, metadata !DIExpression()), !dbg !4462
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #14, !dbg !4463
  call void @llvm.dbg.declare(metadata ptr %found, metadata !4456, metadata !DIExpression()), !dbg !4464
  store i8 0, ptr %found, align 1, !dbg !4464
  call void @llvm.lifetime.start.p0(i64 4, ptr %match) #14, !dbg !4465
  call void @llvm.dbg.declare(metadata ptr %match, metadata !4457, metadata !DIExpression()), !dbg !4466
  store i32 0, ptr %match, align 4, !dbg !4466
  store i32 0, ptr %i, align 4, !dbg !4467
  br label %for.cond, !dbg !4469

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !4470
  %idxprom = sext i32 %2 to i64, !dbg !4472
  %arrayidx = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i64 0, i64 %idxprom, !dbg !4472
  %name = getelementptr inbounds %struct.variable_validate, ptr %arrayidx, i32 0, i32 1, !dbg !4473
  %3 = load ptr, ptr %name, align 16, !dbg !4473
  %arrayidx1 = getelementptr i8, ptr %3, i64 0, !dbg !4472
  %4 = load i8, ptr %arrayidx1, align 1, !dbg !4472
  %conv = zext i8 %4 to i32, !dbg !4472
  %cmp = icmp ne i32 %conv, 0, !dbg !4474
  br i1 %cmp, label %for.body, label %for.end, !dbg !4475

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !dbg !4476
  %idxprom3 = sext i32 %5 to i64, !dbg !4479
  %arrayidx4 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i64 0, i64 %idxprom3, !dbg !4479
  %vendor5 = getelementptr inbounds %struct.variable_validate, ptr %arrayidx4, i32 0, i32 0, !dbg !4480
  %6 = getelementptr inbounds { i64, i64 }, ptr %vendor5, i32 0, i32 0, !dbg !4481
  %7 = load i64, ptr %6, align 16, !dbg !4481
  %8 = getelementptr inbounds { i64, i64 }, ptr %vendor5, i32 0, i32 1, !dbg !4481
  %9 = load i64, ptr %8, align 8, !dbg !4481
  %10 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 0, !dbg !4481
  %11 = load i64, ptr %10, align 4, !dbg !4481
  %12 = getelementptr inbounds { i64, i64 }, ptr %vendor, i32 0, i32 1, !dbg !4481
  %13 = load i64, ptr %12, align 4, !dbg !4481
  %call = call i32 @efi_guidcmp(i64 %7, i64 %9, i64 %11, i64 %13) #15, !dbg !4481
  %tobool = icmp ne i32 %call, 0, !dbg !4481
  br i1 %tobool, label %if.then, label %if.end, !dbg !4482

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4483

if.end:                                           ; preds = %for.body
  %14 = load ptr, ptr %var_name.addr, align 8, !dbg !4484
  %15 = load i64, ptr %len.addr, align 8, !dbg !4486
  %16 = load i32, ptr %i, align 4, !dbg !4487
  %idxprom6 = sext i32 %16 to i64, !dbg !4488
  %arrayidx7 = getelementptr [17 x %struct.variable_validate], ptr @variable_validate, i64 0, i64 %idxprom6, !dbg !4488
  %name8 = getelementptr inbounds %struct.variable_validate, ptr %arrayidx7, i32 0, i32 1, !dbg !4489
  %17 = load ptr, ptr %name8, align 16, !dbg !4489
  %call9 = call zeroext i1 @variable_matches(ptr noundef %14, i64 noundef %15, ptr noundef %17, ptr noundef %match) #15, !dbg !4490
  br i1 %call9, label %if.then10, label %if.end11, !dbg !4491

if.then10:                                        ; preds = %if.end
  store i8 1, ptr %found, align 1, !dbg !4492
  br label %for.end, !dbg !4494

if.end11:                                         ; preds = %if.end
  br label %for.inc, !dbg !4495

for.inc:                                          ; preds = %if.end11, %if.then
  %18 = load i32, ptr %i, align 4, !dbg !4496
  %inc = add i32 %18, 1, !dbg !4496
  store i32 %inc, ptr %i, align 4, !dbg !4496
  br label %for.cond, !dbg !4497, !llvm.loop !4498

for.end:                                          ; preds = %if.then10, %for.cond
  %19 = load i8, ptr %found, align 1, !dbg !4500, !range !4501, !noundef !860
  %tobool12 = trunc i8 %19 to i1, !dbg !4500
  call void @llvm.lifetime.end.p0(i64 4, ptr %match) #14, !dbg !4502
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #14, !dbg !4502
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !4502
  ret i1 %tobool12, !dbg !4503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efivar_init(ptr noundef %func, ptr noundef %data, i1 noundef zeroext %duplicates, ptr noundef %head) #0 align 16 !dbg !4504 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %duplicates.addr = alloca i8, align 1
  %head.addr = alloca ptr, align 8
  %variable_name_size = alloca i64, align 8
  %variable_name = alloca ptr, align 8
  %status = alloca i64, align 8
  %vendor_guid = alloca %struct.guid_t, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !4511, metadata !DIExpression()), !dbg !4521
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4512, metadata !DIExpression()), !dbg !4522
  %frombool = zext i1 %duplicates to i8
  store i8 %frombool, ptr %duplicates.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %duplicates.addr, metadata !4513, metadata !DIExpression()), !dbg !4523
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4514, metadata !DIExpression()), !dbg !4524
  call void @llvm.lifetime.start.p0(i64 8, ptr %variable_name_size) #14, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %variable_name_size, metadata !4515, metadata !DIExpression()), !dbg !4526
  store i64 512, ptr %variable_name_size, align 8, !dbg !4526
  call void @llvm.lifetime.start.p0(i64 8, ptr %variable_name) #14, !dbg !4527
  call void @llvm.dbg.declare(metadata ptr %variable_name, metadata !4516, metadata !DIExpression()), !dbg !4528
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !4529
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4517, metadata !DIExpression()), !dbg !4530
  call void @llvm.lifetime.start.p0(i64 16, ptr %vendor_guid) #14, !dbg !4531
  call void @llvm.dbg.declare(metadata ptr %vendor_guid, metadata !4518, metadata !DIExpression()), !dbg !4532
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !4533
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4519, metadata !DIExpression()), !dbg !4534
  store i32 0, ptr %err, align 4, !dbg !4534
  %0 = load i64, ptr %variable_name_size, align 8, !dbg !4535
  %call = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef 3264) #16, !dbg !4536
  store ptr %call, ptr %variable_name, align 8, !dbg !4537
  %1 = load ptr, ptr %variable_name, align 8, !dbg !4538
  %tobool = icmp ne ptr %1, null, !dbg !4538
  br i1 %tobool, label %if.end, label %if.then, !dbg !4540

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4541

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4544

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4544

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #18, !dbg !4541
  store i32 %call1, ptr %tmp, align 4, !dbg !4544
  %2 = load i32, ptr %tmp, align 4, !dbg !4541
  store i32 -12, ptr %retval, align 4, !dbg !4546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4546

if.end:                                           ; preds = %entry
  %call2 = call i32 @efivar_lock() #15, !dbg !4547
  store i32 %call2, ptr %err, align 4, !dbg !4548
  %3 = load i32, ptr %err, align 4, !dbg !4549
  %tobool3 = icmp ne i32 %3, 0, !dbg !4549
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4551

if.then4:                                         ; preds = %if.end
  br label %free, !dbg !4552

if.end5:                                          ; preds = %if.end
  br label %do.body6, !dbg !4553

do.body6:                                         ; preds = %do.cond29, %if.end5
  store i64 512, ptr %variable_name_size, align 8, !dbg !4554
  %4 = load ptr, ptr %variable_name, align 8, !dbg !4556
  %call7 = call i64 @efivar_get_next_variable(ptr noundef %variable_name_size, ptr noundef %4, ptr noundef %vendor_guid) #15, !dbg !4557
  store i64 %call7, ptr %status, align 8, !dbg !4558
  %5 = load i64, ptr %status, align 8, !dbg !4559
  switch i64 %5, label %sw.default [
    i64 0, label %sw.bb
    i64 -9223372036854775805, label %sw.bb17
    i64 -9223372036854775794, label %sw.epilog
    i64 -9223372036854775803, label %sw.bb18
  ], !dbg !4560

sw.bb:                                            ; preds = %do.body6
  %6 = load ptr, ptr %variable_name, align 8, !dbg !4561
  %7 = load i64, ptr %variable_name_size, align 8, !dbg !4563
  %call8 = call i64 @var_name_strnsize(ptr noundef %6, i64 noundef %7) #15, !dbg !4564
  store i64 %call8, ptr %variable_name_size, align 8, !dbg !4565
  %8 = load i8, ptr %duplicates.addr, align 1, !dbg !4566, !range !4501, !noundef !860
  %tobool9 = trunc i8 %8 to i1, !dbg !4566
  br i1 %tobool9, label %land.lhs.true, label %if.else, !dbg !4568

land.lhs.true:                                    ; preds = %sw.bb
  %9 = load ptr, ptr %variable_name, align 8, !dbg !4569
  %10 = load ptr, ptr %head.addr, align 8, !dbg !4570
  %call10 = call zeroext i1 @variable_is_present(ptr noundef %9, ptr noundef %vendor_guid, ptr noundef %10) #15, !dbg !4571
  br i1 %call10, label %if.then11, label %if.else, !dbg !4572

if.then11:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %variable_name, align 8, !dbg !4573
  %12 = load i64, ptr %variable_name_size, align 8, !dbg !4575
  call void @dup_variable_bug(ptr noundef %11, ptr noundef %vendor_guid, i64 noundef %12) #15, !dbg !4576
  store i64 -9223372036854775794, ptr %status, align 8, !dbg !4577
  br label %if.end16, !dbg !4578

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %13 = load ptr, ptr %func.addr, align 8, !dbg !4579
  %14 = load ptr, ptr %variable_name, align 8, !dbg !4581
  %15 = load i64, ptr %variable_name_size, align 8, !dbg !4582
  %16 = load ptr, ptr %data.addr, align 8, !dbg !4583
  %17 = getelementptr inbounds { i64, i64 }, ptr %vendor_guid, i32 0, i32 0, !dbg !4579
  %18 = load i64, ptr %17, align 4, !dbg !4579
  %19 = getelementptr inbounds { i64, i64 }, ptr %vendor_guid, i32 0, i32 1, !dbg !4579
  %20 = load i64, ptr %19, align 4, !dbg !4579
  %call12 = call i32 %13(ptr noundef %14, i64 %18, i64 %20, i64 noundef %15, ptr noundef %16) #15, !dbg !4579
  store i32 %call12, ptr %err, align 4, !dbg !4584
  %21 = load i32, ptr %err, align 4, !dbg !4585
  %tobool13 = icmp ne i32 %21, 0, !dbg !4585
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4587

if.then14:                                        ; preds = %if.else
  store i64 -9223372036854775794, ptr %status, align 8, !dbg !4588
  br label %if.end15, !dbg !4589

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then11
  br label %sw.epilog, !dbg !4590

sw.bb17:                                          ; preds = %do.body6
  store i32 -95, ptr %err, align 4, !dbg !4591
  store i64 -9223372036854775794, ptr %status, align 8, !dbg !4592
  br label %sw.epilog, !dbg !4593

sw.bb18:                                          ; preds = %do.body6
  br label %do.body19, !dbg !4594

do.body19:                                        ; preds = %sw.bb18
  br label %do.cond20, !dbg !4596

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !4596

do.end21:                                         ; preds = %do.cond20
  %22 = load i64, ptr %variable_name_size, align 8, !dbg !4594
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %22) #18, !dbg !4594
  store i32 %call23, ptr %tmp22, align 4, !dbg !4596
  %23 = load i32, ptr %tmp22, align 4, !dbg !4594
  store i64 -9223372036854775794, ptr %status, align 8, !dbg !4598
  br label %sw.epilog, !dbg !4599

sw.default:                                       ; preds = %do.body6
  br label %do.body24, !dbg !4600

do.body24:                                        ; preds = %sw.default
  br label %do.cond25, !dbg !4602

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4602

do.end26:                                         ; preds = %do.cond25
  %24 = load i64, ptr %status, align 8, !dbg !4600
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i64 noundef %24) #18, !dbg !4600
  store i32 %call28, ptr %tmp27, align 4, !dbg !4602
  %25 = load i32, ptr %tmp27, align 4, !dbg !4600
  store i64 -9223372036854775794, ptr %status, align 8, !dbg !4604
  br label %sw.epilog, !dbg !4605

sw.epilog:                                        ; preds = %do.end26, %do.end21, %do.body6, %sw.bb17, %if.end16
  br label %do.cond29, !dbg !4606

do.cond29:                                        ; preds = %sw.epilog
  %26 = load i64, ptr %status, align 8, !dbg !4607
  %cmp = icmp ne i64 %26, -9223372036854775794, !dbg !4608
  br i1 %cmp, label %do.body6, label %do.end30, !dbg !4606, !llvm.loop !4609

do.end30:                                         ; preds = %do.cond29
  call void @efivar_unlock() #15, !dbg !4611
  br label %free, !dbg !4611

free:                                             ; preds = %do.end30, %if.then4
  call void @llvm.dbg.label(metadata !4520), !dbg !4612
  %27 = load ptr, ptr %variable_name, align 8, !dbg !4613
  call void @kfree(ptr noundef %27) #15, !dbg !4614
  %28 = load i32, ptr %err, align 4, !dbg !4615
  store i32 %28, ptr %retval, align 4, !dbg !4616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4616

cleanup:                                          ; preds = %free, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !4617
  call void @llvm.lifetime.end.p0(i64 16, ptr %vendor_guid) #14, !dbg !4617
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !4617
  call void @llvm.lifetime.end.p0(i64 8, ptr %variable_name) #14, !dbg !4617
  call void @llvm.lifetime.end.p0(i64 8, ptr %variable_name_size) #14, !dbg !4617
  %29 = load i32, ptr %retval, align 4, !dbg !4617
  ret i32 %29, !dbg !4617
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4618 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4620, metadata !DIExpression()), !dbg !4622
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4621, metadata !DIExpression()), !dbg !4623
  %0 = load i64, ptr %size.addr, align 8, !dbg !4624
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4625
  %or = or i32 %1, 256, !dbg !4626
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4627
  ret ptr %call, !dbg !4628
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4629 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4633 dso_local i32 @efivar_lock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4634 dso_local i64 @efivar_get_next_variable(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @var_name_strnsize(ptr noundef %variable_name, i64 noundef %variable_name_size) #0 align 16 !dbg !4638 {
entry:
  %variable_name.addr = alloca ptr, align 8
  %variable_name_size.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %c = alloca i16, align 2
  %__UNIQUE_ID___x254 = alloca i64, align 8
  %__UNIQUE_ID___y255 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %variable_name, ptr %variable_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %variable_name.addr, metadata !4642, metadata !DIExpression()), !dbg !4649
  store i64 %variable_name_size, ptr %variable_name_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %variable_name_size.addr, metadata !4643, metadata !DIExpression()), !dbg !4650
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #14, !dbg !4651
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4644, metadata !DIExpression()), !dbg !4652
  call void @llvm.lifetime.start.p0(i64 2, ptr %c) #14, !dbg !4653
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4645, metadata !DIExpression()), !dbg !4654
  store i64 2, ptr %len, align 8, !dbg !4655
  br label %for.cond, !dbg !4657

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %len, align 8, !dbg !4658
  %1 = load i64, ptr %variable_name_size.addr, align 8, !dbg !4660
  %cmp = icmp ule i64 %0, %1, !dbg !4661
  br i1 %cmp, label %for.body, label %for.end, !dbg !4662

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %variable_name.addr, align 8, !dbg !4663
  %3 = load i64, ptr %len, align 8, !dbg !4665
  %div = udiv i64 %3, 2, !dbg !4666
  %sub = sub i64 %div, 1, !dbg !4667
  %arrayidx = getelementptr i16, ptr %2, i64 %sub, !dbg !4663
  %4 = load i16, ptr %arrayidx, align 2, !dbg !4663
  store i16 %4, ptr %c, align 2, !dbg !4668
  %5 = load i16, ptr %c, align 2, !dbg !4669
  %tobool = icmp ne i16 %5, 0, !dbg !4669
  br i1 %tobool, label %if.end, label %if.then, !dbg !4671

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4672

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4673

for.inc:                                          ; preds = %if.end
  %6 = load i64, ptr %len, align 8, !dbg !4674
  %add = add i64 %6, 2, !dbg !4674
  store i64 %add, ptr %len, align 8, !dbg !4674
  br label %for.cond, !dbg !4675, !llvm.loop !4676

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x254) #14, !dbg !4678
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x254, metadata !4646, metadata !DIExpression()), !dbg !4678
  %7 = load i64, ptr %len, align 8, !dbg !4678
  store i64 %7, ptr %__UNIQUE_ID___x254, align 8, !dbg !4678
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y255) #14, !dbg !4678
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y255, metadata !4648, metadata !DIExpression()), !dbg !4678
  %8 = load i64, ptr %variable_name_size.addr, align 8, !dbg !4678
  store i64 %8, ptr %__UNIQUE_ID___y255, align 8, !dbg !4678
  %9 = load i64, ptr %__UNIQUE_ID___x254, align 8, !dbg !4678
  %10 = load i64, ptr %__UNIQUE_ID___y255, align 8, !dbg !4678
  %cmp1 = icmp ult i64 %9, %10, !dbg !4678
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4678

cond.true:                                        ; preds = %for.end
  %11 = load i64, ptr %__UNIQUE_ID___x254, align 8, !dbg !4678
  br label %cond.end, !dbg !4678

cond.false:                                       ; preds = %for.end
  %12 = load i64, ptr %__UNIQUE_ID___y255, align 8, !dbg !4678
  br label %cond.end, !dbg !4678

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !4678
  store i64 %cond, ptr %tmp, align 8, !dbg !4678
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y255) #14, !dbg !4679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x254) #14, !dbg !4679
  %13 = load i64, ptr %tmp, align 8, !dbg !4678
  call void @llvm.lifetime.end.p0(i64 2, ptr %c) #14, !dbg !4680
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #14, !dbg !4680
  ret i64 %13, !dbg !4681
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_is_present(ptr noundef %variable_name, ptr noundef %vendor, ptr noundef %head) #0 align 16 !dbg !4682 {
entry:
  %variable_name.addr = alloca ptr, align 8
  %vendor.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %n = alloca ptr, align 8
  %strsize1 = alloca i64, align 8
  %strsize2 = alloca i64, align 8
  %found = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %variable_name, ptr %variable_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %variable_name.addr, metadata !4686, metadata !DIExpression()), !dbg !4702
  store ptr %vendor, ptr %vendor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vendor.addr, metadata !4687, metadata !DIExpression()), !dbg !4703
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4688, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !4705
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4689, metadata !DIExpression()), !dbg !4706
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #14, !dbg !4705
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4690, metadata !DIExpression()), !dbg !4707
  call void @llvm.lifetime.start.p0(i64 8, ptr %strsize1) #14, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %strsize1, metadata !4691, metadata !DIExpression()), !dbg !4709
  call void @llvm.lifetime.start.p0(i64 8, ptr %strsize2) #14, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %strsize2, metadata !4692, metadata !DIExpression()), !dbg !4710
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #14, !dbg !4711
  call void @llvm.dbg.declare(metadata ptr %found, metadata !4693, metadata !DIExpression()), !dbg !4712
  store i8 0, ptr %found, align 1, !dbg !4712
  %0 = load ptr, ptr %variable_name.addr, align 8, !dbg !4713
  %call = call i64 @ucs2_strsize(ptr noundef %0, i64 noundef 1024) #15, !dbg !4714
  store i64 %call, ptr %strsize1, align 8, !dbg !4715
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4716
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4694, metadata !DIExpression()), !dbg !4716
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4716
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4716
  %2 = load ptr, ptr %next, align 8, !dbg !4716
  store ptr %2, ptr %__mptr, align 8, !dbg !4716
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4716
  %add.ptr = getelementptr i8, ptr %3, i64 -2088, !dbg !4716
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4717
  %4 = load ptr, ptr %tmp, align 8, !dbg !4716
  store ptr %4, ptr %entry1, align 8, !dbg !4717
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #14, !dbg !4718
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !4697, metadata !DIExpression()), !dbg !4718
  %5 = load ptr, ptr %entry1, align 8, !dbg !4718
  %list = getelementptr inbounds %struct.efivar_entry, ptr %5, i32 0, i32 1, !dbg !4718
  %next3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !4718
  %6 = load ptr, ptr %next3, align 8, !dbg !4718
  store ptr %6, ptr %__mptr2, align 8, !dbg !4718
  %7 = load ptr, ptr %__mptr2, align 8, !dbg !4718
  %add.ptr5 = getelementptr i8, ptr %7, i64 -2088, !dbg !4718
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !4718
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #14, !dbg !4717
  %8 = load ptr, ptr %tmp4, align 8, !dbg !4718
  store ptr %8, ptr %n, align 8, !dbg !4717
  br label %for.cond, !dbg !4717

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %entry1, align 8, !dbg !4719
  %list6 = getelementptr inbounds %struct.efivar_entry, ptr %9, i32 0, i32 1, !dbg !4719
  %10 = load ptr, ptr %head.addr, align 8, !dbg !4719
  %cmp = icmp eq ptr %list6, %10, !dbg !4719
  %lnot = xor i1 %cmp, true, !dbg !4719
  br i1 %lnot, label %for.body, label %for.end, !dbg !4717

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %entry1, align 8, !dbg !4720
  %var = getelementptr inbounds %struct.efivar_entry, ptr %11, i32 0, i32 0, !dbg !4722
  %VariableName = getelementptr inbounds %struct.efi_variable, ptr %var, i32 0, i32 0, !dbg !4723
  %arraydecay = getelementptr inbounds [512 x i16], ptr %VariableName, i64 0, i64 0, !dbg !4720
  %call7 = call i64 @ucs2_strsize(ptr noundef %arraydecay, i64 noundef 1024) #15, !dbg !4724
  store i64 %call7, ptr %strsize2, align 8, !dbg !4725
  %12 = load i64, ptr %strsize1, align 8, !dbg !4726
  %13 = load i64, ptr %strsize2, align 8, !dbg !4728
  %cmp8 = icmp eq i64 %12, %13, !dbg !4729
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !4730

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %variable_name.addr, align 8, !dbg !4731
  %15 = load ptr, ptr %entry1, align 8, !dbg !4732
  %var9 = getelementptr inbounds %struct.efivar_entry, ptr %15, i32 0, i32 0, !dbg !4733
  %VariableName10 = getelementptr inbounds %struct.efi_variable, ptr %var9, i32 0, i32 0, !dbg !4734
  %16 = load i64, ptr %strsize2, align 8, !dbg !4735
  %call11 = call i32 @memcmp(ptr noundef %14, ptr noundef %VariableName10, i64 noundef %16) #15, !dbg !4736
  %tobool = icmp ne i32 %call11, 0, !dbg !4736
  br i1 %tobool, label %if.end, label %land.lhs.true12, !dbg !4737

land.lhs.true12:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %entry1, align 8, !dbg !4738
  %var13 = getelementptr inbounds %struct.efivar_entry, ptr %17, i32 0, i32 0, !dbg !4739
  %VendorGuid = getelementptr inbounds %struct.efi_variable, ptr %var13, i32 0, i32 1, !dbg !4740
  %18 = load ptr, ptr %vendor.addr, align 8, !dbg !4741
  %19 = getelementptr inbounds { i64, i64 }, ptr %VendorGuid, i32 0, i32 0, !dbg !4742
  %20 = load i64, ptr %19, align 8, !dbg !4742
  %21 = getelementptr inbounds { i64, i64 }, ptr %VendorGuid, i32 0, i32 1, !dbg !4742
  %22 = load i64, ptr %21, align 8, !dbg !4742
  %23 = getelementptr inbounds { i64, i64 }, ptr %18, i32 0, i32 0, !dbg !4742
  %24 = load i64, ptr %23, align 4, !dbg !4742
  %25 = getelementptr inbounds { i64, i64 }, ptr %18, i32 0, i32 1, !dbg !4742
  %26 = load i64, ptr %25, align 4, !dbg !4742
  %call14 = call i32 @efi_guidcmp(i64 %20, i64 %22, i64 %24, i64 %26) #15, !dbg !4742
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4742
  br i1 %tobool15, label %if.end, label %if.then, !dbg !4743

if.then:                                          ; preds = %land.lhs.true12
  store i8 1, ptr %found, align 1, !dbg !4744
  br label %for.end, !dbg !4746

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4747

for.inc:                                          ; preds = %if.end
  %27 = load ptr, ptr %n, align 8, !dbg !4719
  store ptr %27, ptr %entry1, align 8, !dbg !4719
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #14, !dbg !4748
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !4699, metadata !DIExpression()), !dbg !4748
  %28 = load ptr, ptr %n, align 8, !dbg !4748
  %list17 = getelementptr inbounds %struct.efivar_entry, ptr %28, i32 0, i32 1, !dbg !4748
  %next18 = getelementptr inbounds %struct.list_head, ptr %list17, i32 0, i32 0, !dbg !4748
  %29 = load ptr, ptr %next18, align 8, !dbg !4748
  store ptr %29, ptr %__mptr16, align 8, !dbg !4748
  %30 = load ptr, ptr %__mptr16, align 8, !dbg !4748
  %add.ptr20 = getelementptr i8, ptr %30, i64 -2088, !dbg !4748
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !4748
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #14, !dbg !4719
  %31 = load ptr, ptr %tmp19, align 8, !dbg !4748
  store ptr %31, ptr %n, align 8, !dbg !4719
  br label %for.cond, !dbg !4719, !llvm.loop !4749

for.end:                                          ; preds = %if.then, %for.cond
  %32 = load i8, ptr %found, align 1, !dbg !4751, !range !4501, !noundef !860
  %tobool21 = trunc i8 %32 to i1, !dbg !4751
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #14, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 8, ptr %strsize2) #14, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 8, ptr %strsize1) #14, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #14, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !4752
  ret i1 %tobool21, !dbg !4753
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dup_variable_bug(ptr noundef %str16, ptr noundef %vendor_guid, i64 noundef %len16) #0 align 16 !dbg !4754 {
entry:
  %str16.addr = alloca ptr, align 8
  %vendor_guid.addr = alloca ptr, align 8
  %len16.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %len8 = alloca i64, align 8
  %str8 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %str16, ptr %str16.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str16.addr, metadata !4758, metadata !DIExpression()), !dbg !4764
  store ptr %vendor_guid, ptr %vendor_guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vendor_guid.addr, metadata !4759, metadata !DIExpression()), !dbg !4765
  store i64 %len16, ptr %len16.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len16.addr, metadata !4760, metadata !DIExpression()), !dbg !4766
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4761, metadata !DIExpression()), !dbg !4768
  call void @llvm.lifetime.start.p0(i64 8, ptr %len8) #14, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %len8, metadata !4762, metadata !DIExpression()), !dbg !4769
  %0 = load i64, ptr %len16.addr, align 8, !dbg !4770
  %div = udiv i64 %0, 2, !dbg !4771
  store i64 %div, ptr %len8, align 8, !dbg !4769
  call void @llvm.lifetime.start.p0(i64 8, ptr %str8) #14, !dbg !4772
  call void @llvm.dbg.declare(metadata ptr %str8, metadata !4763, metadata !DIExpression()), !dbg !4773
  %1 = load i64, ptr %len8, align 8, !dbg !4774
  %call = call noalias ptr @kzalloc(i64 noundef %1, i32 noundef 3264) #16, !dbg !4775
  store ptr %call, ptr %str8, align 8, !dbg !4776
  %2 = load ptr, ptr %str8, align 8, !dbg !4777
  %tobool = icmp ne ptr %2, null, !dbg !4777
  br i1 %tobool, label %if.end, label %if.then, !dbg !4779

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4780

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8, !dbg !4781
  br label %for.cond, !dbg !4783

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %i, align 8, !dbg !4784
  %4 = load i64, ptr %len8, align 8, !dbg !4786
  %cmp = icmp ult i64 %3, %4, !dbg !4787
  br i1 %cmp, label %for.body, label %for.end, !dbg !4788

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %str16.addr, align 8, !dbg !4789
  %6 = load i64, ptr %i, align 8, !dbg !4790
  %arrayidx = getelementptr i16, ptr %5, i64 %6, !dbg !4789
  %7 = load i16, ptr %arrayidx, align 2, !dbg !4789
  %conv = trunc i16 %7 to i8, !dbg !4789
  %8 = load ptr, ptr %str8, align 8, !dbg !4791
  %9 = load i64, ptr %i, align 8, !dbg !4792
  %arrayidx1 = getelementptr i8, ptr %8, i64 %9, !dbg !4791
  store i8 %conv, ptr %arrayidx1, align 1, !dbg !4793
  br label %for.inc, !dbg !4791

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8, !dbg !4794
  %inc = add i64 %10, 1, !dbg !4794
  store i64 %inc, ptr %i, align 8, !dbg !4794
  br label %for.cond, !dbg !4795, !llvm.loop !4796

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !4798

do.body:                                          ; preds = %for.end
  br label %do.cond, !dbg !4800

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4800

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %str8, align 8, !dbg !4798
  %12 = load ptr, ptr %vendor_guid.addr, align 8, !dbg !4798
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.21, ptr noundef %11, ptr noundef %12) #18, !dbg !4798
  store i32 %call2, ptr %tmp, align 4, !dbg !4800
  %13 = load i32, ptr %tmp, align 4, !dbg !4798
  %14 = load ptr, ptr %str8, align 8, !dbg !4802
  call void @kfree(ptr noundef %14) #15, !dbg !4803
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4804
  br label %cleanup, !dbg !4804

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %str8) #14, !dbg !4804
  call void @llvm.lifetime.end.p0(i64 8, ptr %len8) #14, !dbg !4804
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !4804
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4804

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4805 dso_local void @efivar_unlock() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efivar_entry_add(ptr noundef %entry1, ptr noundef %head) #0 align 16 !dbg !4806 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4810, metadata !DIExpression()), !dbg !4813
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4811, metadata !DIExpression()), !dbg !4814
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4812, metadata !DIExpression()), !dbg !4816
  %call = call i32 @efivar_lock() #15, !dbg !4817
  store i32 %call, ptr %err, align 4, !dbg !4818
  %0 = load i32, ptr %err, align 4, !dbg !4819
  %tobool = icmp ne i32 %0, 0, !dbg !4819
  br i1 %tobool, label %if.then, label %if.end, !dbg !4821

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err, align 4, !dbg !4822
  store i32 %1, ptr %retval, align 4, !dbg !4823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4823

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4824
  %list = getelementptr inbounds %struct.efivar_entry, ptr %2, i32 0, i32 1, !dbg !4825
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4826
  call void @list_add(ptr noundef %list, ptr noundef %3) #15, !dbg !4827
  call void @efivar_unlock() #15, !dbg !4828
  store i32 0, ptr %retval, align 4, !dbg !4829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4829

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !4830
  %4 = load i32, ptr %retval, align 4, !dbg !4830
  ret i32 %4, !dbg !4830
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !4831 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4836, metadata !DIExpression()), !dbg !4838
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4837, metadata !DIExpression()), !dbg !4839
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4840
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4841
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4842
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !4843
  %3 = load ptr, ptr %next, align 8, !dbg !4843
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #15, !dbg !4844
  ret void, !dbg !4845
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__efivar_entry_add(ptr noundef %entry1, ptr noundef %head) #0 align 16 !dbg !4846 {
entry:
  %entry.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4850, metadata !DIExpression()), !dbg !4852
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4851, metadata !DIExpression()), !dbg !4853
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4854
  %list = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1, !dbg !4855
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4856
  call void @list_add(ptr noundef %list, ptr noundef %1) #15, !dbg !4857
  ret void, !dbg !4858
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @efivar_entry_remove(ptr noundef %entry1) #0 align 16 !dbg !4859 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4863, metadata !DIExpression()), !dbg !4864
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4865
  %list = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1, !dbg !4866
  call void @list_del(ptr noundef %list) #15, !dbg !4867
  ret void, !dbg !4868
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !4869 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4873, metadata !DIExpression()), !dbg !4874
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4875
  call void @__list_del_entry(ptr noundef %0) #15, !dbg !4876
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4877
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4878
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4879
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4880
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4881
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4882
  ret void, !dbg !4883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efivar_entry_delete(ptr noundef %entry1) #0 align 16 !dbg !4884 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4888, metadata !DIExpression()), !dbg !4891
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4889, metadata !DIExpression()), !dbg !4893
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4890, metadata !DIExpression()), !dbg !4895
  %call = call i32 @efivar_lock() #15, !dbg !4896
  store i32 %call, ptr %err, align 4, !dbg !4897
  %0 = load i32, ptr %err, align 4, !dbg !4898
  %tobool = icmp ne i32 %0, 0, !dbg !4898
  br i1 %tobool, label %if.then, label %if.end, !dbg !4900

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err, align 4, !dbg !4901
  store i32 %1, ptr %retval, align 4, !dbg !4902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4902

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4903
  %var = getelementptr inbounds %struct.efivar_entry, ptr %2, i32 0, i32 0, !dbg !4904
  %VariableName = getelementptr inbounds %struct.efi_variable, ptr %var, i32 0, i32 0, !dbg !4905
  %arraydecay = getelementptr inbounds [512 x i16], ptr %VariableName, i64 0, i64 0, !dbg !4903
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4906
  %var2 = getelementptr inbounds %struct.efivar_entry, ptr %3, i32 0, i32 0, !dbg !4907
  %VendorGuid = getelementptr inbounds %struct.efi_variable, ptr %var2, i32 0, i32 1, !dbg !4908
  %call3 = call i64 @efivar_set_variable_locked(ptr noundef %arraydecay, ptr noundef %VendorGuid, i32 noundef 0, i64 noundef 0, ptr noundef null, i1 noundef zeroext false) #15, !dbg !4909
  store i64 %call3, ptr %status, align 8, !dbg !4910
  %4 = load i64, ptr %status, align 8, !dbg !4911
  %cmp = icmp eq i64 %4, 0, !dbg !4913
  br i1 %cmp, label %if.end7, label %lor.lhs.false, !dbg !4914

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, ptr %status, align 8, !dbg !4915
  %cmp4 = icmp eq i64 %5, -9223372036854775794, !dbg !4916
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !4917

if.then5:                                         ; preds = %lor.lhs.false
  call void @efivar_unlock() #15, !dbg !4918
  %6 = load i64, ptr %status, align 8, !dbg !4920
  %call6 = call i32 @efi_status_to_err(i64 noundef %6) #15, !dbg !4921
  store i32 %call6, ptr %retval, align 4, !dbg !4922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4922

if.end7:                                          ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !4923
  call void @efivar_entry_list_del_unlock(ptr noundef %7) #15, !dbg !4924
  store i32 0, ptr %retval, align 4, !dbg !4925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4925

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !4926
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !4926
  %8 = load i32, ptr %retval, align 4, !dbg !4926
  ret i32 %8, !dbg !4926
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4927 dso_local i64 @efivar_set_variable_locked(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4930 dso_local i32 @efi_status_to_err(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @efivar_entry_list_del_unlock(ptr noundef %entry1) #0 align 16 !dbg !4933 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4935, metadata !DIExpression()), !dbg !4936
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4937
  %list = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 1, !dbg !4938
  call void @list_del(ptr noundef %list) #15, !dbg !4939
  call void @efivar_unlock() #15, !dbg !4940
  ret void, !dbg !4941
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efivar_entry_size(ptr noundef %entry1, ptr noundef %size) #0 align 16 !dbg !4942 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4946, metadata !DIExpression()), !dbg !4950
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4947, metadata !DIExpression()), !dbg !4951
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !4952
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4948, metadata !DIExpression()), !dbg !4953
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !4954
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4949, metadata !DIExpression()), !dbg !4955
  %0 = load ptr, ptr %size.addr, align 8, !dbg !4956
  store i64 0, ptr %0, align 8, !dbg !4957
  %call = call i32 @efivar_lock() #15, !dbg !4958
  store i32 %call, ptr %err, align 4, !dbg !4959
  %1 = load i32, ptr %err, align 4, !dbg !4960
  %tobool = icmp ne i32 %1, 0, !dbg !4960
  br i1 %tobool, label %if.then, label %if.end, !dbg !4962

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !4963
  store i32 %2, ptr %retval, align 4, !dbg !4964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4964

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4965
  %var = getelementptr inbounds %struct.efivar_entry, ptr %3, i32 0, i32 0, !dbg !4966
  %VariableName = getelementptr inbounds %struct.efi_variable, ptr %var, i32 0, i32 0, !dbg !4967
  %arraydecay = getelementptr inbounds [512 x i16], ptr %VariableName, i64 0, i64 0, !dbg !4965
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !4968
  %var2 = getelementptr inbounds %struct.efivar_entry, ptr %4, i32 0, i32 0, !dbg !4969
  %VendorGuid = getelementptr inbounds %struct.efi_variable, ptr %var2, i32 0, i32 1, !dbg !4970
  %5 = load ptr, ptr %size.addr, align 8, !dbg !4971
  %call3 = call i64 @efivar_get_variable(ptr noundef %arraydecay, ptr noundef %VendorGuid, ptr noundef null, ptr noundef %5, ptr noundef null) #15, !dbg !4972
  store i64 %call3, ptr %status, align 8, !dbg !4973
  call void @efivar_unlock() #15, !dbg !4974
  %6 = load i64, ptr %status, align 8, !dbg !4975
  %cmp = icmp ne i64 %6, -9223372036854775803, !dbg !4977
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !4978

if.then4:                                         ; preds = %if.end
  %7 = load i64, ptr %status, align 8, !dbg !4979
  %call5 = call i32 @efi_status_to_err(i64 noundef %7) #15, !dbg !4980
  store i32 %call5, ptr %retval, align 4, !dbg !4981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4981

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4982

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !4983
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !4983
  %8 = load i32, ptr %retval, align 4, !dbg !4983
  ret i32 %8, !dbg !4983
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4984 dso_local i64 @efivar_get_variable(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__efivar_entry_get(ptr noundef %entry1, ptr noundef %attributes, ptr noundef %size, ptr noundef %data) #0 align 16 !dbg !4987 {
entry:
  %entry.addr = alloca ptr, align 8
  %attributes.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4991, metadata !DIExpression()), !dbg !4996
  store ptr %attributes, ptr %attributes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attributes.addr, metadata !4992, metadata !DIExpression()), !dbg !4997
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4993, metadata !DIExpression()), !dbg !4998
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4994, metadata !DIExpression()), !dbg !4999
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !5000
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4995, metadata !DIExpression()), !dbg !5001
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5002
  %var = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 0, !dbg !5003
  %VariableName = getelementptr inbounds %struct.efi_variable, ptr %var, i32 0, i32 0, !dbg !5004
  %arraydecay = getelementptr inbounds [512 x i16], ptr %VariableName, i64 0, i64 0, !dbg !5002
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5005
  %var2 = getelementptr inbounds %struct.efivar_entry, ptr %1, i32 0, i32 0, !dbg !5006
  %VendorGuid = getelementptr inbounds %struct.efi_variable, ptr %var2, i32 0, i32 1, !dbg !5007
  %2 = load ptr, ptr %attributes.addr, align 8, !dbg !5008
  %3 = load ptr, ptr %size.addr, align 8, !dbg !5009
  %4 = load ptr, ptr %data.addr, align 8, !dbg !5010
  %call = call i64 @efivar_get_variable(ptr noundef %arraydecay, ptr noundef %VendorGuid, ptr noundef %2, ptr noundef %3, ptr noundef %4) #15, !dbg !5011
  store i64 %call, ptr %status, align 8, !dbg !5012
  %5 = load i64, ptr %status, align 8, !dbg !5013
  %call3 = call i32 @efi_status_to_err(i64 noundef %5) #15, !dbg !5014
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !5015
  ret i32 %call3, !dbg !5016
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efivar_entry_get(ptr noundef %entry1, ptr noundef %attributes, ptr noundef %size, ptr noundef %data) #0 align 16 !dbg !5017 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %attributes.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5019, metadata !DIExpression()), !dbg !5024
  store ptr %attributes, ptr %attributes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attributes.addr, metadata !5020, metadata !DIExpression()), !dbg !5025
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5021, metadata !DIExpression()), !dbg !5026
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5022, metadata !DIExpression()), !dbg !5027
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5023, metadata !DIExpression()), !dbg !5029
  %call = call i32 @efivar_lock() #15, !dbg !5030
  store i32 %call, ptr %err, align 4, !dbg !5031
  %0 = load i32, ptr %err, align 4, !dbg !5032
  %tobool = icmp ne i32 %0, 0, !dbg !5032
  br i1 %tobool, label %if.then, label %if.end, !dbg !5034

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err, align 4, !dbg !5035
  store i32 %1, ptr %retval, align 4, !dbg !5036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5036

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5037
  %3 = load ptr, ptr %attributes.addr, align 8, !dbg !5038
  %4 = load ptr, ptr %size.addr, align 8, !dbg !5039
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5040
  %call2 = call i32 @__efivar_entry_get(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #15, !dbg !5041
  store i32 %call2, ptr %err, align 4, !dbg !5042
  call void @efivar_unlock() #15, !dbg !5043
  store i32 0, ptr %retval, align 4, !dbg !5044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5044

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5045
  %6 = load i32, ptr %retval, align 4, !dbg !5045
  ret i32 %6, !dbg !5045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efivar_entry_set_get_size(ptr noundef %entry1, i32 noundef %attributes, ptr noundef %size, ptr noundef %data, ptr noundef %set) #0 align 16 !dbg !5046 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %attributes.addr = alloca i32, align 4
  %size.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %vendor = alloca ptr, align 8
  %status = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5050, metadata !DIExpression()), !dbg !5060
  store i32 %attributes, ptr %attributes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attributes.addr, metadata !5051, metadata !DIExpression()), !dbg !5061
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5052, metadata !DIExpression()), !dbg !5062
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5053, metadata !DIExpression()), !dbg !5063
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !5054, metadata !DIExpression()), !dbg !5064
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #14, !dbg !5065
  call void @llvm.dbg.declare(metadata ptr %name, metadata !5055, metadata !DIExpression()), !dbg !5066
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5067
  %var = getelementptr inbounds %struct.efivar_entry, ptr %0, i32 0, i32 0, !dbg !5068
  %VariableName = getelementptr inbounds %struct.efi_variable, ptr %var, i32 0, i32 0, !dbg !5069
  %arraydecay = getelementptr inbounds [512 x i16], ptr %VariableName, i64 0, i64 0, !dbg !5067
  store ptr %arraydecay, ptr %name, align 8, !dbg !5066
  call void @llvm.lifetime.start.p0(i64 8, ptr %vendor) #14, !dbg !5070
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !5056, metadata !DIExpression()), !dbg !5071
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5072
  %var2 = getelementptr inbounds %struct.efivar_entry, ptr %1, i32 0, i32 0, !dbg !5073
  %VendorGuid = getelementptr inbounds %struct.efi_variable, ptr %var2, i32 0, i32 1, !dbg !5074
  store ptr %VendorGuid, ptr %vendor, align 8, !dbg !5071
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !5075
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5057, metadata !DIExpression()), !dbg !5076
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5058, metadata !DIExpression()), !dbg !5078
  %2 = load ptr, ptr %set.addr, align 8, !dbg !5079
  store i8 0, ptr %2, align 1, !dbg !5080
  %3 = load ptr, ptr %vendor, align 8, !dbg !5081
  %4 = load ptr, ptr %name, align 8, !dbg !5083
  %5 = load ptr, ptr %data.addr, align 8, !dbg !5084
  %6 = load ptr, ptr %size.addr, align 8, !dbg !5085
  %7 = load i64, ptr %6, align 8, !dbg !5086
  %8 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 0, !dbg !5087
  %9 = load i64, ptr %8, align 4, !dbg !5087
  %10 = getelementptr inbounds { i64, i64 }, ptr %3, i32 0, i32 1, !dbg !5087
  %11 = load i64, ptr %10, align 4, !dbg !5087
  %call = call zeroext i1 @efivar_validate(i64 %9, i64 %11, ptr noundef %4, ptr noundef %5, i64 noundef %7) #15, !dbg !5087
  %conv = zext i1 %call to i32, !dbg !5087
  %cmp = icmp eq i32 %conv, 0, !dbg !5088
  br i1 %cmp, label %if.then, label %if.end, !dbg !5089

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5090

if.end:                                           ; preds = %entry
  %call4 = call i32 @efivar_lock() #15, !dbg !5091
  store i32 %call4, ptr %err, align 4, !dbg !5092
  %12 = load i32, ptr %err, align 4, !dbg !5093
  %tobool = icmp ne i32 %12, 0, !dbg !5093
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5095

if.then5:                                         ; preds = %if.end
  %13 = load i32, ptr %err, align 4, !dbg !5096
  store i32 %13, ptr %retval, align 4, !dbg !5097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5097

if.end6:                                          ; preds = %if.end
  %14 = load ptr, ptr %name, align 8, !dbg !5098
  %15 = load ptr, ptr %vendor, align 8, !dbg !5099
  %16 = load i32, ptr %attributes.addr, align 4, !dbg !5100
  %17 = load ptr, ptr %size.addr, align 8, !dbg !5101
  %18 = load i64, ptr %17, align 8, !dbg !5102
  %19 = load ptr, ptr %data.addr, align 8, !dbg !5103
  %call7 = call i64 @efivar_set_variable_locked(ptr noundef %14, ptr noundef %15, i32 noundef %16, i64 noundef %18, ptr noundef %19, i1 noundef zeroext false) #15, !dbg !5104
  store i64 %call7, ptr %status, align 8, !dbg !5105
  %20 = load i64, ptr %status, align 8, !dbg !5106
  %cmp8 = icmp ne i64 %20, 0, !dbg !5108
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !5109

if.then10:                                        ; preds = %if.end6
  %21 = load i64, ptr %status, align 8, !dbg !5110
  %call11 = call i32 @efi_status_to_err(i64 noundef %21) #15, !dbg !5112
  store i32 %call11, ptr %err, align 4, !dbg !5113
  br label %out, !dbg !5114

if.end12:                                         ; preds = %if.end6
  %22 = load ptr, ptr %set.addr, align 8, !dbg !5115
  store i8 1, ptr %22, align 1, !dbg !5116
  %23 = load ptr, ptr %size.addr, align 8, !dbg !5117
  store i64 0, ptr %23, align 8, !dbg !5118
  %24 = load ptr, ptr %entry.addr, align 8, !dbg !5119
  %var13 = getelementptr inbounds %struct.efivar_entry, ptr %24, i32 0, i32 0, !dbg !5120
  %VariableName14 = getelementptr inbounds %struct.efi_variable, ptr %var13, i32 0, i32 0, !dbg !5121
  %arraydecay15 = getelementptr inbounds [512 x i16], ptr %VariableName14, i64 0, i64 0, !dbg !5119
  %25 = load ptr, ptr %entry.addr, align 8, !dbg !5122
  %var16 = getelementptr inbounds %struct.efivar_entry, ptr %25, i32 0, i32 0, !dbg !5123
  %VendorGuid17 = getelementptr inbounds %struct.efi_variable, ptr %var16, i32 0, i32 1, !dbg !5124
  %26 = load ptr, ptr %size.addr, align 8, !dbg !5125
  %call18 = call i64 @efivar_get_variable(ptr noundef %arraydecay15, ptr noundef %VendorGuid17, ptr noundef null, ptr noundef %26, ptr noundef null) #15, !dbg !5126
  store i64 %call18, ptr %status, align 8, !dbg !5127
  %27 = load i64, ptr %status, align 8, !dbg !5128
  %cmp19 = icmp eq i64 %27, -9223372036854775794, !dbg !5130
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !5131

if.then21:                                        ; preds = %if.end12
  %28 = load ptr, ptr %entry.addr, align 8, !dbg !5132
  call void @efivar_entry_list_del_unlock(ptr noundef %28) #15, !dbg !5133
  br label %if.end22, !dbg !5133

if.else:                                          ; preds = %if.end12
  call void @efivar_unlock() #15, !dbg !5134
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  %29 = load i64, ptr %status, align 8, !dbg !5135
  %tobool23 = icmp ne i64 %29, 0, !dbg !5135
  br i1 %tobool23, label %land.lhs.true, label %if.end28, !dbg !5137

land.lhs.true:                                    ; preds = %if.end22
  %30 = load i64, ptr %status, align 8, !dbg !5138
  %cmp24 = icmp ne i64 %30, -9223372036854775803, !dbg !5139
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !5140

if.then26:                                        ; preds = %land.lhs.true
  %31 = load i64, ptr %status, align 8, !dbg !5141
  %call27 = call i32 @efi_status_to_err(i64 noundef %31) #15, !dbg !5142
  store i32 %call27, ptr %retval, align 4, !dbg !5143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5143

if.end28:                                         ; preds = %land.lhs.true, %if.end22
  store i32 0, ptr %retval, align 4, !dbg !5144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5144

out:                                              ; preds = %if.then10
  call void @llvm.dbg.label(metadata !5059), !dbg !5145
  call void @efivar_unlock() #15, !dbg !5146
  %32 = load i32, ptr %err, align 4, !dbg !5147
  store i32 %32, ptr %retval, align 4, !dbg !5148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5148

cleanup:                                          ; preds = %out, %if.end28, %if.then26, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5149
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !5149
  call void @llvm.lifetime.end.p0(i64 8, ptr %vendor) #14, !dbg !5149
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #14, !dbg !5149
  %33 = load i32, ptr %retval, align 4, !dbg !5149
  ret i32 %33, !dbg !5149
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @efivar_entry_iter(ptr noundef %func, ptr noundef %head, ptr noundef %data) #0 align 16 !dbg !5150 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %n = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !5157, metadata !DIExpression()), !dbg !5171
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5158, metadata !DIExpression()), !dbg !5172
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5159, metadata !DIExpression()), !dbg !5173
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5160, metadata !DIExpression()), !dbg !5175
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #14, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5161, metadata !DIExpression()), !dbg !5176
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5177
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5162, metadata !DIExpression()), !dbg !5178
  store i32 0, ptr %err, align 4, !dbg !5178
  %call = call i32 @efivar_lock() #15, !dbg !5179
  store i32 %call, ptr %err, align 4, !dbg !5180
  %0 = load i32, ptr %err, align 4, !dbg !5181
  %tobool = icmp ne i32 %0, 0, !dbg !5181
  br i1 %tobool, label %if.then, label %if.end, !dbg !5183

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err, align 4, !dbg !5184
  store i32 %1, ptr %retval, align 4, !dbg !5185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5185

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !5186
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5163, metadata !DIExpression()), !dbg !5186
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5186
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5186
  %3 = load ptr, ptr %next, align 8, !dbg !5186
  store ptr %3, ptr %__mptr, align 8, !dbg !5186
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5186
  %add.ptr = getelementptr i8, ptr %4, i64 -2088, !dbg !5186
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !5187
  %5 = load ptr, ptr %tmp, align 8, !dbg !5186
  store ptr %5, ptr %entry1, align 8, !dbg !5187
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #14, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5166, metadata !DIExpression()), !dbg !5188
  %6 = load ptr, ptr %entry1, align 8, !dbg !5188
  %list = getelementptr inbounds %struct.efivar_entry, ptr %6, i32 0, i32 1, !dbg !5188
  %next3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5188
  %7 = load ptr, ptr %next3, align 8, !dbg !5188
  store ptr %7, ptr %__mptr2, align 8, !dbg !5188
  %8 = load ptr, ptr %__mptr2, align 8, !dbg !5188
  %add.ptr5 = getelementptr i8, ptr %8, i64 -2088, !dbg !5188
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !5188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #14, !dbg !5187
  %9 = load ptr, ptr %tmp4, align 8, !dbg !5188
  store ptr %9, ptr %n, align 8, !dbg !5187
  br label %for.cond, !dbg !5187

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load ptr, ptr %entry1, align 8, !dbg !5189
  %list6 = getelementptr inbounds %struct.efivar_entry, ptr %10, i32 0, i32 1, !dbg !5189
  %11 = load ptr, ptr %head.addr, align 8, !dbg !5189
  %cmp = icmp eq ptr %list6, %11, !dbg !5189
  %lnot = xor i1 %cmp, true, !dbg !5189
  br i1 %lnot, label %for.body, label %for.end, !dbg !5187

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %func.addr, align 8, !dbg !5190
  %13 = load ptr, ptr %entry1, align 8, !dbg !5192
  %14 = load ptr, ptr %data.addr, align 8, !dbg !5193
  %call7 = call i32 %12(ptr noundef %13, ptr noundef %14) #15, !dbg !5190
  store i32 %call7, ptr %err, align 4, !dbg !5194
  %15 = load i32, ptr %err, align 4, !dbg !5195
  %tobool8 = icmp ne i32 %15, 0, !dbg !5195
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5197

if.then9:                                         ; preds = %for.body
  br label %for.end, !dbg !5198

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !5199

for.inc:                                          ; preds = %if.end10
  %16 = load ptr, ptr %n, align 8, !dbg !5189
  store ptr %16, ptr %entry1, align 8, !dbg !5189
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #14, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !5168, metadata !DIExpression()), !dbg !5200
  %17 = load ptr, ptr %n, align 8, !dbg !5200
  %list12 = getelementptr inbounds %struct.efivar_entry, ptr %17, i32 0, i32 1, !dbg !5200
  %next13 = getelementptr inbounds %struct.list_head, ptr %list12, i32 0, i32 0, !dbg !5200
  %18 = load ptr, ptr %next13, align 8, !dbg !5200
  store ptr %18, ptr %__mptr11, align 8, !dbg !5200
  %19 = load ptr, ptr %__mptr11, align 8, !dbg !5200
  %add.ptr15 = getelementptr i8, ptr %19, i64 -2088, !dbg !5200
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #14, !dbg !5189
  %20 = load ptr, ptr %tmp14, align 8, !dbg !5200
  store ptr %20, ptr %n, align 8, !dbg !5189
  br label %for.cond, !dbg !5189, !llvm.loop !5201

for.end:                                          ; preds = %if.then9, %for.cond
  call void @efivar_unlock() #15, !dbg !5203
  %21 = load i32, ptr %err, align 4, !dbg !5204
  store i32 %21, ptr %retval, align 4, !dbg !5205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5205

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5206
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #14, !dbg !5206
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !5206
  %22 = load i32, ptr %retval, align 4, !dbg !5206
  ret i32 %22, !dbg !5206
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5207 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !5208 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5212, metadata !DIExpression()), !dbg !5214
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5213, metadata !DIExpression()), !dbg !5215
  %0 = load i64, ptr %size.addr, align 8, !dbg !5216
  %tobool = icmp ne i64 %0, 0, !dbg !5216
  br i1 %tobool, label %if.end, label %if.then, !dbg !5218

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5219
  br label %return, !dbg !5219

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5220
  %cmp = icmp ule i64 %1, 8, !dbg !5222
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5223

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5224
  br label %return, !dbg !5224

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5225
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5227
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5228

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5229
  %cmp4 = icmp ule i64 %3, 96, !dbg !5230
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5231

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5232
  br label %return, !dbg !5232

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5233
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5235
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5236

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5237
  %cmp9 = icmp ule i64 %5, 192, !dbg !5238
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5239

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5240
  br label %return, !dbg !5240

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5241
  %cmp12 = icmp ule i64 %6, 8, !dbg !5243
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5244

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5245
  br label %return, !dbg !5245

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5246
  %cmp15 = icmp ule i64 %7, 16, !dbg !5248
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5249

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5250
  br label %return, !dbg !5250

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5251
  %cmp18 = icmp ule i64 %8, 32, !dbg !5253
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5254

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5255
  br label %return, !dbg !5255

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5256
  %cmp21 = icmp ule i64 %9, 64, !dbg !5258
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5259

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5260
  br label %return, !dbg !5260

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5261
  %cmp24 = icmp ule i64 %10, 128, !dbg !5263
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5264

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5265
  br label %return, !dbg !5265

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5266
  %cmp27 = icmp ule i64 %11, 256, !dbg !5268
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5269

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5270
  br label %return, !dbg !5270

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5271
  %cmp30 = icmp ule i64 %12, 512, !dbg !5273
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5274

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5275
  br label %return, !dbg !5275

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5276
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5278
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5279

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5280
  br label %return, !dbg !5280

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5281
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5283
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5284

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5285
  br label %return, !dbg !5285

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5286
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5288
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5289

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5290
  br label %return, !dbg !5290

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5291
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5293
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5294

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5295
  br label %return, !dbg !5295

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5296
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5298
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5299

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5300
  br label %return, !dbg !5300

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5301
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5303
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5304

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5305
  br label %return, !dbg !5305

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5306
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5308
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5309

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5310
  br label %return, !dbg !5310

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5311
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5313
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5314

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5315
  br label %return, !dbg !5315

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5316
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5318
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5319

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5320
  br label %return, !dbg !5320

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5321
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5323
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5324

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5325
  br label %return, !dbg !5325

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5326
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5328
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5329

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5330
  br label %return, !dbg !5330

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5331
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5333
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5334

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5335
  br label %return, !dbg !5335

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5336, !range !4501, !noundef !860
  %tobool69 = trunc i8 %25 to i1, !dbg !5336
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5338

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5339

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_181() #19, !dbg !5340, !srcloc !5343
  unreachable, !dbg !5340

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5344

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5345

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5346

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5348

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5346

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #14, !dbg !5350, !srcloc !5352
  br label %do.end75, !dbg !5350

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5346

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5353
  br label %return, !dbg !5353

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5354
  ret i32 %26, !dbg !5354
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5355 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !5361 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5365, metadata !DIExpression()), !dbg !5367
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5366, metadata !DIExpression()), !dbg !5368
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5369
  %and = and i32 %0, 17, !dbg !5369
  %cmp = icmp eq i32 %and, 0, !dbg !5369
  %lnot = xor i1 %cmp, true, !dbg !5369
  %lnot1 = xor i1 %lnot, true, !dbg !5369
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5369
  %conv = sext i32 %lnot.ext to i64, !dbg !5369
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5369
  %tobool = icmp ne i64 %expval, 0, !dbg !5369
  br i1 %tobool, label %if.then, label %if.end, !dbg !5371

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5373
  %and2 = and i32 %1, 1, !dbg !5375
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5375
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5376

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5377
  br label %return, !dbg !5377

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5378
  br label %return, !dbg !5378

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5380
  ret i32 %2, !dbg !5380
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5381 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5382 dso_local void @__compiletime_assert_181() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @validate_uint16(ptr noundef %var_name, i32 noundef %match, ptr noundef %buffer, i64 noundef %len) #0 align 16 !dbg !5383 {
entry:
  %retval = alloca i1, align 1
  %var_name.addr = alloca ptr, align 8
  %match.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %var_name, ptr %var_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var_name.addr, metadata !5385, metadata !DIExpression()), !dbg !5389
  store i32 %match, ptr %match.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !5386, metadata !DIExpression()), !dbg !5390
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5387, metadata !DIExpression()), !dbg !5391
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5388, metadata !DIExpression()), !dbg !5392
  %0 = load i64, ptr %len.addr, align 8, !dbg !5393
  %cmp = icmp ne i64 %0, 2, !dbg !5395
  br i1 %cmp, label %if.then, label %if.end, !dbg !5396

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5397
  br label %return, !dbg !5397

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5398
  br label %return, !dbg !5398

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !5399
  ret i1 %1, !dbg !5399
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @validate_boot_order(ptr noundef %var_name, i32 noundef %match, ptr noundef %buffer, i64 noundef %len) #0 align 16 !dbg !5400 {
entry:
  %retval = alloca i1, align 1
  %var_name.addr = alloca ptr, align 8
  %match.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %var_name, ptr %var_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var_name.addr, metadata !5402, metadata !DIExpression()), !dbg !5406
  store i32 %match, ptr %match.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !5403, metadata !DIExpression()), !dbg !5407
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5404, metadata !DIExpression()), !dbg !5408
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5405, metadata !DIExpression()), !dbg !5409
  %0 = load i64, ptr %len.addr, align 8, !dbg !5410
  %rem = urem i64 %0, 2, !dbg !5412
  %cmp = icmp ne i64 %rem, 0, !dbg !5413
  br i1 %cmp, label %if.then, label %if.end, !dbg !5414

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5415
  br label %return, !dbg !5415

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5416
  br label %return, !dbg !5416

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !5417
  ret i1 %1, !dbg !5417
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @validate_load_option(ptr noundef %var_name, i32 noundef %match, ptr noundef %buffer, i64 noundef %len) #0 align 16 !dbg !5418 {
entry:
  %retval = alloca i1, align 1
  %var_name.addr = alloca ptr, align 8
  %match.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %filepathlength = alloca i16, align 2
  %i = alloca i32, align 4
  %desclength = alloca i32, align 4
  %namelen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %var_name, ptr %var_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var_name.addr, metadata !5420, metadata !DIExpression()), !dbg !5428
  store i32 %match, ptr %match.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !5421, metadata !DIExpression()), !dbg !5429
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5422, metadata !DIExpression()), !dbg !5430
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5423, metadata !DIExpression()), !dbg !5431
  call void @llvm.lifetime.start.p0(i64 2, ptr %filepathlength) #14, !dbg !5432
  call void @llvm.dbg.declare(metadata ptr %filepathlength, metadata !5424, metadata !DIExpression()), !dbg !5433
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5434
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5425, metadata !DIExpression()), !dbg !5435
  call void @llvm.lifetime.start.p0(i64 4, ptr %desclength) #14, !dbg !5434
  call void @llvm.dbg.declare(metadata ptr %desclength, metadata !5426, metadata !DIExpression()), !dbg !5436
  store i32 0, ptr %desclength, align 4, !dbg !5436
  call void @llvm.lifetime.start.p0(i64 4, ptr %namelen) #14, !dbg !5434
  call void @llvm.dbg.declare(metadata ptr %namelen, metadata !5427, metadata !DIExpression()), !dbg !5437
  %0 = load ptr, ptr %var_name.addr, align 8, !dbg !5438
  %call = call i64 @ucs2_strnlen(ptr noundef %0, i64 noundef 1024) #15, !dbg !5439
  %conv = trunc i64 %call to i32, !dbg !5439
  store i32 %conv, ptr %namelen, align 4, !dbg !5440
  %1 = load i32, ptr %match.addr, align 4, !dbg !5441
  store i32 %1, ptr %i, align 4, !dbg !5443
  br label %for.cond, !dbg !5444

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !5445
  %3 = load i32, ptr %match.addr, align 4, !dbg !5447
  %add = add i32 %3, 4, !dbg !5448
  %cmp = icmp slt i32 %2, %add, !dbg !5449
  br i1 %cmp, label %for.body, label %for.end, !dbg !5450

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %var_name.addr, align 8, !dbg !5451
  %5 = load i32, ptr %i, align 4, !dbg !5454
  %idxprom = sext i32 %5 to i64, !dbg !5451
  %arrayidx = getelementptr i16, ptr %4, i64 %idxprom, !dbg !5451
  %6 = load i16, ptr %arrayidx, align 2, !dbg !5451
  %conv2 = zext i16 %6 to i32, !dbg !5451
  %cmp3 = icmp sgt i32 %conv2, 127, !dbg !5455
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !5456

lor.lhs.false:                                    ; preds = %for.body
  %7 = load ptr, ptr %var_name.addr, align 8, !dbg !5457
  %8 = load i32, ptr %i, align 4, !dbg !5458
  %idxprom5 = sext i32 %8 to i64, !dbg !5457
  %arrayidx6 = getelementptr i16, ptr %7, i64 %idxprom5, !dbg !5457
  %9 = load i16, ptr %arrayidx6, align 2, !dbg !5457
  %conv7 = zext i16 %9 to i32, !dbg !5457
  %and = and i32 %conv7, 255, !dbg !5459
  %conv8 = trunc i32 %and to i8, !dbg !5457
  %call9 = call i32 @hex_to_bin(i8 noundef zeroext %conv8) #15, !dbg !5460
  %cmp10 = icmp slt i32 %call9, 0, !dbg !5461
  br i1 %cmp10, label %if.then, label %if.end, !dbg !5462

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i1 true, ptr %retval, align 1, !dbg !5463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5463

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc, !dbg !5464

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !5465
  %inc = add i32 %10, 1, !dbg !5465
  store i32 %inc, ptr %i, align 4, !dbg !5465
  br label %for.cond, !dbg !5466, !llvm.loop !5467

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %namelen, align 4, !dbg !5469
  %12 = load i32, ptr %match.addr, align 4, !dbg !5471
  %add12 = add i32 %12, 4, !dbg !5472
  %cmp13 = icmp sgt i32 %11, %add12, !dbg !5473
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5474

if.then15:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1, !dbg !5475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5475

if.end16:                                         ; preds = %for.end
  %13 = load i64, ptr %len.addr, align 8, !dbg !5476
  %cmp17 = icmp ult i64 %13, 8, !dbg !5478
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5479

if.then19:                                        ; preds = %if.end16
  store i1 false, ptr %retval, align 1, !dbg !5480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5480

if.end20:                                         ; preds = %if.end16
  %14 = load ptr, ptr %buffer.addr, align 8, !dbg !5481
  %arrayidx21 = getelementptr i8, ptr %14, i64 4, !dbg !5481
  %15 = load i8, ptr %arrayidx21, align 1, !dbg !5481
  %conv22 = zext i8 %15 to i32, !dbg !5481
  %16 = load ptr, ptr %buffer.addr, align 8, !dbg !5482
  %arrayidx23 = getelementptr i8, ptr %16, i64 5, !dbg !5482
  %17 = load i8, ptr %arrayidx23, align 1, !dbg !5482
  %conv24 = zext i8 %17 to i32, !dbg !5482
  %shl = shl i32 %conv24, 8, !dbg !5483
  %or = or i32 %conv22, %shl, !dbg !5484
  %conv25 = trunc i32 %or to i16, !dbg !5481
  store i16 %conv25, ptr %filepathlength, align 2, !dbg !5485
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !5486
  %add.ptr = getelementptr i8, ptr %18, i64 6, !dbg !5487
  %19 = load i64, ptr %len.addr, align 8, !dbg !5488
  %sub = sub i64 %19, 6, !dbg !5489
  %call26 = call i64 @ucs2_strsize(ptr noundef %add.ptr, i64 noundef %sub) #15, !dbg !5490
  %add27 = add i64 %call26, 2, !dbg !5491
  %conv28 = trunc i64 %add27 to i32, !dbg !5490
  store i32 %conv28, ptr %desclength, align 4, !dbg !5492
  %20 = load i32, ptr %desclength, align 4, !dbg !5493
  %tobool = icmp ne i32 %20, 0, !dbg !5493
  br i1 %tobool, label %if.end30, label %if.then29, !dbg !5495

if.then29:                                        ; preds = %if.end20
  store i1 false, ptr %retval, align 1, !dbg !5496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5496

if.end30:                                         ; preds = %if.end20
  %21 = load i32, ptr %desclength, align 4, !dbg !5497
  %22 = load i16, ptr %filepathlength, align 2, !dbg !5499
  %conv31 = zext i16 %22 to i32, !dbg !5499
  %add32 = add i32 %21, %conv31, !dbg !5500
  %add33 = add i32 %add32, 6, !dbg !5501
  %conv34 = sext i32 %add33 to i64, !dbg !5502
  %23 = load i64, ptr %len.addr, align 8, !dbg !5503
  %cmp35 = icmp ugt i64 %conv34, %23, !dbg !5504
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !5505

if.then37:                                        ; preds = %if.end30
  store i1 false, ptr %retval, align 1, !dbg !5506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5506

if.end38:                                         ; preds = %if.end30
  %24 = load ptr, ptr %var_name.addr, align 8, !dbg !5507
  %25 = load i32, ptr %match.addr, align 4, !dbg !5508
  %26 = load ptr, ptr %buffer.addr, align 8, !dbg !5509
  %27 = load i32, ptr %desclength, align 4, !dbg !5510
  %idx.ext = sext i32 %27 to i64, !dbg !5511
  %add.ptr39 = getelementptr i8, ptr %26, i64 %idx.ext, !dbg !5511
  %add.ptr40 = getelementptr i8, ptr %add.ptr39, i64 6, !dbg !5512
  %28 = load i16, ptr %filepathlength, align 2, !dbg !5513
  %conv41 = zext i16 %28 to i64, !dbg !5513
  %call42 = call zeroext i1 @validate_device_path(ptr noundef %24, i32 noundef %25, ptr noundef %add.ptr40, i64 noundef %conv41) #15, !dbg !5514
  store i1 %call42, ptr %retval, align 1, !dbg !5515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5515

cleanup:                                          ; preds = %if.end38, %if.then37, %if.then29, %if.then19, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %namelen) #14, !dbg !5516
  call void @llvm.lifetime.end.p0(i64 4, ptr %desclength) #14, !dbg !5516
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5516
  call void @llvm.lifetime.end.p0(i64 2, ptr %filepathlength) #14, !dbg !5516
  %29 = load i1, ptr %retval, align 1, !dbg !5516
  ret i1 %29, !dbg !5516
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @validate_device_path(ptr noundef %var_name, i32 noundef %match, ptr noundef %buffer, i64 noundef %len) #0 align 16 !dbg !5517 {
entry:
  %retval = alloca i1, align 1
  %var_name.addr = alloca ptr, align 8
  %match.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %var_name, ptr %var_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var_name.addr, metadata !5519, metadata !DIExpression()), !dbg !5525
  store i32 %match, ptr %match.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !5520, metadata !DIExpression()), !dbg !5526
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5521, metadata !DIExpression()), !dbg !5527
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5522, metadata !DIExpression()), !dbg !5528
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5523, metadata !DIExpression()), !dbg !5530
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #14, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5524, metadata !DIExpression()), !dbg !5532
  store i32 0, ptr %offset, align 4, !dbg !5532
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !5533
  store ptr %0, ptr %node, align 8, !dbg !5534
  %1 = load i64, ptr %len.addr, align 8, !dbg !5535
  %cmp = icmp ult i64 %1, 4, !dbg !5537
  br i1 %cmp, label %if.then, label %if.end, !dbg !5538

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5539

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !5540

while.cond:                                       ; preds = %if.end26, %if.end
  %2 = load i32, ptr %offset, align 4, !dbg !5541
  %conv = sext i32 %2 to i64, !dbg !5541
  %3 = load i64, ptr %len.addr, align 8, !dbg !5542
  %sub = sub i64 %3, 4, !dbg !5543
  %cmp1 = icmp ule i64 %conv, %sub, !dbg !5544
  br i1 %cmp1, label %land.lhs.true, label %land.end, !dbg !5545

land.lhs.true:                                    ; preds = %while.cond
  %4 = load ptr, ptr %node, align 8, !dbg !5546
  %length = getelementptr inbounds %struct.efi_generic_dev_path, ptr %4, i32 0, i32 2, !dbg !5547
  %5 = load i16, ptr %length, align 1, !dbg !5547
  %conv3 = zext i16 %5 to i64, !dbg !5546
  %cmp4 = icmp uge i64 %conv3, 4, !dbg !5548
  br i1 %cmp4, label %land.rhs, label %land.end, !dbg !5549

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %node, align 8, !dbg !5550
  %length6 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %6, i32 0, i32 2, !dbg !5551
  %7 = load i16, ptr %length6, align 1, !dbg !5551
  %conv7 = zext i16 %7 to i64, !dbg !5550
  %8 = load i64, ptr %len.addr, align 8, !dbg !5552
  %9 = load i32, ptr %offset, align 4, !dbg !5553
  %conv8 = sext i32 %9 to i64, !dbg !5553
  %sub9 = sub i64 %8, %conv8, !dbg !5554
  %cmp10 = icmp ule i64 %conv7, %sub9, !dbg !5555
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp10, %land.rhs ], !dbg !5556
  br i1 %10, label %while.body, label %while.end, !dbg !5540

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %node, align 8, !dbg !5557
  %length12 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %11, i32 0, i32 2, !dbg !5559
  %12 = load i16, ptr %length12, align 1, !dbg !5559
  %conv13 = zext i16 %12 to i32, !dbg !5557
  %13 = load i32, ptr %offset, align 4, !dbg !5560
  %add = add i32 %13, %conv13, !dbg !5560
  store i32 %add, ptr %offset, align 4, !dbg !5560
  %14 = load ptr, ptr %node, align 8, !dbg !5561
  %type = getelementptr inbounds %struct.efi_generic_dev_path, ptr %14, i32 0, i32 0, !dbg !5563
  %15 = load i8, ptr %type, align 1, !dbg !5563
  %conv14 = zext i8 %15 to i32, !dbg !5561
  %cmp15 = icmp eq i32 %conv14, 127, !dbg !5564
  br i1 %cmp15, label %land.lhs.true21, label %lor.lhs.false, !dbg !5565

lor.lhs.false:                                    ; preds = %while.body
  %16 = load ptr, ptr %node, align 8, !dbg !5566
  %type17 = getelementptr inbounds %struct.efi_generic_dev_path, ptr %16, i32 0, i32 0, !dbg !5567
  %17 = load i8, ptr %type17, align 1, !dbg !5567
  %conv18 = zext i8 %17 to i32, !dbg !5566
  %cmp19 = icmp eq i32 %conv18, 255, !dbg !5568
  br i1 %cmp19, label %land.lhs.true21, label %if.end26, !dbg !5569

land.lhs.true21:                                  ; preds = %lor.lhs.false, %while.body
  %18 = load ptr, ptr %node, align 8, !dbg !5570
  %sub_type = getelementptr inbounds %struct.efi_generic_dev_path, ptr %18, i32 0, i32 1, !dbg !5571
  %19 = load i8, ptr %sub_type, align 1, !dbg !5571
  %conv22 = zext i8 %19 to i32, !dbg !5570
  %cmp23 = icmp eq i32 %conv22, 255, !dbg !5572
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !5573

if.then25:                                        ; preds = %land.lhs.true21
  store i1 true, ptr %retval, align 1, !dbg !5574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5574

if.end26:                                         ; preds = %land.lhs.true21, %lor.lhs.false
  %20 = load ptr, ptr %buffer.addr, align 8, !dbg !5575
  %21 = load i32, ptr %offset, align 4, !dbg !5576
  %idx.ext = sext i32 %21 to i64, !dbg !5577
  %add.ptr = getelementptr i8, ptr %20, i64 %idx.ext, !dbg !5577
  store ptr %add.ptr, ptr %node, align 8, !dbg !5578
  br label %while.cond, !dbg !5540, !llvm.loop !5579

while.end:                                        ; preds = %land.end
  store i1 false, ptr %retval, align 1, !dbg !5581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5581

cleanup:                                          ; preds = %while.end, %if.then25, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #14, !dbg !5582
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !5582
  %22 = load i1, ptr %retval, align 1, !dbg !5582
  ret i1 %22, !dbg !5582
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @validate_ascii_string(ptr noundef %var_name, i32 noundef %match, ptr noundef %buffer, i64 noundef %len) #0 align 16 !dbg !5583 {
entry:
  %retval = alloca i1, align 1
  %var_name.addr = alloca ptr, align 8
  %match.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %var_name, ptr %var_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var_name.addr, metadata !5585, metadata !DIExpression()), !dbg !5590
  store i32 %match, ptr %match.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !5586, metadata !DIExpression()), !dbg !5591
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5587, metadata !DIExpression()), !dbg !5592
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5588, metadata !DIExpression()), !dbg !5593
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5589, metadata !DIExpression()), !dbg !5595
  store i32 0, ptr %i, align 4, !dbg !5596
  br label %for.cond, !dbg !5598

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5599
  %conv = sext i32 %0 to i64, !dbg !5599
  %1 = load i64, ptr %len.addr, align 8, !dbg !5601
  %cmp = icmp ult i64 %conv, %1, !dbg !5602
  br i1 %cmp, label %for.body, label %for.end, !dbg !5603

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !5604
  %3 = load i32, ptr %i, align 4, !dbg !5607
  %idxprom = sext i32 %3 to i64, !dbg !5604
  %arrayidx = getelementptr i8, ptr %2, i64 %idxprom, !dbg !5604
  %4 = load i8, ptr %arrayidx, align 1, !dbg !5604
  %conv2 = zext i8 %4 to i32, !dbg !5604
  %cmp3 = icmp sgt i32 %conv2, 127, !dbg !5608
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5609

if.then:                                          ; preds = %for.body
  store i1 false, ptr %retval, align 1, !dbg !5610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5610

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !5611
  %6 = load i32, ptr %i, align 4, !dbg !5613
  %idxprom5 = sext i32 %6 to i64, !dbg !5611
  %arrayidx6 = getelementptr i8, ptr %5, i64 %idxprom5, !dbg !5611
  %7 = load i8, ptr %arrayidx6, align 1, !dbg !5611
  %conv7 = zext i8 %7 to i32, !dbg !5611
  %cmp8 = icmp eq i32 %conv7, 0, !dbg !5614
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5615

if.then10:                                        ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5616

if.end11:                                         ; preds = %if.end
  br label %for.inc, !dbg !5617

for.inc:                                          ; preds = %if.end11
  %8 = load i32, ptr %i, align 4, !dbg !5618
  %inc = add i32 %8, 1, !dbg !5618
  store i32 %inc, ptr %i, align 4, !dbg !5618
  br label %for.cond, !dbg !5619, !llvm.loop !5620

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !5622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5622

cleanup:                                          ; preds = %for.end, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5623
  %9 = load i1, ptr %retval, align 1, !dbg !5623
  ret i1 %9, !dbg !5623
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5624 dso_local i64 @ucs2_strnlen(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5627 dso_local i32 @hex_to_bin(i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5631 dso_local i64 @ucs2_strsize(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5634 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5638 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5642, metadata !DIExpression()), !dbg !5645
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5643, metadata !DIExpression()), !dbg !5646
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5644, metadata !DIExpression()), !dbg !5647
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5648
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5650
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5651
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15, !dbg !5652
  br i1 %call, label %if.end, label %if.then, !dbg !5653

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5654

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5655
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5656
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5657
  store ptr %3, ptr %prev1, align 8, !dbg !5658
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5659
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5660
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5661
  store ptr %5, ptr %next2, align 8, !dbg !5662
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5663
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5664
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5665
  store ptr %7, ptr %prev3, align 8, !dbg !5666
  br label %do.body, !dbg !5667

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5668

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5670

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5668

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5672
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5672
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5672
  store volatile ptr %9, ptr %next6, align 8, !dbg !5672
  br label %do.end7, !dbg !5672

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5668

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5674
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5675 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5679, metadata !DIExpression()), !dbg !5682
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5680, metadata !DIExpression()), !dbg !5683
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5681, metadata !DIExpression()), !dbg !5684
  ret i1 true, !dbg !5685
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !5686 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5690
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #15, !dbg !5692
  br i1 %call, label %if.end, label %if.then, !dbg !5693

if.then:                                          ; preds = %entry
  br label %return, !dbg !5694

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5695
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5696
  %2 = load ptr, ptr %prev, align 8, !dbg !5696
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5697
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5698
  %4 = load ptr, ptr %next, align 8, !dbg !5698
  call void @__list_del(ptr noundef %2, ptr noundef %4) #15, !dbg !5699
  br label %return, !dbg !5700

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !5701 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  ret i1 true, !dbg !5707
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5708 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5710, metadata !DIExpression()), !dbg !5712
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5711, metadata !DIExpression()), !dbg !5713
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5714
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5715
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5716
  store ptr %0, ptr %prev1, align 8, !dbg !5717
  br label %do.body, !dbg !5718

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5719

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5721

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5719

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5723
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5723
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5723
  store volatile ptr %2, ptr %next4, align 8, !dbg !5723
  br label %do.end5, !dbg !5723

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5719

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5725
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223}
!llvm.ident = !{!4224}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_import_ns253", scope: !2, file: !3, line: 25, type: !4215, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/efivarfs/.vars.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D MODULE -D KBUILD_BASENAME=\22vars\22 -D KBUILD_MODNAME=\22efivarfs\22 -D __KBUILD_MODNAME=kmod_efivarfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/efivarfs/vars.ll fs/efivarfs/vars.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !4121, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/efivarfs/vars.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c9b16354b24f5a3f2df943c97047e00")
!4 = !{!5, !11, !18, !23, !31, !47, !55, !61, !66, !72, !79, !86, !92}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!15 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!16 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!17 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
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
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !32, line: 1325, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!34 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!35 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!36 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!37 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!38 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!39 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!40 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!41 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!42 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!43 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!44 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!45 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!46 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !48, line: 68, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!51 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!54 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !56, line: 54, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "USRQUOTA", value: 0)
!59 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!60 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !62, line: 65, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!65 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !67, line: 16, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "TT_NONE", value: 0)
!70 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!71 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !73, line: 51, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!76 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!77 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!78 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !80, line: 15, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!83 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!84 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!85 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !87, line: 26, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !93, line: 364, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!94 = !{!95, !96, !97, !98, !99, !100, !101}
!95 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!97 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!98 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!99 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!100 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!101 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!102 = !{!103, !105, !106, !137, !4112, !4113, !4119}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !104, line: 154, baseType: !7)
!104 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efivar_entry", file: !108, line: 21, size: 17344, elements: !109)
!108 = !DIFile(filename: "fs/efivarfs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd82167b09c718742058efff5d1b8f12")
!109 = !{!110, !146, !152}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !107, file: !108, line: 22, baseType: !111, size: 16672)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_variable", file: !108, line: 12, size: 16672, elements: !112)
!112 = !{!113, !124, !136, !138, !142, !144}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "VariableName", scope: !111, file: !108, line: 13, baseType: !114, size: 8192)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 8192, elements: !122)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !116, line: 49, baseType: !117)
!116 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !118, line: 19, baseType: !119)
!118 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !120, line: 24, baseType: !121)
!120 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !{!123}
!123 = !DISubrange(count: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "VendorGuid", scope: !111, file: !108, line: 14, baseType: !125, size: 128, align: 32, offset: 8192)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !116, line: 74, baseType: !126, align: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !127, line: 17, baseType: !128)
!127 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 15, size: 128, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !128, file: !127, line: 16, baseType: !131, size: 128)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 128, elements: !134)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !120, line: 21, baseType: !133)
!133 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!134 = !{!135}
!135 = !DISubrange(count: 16)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "DataSize", scope: !111, file: !108, line: 15, baseType: !137, size: 64, offset: 8320)
!137 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !111, file: !108, line: 16, baseType: !139, size: 8192, offset: 8384)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 8192, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 1024)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "Status", scope: !111, file: !108, line: 17, baseType: !143, size: 64, offset: 16576)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !116, line: 47, baseType: !137)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !111, file: !108, line: 18, baseType: !145, size: 32, offset: 16640)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !120, line: 27, baseType: !7)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !107, file: !108, line: 23, baseType: !147, size: 128, offset: 16704)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !104, line: 190, size: 128, elements: !148)
!148 = !{!149, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !104, line: 191, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !147, file: !104, line: 191, baseType: !150, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !107, file: !108, line: 24, baseType: !153, size: 512, offset: 16832)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !154, line: 64, size: 512, elements: !155)
!154 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!155 = !{!156, !160, !161, !163, !246, !4010, !4102, !4107, !4108, !4109, !4110, !4111}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !154, line: 65, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !153, file: !154, line: 66, baseType: !147, size: 128, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !154, line: 67, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !153, file: !154, line: 68, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !154, line: 168, size: 768, elements: !166)
!166 = !{!167, !168, !205, !206}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !154, line: 169, baseType: !147, size: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !165, file: !154, line: 170, baseType: !169, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !170, line: 29, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !170, line: 17, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !170, line: 18, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 18, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !174, file: !170, line: 19, baseType: !177, size: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !178, line: 14, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !177, file: !178, line: 15, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !182, line: 44, baseType: !183)
!182 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !182, line: 14, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !182, line: 15, baseType: !186, size: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !182, line: 15, size: 32, elements: !187)
!187 = !{!188, !194, !200}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !182, line: 16, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !104, line: 174, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 172, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !190, file: !104, line: 173, baseType: !193, size: 32)
!193 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 24, baseType: !195, size: 16)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 24, size: 16, elements: !196)
!196 = !{!197, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !195, file: !182, line: 25, baseType: !198, size: 8)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !118, line: 17, baseType: !132)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !195, file: !182, line: 26, baseType: !198, size: 8, offset: 8)
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 28, baseType: !201, size: 32)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 28, size: 32, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !201, file: !182, line: 29, baseType: !117, size: 16)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !201, file: !182, line: 30, baseType: !117, size: 16, offset: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !154, line: 171, baseType: !153, size: 512, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !165, file: !154, line: 172, baseType: !207, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !154, line: 133, size: 192, elements: !210)
!210 = !{!211, !218, !223}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !209, file: !154, line: 134, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!193, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !154, line: 135, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!157, !216}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !209, file: !154, line: 136, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!193, !216, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !154, line: 125, size: 20736, elements: !230)
!230 = !{!231, !236, !240, !241, !245}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !229, file: !154, line: 126, baseType: !232, size: 192)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 192, elements: !234)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!234 = !{!235}
!235 = !DISubrange(count: 3)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !229, file: !154, line: 127, baseType: !237, size: 4096, offset: 192)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 4096, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !229, file: !154, line: 128, baseType: !193, size: 32, offset: 4288)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !229, file: !154, line: 129, baseType: !242, size: 16384, offset: 4320)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 16384, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 2048)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !229, file: !154, line: 130, baseType: !193, size: 32, offset: 20704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !153, file: !154, line: 69, baseType: !247, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !154, line: 116, size: 384, elements: !250)
!250 = !{!251, !255, !283, !3972, !4000, !4004}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !249, file: !154, line: 117, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !162}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !249, file: !154, line: 118, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !259, line: 254, size: 128, elements: !260)
!259 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!260 = !{!261, !276}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !258, file: !259, line: 255, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !162, !270, !233}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !104, line: 66, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !267, line: 73, baseType: !268)
!267 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !267, line: 15, baseType: !269)
!269 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !259, line: 30, size: 128, elements: !272)
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !259, line: 31, baseType: !157, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !271, file: !259, line: 32, baseType: !275, size: 16, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !104, line: 24, baseType: !121)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !258, file: !259, line: 256, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!265, !162, !270, !157, !280}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 61, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !267, line: 72, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !267, line: 16, baseType: !137)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !249, file: !154, line: 119, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !259, line: 84, size: 320, elements: !288)
!288 = !{!289, !290, !294, !3968, !3970}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !259, line: 85, baseType: !157, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !287, file: !259, line: 86, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!275, !162, !270, !193}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !287, file: !259, line: 88, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!275, !162, !298, !193}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !259, line: 175, size: 512, elements: !300)
!300 = !{!301, !302, !303, !304, !3959, !3963, !3964}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !299, file: !259, line: 176, baseType: !271, size: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !299, file: !259, line: 177, baseType: !280, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !299, file: !259, line: 178, baseType: !105, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !299, file: !259, line: 179, baseType: !305, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !310)
!310 = !{!311, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3953, !3954, !3955, !3956, !3957, !3958}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !309, file: !19, line: 473, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !314)
!314 = !{!315, !316, !317, !325, !326, !333, !334, !337, !338, !3723, !3724, !3725, !3726, !3727, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3767, !3770, !3771, !3772, !3789, !3790, !3791, !3792}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !313, file: !19, line: 642, baseType: !275, size: 16)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !313, file: !19, line: 643, baseType: !121, size: 16, offset: 16)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !313, file: !19, line: 644, baseType: !318, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !319, line: 23, baseType: !320)
!319 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 21, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !320, file: !319, line: 22, baseType: !323, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !104, line: 37, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !267, line: 49, baseType: !7)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !313, file: !19, line: 645, baseType: !147, size: 128, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !313, file: !19, line: 646, baseType: !327, size: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !319, line: 28, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 26, size: 32, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !328, file: !319, line: 27, baseType: !331, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !104, line: 38, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !267, line: 50, baseType: !7)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !313, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !313, file: !19, line: 650, baseType: !335, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !313, file: !19, line: 651, baseType: !335, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !313, file: !19, line: 654, baseType: !339, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !342)
!342 = !{!343, !3551, !3561, !3565, !3569, !3573, !3577, !3581, !3585, !3589, !3593, !3594, !3598, !3602, !3639, !3668, !3672, !3678, !3682, !3686, !3690, !3694, !3698, !3704, !3708}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !341, file: !19, line: 1967, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !312, !347, !7}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !349, line: 82, size: 1536, elements: !350)
!349 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!350 = !{!351, !352, !362, !370, !371, !390, !391, !395, !408, !3535, !3536, !3537, !3538, !3543, !3544, !3545}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !348, file: !349, line: 84, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !348, file: !349, line: 85, baseType: !353, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !354, line: 275, baseType: !355)
!354 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !354, line: 275, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !355, file: !354, line: 275, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !354, line: 69, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !354, line: 64, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !359, file: !354, line: 65, baseType: !7, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !348, file: !349, line: 86, baseType: !363, size: 128, offset: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !364, line: 38, size: 128, elements: !365)
!364 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!365 = !{!366, !368}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !364, line: 39, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !363, file: !364, line: 39, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !348, file: !349, line: 87, baseType: !347, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !348, file: !349, line: 88, baseType: !372, size: 128, offset: 256)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !349, line: 49, size: 128, elements: !373)
!373 = !{!374, !387}
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !349, line: 50, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !349, line: 50, size: 64, elements: !376)
!376 = !{!377, !383}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !349, line: 51, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !375, file: !349, line: 51, size: 64, elements: !379)
!379 = !{!380, !382}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !378, file: !349, line: 52, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !118, line: 21, baseType: !145)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !378, file: !349, line: 52, baseType: !381, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !375, file: !349, line: 54, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !118, line: 23, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !120, line: 31, baseType: !386)
!386 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !349, line: 56, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !348, file: !349, line: 89, baseType: !312, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !348, file: !349, line: 91, baseType: !392, size: 256, offset: 448)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !348, file: !349, line: 94, baseType: !396, size: 64, offset: 704)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !397, line: 25, size: 64, elements: !398)
!397 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !397, line: 26, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !397, line: 26, size: 64, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !400, file: !397, line: 28, baseType: !385, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !397, line: 30, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !397, line: 30, size: 64, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !404, file: !397, line: 31, baseType: !169, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !404, file: !397, line: 32, baseType: !193, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !348, file: !349, line: 95, baseType: !409, size: 64, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !349, line: 128, size: 1024, align: 512, elements: !412)
!412 = !{!413, !417, !418, !425, !431, !435, !439, !443, !444, !448, !452, !3525, !3529}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !411, file: !349, line: 129, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!193, !347, !7}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !411, file: !349, line: 130, baseType: !414, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !411, file: !349, line: 131, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!193, !422, !424}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !411, file: !349, line: 132, baseType: !426, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!193, !422, !7, !157, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !411, file: !349, line: 134, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!193, !422}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !411, file: !349, line: 135, baseType: !436, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!193, !347}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !411, file: !349, line: 136, baseType: !440, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !347}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !411, file: !349, line: 137, baseType: !440, size: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !411, file: !349, line: 138, baseType: !445, size: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !347, !312}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !411, file: !349, line: 139, baseType: !449, size: 64, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!233, !347, !233, !193}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !411, file: !349, line: 140, baseType: !453, size: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!456, !3524}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !458, line: 70, size: 256, elements: !459)
!458 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!459 = !{!460, !461, !3520, !3521}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !457, file: !458, line: 71, baseType: !347, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !457, file: !458, line: 72, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !464)
!464 = !{!465, !466, !469, !470, !471, !475, !954, !2045, !2085, !2170, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2187, !2191, !2192, !2195, !2198, !2201, !2204, !2205, !2206, !2247, !3455, !3456, !3457, !3458, !3459, !3460, !3463, !3465, !3470, !3471, !3472, !3473, !3474, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !463, file: !19, line: 1191, baseType: !147, size: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !463, file: !19, line: 1192, baseType: !467, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !104, line: 21, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !104, line: 18, baseType: !381)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !463, file: !19, line: 1193, baseType: !133, size: 8, offset: 160)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !463, file: !19, line: 1194, baseType: !137, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !463, file: !19, line: 1195, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !104, line: 52, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !267, line: 88, baseType: !474)
!474 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !463, file: !19, line: 1196, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !478)
!478 = !{!479, !480, !481, !487, !491, !495, !499, !939, !940, !944, !946, !947, !948, !950, !951, !952, !953}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !477, file: !19, line: 2367, baseType: !157, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !477, file: !19, line: 2368, baseType: !193, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !477, file: !19, line: 2376, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!193, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !458, line: 21, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !477, file: !19, line: 2377, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !477, file: !19, line: 2378, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!347, !476, !193, !157, !105}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !477, file: !19, line: 2380, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !462}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !477, file: !19, line: 2381, baseType: !500, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !502)
!502 = !{!503, !504, !505, !509, !531, !557, !558, !559, !560, !564, !569, !570, !590, !646, !647, !648, !649, !650, !653, !654, !655, !663, !667, !694, !715, !716, !717, !718, !727, !750, !751, !754, !757, !758, !759, !760, !761, !762, !763, !768, !769, !897, !905, !906, !907, !909, !913, !914, !918, !919, !920, !921, !923, !924, !925, !932, !933, !934, !938}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !501, file: !12, line: 403, baseType: !11, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !501, file: !12, line: 406, baseType: !147, size: 128, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !501, file: !12, line: 409, baseType: !506, size: 448, offset: 192)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 448, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 56)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !501, file: !12, line: 417, baseType: !510, size: 768, offset: 640)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !511)
!511 = !{!512, !513, !514, !515, !518}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !510, file: !12, line: 46, baseType: !153, size: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !510, file: !12, line: 47, baseType: !500, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !510, file: !12, line: 48, baseType: !162, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !510, file: !12, line: 49, baseType: !516, size: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !510, file: !12, line: 50, baseType: !519, size: 64, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !521, line: 26, size: 256, elements: !522)
!521 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !520, file: !521, line: 27, baseType: !7, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !520, file: !521, line: 28, baseType: !525, size: 192, offset: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !526, line: 43, size: 192, elements: !527)
!526 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!527 = !{!528, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !525, file: !526, line: 44, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !178, line: 23, baseType: !177)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !525, file: !526, line: 45, baseType: !147, size: 128, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !501, file: !12, line: 418, baseType: !532, size: 64, offset: 1408)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !534)
!534 = !{!535, !536, !541, !545, !549, !553}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !533, file: !12, line: 54, baseType: !271, size: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !533, file: !12, line: 55, baseType: !537, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!265, !532, !540, !233}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !533, file: !12, line: 57, baseType: !542, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!265, !532, !540, !157, !280}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !533, file: !12, line: 59, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !500, !157}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !533, file: !12, line: 60, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!193, !500}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !533, file: !12, line: 61, baseType: !554, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !500}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !501, file: !12, line: 419, baseType: !157, size: 64, offset: 1472)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !501, file: !12, line: 420, baseType: !157, size: 64, offset: 1536)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !501, file: !12, line: 421, baseType: !162, size: 64, offset: 1600)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !501, file: !12, line: 424, baseType: !561, size: 64, offset: 1664)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !501, file: !12, line: 425, baseType: !565, size: 64, offset: 1728)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !118, line: 20, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !120, line: 26, baseType: !193)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !501, file: !12, line: 426, baseType: !7, size: 32, offset: 1792)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !501, file: !12, line: 435, baseType: !571, size: 256, offset: 1856)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !572, line: 66, size: 256, elements: !573)
!572 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!573 = !{!574, !583, !584, !589}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !571, file: !572, line: 67, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !576, line: 13, baseType: !577)
!576 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !104, line: 181, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 179, size: 64, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !578, file: !104, line: 180, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !118, line: 22, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !120, line: 30, baseType: !474)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !571, file: !572, line: 68, baseType: !529, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !571, file: !572, line: 70, baseType: !585, size: 32, offset: 96)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !586, line: 15, size: 32, elements: !587)
!586 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !585, file: !586, line: 20, baseType: !189, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !571, file: !572, line: 72, baseType: !147, size: 128, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !501, file: !12, line: 437, baseType: !591, size: 64, offset: 2112)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !593, line: 69, size: 320, elements: !594)
!593 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!594 = !{!595, !596, !597, !617, !619, !623, !624}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !592, file: !593, line: 70, baseType: !157, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !592, file: !593, line: 71, baseType: !500, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !592, file: !593, line: 72, baseType: !598, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !593, line: 47, size: 256, elements: !601)
!601 = !{!602, !603, !609, !613}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !593, line: 49, baseType: !7, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !600, file: !593, line: 51, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!193, !157, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !600, file: !593, line: 53, baseType: !610, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!193, !233, !607}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !600, file: !593, line: 55, baseType: !614, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !105}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !592, file: !593, line: 73, baseType: !618, size: 16, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !592, file: !593, line: 74, baseType: !620, size: 8, offset: 208)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !118, line: 16, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !120, line: 20, baseType: !622)
!622 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !593, line: 75, baseType: !198, size: 8, offset: 216)
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !593, line: 76, baseType: !625, size: 64, offset: 256)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !592, file: !593, line: 76, size: 64, elements: !626)
!626 = !{!627, !628, !635}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !625, file: !593, line: 77, baseType: !105, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !625, file: !593, line: 78, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !593, line: 86, size: 128, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !631, file: !593, line: 87, baseType: !7, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !631, file: !593, line: 88, baseType: !233, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !625, file: !593, line: 79, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !593, line: 92, size: 256, elements: !639)
!639 = !{!640, !641, !642, !644, !645}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !638, file: !593, line: 94, baseType: !7, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !638, file: !593, line: 95, baseType: !7, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !638, file: !593, line: 96, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !638, file: !593, line: 97, baseType: !598, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !638, file: !593, line: 98, baseType: !105, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !501, file: !12, line: 438, baseType: !7, size: 32, offset: 2176)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !501, file: !12, line: 441, baseType: !7, size: 32, offset: 2208)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !501, file: !12, line: 442, baseType: !561, size: 64, offset: 2240)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !501, file: !12, line: 443, baseType: !565, size: 64, offset: 2304)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !501, file: !12, line: 444, baseType: !651, size: 8, offset: 2368)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !104, line: 35, baseType: !652)
!652 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !501, file: !12, line: 451, baseType: !651, size: 8, offset: 2376)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !501, file: !12, line: 454, baseType: !7, size: 32, offset: 2400)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !501, file: !12, line: 455, baseType: !656, size: 64, offset: 2432)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !658, line: 23, size: 96, elements: !659)
!658 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!659 = !{!660, !661, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !657, file: !658, line: 24, baseType: !193, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !657, file: !658, line: 24, baseType: !193, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !657, file: !658, line: 24, baseType: !193, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !501, file: !12, line: 458, baseType: !664, size: 64, offset: 2496)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!193}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !501, file: !12, line: 460, baseType: !668, size: 4032, align: 512, offset: 2560)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 4032, elements: !692)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !670)
!670 = !{!671, !672, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !669, file: !12, line: 363, baseType: !105, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !669, file: !12, line: 364, baseType: !7, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !669, file: !12, line: 367, baseType: !674, size: 448, offset: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !674, file: !12, line: 320, baseType: !500, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !674, file: !12, line: 321, baseType: !678, size: 384, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !679, line: 40, size: 384, elements: !680)
!679 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !678, file: !679, line: 41, baseType: !682, size: 384, align: 64)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 384, align: 64, elements: !690)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !684, line: 5, size: 192, align: 64, elements: !685)
!684 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!685 = !{!686, !687, !689}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !683, file: !684, line: 6, baseType: !137, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !683, file: !684, line: 7, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !683, file: !684, line: 8, baseType: !688, size: 64, offset: 128)
!690 = !{!691}
!691 = !DISubrange(count: 2)
!692 = !{!693}
!693 = !DISubrange(count: 7)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !501, file: !12, line: 463, baseType: !695, size: 192, offset: 6592)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !696, line: 8, size: 192, elements: !697)
!696 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!697 = !{!698, !699, !701}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !695, file: !696, line: 10, baseType: !7, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !695, file: !696, line: 11, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !695, file: !696, line: 12, baseType: !702, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !704, line: 59, size: 48, elements: !705)
!704 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!705 = !{!706, !710, !711, !712, !713, !714}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !703, file: !704, line: 60, baseType: !707, size: 16)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !118, line: 18, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !120, line: 23, baseType: !709)
!709 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !703, file: !704, line: 61, baseType: !707, size: 16, offset: 16)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !703, file: !704, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !703, file: !704, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !703, file: !704, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !703, file: !704, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !501, file: !12, line: 465, baseType: !137, size: 64, offset: 6784)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !501, file: !12, line: 469, baseType: !7, size: 32, offset: 6848)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !501, file: !12, line: 470, baseType: !147, size: 128, offset: 6912)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !501, file: !12, line: 471, baseType: !719, size: 64, offset: 7040)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !721, line: 33, size: 96, elements: !722)
!721 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!722 = !{!723, !724, !725, !726}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !720, file: !721, line: 37, baseType: !193, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !720, file: !721, line: 43, baseType: !193, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !720, file: !721, line: 45, baseType: !121, size: 16, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !721, line: 47, baseType: !121, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !501, file: !12, line: 476, baseType: !728, size: 64, offset: 7104)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !730)
!730 = !{!731, !747, !748, !749}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !729, file: !12, line: 379, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !734, line: 204, baseType: !735)
!734 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !734, line: 197, size: 192, elements: !736)
!736 = !{!737, !739, !740, !741, !743, !745}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !735, file: !734, line: 198, baseType: !738, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !734, line: 21, baseType: !145)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !735, file: !734, line: 199, baseType: !133, size: 8, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !735, file: !734, line: 200, baseType: !133, size: 8, offset: 40)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !735, file: !734, line: 201, baseType: !742, size: 16, offset: 48)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !734, line: 17, baseType: !119)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !735, file: !734, line: 202, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !734, line: 16, baseType: !385)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !735, file: !734, line: 203, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !734, line: 22, baseType: !385)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !729, file: !12, line: 380, baseType: !7, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !729, file: !12, line: 381, baseType: !233, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !729, file: !12, line: 382, baseType: !233, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !501, file: !12, line: 477, baseType: !729, size: 256, offset: 7168)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !501, file: !12, line: 480, baseType: !752, size: 64, offset: 7424)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !501, file: !12, line: 483, baseType: !755, size: 64, offset: 7488)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !501, file: !12, line: 488, baseType: !233, size: 64, offset: 7552)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !501, file: !12, line: 492, baseType: !105, size: 64, offset: 7616)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !501, file: !12, line: 493, baseType: !7, size: 32, offset: 7680)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !501, file: !12, line: 495, baseType: !105, size: 64, offset: 7744)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !501, file: !12, line: 496, baseType: !7, size: 32, offset: 7808)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !501, file: !12, line: 499, baseType: !7, size: 32, offset: 7840)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !501, file: !12, line: 500, baseType: !764, size: 64, offset: 7872)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !766, line: 45, baseType: !767)
!766 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !501, file: !12, line: 503, baseType: !7, size: 32, offset: 7936)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !501, file: !12, line: 504, baseType: !770, size: 64, offset: 8000)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !773, line: 96, size: 192, elements: !774)
!773 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!774 = !{!775, !776, !857, !861}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !772, file: !773, line: 97, baseType: !7, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !772, file: !773, line: 98, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !773, line: 24, size: 3072, elements: !779)
!779 = !{!780, !782, !783, !784, !785, !809, !810, !811, !812, !830, !842, !843, !854, !855, !856}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !778, file: !773, line: 26, baseType: !781, size: 128)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 128, elements: !690)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !778, file: !773, line: 27, baseType: !781, size: 128, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !778, file: !773, line: 28, baseType: !193, size: 32, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !778, file: !773, line: 31, baseType: !169, size: 32, align: 512, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !778, file: !773, line: 32, baseType: !786, size: 960, offset: 576)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !787, line: 206, size: 960, elements: !788)
!787 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!788 = !{!789, !798, !803, !805, !806, !808}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !786, file: !787, line: 207, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !104, line: 232, size: 128, align: 64, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !104, line: 233, baseType: !790, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !791, file: !104, line: 234, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !790}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !786, file: !787, line: 208, baseType: !799, size: 256, offset: 64)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 256, elements: !801)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!801 = !{!802}
!802 = !DISubrange(count: 4)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !786, file: !787, line: 209, baseType: !804, size: 256, offset: 320)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !801)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !786, file: !787, line: 213, baseType: !269, size: 64, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !786, file: !787, line: 215, baseType: !807, size: 256, offset: 640)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 256, elements: !801)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !786, file: !787, line: 216, baseType: !198, size: 8, offset: 896)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !778, file: !773, line: 33, baseType: !137, size: 64, offset: 1536)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !778, file: !773, line: 34, baseType: !137, size: 64, offset: 1600)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !778, file: !773, line: 35, baseType: !651, size: 8, offset: 1664)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !778, file: !773, line: 36, baseType: !813, size: 320, offset: 1728)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !814, line: 11, size: 320, elements: !815)
!814 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!815 = !{!816, !823, !824, !829}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !813, file: !814, line: 16, baseType: !817, size: 128)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !104, line: 198, size: 128, elements: !818)
!818 = !{!819, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !104, line: 199, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !817, file: !104, line: 199, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !813, file: !814, line: 17, baseType: !137, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !813, file: !814, line: 18, baseType: !825, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !814, line: 19, baseType: !381, size: 32, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !778, file: !773, line: 37, baseType: !831, size: 256, offset: 2048)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !832, line: 98, size: 256, elements: !833)
!832 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!833 = !{!834, !835, !836}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !831, file: !832, line: 99, baseType: !575, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !831, file: !832, line: 100, baseType: !147, size: 128, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !831, file: !832, line: 101, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !832, line: 21, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !841}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !778, file: !773, line: 38, baseType: !791, size: 128, align: 64, offset: 2304)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !778, file: !773, line: 39, baseType: !844, size: 64, offset: 2432)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !773, line: 49, size: 768, elements: !846)
!846 = !{!847, !848, !849, !850, !851, !852, !853}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !845, file: !773, line: 50, baseType: !169, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !845, file: !773, line: 51, baseType: !804, size: 256, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !845, file: !773, line: 53, baseType: !804, size: 256, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !845, file: !773, line: 54, baseType: !137, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !845, file: !773, line: 55, baseType: !844, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !845, file: !773, line: 56, baseType: !193, size: 32, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !845, file: !773, line: 57, baseType: !193, size: 32, offset: 736)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !778, file: !773, line: 40, baseType: !137, size: 64, offset: 2496)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !778, file: !773, line: 42, baseType: !193, size: 32, offset: 2560)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !778, file: !773, line: 43, baseType: !771, size: 64, offset: 2624)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !772, file: !773, line: 99, baseType: !858, offset: 128)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !859, line: 211, elements: !860)
!859 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!860 = !{}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !772, file: !773, line: 100, baseType: !862, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !773, line: 63, size: 3008, elements: !864)
!864 = !{!865, !866, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !896}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !863, file: !773, line: 64, baseType: !844, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !863, file: !773, line: 65, baseType: !867, size: 192, offset: 64)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 192, elements: !234)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !863, file: !773, line: 67, baseType: !193, size: 32, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !863, file: !773, line: 68, baseType: !571, size: 256, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !863, file: !773, line: 69, baseType: !169, size: 32, offset: 576)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !863, file: !773, line: 70, baseType: !571, size: 256, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !863, file: !773, line: 71, baseType: !137, size: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !863, file: !773, line: 72, baseType: !137, size: 64, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !863, file: !773, line: 73, baseType: !137, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !863, file: !773, line: 74, baseType: !137, size: 64, offset: 1088)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !863, file: !773, line: 75, baseType: !137, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !863, file: !773, line: 76, baseType: !137, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !863, file: !773, line: 77, baseType: !137, size: 64, offset: 1280)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !863, file: !773, line: 78, baseType: !137, size: 64, offset: 1344)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !863, file: !773, line: 79, baseType: !651, size: 8, offset: 1408)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !863, file: !773, line: 80, baseType: !137, size: 64, offset: 1472)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !863, file: !773, line: 81, baseType: !571, size: 256, offset: 1536)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !863, file: !773, line: 82, baseType: !520, size: 256, offset: 1792)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !863, file: !773, line: 84, baseType: !189, size: 32, offset: 2048)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !863, file: !773, line: 87, baseType: !137, size: 64, offset: 2112)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !863, file: !773, line: 88, baseType: !137, size: 64, offset: 2176)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !863, file: !773, line: 89, baseType: !888, size: 704, offset: 2240)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !832, line: 111, size: 704, elements: !889)
!889 = !{!890, !891, !892, !895}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !888, file: !832, line: 112, baseType: !831, size: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !888, file: !832, line: 113, baseType: !813, size: 320, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !888, file: !832, line: 116, baseType: !893, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !832, line: 18, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !888, file: !832, line: 117, baseType: !193, size: 32, offset: 640)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !863, file: !773, line: 90, baseType: !771, size: 64, offset: 2944)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !501, file: !12, line: 515, baseType: !898, size: 64, offset: 8064)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !900, line: 117, size: 128, elements: !901)
!900 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !899, file: !900, line: 118, baseType: !567, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !899, file: !900, line: 119, baseType: !567, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !899, file: !900, line: 120, baseType: !269, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !501, file: !12, line: 516, baseType: !7, size: 32, offset: 8128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !501, file: !12, line: 519, baseType: !7, size: 32, offset: 8160)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !501, file: !12, line: 520, baseType: !908, size: 64, offset: 8192)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !501, file: !12, line: 523, baseType: !910, size: 64, offset: 8256)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !501, file: !12, line: 524, baseType: !7, size: 32, offset: 8320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !501, file: !12, line: 525, baseType: !915, size: 64, offset: 8384)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !501, file: !12, line: 526, baseType: !7, size: 32, offset: 8448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !501, file: !12, line: 533, baseType: !105, size: 64, offset: 8512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !501, file: !12, line: 534, baseType: !7, size: 32, offset: 8576)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !501, file: !12, line: 535, baseType: !922, size: 64, offset: 8640)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !501, file: !12, line: 536, baseType: !7, size: 32, offset: 8704)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !501, file: !12, line: 539, baseType: !193, size: 32, offset: 8736)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !501, file: !12, line: 540, baseType: !926, size: 64, offset: 8768)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !928, line: 32, size: 64, elements: !929)
!928 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !927, file: !928, line: 33, baseType: !567, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !927, file: !928, line: 34, baseType: !567, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !501, file: !12, line: 563, baseType: !147, size: 128, offset: 8832)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !501, file: !12, line: 565, baseType: !147, size: 128, offset: 8960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !501, file: !12, line: 568, baseType: !935, size: 64, offset: 9088)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !501, file: !12, line: 570, baseType: !189, size: 32, offset: 9152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !19, line: 2382, baseType: !476, size: 64, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !477, file: !19, line: 2383, baseType: !941, size: 64, offset: 512)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !104, line: 194, size: 64, elements: !942)
!942 = !{!943}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !941, file: !104, line: 195, baseType: !820, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !477, file: !19, line: 2385, baseType: !945, offset: 576)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !859, line: 206, elements: !860)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !477, file: !19, line: 2386, baseType: !945, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !477, file: !19, line: 2387, baseType: !945, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !477, file: !19, line: 2388, baseType: !949, offset: 576)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, elements: !234)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !477, file: !19, line: 2390, baseType: !945, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !477, file: !19, line: 2391, baseType: !945, offset: 576)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !477, file: !19, line: 2392, baseType: !945, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !477, file: !19, line: 2393, baseType: !945, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !463, file: !19, line: 1197, baseType: !955, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !958)
!958 = !{!959, !963, !967, !968, !972, !978, !982, !983, !984, !988, !992, !996, !997, !998, !1004, !1008, !1009, !1970, !1971, !1972, !1973, !1977, !1981, !2028, !2043, !2044}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !957, file: !19, line: 2058, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!312, !462}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !957, file: !19, line: 2059, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !312}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !957, file: !19, line: 2060, baseType: !964, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !957, file: !19, line: 2062, baseType: !969, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !312, !193}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !957, file: !19, line: 2063, baseType: !973, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!193, !312, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !19, line: 309, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !957, file: !19, line: 2064, baseType: !979, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!193, !312}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !957, file: !19, line: 2065, baseType: !964, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !957, file: !19, line: 2066, baseType: !496, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !957, file: !19, line: 2067, baseType: !985, size: 64, offset: 512)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!193, !462, !193}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !957, file: !19, line: 2068, baseType: !989, size: 64, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!193, !462, !18}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !957, file: !19, line: 2069, baseType: !993, size: 64, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!193, !462}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !957, file: !19, line: 2070, baseType: !989, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !957, file: !19, line: 2071, baseType: !993, size: 64, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !957, file: !19, line: 2072, baseType: !999, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!193, !347, !1002}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !957, file: !19, line: 2073, baseType: !1005, size: 64, offset: 896)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!193, !462, !700, !233}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !957, file: !19, line: 2074, baseType: !496, size: 64, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !957, file: !19, line: 2076, baseType: !1010, size: 64, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!193, !1013, !347}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1015, line: 17, size: 960, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1047, !1048, !1969}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1014, file: !1015, line: 18, baseType: !233, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1014, file: !1015, line: 19, baseType: !280, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1014, file: !1015, line: 20, baseType: !280, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1014, file: !1015, line: 21, baseType: !280, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1014, file: !1015, line: 22, baseType: !280, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1014, file: !1015, line: 23, baseType: !472, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1014, file: !1015, line: 24, baseType: !472, size: 64, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1014, file: !1015, line: 25, baseType: !571, size: 256, offset: 448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1014, file: !1015, line: 26, baseType: !1026, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1015, line: 32, size: 256, elements: !1029)
!1029 = !{!1030, !1035, !1039, !1043}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1028, file: !1015, line: 33, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!105, !1013, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1028, file: !1015, line: 34, baseType: !1036, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1013, !105}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1028, file: !1015, line: 35, baseType: !1040, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!105, !1013, !105, !1034}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1028, file: !1015, line: 36, baseType: !1044, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!193, !1013, !105}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1014, file: !1015, line: 27, baseType: !193, size: 32, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1014, file: !1015, line: 28, baseType: !1049, size: 64, offset: 832)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !1052)
!1052 = !{!1053, !1064, !1065, !1067, !1068, !1069, !1070, !1071, !1132, !1332, !1341, !1347, !1348, !1959, !1960, !1961, !1962, !1964, !1965, !1968}
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !19, line: 995, baseType: !1054, size: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !19, line: 995, size: 128, elements: !1055)
!1055 = !{!1056, !1062, !1063}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1054, file: !19, line: 996, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1058, line: 60, size: 64, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1057, file: !1058, line: 61, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1054, file: !19, line: 997, baseType: !791, size: 128, align: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1054, file: !19, line: 998, baseType: !7, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1051, file: !19, line: 1005, baseType: !169, size: 32, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1051, file: !19, line: 1006, baseType: !1066, size: 32, offset: 160)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !104, line: 156, baseType: !7)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1051, file: !19, line: 1007, baseType: !575, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1051, file: !19, line: 1008, baseType: !571, size: 256, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1051, file: !19, line: 1009, baseType: !472, size: 64, offset: 512)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1051, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1051, file: !19, line: 1011, baseType: !1072, size: 256, offset: 640)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !1073)
!1073 = !{!1074, !1095, !1128, !1129, !1130, !1131}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1072, file: !19, line: 949, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1076, line: 34, baseType: !1077)
!1076 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1076, line: 25, size: 64, elements: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1077, file: !1076, line: 26, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1081, line: 27, baseType: !1082)
!1081 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1081, line: 13, size: 64, elements: !1083)
!1083 = !{!1084, !1094}
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !1081, line: 14, baseType: !1085, size: 32)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1082, file: !1081, line: 14, size: 32, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1085, file: !1081, line: 15, baseType: !189, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1081, line: 16, baseType: !1089, size: 32)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !1081, line: 16, size: 32, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1089, file: !1081, line: 18, baseType: !198, size: 8)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1089, file: !1081, line: 19, baseType: !1093, size: 24, offset: 8)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 24, elements: !234)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1082, file: !1081, line: 26, baseType: !181, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1072, file: !19, line: 950, baseType: !1096, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !24, line: 59, size: 768, elements: !1098)
!1098 = !{!1099, !1105, !1106, !1107, !1109, !1110, !1117, !1118}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1097, file: !24, line: 61, baseType: !1100, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1101, line: 113, baseType: !1102)
!1101 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1101, line: 111, size: 32, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1102, file: !1101, line: 112, baseType: !189, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1097, file: !24, line: 62, baseType: !7, size: 32, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1097, file: !24, line: 63, baseType: !169, size: 32, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1097, file: !24, line: 65, baseType: !1108, size: 256, offset: 128)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 256, elements: !801)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1097, file: !24, line: 66, baseType: !941, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1097, file: !24, line: 68, baseType: !1111, size: 192, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1112, line: 41, baseType: !1113)
!1112 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1112, line: 37, size: 192, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1113, file: !1112, line: 38, baseType: !169, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1113, file: !1112, line: 39, baseType: !147, size: 128, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1097, file: !24, line: 69, baseType: !791, size: 128, align: 64, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1097, file: !24, line: 70, baseType: !1119, offset: 768)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1120, elements: !1126)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !24, line: 54, size: 128, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1120, file: !24, line: 55, baseType: !193, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1120, file: !24, line: 56, baseType: !1124, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !24, line: 56, flags: DIFlagFwdDecl)
!1126 = !{!1127}
!1127 = !DISubrange(count: -1)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1072, file: !19, line: 951, baseType: !23, size: 32, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1072, file: !19, line: 952, baseType: !318, size: 32, offset: 160)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1072, file: !19, line: 952, baseType: !318, size: 32, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1072, file: !19, line: 953, baseType: !193, size: 32, offset: 224)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1051, file: !19, line: 1012, baseType: !1133, size: 64, offset: 896)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1136, line: 110, size: 1472, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1154, !1155, !1156, !1157, !1158, !1159, !1277, !1278, !1279, !1280, !1281, !1312, !1315, !1319, !1327}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1135, file: !1136, line: 111, baseType: !575, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1135, file: !1136, line: 112, baseType: !318, size: 32, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1135, file: !1136, line: 113, baseType: !327, size: 32, offset: 96)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1135, file: !1136, line: 114, baseType: !318, size: 32, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1135, file: !1136, line: 115, baseType: !327, size: 32, offset: 160)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1135, file: !1136, line: 116, baseType: !318, size: 32, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1135, file: !1136, line: 117, baseType: !327, size: 32, offset: 224)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1135, file: !1136, line: 118, baseType: !318, size: 32, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1135, file: !1136, line: 119, baseType: !327, size: 32, offset: 288)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1135, file: !1136, line: 120, baseType: !7, size: 32, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1135, file: !1136, line: 121, baseType: !1149, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1150, line: 24, baseType: !1151)
!1150 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 24, size: 64, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1151, file: !1150, line: 24, baseType: !384, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1135, file: !1136, line: 122, baseType: !1149, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1135, file: !1136, line: 123, baseType: !1149, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1135, file: !1136, line: 124, baseType: !1149, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1135, file: !1136, line: 125, baseType: !1149, size: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1135, file: !1136, line: 127, baseType: !133, size: 8, offset: 704)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1135, file: !1136, line: 129, baseType: !1160, size: 64, offset: 768)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1162, line: 195, size: 1728, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1163 = !{!1164, !1165, !1168, !1173, !1182, !1185, !1186, !1193, !1194, !1195, !1196, !1199, !1200, !1201, !1202, !1203, !1241, !1262}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1161, file: !1162, line: 196, baseType: !1100, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1161, file: !1162, line: 197, baseType: !1166, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1162, line: 28, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !104, line: 104, baseType: !567)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 198, baseType: !1169, size: 192, offset: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 198, size: 192, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1169, file: !1162, line: 199, baseType: !147, size: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1169, file: !1162, line: 200, baseType: !683, size: 192, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1161, file: !1162, line: 205, baseType: !1174, size: 320, offset: 256)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1175, line: 48, size: 320, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1176 = !{!1177, !1178, !1179, !1180, !1181}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1174, file: !1175, line: 49, baseType: !575, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1174, file: !1175, line: 55, baseType: !575, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1174, file: !1175, line: 57, baseType: !585, size: 32, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1174, file: !1175, line: 59, baseType: !529, size: 32, offset: 160)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1174, file: !1175, line: 60, baseType: !147, size: 128, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1161, file: !1162, line: 206, baseType: !1183, size: 64, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1162, line: 206, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1161, file: !1162, line: 207, baseType: !105, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 208, baseType: !1187, size: 64, offset: 704)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 208, size: 64, elements: !1188)
!1188 = !{!1189, !1192}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1187, file: !1162, line: 209, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1191, line: 8, baseType: !582)
!1191 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1187, file: !1162, line: 210, baseType: !1190, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1161, file: !1162, line: 212, baseType: !1190, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1161, file: !1162, line: 213, baseType: !318, size: 32, offset: 832)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1161, file: !1162, line: 214, baseType: !327, size: 32, offset: 864)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1161, file: !1162, line: 215, baseType: !1197, size: 32, offset: 896)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1162, line: 31, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !104, line: 110, baseType: !381)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1161, file: !1162, line: 216, baseType: !121, size: 16, offset: 928)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1161, file: !1162, line: 217, baseType: !121, size: 16, offset: 944)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1161, file: !1162, line: 221, baseType: !709, size: 16, offset: 960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1161, file: !1162, line: 228, baseType: !137, size: 64, offset: 1024)
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 245, baseType: !1204, size: 320, offset: 1088)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 245, size: 320, elements: !1205)
!1205 = !{!1206, !1233}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1204, file: !1162, line: 246, baseType: !1207, size: 320)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1162, line: 114, size: 320, elements: !1208)
!1208 = !{!1209, !1210, !1222, !1225, !1232}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1207, file: !1162, line: 116, baseType: !137, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1162, line: 117, baseType: !1211, size: 64, offset: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1162, line: 117, size: 64, elements: !1212)
!1212 = !{!1213, !1221}
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1162, line: 118, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1211, file: !1162, line: 118, size: 64, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1214, file: !1162, line: 120, baseType: !117, size: 16)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1214, file: !1162, line: 121, baseType: !1218, size: 48, offset: 16)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 48, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 6)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1211, file: !1162, line: 127, baseType: !137, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1207, file: !1162, line: 129, baseType: !1223, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1162, line: 102, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1207, file: !1162, line: 130, baseType: !1226, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1162, line: 108, size: 192, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1227, file: !1162, line: 109, baseType: !791, size: 128, align: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1227, file: !1162, line: 110, baseType: !1100, size: 32, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1227, file: !1162, line: 111, baseType: !651, size: 8, offset: 160)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1207, file: !1162, line: 131, baseType: !157, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !1162, line: 247, baseType: !1234, size: 320)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1204, file: !1162, line: 247, size: 320, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1234, file: !1162, line: 248, baseType: !137, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1234, file: !1162, line: 249, baseType: !137, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1234, file: !1162, line: 250, baseType: !1223, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1234, file: !1162, line: 251, baseType: !1226, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1234, file: !1162, line: 252, baseType: !233, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 260, baseType: !1242, size: 256, offset: 1408)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 260, size: 256, elements: !1243)
!1243 = !{!1244, !1250}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1242, file: !1162, line: 261, baseType: !1245, size: 256)
!1245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1162, line: 134, size: 256, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1245, file: !1162, line: 135, baseType: !105, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1245, file: !1162, line: 136, baseType: !1249, size: 256)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !801)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !1162, line: 262, baseType: !1251, size: 256)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1162, line: 262, size: 256, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1251, file: !1162, line: 264, baseType: !147, size: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1251, file: !1162, line: 265, baseType: !1255, size: 128, offset: 128)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1256, line: 22, size: 128, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1257 = !{!1258, !1261}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1255, file: !1256, line: 23, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1256, line: 23, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1255, file: !1256, line: 24, baseType: !137, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1161, file: !1162, line: 280, baseType: !1263, size: 64, offset: 1664)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1162, line: 176, size: 192, elements: !1265)
!1265 = !{!1266, !1275, !1276}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1264, file: !1162, line: 177, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1162, line: 171, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!193, !1160, !1271, !1273, !1160}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1264, file: !1162, line: 178, baseType: !1160, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1264, file: !1162, line: 179, baseType: !1223, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1135, file: !1136, line: 130, baseType: !1160, size: 64, offset: 832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1135, file: !1136, line: 131, baseType: !1160, size: 64, offset: 896)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1135, file: !1136, line: 132, baseType: !1160, size: 64, offset: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1135, file: !1136, line: 135, baseType: !105, size: 64, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1135, file: !1136, line: 137, baseType: !1282, size: 64, offset: 1088)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1284, line: 14, size: 1088, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1285 = !{!1286, !1287, !1296, !1297, !1298, !1299, !1300, !1301}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1283, file: !1284, line: 15, baseType: !1100, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1283, file: !1284, line: 17, baseType: !1288, size: 320, offset: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1289, line: 22, size: 320, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1290 = !{!1291, !1292, !1293, !1294}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1288, file: !1289, line: 23, baseType: !529, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1288, file: !1289, line: 24, baseType: !581, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1288, file: !1289, line: 26, baseType: !147, size: 128, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1288, file: !1289, line: 28, baseType: !1295, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1283, file: !1284, line: 19, baseType: !137, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1283, file: !1284, line: 20, baseType: !575, size: 64, offset: 448)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1283, file: !1284, line: 23, baseType: !817, size: 128, offset: 512)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1283, file: !1284, line: 24, baseType: !318, size: 32, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1283, file: !1284, line: 29, baseType: !575, size: 64, offset: 704)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1283, file: !1284, line: 36, baseType: !1302, size: 320, offset: 768)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1303, line: 15, size: 320, elements: !1304)
!1303 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1302, file: !1303, line: 16, baseType: !529, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1302, file: !1303, line: 18, baseType: !193, size: 32, offset: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1302, file: !1303, line: 19, baseType: !193, size: 32, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1302, file: !1303, line: 20, baseType: !193, size: 32, offset: 96)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1302, file: !1303, line: 21, baseType: !193, size: 32, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1302, file: !1303, line: 22, baseType: !137, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1302, file: !1303, line: 23, baseType: !137, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1135, file: !1136, line: 138, baseType: !1313, size: 64, offset: 1152)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !319, line: 18, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1135, file: !1136, line: 139, baseType: !1316, size: 64, offset: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1318, line: 16, flags: DIFlagFwdDecl)
!1318 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1135, file: !1136, line: 140, baseType: !1320, size: 64, offset: 1280)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1136, line: 25, size: 64, elements: !1322)
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1321, file: !1136, line: 26, baseType: !189, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1321, file: !1136, line: 27, baseType: !193, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1321, file: !1136, line: 28, baseType: !1326, offset: 64)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, elements: !1126)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !1136, line: 142, baseType: !1328, size: 128, offset: 1344)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1135, file: !1136, line: 142, size: 128, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1328, file: !1136, line: 143, baseType: !193, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1328, file: !1136, line: 144, baseType: !791, size: 128, align: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1051, file: !19, line: 1013, baseType: !1333, size: 256, offset: 960)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1333, file: !19, line: 971, baseType: !137, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1333, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1333, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1333, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1333, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1333, file: !19, line: 976, baseType: !472, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1051, file: !19, line: 1014, baseType: !1342, size: 128, offset: 1216)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1343, line: 8, size: 128, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1342, file: !1343, line: 9, baseType: !456, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1342, file: !1343, line: 10, baseType: !347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1051, file: !19, line: 1015, baseType: !312, size: 64, offset: 1344)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1051, file: !19, line: 1016, baseType: !1349, size: 64, offset: 1408)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !1352)
!1352 = !{!1353, !1354, !1359, !1363, !1367, !1395, !1396, !1402, !1415, !1432, !1436, !1437, !1880, !1881, !1885, !1890, !1891, !1895, !1899, !1905, !1906, !1910, !1911, !1918, !1922, !1926, !1932, !1936, !1940, !1944, !1948, !1949, !1955}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1351, file: !19, line: 1915, baseType: !500, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1351, file: !19, line: 1916, baseType: !1355, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!472, !1358, !472, !193}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1351, file: !19, line: 1917, baseType: !1360, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!265, !1358, !233, !280, !1034}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1351, file: !19, line: 1918, baseType: !1364, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!265, !1358, !157, !280, !1034}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1351, file: !19, line: 1919, baseType: !1368, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!265, !1371, !1393}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1380, !1381, !1382, !1383}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1372, file: !19, line: 374, baseType: !1358, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1372, file: !19, line: 375, baseType: !472, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1372, file: !19, line: 376, baseType: !1377, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !1371, !269}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1372, file: !19, line: 377, baseType: !105, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1372, file: !19, line: 378, baseType: !193, size: 32, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1372, file: !19, line: 379, baseType: !117, size: 16, offset: 288)
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !19, line: 380, baseType: !1384, size: 64, offset: 320)
!1384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !19, line: 380, size: 64, elements: !1385)
!1385 = !{!1386, !1389}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1384, file: !19, line: 386, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !19, line: 386, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1384, file: !19, line: 395, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!265, !105}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !19, line: 69, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1351, file: !19, line: 1920, baseType: !1368, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1351, file: !19, line: 1921, baseType: !1397, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!193, !1371, !1400, !7}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1351, file: !19, line: 1923, baseType: !1403, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!193, !1358, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !1408)
!1408 = !{!1409, !1414}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1407, file: !19, line: 1859, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!651, !1406, !157, !193, !472, !384, !7}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1407, file: !19, line: 1860, baseType: !472, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1351, file: !19, line: 1924, baseType: !1416, size: 64, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1419, !1358, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1420, line: 59, baseType: !7)
!1420 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1423, line: 37, size: 128, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1424 = !{!1425, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1422, file: !1423, line: 38, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1423, line: 31, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1358, !1430, !1421}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1422, file: !1423, line: 39, baseType: !1419, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1351, file: !19, line: 1925, baseType: !1433, size: 64, offset: 576)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!269, !1358, !7, !137}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1351, file: !19, line: 1926, baseType: !1433, size: 64, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1351, file: !19, line: 1927, baseType: !1438, size: 64, offset: 704)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!193, !1358, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !32, line: 625, size: 1344, elements: !1443)
!1443 = !{!1444, !1453, !1608, !1614, !1621, !1622, !1627, !1628, !1633, !1634, !1637, !1873, !1874, !1875, !1876, !1877, !1878}
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !32, line: 628, baseType: !1445, size: 128)
!1445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1442, file: !32, line: 628, size: 128, elements: !1446)
!1446 = !{!1447, !1452}
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !32, line: 629, baseType: !1448, size: 128)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1445, file: !32, line: 629, size: 128, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1448, file: !32, line: 631, baseType: !137, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1448, file: !32, line: 632, baseType: !137, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1445, file: !32, line: 635, baseType: !791, size: 128, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1442, file: !32, line: 639, baseType: !1454, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !32, line: 733, size: 10240, elements: !1456)
!1456 = !{!1457, !1606}
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !32, line: 734, baseType: !1458, size: 10240)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !32, line: 734, size: 10240, elements: !1459)
!1459 = !{!1460, !1464, !1477, !1481, !1482, !1483, !1484, !1485, !1486, !1495, !1496, !1497, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1536, !1538, !1541, !1586, !1587, !1588, !1591, !1592, !1593, !1596, !1597, !1598, !1604, !1605}
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !32, line: 739, baseType: !1461, size: 512, align: 512)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !32, line: 739, size: 512, align: 512, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1461, file: !32, line: 747, baseType: !189, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1458, file: !32, line: 750, baseType: !1465, size: 128, offset: 512)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1466, line: 218, size: 128, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1467 = !{!1468, !1475, !1476}
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 219, baseType: !1469, size: 32)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 219, size: 32, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1469, file: !1466, line: 220, baseType: !169, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1469, file: !1466, line: 221, baseType: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1466, line: 197, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1466, line: 197, elements: !860)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1465, file: !1466, line: 223, baseType: !7, size: 32, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1465, file: !1466, line: 224, baseType: !105, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1458, file: !32, line: 752, baseType: !1478, size: 64, offset: 640)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!137, !1358, !137, !137, !137, !137}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1458, file: !32, line: 756, baseType: !137, size: 64, offset: 704)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1458, file: !32, line: 757, baseType: !137, size: 64, offset: 768)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1458, file: !32, line: 760, baseType: !137, size: 64, offset: 832)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1458, file: !32, line: 761, baseType: !137, size: 64, offset: 896)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1458, file: !32, line: 763, baseType: !137, size: 64, offset: 960)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1458, file: !32, line: 764, baseType: !1487, size: 64, offset: 1024)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1489, line: 299, baseType: !1490)
!1489 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1489, line: 299, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1490, file: !1489, line: 299, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1494, line: 18, baseType: !137)
!1494 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1458, file: !32, line: 773, baseType: !189, size: 32, offset: 1088)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1458, file: !32, line: 785, baseType: !189, size: 32, offset: 1120)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1458, file: !32, line: 795, baseType: !1498, size: 64, offset: 1152)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !32, line: 726, size: 128, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1499, file: !32, line: 727, baseType: !384, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1499, file: !32, line: 728, baseType: !193, size: 32, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1458, file: !32, line: 801, baseType: !137, size: 64, offset: 1216)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1458, file: !32, line: 804, baseType: !575, size: 64, offset: 1280)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1458, file: !32, line: 806, baseType: !193, size: 32, offset: 1344)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1458, file: !32, line: 808, baseType: !169, size: 32, offset: 1376)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1458, file: !32, line: 823, baseType: !1174, size: 320, offset: 1408)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1458, file: !32, line: 825, baseType: !147, size: 128, offset: 1728)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1458, file: !32, line: 845, baseType: !193, size: 32, offset: 1856)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1458, file: !32, line: 849, baseType: !137, size: 64, offset: 1920)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1458, file: !32, line: 850, baseType: !137, size: 64, offset: 1984)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1458, file: !32, line: 852, baseType: !137, size: 64, offset: 2048)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1458, file: !32, line: 853, baseType: !137, size: 64, offset: 2112)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1458, file: !32, line: 854, baseType: !577, size: 64, offset: 2176)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1458, file: !32, line: 855, baseType: !137, size: 64, offset: 2240)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1458, file: !32, line: 856, baseType: !137, size: 64, offset: 2304)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1458, file: !32, line: 857, baseType: !137, size: 64, offset: 2368)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1458, file: !32, line: 858, baseType: !137, size: 64, offset: 2432)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1458, file: !32, line: 865, baseType: !358, size: 32, offset: 2496)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1458, file: !32, line: 867, baseType: !169, size: 32, offset: 2528)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1458, file: !32, line: 869, baseType: !137, size: 64, offset: 2560)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1458, file: !32, line: 869, baseType: !137, size: 64, offset: 2624)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1458, file: !32, line: 869, baseType: !137, size: 64, offset: 2688)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1458, file: !32, line: 869, baseType: !137, size: 64, offset: 2752)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1458, file: !32, line: 870, baseType: !137, size: 64, offset: 2816)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1458, file: !32, line: 870, baseType: !137, size: 64, offset: 2880)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1458, file: !32, line: 870, baseType: !137, size: 64, offset: 2944)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1458, file: !32, line: 871, baseType: !137, size: 64, offset: 3008)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1458, file: !32, line: 871, baseType: !137, size: 64, offset: 3072)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1458, file: !32, line: 871, baseType: !137, size: 64, offset: 3136)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1458, file: !32, line: 871, baseType: !137, size: 64, offset: 3200)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1458, file: !32, line: 873, baseType: !1533, size: 3328, offset: 3264)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 3328, elements: !1534)
!1534 = !{!1535}
!1535 = !DISubrange(count: 52)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1458, file: !32, line: 875, baseType: !1537, size: 1280, offset: 6592)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, size: 1280, elements: !801)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1458, file: !32, line: 877, baseType: !1539, size: 64, offset: 7872)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !32, line: 877, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1458, file: !32, line: 880, baseType: !1542, size: 1088, offset: 7936)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1543, line: 72, baseType: !1544)
!1543 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1543, line: 23, size: 1088, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1553, !1554, !1555, !1556, !1583, !1584, !1585}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1544, file: !1543, line: 28, baseType: !384, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1544, file: !1543, line: 38, baseType: !577, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1544, file: !1543, line: 40, baseType: !137, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1544, file: !1543, line: 43, baseType: !1174, size: 320, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1544, file: !1543, line: 44, baseType: !1551, size: 64, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1543, line: 44, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1544, file: !1543, line: 48, baseType: !137, size: 64, offset: 576)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1544, file: !1543, line: 59, baseType: !571, size: 256, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1544, file: !1543, line: 60, baseType: !105, size: 64, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1544, file: !1543, line: 61, baseType: !1557, size: 64, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1560, line: 13, size: 1216, elements: !1561)
!1560 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1559, file: !1560, line: 14, baseType: !105, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1559, file: !1560, line: 15, baseType: !137, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1559, file: !1560, line: 17, baseType: !137, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1559, file: !1560, line: 17, baseType: !137, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1559, file: !1560, line: 18, baseType: !137, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1559, file: !1560, line: 18, baseType: !137, size: 64, offset: 320)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1559, file: !1560, line: 19, baseType: !1569, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1559, file: !1560, line: 21, baseType: !269, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1559, file: !1560, line: 23, baseType: !269, size: 64, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1559, file: !1560, line: 24, baseType: !269, size: 64, offset: 576)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1559, file: !1560, line: 25, baseType: !269, size: 64, offset: 640)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1559, file: !1560, line: 26, baseType: !269, size: 64, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1559, file: !1560, line: 27, baseType: !269, size: 64, offset: 768)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1559, file: !1560, line: 28, baseType: !269, size: 64, offset: 832)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1559, file: !1560, line: 29, baseType: !269, size: 64, offset: 896)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1559, file: !1560, line: 30, baseType: !269, size: 64, offset: 960)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1559, file: !1560, line: 31, baseType: !269, size: 64, offset: 1024)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1559, file: !1560, line: 32, baseType: !269, size: 64, offset: 1088)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1559, file: !1560, line: 33, baseType: !269, size: 64, offset: 1152)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1544, file: !1543, line: 63, baseType: !189, size: 32, offset: 1024)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1544, file: !1543, line: 69, baseType: !117, size: 16, offset: 1056)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1544, file: !1543, line: 70, baseType: !707, size: 16, offset: 1072)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1458, file: !32, line: 882, baseType: !137, size: 64, offset: 9024)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1458, file: !32, line: 885, baseType: !169, size: 32, offset: 9088)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1458, file: !32, line: 886, baseType: !1589, size: 64, offset: 9152)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !32, line: 732, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1458, file: !32, line: 901, baseType: !1313, size: 64, offset: 9216)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1458, file: !32, line: 904, baseType: !1358, size: 64, offset: 9280)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1458, file: !32, line: 906, baseType: !1594, size: 64, offset: 9344)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !32, line: 906, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1458, file: !32, line: 930, baseType: !189, size: 32, offset: 9408)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1458, file: !32, line: 933, baseType: !189, size: 32, offset: 9440)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1458, file: !32, line: 935, baseType: !1599, size: 64, offset: 9472)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !73, line: 103, size: 64, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1599, file: !73, line: 104, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !73, line: 101, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1458, file: !32, line: 940, baseType: !575, size: 64, offset: 9536)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1458, file: !32, line: 942, baseType: !831, size: 256, offset: 9600)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1455, file: !32, line: 986, baseType: !1607, offset: 10240)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, elements: !1126)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1442, file: !32, line: 640, baseType: !1609, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1489, line: 297, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1489, line: 297, size: 64, elements: !1611)
!1611 = !{!1612}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1610, file: !1489, line: 297, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1494, line: 19, baseType: !137)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !32, line: 646, baseType: !1615, size: 64, offset: 256)
!1615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1442, file: !32, line: 646, size: 64, elements: !1616)
!1616 = !{!1617, !1620}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1615, file: !32, line: 647, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !32, line: 542, baseType: !137)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1615, file: !32, line: 648, baseType: !1619, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1442, file: !32, line: 666, baseType: !193, size: 32, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1442, file: !32, line: 667, baseType: !1623, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !32, line: 579, size: 320, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1624, file: !32, line: 580, baseType: !1174, size: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1442, file: !32, line: 670, baseType: !651, size: 8, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1442, file: !32, line: 681, baseType: !1629, size: 256, offset: 512)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !32, line: 678, size: 256, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1629, file: !32, line: 679, baseType: !683, size: 192, align: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1629, file: !32, line: 680, baseType: !137, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1442, file: !32, line: 689, baseType: !147, size: 128, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1442, file: !32, line: 691, baseType: !1635, size: 64, offset: 896)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !32, line: 691, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1442, file: !32, line: 694, baseType: !1638, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1641, line: 563, size: 1024, elements: !1642)
!1641 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1642 = !{!1643, !1647, !1648, !1652, !1656, !1660, !1837, !1841, !1845, !1849, !1850, !1851, !1855, !1859, !1865, !1869}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1640, file: !1641, line: 564, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1441}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1640, file: !1641, line: 569, baseType: !1644, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1640, file: !1641, line: 571, baseType: !1649, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!193, !1441, !137}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1640, file: !1641, line: 572, baseType: !1653, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!193, !1441}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1640, file: !1641, line: 578, baseType: !1657, size: 64, offset: 256)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!193, !1441, !137, !137, !137}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1640, file: !1641, line: 580, baseType: !1661, size: 64, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !32, line: 1184, baseType: !7)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1641, line: 512, size: 896, elements: !1667)
!1667 = !{!1668, !1676, !1677, !1684, !1691, !1701, !1830, !1831, !1833, !1835}
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !1641, line: 513, baseType: !1669, size: 320)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1666, file: !1641, line: 513, size: 320, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1669, file: !1641, line: 514, baseType: !1441, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1669, file: !1641, line: 515, baseType: !103, size: 32, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1669, file: !1641, line: 516, baseType: !137, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1669, file: !1641, line: 517, baseType: !137, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1669, file: !1641, line: 518, baseType: !137, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1666, file: !1641, line: 520, baseType: !31, size: 32, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1666, file: !1641, line: 522, baseType: !1678, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1494, line: 22, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1494, line: 22, size: 64, elements: !1681)
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1680, file: !1494, line: 22, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1494, line: 15, baseType: !137)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1666, file: !1641, line: 524, baseType: !1685, size: 64, offset: 448)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1489, line: 372, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1489, line: 372, size: 64, elements: !1688)
!1688 = !{!1689}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1687, file: !1489, line: 372, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1494, line: 16, baseType: !137)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !1641, line: 527, baseType: !1692, size: 64, offset: 512)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !1641, line: 527, size: 64, elements: !1693)
!1693 = !{!1694, !1700}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1692, file: !1641, line: 528, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1494, line: 21, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1494, line: 21, size: 64, elements: !1697)
!1697 = !{!1698}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1696, file: !1494, line: 21, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1494, line: 14, baseType: !137)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1692, file: !1641, line: 529, baseType: !1679, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1666, file: !1641, line: 534, baseType: !1702, size: 64, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !32, line: 74, size: 512, align: 128, elements: !1704)
!1704 = !{!1705, !1706, !1824, !1829}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1703, file: !32, line: 75, baseType: !137, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !32, line: 83, baseType: !1707, size: 320, offset: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1703, file: !32, line: 83, size: 320, elements: !1708)
!1708 = !{!1709, !1730, !1744, !1748, !1823}
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !32, line: 84, baseType: !1710, size: 320)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1707, file: !32, line: 84, size: 320, elements: !1711)
!1711 = !{!1712, !1723, !1724, !1729}
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !32, line: 90, baseType: !1713, size: 128)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1710, file: !32, line: 90, size: 128, elements: !1714)
!1714 = !{!1715, !1716, !1721, !1722}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1713, file: !32, line: 91, baseType: !147, size: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !32, line: 94, baseType: !1717, size: 128)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1713, file: !32, line: 94, size: 128, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1717, file: !32, line: 96, baseType: !105, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1717, file: !32, line: 98, baseType: !7, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1713, file: !32, line: 102, baseType: !147, size: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1713, file: !32, line: 103, baseType: !147, size: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1710, file: !32, line: 106, baseType: !308, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !32, line: 107, baseType: !1725, size: 64, offset: 192)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1710, file: !32, line: 107, size: 64, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1725, file: !32, line: 108, baseType: !137, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1725, file: !32, line: 109, baseType: !137, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1710, file: !32, line: 117, baseType: !137, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !32, line: 119, baseType: !1731, size: 320)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1707, file: !32, line: 119, size: 320, elements: !1732)
!1732 = !{!1733, !1734, !1737, !1738, !1739}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1731, file: !32, line: 124, baseType: !137, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1731, file: !32, line: 125, baseType: !1735, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !32, line: 125, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1731, file: !32, line: 126, baseType: !137, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1731, file: !32, line: 127, baseType: !137, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !32, line: 128, baseType: !1740, size: 64, offset: 256)
!1740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !32, line: 128, size: 64, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1740, file: !32, line: 133, baseType: !137, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1740, file: !32, line: 138, baseType: !575, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !32, line: 141, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1707, file: !32, line: 141, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1745, file: !32, line: 142, baseType: !137, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !32, line: 144, baseType: !1749, size: 128)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1707, file: !32, line: 144, size: 128, elements: !1750)
!1750 = !{!1751, !1822}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1749, file: !32, line: 146, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !48, line: 126, size: 1216, elements: !1754)
!1754 = !{!1755, !1765, !1786, !1787, !1788, !1789, !1790, !1804, !1805, !1806}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1753, file: !48, line: 127, baseType: !1756, size: 384)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !48, line: 21, size: 384, elements: !1757)
!1757 = !{!1758, !1759, !1761, !1762, !1763, !1764}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1756, file: !48, line: 22, baseType: !137, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1756, file: !48, line: 23, baseType: !1760, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1756, file: !48, line: 24, baseType: !1760, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1756, file: !48, line: 25, baseType: !137, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1756, file: !48, line: 26, baseType: !137, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1756, file: !48, line: 27, baseType: !137, size: 64, offset: 320)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1753, file: !48, line: 128, baseType: !1766, size: 128, offset: 384)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1767, line: 105, size: 128, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1766, file: !1767, line: 110, baseType: !137, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1766, file: !1767, line: 118, baseType: !1771, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1767, line: 95, size: 448, elements: !1773)
!1773 = !{!1774, !1775, !1781, !1782, !1783, !1784, !1785}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1772, file: !1767, line: 96, baseType: !575, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1772, file: !1767, line: 97, baseType: !1776, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1767, line: 60, baseType: !1778)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1772, file: !1767, line: 98, baseType: !1776, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1772, file: !1767, line: 99, baseType: !651, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1772, file: !1767, line: 100, baseType: !651, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1772, file: !1767, line: 101, baseType: !791, size: 128, align: 64, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1772, file: !1767, line: 102, baseType: !1780, size: 64, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1753, file: !48, line: 129, baseType: !520, size: 256, offset: 512)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1753, file: !48, line: 130, baseType: !47, size: 32, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1753, file: !48, line: 131, baseType: !7, size: 32, offset: 800)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1753, file: !48, line: 132, baseType: !137, size: 64, offset: 832)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1753, file: !48, line: 133, baseType: !1791, size: 64, offset: 896)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !48, line: 77, size: 192, elements: !1794)
!1794 = !{!1795, !1799, !1800}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1793, file: !48, line: 83, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !1702}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1793, file: !48, line: 89, baseType: !1661, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1793, file: !48, line: 100, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!193, !1752, !137, !137, !193}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1753, file: !48, line: 134, baseType: !105, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1753, file: !48, line: 135, baseType: !193, size: 32, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !48, line: 136, baseType: !1807, size: 128, offset: 1088)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !48, line: 136, size: 128, elements: !1808)
!1808 = !{!1809, !1815}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1807, file: !48, line: 137, baseType: !1810, size: 128)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1811, line: 6, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1810, file: !1811, line: 7, baseType: !384, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1810, file: !1811, line: 8, baseType: !384, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !48, line: 138, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1807, file: !48, line: 138, elements: !1817)
!1817 = !{!1818, !1820}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1816, file: !48, line: 138, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1816, file: !48, line: 138, elements: !860)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1816, file: !48, line: 138, baseType: !1821)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, elements: !1126)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1749, file: !32, line: 147, baseType: !105, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1707, file: !32, line: 161, baseType: !791, size: 128, align: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !32, line: 164, baseType: !1825, size: 32, offset: 384)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1703, file: !32, line: 164, size: 32, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1825, file: !32, line: 169, baseType: !189, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1825, file: !32, line: 177, baseType: !7, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1703, file: !32, line: 181, baseType: !189, size: 32, offset: 416)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1666, file: !1641, line: 535, baseType: !1702, size: 64, offset: 640)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1666, file: !1641, line: 541, baseType: !1832, size: 64, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1666, file: !1641, line: 545, baseType: !1834, size: 64, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1666, file: !1641, line: 549, baseType: !1836, size: 64, offset: 832)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1489, line: 520, baseType: !1702)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1640, file: !1641, line: 581, baseType: !1838, size: 64, offset: 384)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!1664, !1665, !7}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1640, file: !1641, line: 582, baseType: !1842, size: 64, offset: 448)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!1664, !1665, !137, !137}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1640, file: !1641, line: 584, baseType: !1846, size: 64, offset: 512)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!137, !1441}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1640, file: !1641, line: 588, baseType: !1661, size: 64, offset: 576)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1640, file: !1641, line: 591, baseType: !1661, size: 64, offset: 640)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1640, file: !1641, line: 597, baseType: !1852, size: 64, offset: 704)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!193, !1441, !137, !105, !193, !193}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1640, file: !1641, line: 603, baseType: !1856, size: 64, offset: 768)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!157, !1441}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1640, file: !1641, line: 613, baseType: !1860, size: 64, offset: 832)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!193, !1441, !1863}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !32, line: 717, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1640, file: !1641, line: 625, baseType: !1866, size: 64, offset: 896)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1863, !1441, !137}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1640, file: !1641, line: 633, baseType: !1870, size: 64, offset: 960)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!1702, !1441, !137}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1442, file: !32, line: 697, baseType: !137, size: 64, offset: 1024)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1442, file: !32, line: 699, baseType: !1358, size: 64, offset: 1088)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1442, file: !32, line: 700, baseType: !105, size: 64, offset: 1152)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1442, file: !32, line: 711, baseType: !575, size: 64, offset: 1216)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1442, file: !32, line: 717, baseType: !1863, size: 64, offset: 1280)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1442, file: !32, line: 722, baseType: !1879, offset: 1344)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !32, line: 570, elements: !860)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1351, file: !19, line: 1928, baseType: !137, size: 64, offset: 768)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1351, file: !19, line: 1929, baseType: !1882, size: 64, offset: 832)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!193, !312, !1358}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1351, file: !19, line: 1930, baseType: !1886, size: 64, offset: 896)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!193, !1358, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !105)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1351, file: !19, line: 1931, baseType: !1882, size: 64, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1351, file: !19, line: 1932, baseType: !1892, size: 64, offset: 1024)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!193, !1358, !472, !472, !193}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1351, file: !19, line: 1933, baseType: !1896, size: 64, offset: 1088)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!193, !193, !1358, !193}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1351, file: !19, line: 1934, baseType: !1900, size: 64, offset: 1152)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!193, !1358, !193, !1903}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1351, file: !19, line: 1935, baseType: !1478, size: 64, offset: 1216)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1351, file: !19, line: 1936, baseType: !1907, size: 64, offset: 1280)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!193, !193}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1351, file: !19, line: 1937, baseType: !1900, size: 64, offset: 1344)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1351, file: !19, line: 1938, baseType: !1912, size: 64, offset: 1408)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!265, !1915, !1358, !1034, !280, !7}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1917, line: 59, flags: DIFlagFwdDecl)
!1917 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1351, file: !19, line: 1939, baseType: !1919, size: 64, offset: 1472)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!265, !1358, !1034, !1915, !280, !7}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1351, file: !19, line: 1940, baseType: !1923, size: 64, offset: 1536)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !1358}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1351, file: !19, line: 1941, baseType: !1927, size: 64, offset: 1600)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!193, !1358, !193, !1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1351, file: !19, line: 1942, baseType: !1933, size: 64, offset: 1664)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!269, !1358, !193, !472, !472}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1351, file: !19, line: 1944, baseType: !1937, size: 64, offset: 1728)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !1013, !1358}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1351, file: !19, line: 1948, baseType: !1941, size: 64, offset: 1792)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!265, !1358, !472, !1358, !472, !280, !7}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1351, file: !19, line: 1950, baseType: !1945, size: 64, offset: 1856)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!472, !1358, !472, !1358, !472, !472, !7}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1351, file: !19, line: 1953, baseType: !1892, size: 64, offset: 1920)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1351, file: !19, line: 1954, baseType: !1950, size: 64, offset: 1984)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!193, !1953, !7}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1351, file: !19, line: 1955, baseType: !1956, size: 64, offset: 2048)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!193, !1953, !1400, !7}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1051, file: !19, line: 1018, baseType: !384, size: 64, offset: 1472)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1051, file: !19, line: 1020, baseType: !105, size: 64, offset: 1536)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1051, file: !19, line: 1023, baseType: !105, size: 64, offset: 1600)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1051, file: !19, line: 1027, baseType: !1963, size: 64, offset: 1664)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1051, file: !19, line: 1029, baseType: !308, size: 64, offset: 1728)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1051, file: !19, line: 1030, baseType: !1966, size: 32, offset: 1792)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1967, line: 8, baseType: !381)
!1967 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1051, file: !19, line: 1031, baseType: !1966, size: 32, offset: 1824)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1014, file: !1015, line: 29, baseType: !105, size: 64, offset: 896)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !957, file: !19, line: 2077, baseType: !1010, size: 64, offset: 1088)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !957, file: !19, line: 2078, baseType: !1010, size: 64, offset: 1152)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !957, file: !19, line: 2079, baseType: !1010, size: 64, offset: 1216)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !957, file: !19, line: 2081, baseType: !1974, size: 64, offset: 1280)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!265, !462, !193, !233, !280, !472}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !957, file: !19, line: 2082, baseType: !1978, size: 64, offset: 1344)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!265, !462, !193, !157, !280, !472}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !957, file: !19, line: 2083, baseType: !1982, size: 64, offset: 1408)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!1985, !312}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !56, line: 296, size: 1664, elements: !1988)
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !2013, !2014, !2015}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1987, file: !56, line: 297, baseType: !817, size: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1987, file: !56, line: 298, baseType: !147, size: 128, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1987, file: !56, line: 299, baseType: !147, size: 128, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1987, file: !56, line: 300, baseType: !147, size: 128, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1987, file: !56, line: 301, baseType: !571, size: 256, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1987, file: !56, line: 302, baseType: !169, size: 32, offset: 768)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1987, file: !56, line: 303, baseType: !189, size: 32, offset: 800)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1987, file: !56, line: 304, baseType: !462, size: 64, offset: 832)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1987, file: !56, line: 305, baseType: !1998, size: 64, offset: 896)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !56, line: 68, size: 64, elements: !1999)
!1999 = !{!2000, !2012}
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !56, line: 69, baseType: !2001, size: 32)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !56, line: 69, size: 32, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2001, file: !56, line: 70, baseType: !318, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2001, file: !56, line: 71, baseType: !327, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2001, file: !56, line: 72, baseType: !2006, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2007, line: 24, baseType: !2008)
!2007 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2007, line: 22, size: 32, elements: !2009)
!2009 = !{!2010}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2008, file: !2007, line: 23, baseType: !2011, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2007, line: 20, baseType: !324)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1998, file: !56, line: 74, baseType: !55, size: 32, offset: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1987, file: !56, line: 306, baseType: !472, size: 64, offset: 960)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1987, file: !56, line: 307, baseType: !137, size: 64, offset: 1024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1987, file: !56, line: 308, baseType: !2016, size: 576, offset: 1088)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !56, line: 205, size: 576, elements: !2017)
!2017 = !{!2018, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2016, file: !56, line: 206, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !56, line: 66, baseType: !474)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2016, file: !56, line: 207, baseType: !2019, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2016, file: !56, line: 208, baseType: !2019, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2016, file: !56, line: 209, baseType: !2019, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2016, file: !56, line: 210, baseType: !2019, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2016, file: !56, line: 211, baseType: !2019, size: 64, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2016, file: !56, line: 212, baseType: !2019, size: 64, offset: 384)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2016, file: !56, line: 213, baseType: !1190, size: 64, offset: 448)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2016, file: !56, line: 214, baseType: !1190, size: 64, offset: 512)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !957, file: !19, line: 2085, baseType: !2029, size: 64, offset: 1472)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!269, !462, !2032}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2034, line: 15, size: 256, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2035 = !{!2036, !2037, !2038, !2039, !2040}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2033, file: !2034, line: 16, baseType: !103, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2033, file: !2034, line: 19, baseType: !193, size: 32, offset: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2033, file: !2034, line: 26, baseType: !137, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2033, file: !2034, line: 33, baseType: !137, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2033, file: !2034, line: 36, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !32, line: 33, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !957, file: !19, line: 2087, baseType: !2029, size: 64, offset: 1536)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !957, file: !19, line: 2089, baseType: !496, size: 64, offset: 1600)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !463, file: !19, line: 1198, baseType: !2046, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !56, line: 324, size: 704, elements: !2049)
!2049 = !{!2050, !2054, !2058, !2062, !2063, !2064, !2065, !2066, !2071, !2076, !2080}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2048, file: !56, line: 325, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!193, !1986}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2048, file: !56, line: 326, baseType: !2055, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1986, !462, !193}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2048, file: !56, line: 327, baseType: !2059, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !1986}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2048, file: !56, line: 328, baseType: !2051, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2048, file: !56, line: 329, baseType: !2051, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2048, file: !56, line: 330, baseType: !2051, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2048, file: !56, line: 331, baseType: !985, size: 64, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2048, file: !56, line: 334, baseType: !2067, size: 64, offset: 448)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!2070, !312}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2048, file: !56, line: 335, baseType: !2072, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!193, !312, !2075}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2048, file: !56, line: 337, baseType: !2077, size: 64, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!193, !312, !2070}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2048, file: !56, line: 339, baseType: !2081, size: 64, offset: 640)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!193, !462, !2084}
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !463, file: !19, line: 1199, baseType: !2086, size: 64, offset: 512)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !56, line: 430, size: 704, elements: !2089)
!2089 = !{!2090, !2096, !2097, !2101, !2102, !2103, !2118, !2141, !2145, !2146, !2169}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2088, file: !56, line: 431, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!193, !462, !193, !193, !2094}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2088, file: !56, line: 432, baseType: !985, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2088, file: !56, line: 433, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!193, !462, !7}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2088, file: !56, line: 434, baseType: !2098, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2088, file: !56, line: 435, baseType: !985, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2088, file: !56, line: 436, baseType: !2104, size: 64, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!193, !462, !193, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !56, line: 417, size: 256, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2108, file: !56, line: 418, baseType: !193, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2108, file: !56, line: 419, baseType: !7, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2108, file: !56, line: 420, baseType: !7, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2108, file: !56, line: 422, baseType: !7, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2108, file: !56, line: 423, baseType: !7, size: 32, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2108, file: !56, line: 424, baseType: !7, size: 32, offset: 160)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2108, file: !56, line: 425, baseType: !7, size: 32, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2108, file: !56, line: 426, baseType: !7, size: 32, offset: 224)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2088, file: !56, line: 437, baseType: !2119, size: 64, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!193, !462, !1998, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !56, line: 345, size: 960, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2123, file: !56, line: 346, baseType: !193, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2123, file: !56, line: 347, baseType: !384, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2123, file: !56, line: 348, baseType: !384, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2123, file: !56, line: 349, baseType: !384, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2123, file: !56, line: 350, baseType: !384, size: 64, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2123, file: !56, line: 351, baseType: !384, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2123, file: !56, line: 352, baseType: !384, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2123, file: !56, line: 353, baseType: !581, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2123, file: !56, line: 355, baseType: !581, size: 64, offset: 512)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2123, file: !56, line: 356, baseType: !193, size: 32, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2123, file: !56, line: 357, baseType: !193, size: 32, offset: 608)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2123, file: !56, line: 358, baseType: !384, size: 64, offset: 640)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2123, file: !56, line: 359, baseType: !384, size: 64, offset: 704)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2123, file: !56, line: 360, baseType: !384, size: 64, offset: 768)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2123, file: !56, line: 361, baseType: !581, size: 64, offset: 832)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2123, file: !56, line: 362, baseType: !193, size: 32, offset: 896)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2088, file: !56, line: 438, baseType: !2142, size: 64, offset: 448)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!193, !462, !2084, !2122}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2088, file: !56, line: 440, baseType: !2119, size: 64, offset: 512)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2088, file: !56, line: 441, baseType: !2147, size: 64, offset: 576)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!193, !462, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !56, line: 411, size: 1408, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2151, file: !56, line: 412, baseType: !7, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2151, file: !56, line: 413, baseType: !2155, size: 1344, offset: 64)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2156, size: 1344, elements: !234)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !56, line: 397, size: 448, elements: !2157)
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2168}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2156, file: !56, line: 398, baseType: !7, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2156, file: !56, line: 399, baseType: !7, size: 32, offset: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2156, file: !56, line: 401, baseType: !7, size: 32, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2156, file: !56, line: 402, baseType: !7, size: 32, offset: 96)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2156, file: !56, line: 403, baseType: !7, size: 32, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2156, file: !56, line: 404, baseType: !7, size: 32, offset: 160)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2156, file: !56, line: 405, baseType: !7, size: 32, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2156, file: !56, line: 406, baseType: !386, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2156, file: !56, line: 407, baseType: !2167, size: 64, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !104, line: 132, baseType: !384)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2156, file: !56, line: 408, baseType: !2167, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2088, file: !56, line: 442, baseType: !2098, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !463, file: !19, line: 1200, baseType: !2171, size: 64, offset: 576)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !463, file: !19, line: 1201, baseType: !137, size: 64, offset: 640)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !463, file: !19, line: 1202, baseType: !137, size: 64, offset: 704)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !463, file: !19, line: 1203, baseType: !137, size: 64, offset: 768)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !463, file: !19, line: 1204, baseType: !347, size: 64, offset: 832)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !463, file: !19, line: 1205, baseType: !1174, size: 320, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !463, file: !19, line: 1206, baseType: !193, size: 32, offset: 1216)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !463, file: !19, line: 1207, baseType: !189, size: 32, offset: 1248)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !463, file: !19, line: 1209, baseType: !105, size: 64, offset: 1280)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !463, file: !19, line: 1211, baseType: !2183, size: 64, offset: 1344)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2186)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !463, file: !19, line: 1223, baseType: !2188, size: 64, offset: 1408)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !364, line: 34, size: 64, elements: !2189)
!2189 = !{!2190}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2188, file: !364, line: 35, baseType: !367, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !463, file: !19, line: 1224, baseType: !147, size: 128, offset: 1472)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !463, file: !19, line: 1225, baseType: !2193, size: 64, offset: 1600)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !19, line: 1225, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !463, file: !19, line: 1226, baseType: !2196, size: 64, offset: 1664)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !463, file: !19, line: 1227, baseType: !2199, size: 64, offset: 1728)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !19, line: 50, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !463, file: !19, line: 1228, baseType: !2202, size: 64, offset: 1792)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !463, file: !19, line: 1229, baseType: !817, size: 128, offset: 1856)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !463, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !463, file: !19, line: 1231, baseType: !2207, size: 2496, offset: 2048)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !56, line: 521, size: 2496, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2213, !2245}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2207, file: !56, line: 522, baseType: !7, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2207, file: !56, line: 523, baseType: !1174, size: 320, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2207, file: !56, line: 524, baseType: !2212, size: 192, offset: 384)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 192, elements: !234)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2207, file: !56, line: 525, baseType: !2214, size: 1728, offset: 576)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2215, size: 1728, elements: !234)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !56, line: 222, size: 576, elements: !2216)
!2216 = !{!2217, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2215, file: !56, line: 223, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !56, line: 445, size: 256, elements: !2220)
!2220 = !{!2221, !2222, !2235, !2236}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2219, file: !56, line: 446, baseType: !193, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2219, file: !56, line: 447, baseType: !2223, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2225)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !56, line: 312, size: 512, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2225, file: !56, line: 313, baseType: !985, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2225, file: !56, line: 314, baseType: !985, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2225, file: !56, line: 315, baseType: !985, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2225, file: !56, line: 316, baseType: !985, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2225, file: !56, line: 317, baseType: !2051, size: 64, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2225, file: !56, line: 318, baseType: !2051, size: 64, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2225, file: !56, line: 319, baseType: !2051, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2225, file: !56, line: 320, baseType: !2081, size: 64, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2219, file: !56, line: 448, baseType: !500, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2219, file: !56, line: 449, baseType: !2218, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2215, file: !56, line: 224, baseType: !193, size: 32, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2215, file: !56, line: 226, baseType: !147, size: 128, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2215, file: !56, line: 227, baseType: !137, size: 64, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2215, file: !56, line: 228, baseType: !7, size: 32, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2215, file: !56, line: 229, baseType: !7, size: 32, offset: 352)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2215, file: !56, line: 230, baseType: !2019, size: 64, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2215, file: !56, line: 231, baseType: !2019, size: 64, offset: 448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2215, file: !56, line: 232, baseType: !105, size: 64, offset: 512)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2207, file: !56, line: 526, baseType: !2246, size: 192, offset: 2304)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2223, size: 192, elements: !234)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !463, file: !19, line: 1233, baseType: !2248, size: 2368, offset: 4544)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !2249)
!2249 = !{!2250, !2251, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2248, file: !19, line: 1185, baseType: !121, size: 16)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2248, file: !19, line: 1186, baseType: !121, size: 16, offset: 16)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2248, file: !19, line: 1187, baseType: !2253, size: 2304, offset: 64)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2254, size: 2304, elements: !234)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2255, line: 12, size: 768, elements: !2256)
!2255 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2256 = !{!2257, !2265, !2266, !3453, !3454}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2254, file: !2255, line: 13, baseType: !2258, size: 384)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2259, line: 17, size: 384, elements: !2260)
!2259 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2258, file: !2259, line: 18, baseType: !193, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2258, file: !2259, line: 19, baseType: !193, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2258, file: !2259, line: 20, baseType: !1111, size: 192, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2258, file: !2259, line: 22, baseType: !791, size: 128, align: 64, offset: 256)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2254, file: !2255, line: 14, baseType: !643, size: 64, offset: 384)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2254, file: !2255, line: 15, baseType: !2267, size: 64, offset: 448)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2268, line: 16, size: 64, elements: !2269)
!2268 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2269 = !{!2270}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2267, file: !2268, line: 17, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1917, line: 746, size: 58368, elements: !2273)
!2273 = !{!2274, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2354, !2365, !2460, !2464, !2467, !2498, !2499, !2500, !2501, !2512, !2514, !2515, !2516, !2517, !2518, !2519, !2530, !2531, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2548, !2549, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2642, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2690, !2696, !2697, !2698, !2699, !2700, !2702, !2705, !2712, !2717, !2720, !2723, !2726, !2729, !2867, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2905, !2906, !2907, !2916, !2924, !2925, !2926, !2927, !2928, !2933, !2934, !2935, !2938, !2939, !2942, !2945, !2948, !2956, !2959, !2960, !3046, !3047, !3048, !3049, !3050, !3056, !3057, !3058, !3059, !3062, !3063, !3066, !3069, !3070, !3073, !3074, !3075, !3078, !3079, !3080, !3081, !3082, !3083, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3115, !3116, !3122, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3134, !3206, !3208, !3209, !3210, !3211, !3212, !3213, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3230, !3231, !3232}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2272, file: !1917, line: 752, baseType: !2275, size: 192)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2276, line: 56, size: 192, elements: !2277)
!2276 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2277 = !{!2278, !2279, !2280, !2281}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2275, file: !2276, line: 57, baseType: !137, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2275, file: !2276, line: 58, baseType: !137, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2275, file: !2276, line: 59, baseType: !381, size: 32, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2275, file: !2276, line: 61, baseType: !381, size: 32, offset: 160)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2272, file: !1917, line: 754, baseType: !7, size: 32, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2272, file: !1917, line: 767, baseType: !105, size: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2272, file: !1917, line: 768, baseType: !1100, size: 32, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2272, file: !1917, line: 770, baseType: !7, size: 32, offset: 352)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2272, file: !1917, line: 771, baseType: !7, size: 32, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2272, file: !1917, line: 774, baseType: !193, size: 32, offset: 416)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2272, file: !1917, line: 775, baseType: !2289, size: 128, offset: 448)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2290, line: 58, size: 128, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2291 = !{!2292, !2293, !2298, !2299}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2289, file: !2290, line: 59, baseType: !1057, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !2290, line: 60, baseType: !2294, size: 32, offset: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2289, file: !2290, line: 60, size: 32, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2294, file: !2290, line: 61, baseType: !7, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2294, file: !2290, line: 62, baseType: !189, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2289, file: !2290, line: 65, baseType: !117, size: 16, offset: 96)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2289, file: !2290, line: 65, baseType: !117, size: 16, offset: 112)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2272, file: !1917, line: 776, baseType: !7, size: 32, offset: 576)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2272, file: !1917, line: 777, baseType: !137, size: 64, offset: 640)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2272, file: !1917, line: 778, baseType: !2271, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2272, file: !1917, line: 787, baseType: !193, size: 32, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2272, file: !1917, line: 788, baseType: !193, size: 32, offset: 800)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2272, file: !1917, line: 790, baseType: !193, size: 32, offset: 832)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2272, file: !1917, line: 792, baseType: !193, size: 32, offset: 864)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2272, file: !1917, line: 793, baseType: !193, size: 32, offset: 896)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2272, file: !1917, line: 794, baseType: !193, size: 32, offset: 928)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2272, file: !1917, line: 795, baseType: !7, size: 32, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2272, file: !1917, line: 797, baseType: !2311, size: 2048, offset: 1024)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1917, line: 551, size: 2048, elements: !2312)
!2312 = !{!2313, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2333, !2336, !2337, !2338}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2311, file: !1917, line: 553, baseType: !2314, size: 128)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1917, line: 411, size: 128, elements: !2315)
!2315 = !{!2316, !2317}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2314, file: !1917, line: 412, baseType: !137, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2314, file: !1917, line: 413, baseType: !381, size: 32, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2311, file: !1917, line: 554, baseType: !683, size: 192, align: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2311, file: !1917, line: 555, baseType: !384, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2311, file: !1917, line: 556, baseType: !384, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2311, file: !1917, line: 558, baseType: !147, size: 128, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2311, file: !1917, line: 559, baseType: !7, size: 32, offset: 576)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2311, file: !1917, line: 561, baseType: !384, size: 64, offset: 640)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2311, file: !1917, line: 562, baseType: !384, size: 64, offset: 704)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2311, file: !1917, line: 563, baseType: !384, size: 64, offset: 768)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2311, file: !1917, line: 564, baseType: !384, size: 64, offset: 832)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2311, file: !1917, line: 565, baseType: !581, size: 64, offset: 896)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2311, file: !1917, line: 566, baseType: !384, size: 64, offset: 960)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2311, file: !1917, line: 568, baseType: !384, size: 64, offset: 1024)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2311, file: !1917, line: 571, baseType: !193, size: 32, offset: 1088)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2311, file: !1917, line: 572, baseType: !2332, size: 64, offset: 1152)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2311, file: !1917, line: 574, baseType: !2334, size: 64, offset: 1216)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1917, line: 49, flags: DIFlagFwdDecl)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2311, file: !1917, line: 576, baseType: !2334, size: 64, offset: 1280)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2311, file: !1917, line: 578, baseType: !137, size: 64, offset: 1344)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2311, file: !1917, line: 588, baseType: !2339, size: 512, align: 512, offset: 1536)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1917, line: 497, size: 512, align: 512, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2339, file: !1917, line: 498, baseType: !384, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2339, file: !1917, line: 499, baseType: !384, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2339, file: !1917, line: 500, baseType: !384, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2339, file: !1917, line: 501, baseType: !381, size: 32, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2339, file: !1917, line: 502, baseType: !381, size: 32, offset: 224)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2339, file: !1917, line: 503, baseType: !137, size: 64, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2339, file: !1917, line: 504, baseType: !137, size: 64, offset: 320)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2339, file: !1917, line: 505, baseType: !137, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2339, file: !1917, line: 506, baseType: !2350, size: 64, align: 64, offset: 448)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1917, line: 445, size: 64, align: 64, elements: !2351)
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2350, file: !1917, line: 446, baseType: !7, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2350, file: !1917, line: 447, baseType: !7, size: 32, offset: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2272, file: !1917, line: 798, baseType: !2355, size: 384, offset: 3072)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1917, line: 592, size: 384, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360, !2361, !2362, !2363}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2355, file: !1917, line: 593, baseType: !147, size: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2355, file: !1917, line: 594, baseType: !137, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2355, file: !1917, line: 595, baseType: !137, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2355, file: !1917, line: 596, baseType: !7, size: 32, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2355, file: !1917, line: 597, baseType: !121, size: 16, offset: 288)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2355, file: !1917, line: 598, baseType: !121, size: 16, offset: 304)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2355, file: !1917, line: 600, baseType: !2364, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2272, file: !1917, line: 799, baseType: !2366, size: 1792, offset: 3456)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1917, line: 610, size: 1792, elements: !2367)
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2457, !2458}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2366, file: !1917, line: 611, baseType: !683, size: 192, align: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2366, file: !1917, line: 618, baseType: !384, size: 64, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2366, file: !1917, line: 619, baseType: !384, size: 64, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2366, file: !1917, line: 620, baseType: !384, size: 64, offset: 320)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2366, file: !1917, line: 621, baseType: !384, size: 64, offset: 384)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2366, file: !1917, line: 622, baseType: !384, size: 64, offset: 448)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2366, file: !1917, line: 629, baseType: !581, size: 64, offset: 512)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2366, file: !1917, line: 630, baseType: !384, size: 64, offset: 576)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2366, file: !1917, line: 631, baseType: !7, size: 32, offset: 640)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2366, file: !1917, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2366, file: !1917, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2366, file: !1917, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2366, file: !1917, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2366, file: !1917, line: 662, baseType: !2382, size: 512, offset: 704)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !62, line: 118, size: 512, elements: !2383)
!2383 = !{!2384, !2392, !2393, !2398, !2453, !2454, !2455, !2456}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2382, file: !62, line: 119, baseType: !2385, size: 256)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2386, line: 9, size: 256, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2385, file: !2386, line: 10, baseType: !683, size: 192, align: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2385, file: !2386, line: 11, baseType: !2390, size: 64, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2391, line: 29, baseType: !581)
!2391 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2382, file: !62, line: 120, baseType: !2390, size: 64, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2382, file: !62, line: 121, baseType: !2394, size: 64, offset: 320)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!61, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2382, file: !62, line: 122, baseType: !2399, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !62, line: 159, size: 512, align: 512, elements: !2401)
!2401 = !{!2402, !2427, !2428, !2431, !2436, !2437, !2448, !2452}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2400, file: !62, line: 160, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !62, line: 215, size: 4608, align: 512, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2404, file: !62, line: 216, baseType: !529, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2404, file: !62, line: 217, baseType: !7, size: 32, offset: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2404, file: !62, line: 218, baseType: !7, size: 32, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2404, file: !62, line: 219, baseType: !7, size: 32, offset: 96)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2404, file: !62, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2404, file: !62, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2404, file: !62, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2404, file: !62, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2404, file: !62, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2404, file: !62, line: 226, baseType: !7, size: 32, offset: 160)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2404, file: !62, line: 227, baseType: !121, size: 16, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2404, file: !62, line: 228, baseType: !121, size: 16, offset: 208)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2404, file: !62, line: 229, baseType: !7, size: 32, offset: 224)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2404, file: !62, line: 235, baseType: !2390, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2404, file: !62, line: 236, baseType: !2397, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2404, file: !62, line: 237, baseType: !2390, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2404, file: !62, line: 238, baseType: !2397, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2404, file: !62, line: 239, baseType: !2424, size: 4096, align: 512, offset: 512)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2400, size: 4096, align: 512, elements: !2425)
!2425 = !{!2426}
!2426 = !DISubrange(count: 8)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2400, file: !62, line: 161, baseType: !7, size: 32, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2400, file: !62, line: 162, baseType: !2429, size: 32, offset: 96)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !104, line: 32, baseType: !2430)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !267, line: 96, baseType: !193)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2400, file: !62, line: 163, baseType: !2432, size: 32, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !354, line: 274, baseType: !2433)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !354, line: 274, size: 32, elements: !2434)
!2434 = !{!2435}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2433, file: !354, line: 274, baseType: !358, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2400, file: !62, line: 164, baseType: !2397, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2400, file: !62, line: 165, baseType: !2438, size: 128, offset: 256)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2386, line: 14, size: 128, elements: !2439)
!2439 = !{!2440}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2438, file: !2386, line: 15, baseType: !2441, size: 128)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !684, line: 26, size: 128, elements: !2442)
!2442 = !{!2443, !2447}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2441, file: !684, line: 27, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !684, line: 12, size: 64, elements: !2445)
!2445 = !{!2446}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2444, file: !684, line: 13, baseType: !688, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2441, file: !684, line: 28, baseType: !688, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2400, file: !62, line: 166, baseType: !2449, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!2390}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2400, file: !62, line: 167, baseType: !2390, size: 64, offset: 448)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2382, file: !62, line: 123, baseType: !198, size: 8, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2382, file: !62, line: 124, baseType: !198, size: 8, offset: 456)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2382, file: !62, line: 125, baseType: !198, size: 8, offset: 464)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2382, file: !62, line: 126, baseType: !198, size: 8, offset: 472)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2366, file: !1917, line: 671, baseType: !2382, size: 512, offset: 1216)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2366, file: !1917, line: 679, baseType: !2459, size: 64, offset: 1728)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2272, file: !1917, line: 800, baseType: !2461, size: 64, offset: 5248)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2463)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1917, line: 800, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2272, file: !1917, line: 809, baseType: !2465, size: 64, offset: 5312)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1917, line: 70, flags: DIFlagFwdDecl)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2272, file: !1917, line: 825, baseType: !2468, size: 2048, align: 512, offset: 5632)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1917, line: 509, size: 2048, align: 512, elements: !2469)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2468, file: !1917, line: 511, baseType: !384, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2468, file: !1917, line: 512, baseType: !384, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2468, file: !1917, line: 513, baseType: !384, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2468, file: !1917, line: 514, baseType: !384, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2468, file: !1917, line: 515, baseType: !384, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2468, file: !1917, line: 516, baseType: !384, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2468, file: !1917, line: 518, baseType: !384, size: 64, offset: 384)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2468, file: !1917, line: 519, baseType: !384, size: 64, offset: 448)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2468, file: !1917, line: 520, baseType: !581, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2468, file: !1917, line: 522, baseType: !384, size: 64, offset: 576)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2468, file: !1917, line: 523, baseType: !384, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2468, file: !1917, line: 524, baseType: !581, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2468, file: !1917, line: 526, baseType: !581, size: 64, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2468, file: !1917, line: 527, baseType: !384, size: 64, offset: 832)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2468, file: !1917, line: 529, baseType: !384, size: 64, offset: 896)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2468, file: !1917, line: 530, baseType: !384, size: 64, offset: 960)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2468, file: !1917, line: 531, baseType: !384, size: 64, offset: 1024)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2468, file: !1917, line: 532, baseType: !384, size: 64, offset: 1088)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2468, file: !1917, line: 533, baseType: !384, size: 64, offset: 1152)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2468, file: !1917, line: 535, baseType: !384, size: 64, offset: 1216)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2468, file: !1917, line: 536, baseType: !384, size: 64, offset: 1280)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2468, file: !1917, line: 537, baseType: !384, size: 64, offset: 1344)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2468, file: !1917, line: 538, baseType: !384, size: 64, offset: 1408)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2468, file: !1917, line: 539, baseType: !384, size: 64, offset: 1472)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2468, file: !1917, line: 540, baseType: !384, size: 64, offset: 1536)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2468, file: !1917, line: 541, baseType: !384, size: 64, offset: 1600)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2468, file: !1917, line: 542, baseType: !384, size: 64, offset: 1664)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2468, file: !1917, line: 543, baseType: !384, size: 64, offset: 1728)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2272, file: !1917, line: 833, baseType: !7, size: 32, offset: 7680)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2272, file: !1917, line: 836, baseType: !7, size: 32, offset: 7712)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2272, file: !1917, line: 837, baseType: !193, size: 32, offset: 7744)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2272, file: !1917, line: 838, baseType: !2502, size: 64, offset: 7808)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2504)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2505, line: 19, baseType: !2506)
!2505 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2505, line: 19, size: 64, elements: !2507)
!2507 = !{!2508}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2506, file: !2505, line: 19, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !2510)
!2510 = !{!2511}
!2511 = !DISubrange(count: 1)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2272, file: !1917, line: 839, baseType: !2513, size: 64, offset: 7872)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2272, file: !1917, line: 840, baseType: !2504, size: 64, offset: 7936)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2272, file: !1917, line: 841, baseType: !105, size: 64, offset: 8000)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2272, file: !1917, line: 843, baseType: !121, size: 16, offset: 8064)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2272, file: !1917, line: 845, baseType: !121, size: 16, offset: 8080)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2272, file: !1917, line: 848, baseType: !193, size: 32, offset: 8096)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2272, file: !1917, line: 849, baseType: !2520, size: 32, offset: 8128)
!2520 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1917, line: 718, size: 32, elements: !2521)
!2521 = !{!2522, !2529}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2520, file: !1917, line: 724, baseType: !2523, size: 32)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !1917, line: 719, size: 32, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2523, file: !1917, line: 720, baseType: !198, size: 8)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2523, file: !1917, line: 721, baseType: !198, size: 8, offset: 8)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2523, file: !1917, line: 722, baseType: !198, size: 8, offset: 16)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2523, file: !1917, line: 723, baseType: !198, size: 8, offset: 24)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2520, file: !1917, line: 725, baseType: !381, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2272, file: !1917, line: 850, baseType: !147, size: 128, offset: 8192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2272, file: !1917, line: 851, baseType: !2532, size: 64, offset: 8320)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1917, line: 60, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2272, file: !1917, line: 855, baseType: !137, size: 64, offset: 8384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2272, file: !1917, line: 856, baseType: !198, size: 8, offset: 8448)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2272, file: !1917, line: 857, baseType: !198, size: 8, offset: 8456)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2272, file: !1917, line: 858, baseType: !193, size: 32, offset: 8480)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2272, file: !1917, line: 859, baseType: !147, size: 128, offset: 8512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2272, file: !1917, line: 860, baseType: !193, size: 32, offset: 8640)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2272, file: !1917, line: 861, baseType: !147, size: 128, offset: 8704)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2272, file: !1917, line: 873, baseType: !2542, size: 256, offset: 8832)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1917, line: 376, size: 256, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2542, file: !1917, line: 381, baseType: !137, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2542, file: !1917, line: 384, baseType: !386, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2542, file: !1917, line: 389, baseType: !386, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2542, file: !1917, line: 392, baseType: !386, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2272, file: !1917, line: 875, baseType: !147, size: 128, offset: 9088)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2272, file: !1917, line: 877, baseType: !2550, size: 320, offset: 9216)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2551, line: 86, size: 320, elements: !2552)
!2551 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2552 = !{!2553, !2554, !2555}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2550, file: !2551, line: 87, baseType: !193, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2550, file: !2551, line: 88, baseType: !147, size: 128, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2550, file: !2551, line: 89, baseType: !147, size: 128, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2272, file: !1917, line: 878, baseType: !683, size: 192, align: 64, offset: 9536)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2272, file: !1917, line: 881, baseType: !1454, size: 64, offset: 9728)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2272, file: !1917, line: 882, baseType: !1454, size: 64, offset: 9792)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2272, file: !1917, line: 884, baseType: !193, size: 32, offset: 9856)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2272, file: !1917, line: 885, baseType: !193, size: 32, offset: 9888)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2272, file: !1917, line: 886, baseType: !193, size: 32, offset: 9920)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2272, file: !1917, line: 888, baseType: !193, size: 32, offset: 9952)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2272, file: !1917, line: 890, baseType: !137, size: 64, offset: 9984)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2272, file: !1917, line: 893, baseType: !7, size: 32, offset: 10048)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2272, file: !1917, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2272, file: !1917, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2272, file: !1917, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2272, file: !1917, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2272, file: !1917, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2272, file: !1917, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2272, file: !1917, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2272, file: !1917, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2272, file: !1917, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2272, file: !1917, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2272, file: !1917, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2272, file: !1917, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2272, file: !1917, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2272, file: !1917, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2272, file: !1917, line: 969, baseType: !137, size: 64, offset: 10176)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2272, file: !1917, line: 971, baseType: !2581, size: 448, offset: 10240)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 448, elements: !2582)
!2582 = !{!2583, !2584, !2589}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2581, file: !67, line: 26, baseType: !137, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2581, file: !67, line: 27, baseType: !2585, size: 64, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!269, !2588}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2581, file: !67, line: 28, baseType: !2590, size: 320, offset: 128)
!2590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2581, file: !67, line: 28, size: 320, elements: !2591)
!2591 = !{!2592, !2602, !2627}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2590, file: !67, line: 37, baseType: !2593, size: 320)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !67, line: 30, size: 320, elements: !2594)
!2594 = !{!2595, !2597, !2598, !2599, !2600, !2601}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2593, file: !67, line: 31, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2593, file: !67, line: 32, baseType: !381, size: 32, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2593, file: !67, line: 33, baseType: !381, size: 32, offset: 96)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2593, file: !67, line: 34, baseType: !381, size: 32, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2593, file: !67, line: 35, baseType: !384, size: 64, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2593, file: !67, line: 36, baseType: !2596, size: 64, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2590, file: !67, line: 47, baseType: !2603, size: 192)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !67, line: 39, size: 192, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2626}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2603, file: !67, line: 40, baseType: !2429, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2603, file: !67, line: 41, baseType: !66, size: 32, offset: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !67, line: 42, baseType: !2608, size: 64, offset: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2603, file: !67, line: 42, size: 64, elements: !2609)
!2609 = !{!2610, !2618}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2608, file: !67, line: 43, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2613, line: 7, size: 128, elements: !2614)
!2613 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2614 = !{!2615, !2617}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2612, file: !2613, line: 8, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !267, line: 93, baseType: !474)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2612, file: !2613, line: 9, baseType: !474, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2608, file: !67, line: 44, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2621, line: 7, size: 64, elements: !2622)
!2621 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2622 = !{!2623, !2625}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2620, file: !2621, line: 8, baseType: !2624, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2621, line: 5, baseType: !567)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2620, file: !2621, line: 9, baseType: !567, size: 32, offset: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2603, file: !67, line: 46, baseType: !384, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2590, file: !67, line: 55, baseType: !2628, size: 256)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2590, file: !67, line: 49, size: 256, elements: !2629)
!2629 = !{!2630, !2638, !2639, !2640, !2641}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2628, file: !67, line: 50, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2633, line: 36, size: 64, elements: !2634)
!2633 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2634 = !{!2635, !2636, !2637}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2632, file: !2633, line: 37, baseType: !193, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2632, file: !2633, line: 38, baseType: !709, size: 16, offset: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2632, file: !2633, line: 39, baseType: !709, size: 16, offset: 48)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2628, file: !67, line: 51, baseType: !193, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2628, file: !67, line: 52, baseType: !193, size: 32, offset: 96)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2628, file: !67, line: 53, baseType: !137, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2628, file: !67, line: 54, baseType: !137, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2272, file: !1917, line: 973, baseType: !2643, size: 32, offset: 10688)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !104, line: 27, baseType: !2644)
!2644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !267, line: 28, baseType: !193)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2272, file: !1917, line: 974, baseType: !2643, size: 32, offset: 10720)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2272, file: !1917, line: 978, baseType: !137, size: 64, offset: 10752)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2272, file: !1917, line: 987, baseType: !2271, size: 64, offset: 10816)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2272, file: !1917, line: 990, baseType: !2271, size: 64, offset: 10880)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2272, file: !1917, line: 995, baseType: !147, size: 128, offset: 10944)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2272, file: !1917, line: 996, baseType: !147, size: 128, offset: 11072)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2272, file: !1917, line: 997, baseType: !2271, size: 64, offset: 11200)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2272, file: !1917, line: 1005, baseType: !147, size: 128, offset: 11264)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2272, file: !1917, line: 1006, baseType: !147, size: 128, offset: 11392)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2272, file: !1917, line: 1009, baseType: !1096, size: 64, offset: 11520)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2272, file: !1917, line: 1010, baseType: !2656, size: 512, offset: 11584)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 512, elements: !801)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2272, file: !1917, line: 1011, baseType: !147, size: 128, offset: 12096)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2272, file: !1917, line: 1012, baseType: !147, size: 128, offset: 12224)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2272, file: !1917, line: 1014, baseType: !519, size: 64, offset: 12352)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2272, file: !1917, line: 1017, baseType: !700, size: 64, offset: 12416)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2272, file: !1917, line: 1020, baseType: !700, size: 64, offset: 12480)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2272, file: !1917, line: 1023, baseType: !105, size: 64, offset: 12544)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2272, file: !1917, line: 1025, baseType: !384, size: 64, offset: 12608)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2272, file: !1917, line: 1026, baseType: !384, size: 64, offset: 12672)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2272, file: !1917, line: 1031, baseType: !384, size: 64, offset: 12736)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2272, file: !1917, line: 1032, baseType: !2667, size: 192, offset: 12800)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1917, line: 324, size: 192, elements: !2668)
!2668 = !{!2669, !2670, !2671}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2667, file: !1917, line: 326, baseType: !384, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2667, file: !1917, line: 327, baseType: !384, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2667, file: !1917, line: 328, baseType: !529, size: 32, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2272, file: !1917, line: 1041, baseType: !137, size: 64, offset: 12992)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2272, file: !1917, line: 1042, baseType: !137, size: 64, offset: 13056)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2272, file: !1917, line: 1045, baseType: !384, size: 64, offset: 13120)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2272, file: !1917, line: 1048, baseType: !384, size: 64, offset: 13184)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2272, file: !1917, line: 1051, baseType: !137, size: 64, offset: 13248)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2272, file: !1917, line: 1052, baseType: !137, size: 64, offset: 13312)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2272, file: !1917, line: 1055, baseType: !2679, size: 640, offset: 13376)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2680, line: 132, size: 640, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2681 = !{!2682, !2688, !2689}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2679, file: !2680, line: 133, baseType: !2683, size: 576)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2684, size: 576, elements: !234)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2680, line: 117, size: 192, elements: !2685)
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2684, file: !2680, line: 118, baseType: !384, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2684, file: !2680, line: 119, baseType: !2438, size: 128, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2679, file: !2680, line: 134, baseType: !7, size: 32, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2679, file: !2680, line: 135, baseType: !7, size: 32, offset: 608)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2272, file: !1917, line: 1058, baseType: !2691, size: 448, offset: 14016)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2680, line: 144, size: 448, elements: !2692)
!2692 = !{!2693, !2694, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2691, file: !2680, line: 145, baseType: !791, size: 128, align: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2691, file: !2680, line: 146, baseType: !571, size: 256, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2691, file: !2680, line: 147, baseType: !7, size: 32, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2272, file: !1917, line: 1064, baseType: !1133, size: 64, offset: 14464)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2272, file: !1917, line: 1067, baseType: !1133, size: 64, offset: 14528)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2272, file: !1917, line: 1070, baseType: !1133, size: 64, offset: 14592)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2272, file: !1917, line: 1074, baseType: !1160, size: 64, offset: 14656)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2272, file: !1917, line: 1084, baseType: !2701, size: 128, offset: 14720)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 128, elements: !134)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2272, file: !1917, line: 1086, baseType: !2703, size: 64, offset: 14848)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1917, line: 55, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2272, file: !1917, line: 1089, baseType: !2706, size: 64, offset: 14912)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2707, line: 12, size: 64, elements: !2708)
!2707 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2708 = !{!2709}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2706, file: !2707, line: 13, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2707, line: 8, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2272, file: !1917, line: 1090, baseType: !2713, size: 128, offset: 14976)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2714, line: 13, size: 128, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2715 = !{!2716}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2713, file: !2714, line: 14, baseType: !147, size: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2272, file: !1917, line: 1097, baseType: !2718, size: 64, offset: 15104)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1917, line: 50, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2272, file: !1917, line: 1100, baseType: !2721, size: 64, offset: 15168)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1917, line: 1100, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2272, file: !1917, line: 1103, baseType: !2724, size: 64, offset: 15232)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1917, line: 53, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2272, file: !1917, line: 1107, baseType: !2727, size: 64, offset: 15296)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1917, line: 56, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2272, file: !1917, line: 1110, baseType: !2730, size: 64, offset: 15360)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2732, line: 93, size: 8768, elements: !2733)
!2732 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2781, !2790, !2791, !2793, !2794, !2795, !2798, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2836, !2837, !2844, !2854, !2857, !2858, !2861, !2862, !2863, !2864, !2865, !2866}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2731, file: !2732, line: 94, baseType: !1100, size: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2731, file: !2732, line: 95, baseType: !189, size: 32, offset: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2731, file: !2732, line: 96, baseType: !193, size: 32, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2731, file: !2732, line: 97, baseType: !193, size: 32, offset: 96)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2731, file: !2732, line: 98, baseType: !147, size: 128, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2731, file: !2732, line: 100, baseType: !1111, size: 192, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2731, file: !2732, line: 103, baseType: !2271, size: 64, offset: 448)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2731, file: !2732, line: 106, baseType: !2742, size: 192, offset: 512)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1318, line: 32, size: 192, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2742, file: !1318, line: 33, baseType: !147, size: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2742, file: !1318, line: 34, baseType: !2746, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2747, line: 25, baseType: !2748)
!2747 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2747, line: 23, size: 64, elements: !2749)
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2748, file: !2747, line: 24, baseType: !2509, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2731, file: !2732, line: 109, baseType: !941, size: 64, offset: 704)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2731, file: !2732, line: 112, baseType: !193, size: 32, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2731, file: !2732, line: 114, baseType: !193, size: 32, offset: 800)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2731, file: !2732, line: 115, baseType: !2271, size: 64, offset: 832)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2731, file: !2732, line: 118, baseType: !193, size: 32, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2731, file: !2732, line: 119, baseType: !7, size: 32, offset: 928)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2731, file: !2732, line: 121, baseType: !2758, size: 64, offset: 960)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2732, line: 80, size: 448, elements: !2760)
!2760 = !{!2761, !2762, !2768}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2759, file: !2732, line: 81, baseType: !189, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2759, file: !2732, line: 82, baseType: !2763, size: 128, offset: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2732, line: 75, size: 128, elements: !2764)
!2764 = !{!2765, !2766}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2763, file: !2732, line: 76, baseType: !2271, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2763, file: !2732, line: 77, baseType: !2767, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2759, file: !2732, line: 83, baseType: !520, size: 256, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2731, file: !2732, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2731, file: !2732, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2731, file: !2732, line: 138, baseType: !7, size: 32, offset: 1056)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2731, file: !2732, line: 139, baseType: !147, size: 128, offset: 1088)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2731, file: !2732, line: 142, baseType: !2382, size: 512, offset: 1216)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2731, file: !2732, line: 143, baseType: !2390, size: 64, offset: 1728)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2731, file: !2732, line: 150, baseType: !2776, size: 256, offset: 1792)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2777, size: 256, elements: !690)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2732, line: 38, size: 128, elements: !2778)
!2778 = !{!2779, !2780}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2777, file: !2732, line: 39, baseType: !384, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2777, file: !2732, line: 40, baseType: !384, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2731, file: !2732, line: 156, baseType: !2782, size: 192, offset: 2048)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2732, line: 66, size: 192, elements: !2783)
!2783 = !{!2784}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2782, file: !2732, line: 67, baseType: !2785, size: 192)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2732, line: 47, size: 192, elements: !2786)
!2786 = !{!2787, !2788, !2789}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2785, file: !2732, line: 48, baseType: !577, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2785, file: !2732, line: 49, baseType: !577, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2785, file: !2732, line: 50, baseType: !577, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2731, file: !2732, line: 160, baseType: !2679, size: 640, offset: 2240)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2731, file: !2732, line: 163, baseType: !2792, size: 256, offset: 2880)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1096, size: 256, elements: !801)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2731, file: !2732, line: 169, baseType: !1096, size: 64, offset: 3136)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2731, file: !2732, line: 172, baseType: !193, size: 32, offset: 3200)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2731, file: !2732, line: 174, baseType: !2796, size: 64, offset: 3264)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2732, line: 174, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2731, file: !2732, line: 185, baseType: !2799, size: 64, offset: 3328)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !354, line: 860, baseType: !2800)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 853, size: 64, elements: !2801)
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2800, file: !354, line: 858, baseType: !353, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2800, file: !354, line: 859, baseType: !169, size: 32, offset: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2731, file: !2732, line: 186, baseType: !384, size: 64, offset: 3392)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2731, file: !2732, line: 186, baseType: !384, size: 64, offset: 3456)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2731, file: !2732, line: 186, baseType: !384, size: 64, offset: 3520)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2731, file: !2732, line: 186, baseType: !384, size: 64, offset: 3584)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2731, file: !2732, line: 187, baseType: !384, size: 64, offset: 3648)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2731, file: !2732, line: 188, baseType: !384, size: 64, offset: 3712)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2731, file: !2732, line: 189, baseType: !2667, size: 192, offset: 3776)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2731, file: !2732, line: 190, baseType: !137, size: 64, offset: 3968)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2731, file: !2732, line: 190, baseType: !137, size: 64, offset: 4032)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2731, file: !2732, line: 190, baseType: !137, size: 64, offset: 4096)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2731, file: !2732, line: 190, baseType: !137, size: 64, offset: 4160)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2731, file: !2732, line: 191, baseType: !137, size: 64, offset: 4224)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2731, file: !2732, line: 191, baseType: !137, size: 64, offset: 4288)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2731, file: !2732, line: 191, baseType: !137, size: 64, offset: 4352)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2731, file: !2732, line: 191, baseType: !137, size: 64, offset: 4416)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2731, file: !2732, line: 192, baseType: !137, size: 64, offset: 4480)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2731, file: !2732, line: 192, baseType: !137, size: 64, offset: 4544)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2731, file: !2732, line: 192, baseType: !137, size: 64, offset: 4608)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2731, file: !2732, line: 192, baseType: !137, size: 64, offset: 4672)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2731, file: !2732, line: 193, baseType: !137, size: 64, offset: 4736)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2731, file: !2732, line: 193, baseType: !137, size: 64, offset: 4800)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2731, file: !2732, line: 194, baseType: !2826, size: 448, offset: 4864)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2827, line: 12, size: 448, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2826, file: !2827, line: 15, baseType: !384, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2826, file: !2827, line: 17, baseType: !384, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2826, file: !2827, line: 19, baseType: !384, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2826, file: !2827, line: 21, baseType: !384, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2826, file: !2827, line: 29, baseType: !384, size: 64, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2826, file: !2827, line: 35, baseType: !384, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2826, file: !2827, line: 44, baseType: !384, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2731, file: !2732, line: 202, baseType: !386, size: 64, offset: 5312)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2731, file: !2732, line: 213, baseType: !2838, size: 2048, offset: 5376)
!2838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2839, size: 2048, elements: !134)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2840, line: 43, size: 128, elements: !2841)
!2840 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2839, file: !2840, line: 44, baseType: !282, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2839, file: !2840, line: 45, baseType: !282, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2731, file: !2732, line: 216, baseType: !2845, size: 448, offset: 7424)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2732, line: 30, size: 448, elements: !2846)
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2852, !2853}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2845, file: !2732, line: 31, baseType: !193, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2845, file: !2732, line: 32, baseType: !269, size: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2845, file: !2732, line: 33, baseType: !137, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2845, file: !2732, line: 34, baseType: !384, size: 64, offset: 192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2845, file: !2732, line: 34, baseType: !384, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2845, file: !2732, line: 35, baseType: !137, size: 64, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2845, file: !2732, line: 35, baseType: !137, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2731, file: !2732, line: 219, baseType: !2855, size: 64, offset: 7872)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2732, line: 219, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2731, file: !2732, line: 222, baseType: !7, size: 32, offset: 7936)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2731, file: !2732, line: 223, baseType: !2859, size: 64, offset: 8000)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2732, line: 223, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2731, file: !2732, line: 230, baseType: !651, size: 8, offset: 8064)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2731, file: !2732, line: 231, baseType: !709, size: 16, offset: 8080)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2731, file: !2732, line: 232, baseType: !709, size: 16, offset: 8096)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2731, file: !2732, line: 234, baseType: !1454, size: 64, offset: 8128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2731, file: !2732, line: 237, baseType: !571, size: 256, offset: 8192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2731, file: !2732, line: 243, baseType: !1174, size: 320, offset: 8448)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2272, file: !1917, line: 1111, baseType: !2868, size: 64, offset: 15424)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2732, line: 20, size: 16640, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2874}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2869, file: !2732, line: 21, baseType: !169, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2869, file: !2732, line: 22, baseType: !1100, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2869, file: !2732, line: 23, baseType: !1111, size: 192, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2869, file: !2732, line: 24, baseType: !2875, size: 16384, offset: 256)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2876, size: 16384, elements: !238)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1318, line: 51, size: 256, elements: !2877)
!2877 = !{!2878}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2876, file: !1318, line: 52, baseType: !2879, size: 256)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1318, line: 37, size: 256, elements: !2880)
!2880 = !{!2881, !2888, !2889, !2893}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2879, file: !1318, line: 39, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2883, line: 83, baseType: !2884)
!2883 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2883, line: 82, baseType: !2886)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{null, !193}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2879, file: !1318, line: 40, baseType: !137, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2879, file: !1318, line: 46, baseType: !2890, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2883, line: 86, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2883, line: 85, baseType: !936)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2879, file: !1318, line: 48, baseType: !2746, size: 64, offset: 192)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2272, file: !1917, line: 1112, baseType: !2746, size: 64, offset: 15488)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2272, file: !1917, line: 1113, baseType: !2746, size: 64, offset: 15552)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2272, file: !1917, line: 1115, baseType: !2746, size: 64, offset: 15616)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2272, file: !1917, line: 1116, baseType: !2742, size: 192, offset: 15680)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2272, file: !1917, line: 1117, baseType: !137, size: 64, offset: 15872)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2272, file: !1917, line: 1118, baseType: !280, size: 64, offset: 15936)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2272, file: !1917, line: 1119, baseType: !7, size: 32, offset: 16000)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2272, file: !1917, line: 1121, baseType: !790, size: 64, offset: 16064)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2272, file: !1917, line: 1125, baseType: !2903, size: 64, offset: 16128)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1917, line: 43, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2272, file: !1917, line: 1127, baseType: !318, size: 32, offset: 16192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2272, file: !1917, line: 1128, baseType: !7, size: 32, offset: 16224)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2272, file: !1917, line: 1130, baseType: !2908, size: 128, offset: 16256)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2909, line: 37, size: 128, elements: !2910)
!2909 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2910 = !{!2911, !2912, !2913}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2908, file: !2909, line: 38, baseType: !193, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2908, file: !2909, line: 39, baseType: !189, size: 32, offset: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2908, file: !2909, line: 40, baseType: !2914, size: 64, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2909, line: 24, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2272, file: !1917, line: 1131, baseType: !2917, size: 256, offset: 16384)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2918, line: 12, size: 256, elements: !2919)
!2918 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2919 = !{!2920, !2921, !2922, !2923}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2917, file: !2918, line: 13, baseType: !233, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2917, file: !2918, line: 14, baseType: !137, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2917, file: !2918, line: 15, baseType: !137, size: 64, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2917, file: !2918, line: 16, baseType: !651, size: 8, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2272, file: !1917, line: 1134, baseType: !384, size: 64, offset: 16640)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2272, file: !1917, line: 1135, baseType: !384, size: 64, offset: 16704)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2272, file: !1917, line: 1138, baseType: !169, size: 32, offset: 16768)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2272, file: !1917, line: 1141, baseType: !529, size: 32, offset: 16800)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2272, file: !1917, line: 1143, baseType: !2929, size: 64, offset: 16832)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1917, line: 735, size: 64, elements: !2930)
!2930 = !{!2931}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2929, file: !1917, line: 736, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2272, file: !1917, line: 1147, baseType: !2441, size: 128, offset: 16896)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2272, file: !1917, line: 1149, baseType: !2271, size: 64, offset: 17024)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2272, file: !1917, line: 1151, baseType: !2936, size: 64, offset: 17088)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1917, line: 1151, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2272, file: !1917, line: 1188, baseType: !105, size: 64, offset: 17152)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2272, file: !1917, line: 1191, baseType: !2940, size: 64, offset: 17216)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1917, line: 44, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2272, file: !1917, line: 1194, baseType: !2943, size: 64, offset: 17280)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1917, line: 45, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2272, file: !1917, line: 1197, baseType: !2946, size: 64, offset: 17344)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1917, line: 61, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2272, file: !1917, line: 1199, baseType: !2949, size: 64, offset: 17408)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2951, line: 99, size: 128, elements: !2952)
!2951 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2952 = !{!2953, !2954, !2955}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2950, file: !2951, line: 100, baseType: !575, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2950, file: !2951, line: 101, baseType: !189, size: 32, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2950, file: !2951, line: 103, baseType: !121, size: 16, offset: 96)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2272, file: !1917, line: 1202, baseType: !2957, size: 64, offset: 17472)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1917, line: 48, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2272, file: !1917, line: 1205, baseType: !137, size: 64, offset: 17536)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2272, file: !1917, line: 1206, baseType: !2961, size: 64, offset: 17600)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1318, line: 14, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1318, line: 12, size: 384, elements: !2964)
!2964 = !{!2965}
!2965 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !1318, line: 13, baseType: !2966, size: 384)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !1318, line: 13, size: 384, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2966, file: !1318, line: 13, baseType: !193, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2966, file: !1318, line: 13, baseType: !193, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2966, file: !1318, line: 13, baseType: !193, size: 32, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2966, file: !1318, line: 13, baseType: !2972, size: 256, offset: 128)
!2972 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2973, line: 37, size: 256, elements: !2974)
!2973 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2974 = !{!2975, !2980, !2993, !2999, !3008, !3035, !3040}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2972, file: !2973, line: 42, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2972, file: !2973, line: 39, size: 64, elements: !2977)
!2977 = !{!2978, !2979}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2976, file: !2973, line: 40, baseType: !2644, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2976, file: !2973, line: 41, baseType: !324, size: 32, offset: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2972, file: !2973, line: 50, baseType: !2981, size: 192)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2972, file: !2973, line: 45, size: 192, elements: !2982)
!2982 = !{!2983, !2985, !2986, !2992}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2981, file: !2973, line: 46, baseType: !2984, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !267, line: 95, baseType: !193)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2981, file: !2973, line: 47, baseType: !193, size: 32, offset: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2981, file: !2973, line: 48, baseType: !2987, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2973, line: 11, baseType: !2988)
!2988 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2973, line: 8, size: 64, elements: !2989)
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2988, file: !2973, line: 9, baseType: !193, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2988, file: !2973, line: 10, baseType: !105, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2981, file: !2973, line: 49, baseType: !193, size: 32, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2972, file: !2973, line: 57, baseType: !2994, size: 128)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2972, file: !2973, line: 53, size: 128, elements: !2995)
!2995 = !{!2996, !2997, !2998}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2994, file: !2973, line: 54, baseType: !2644, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2994, file: !2973, line: 55, baseType: !324, size: 32, offset: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2994, file: !2973, line: 56, baseType: !2987, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2972, file: !2973, line: 66, baseType: !3000, size: 256)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2972, file: !2973, line: 60, size: 256, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3007}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3000, file: !2973, line: 61, baseType: !2644, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3000, file: !2973, line: 62, baseType: !324, size: 32, offset: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3000, file: !2973, line: 63, baseType: !193, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3000, file: !2973, line: 64, baseType: !3006, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !267, line: 94, baseType: !268)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3000, file: !2973, line: 65, baseType: !3006, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2972, file: !2973, line: 105, baseType: !3009, size: 256)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2972, file: !2973, line: 69, size: 256, elements: !3010)
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3009, file: !2973, line: 70, baseType: !105, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, scope: !3009, file: !2973, line: 79, baseType: !3013, size: 192, offset: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3009, file: !2973, line: 79, size: 192, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3024, !3029}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3013, file: !2973, line: 81, baseType: !193, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3013, file: !2973, line: 86, baseType: !709, size: 16)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3013, file: !2973, line: 92, baseType: !3018, size: 192)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3013, file: !2973, line: 88, size: 192, elements: !3019)
!3019 = !{!3020, !3022, !3023}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3018, file: !2973, line: 89, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !2425)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3018, file: !2973, line: 90, baseType: !105, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3018, file: !2973, line: 91, baseType: !105, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3013, file: !2973, line: 97, baseType: !3025, size: 96)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3013, file: !2973, line: 94, size: 96, elements: !3026)
!3026 = !{!3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3025, file: !2973, line: 95, baseType: !3021, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3025, file: !2973, line: 96, baseType: !145, size: 32, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3013, file: !2973, line: 103, baseType: !3030, size: 128)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3013, file: !2973, line: 99, size: 128, elements: !3031)
!3031 = !{!3032, !3033, !3034}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3030, file: !2973, line: 100, baseType: !137, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3030, file: !2973, line: 101, baseType: !145, size: 32, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3030, file: !2973, line: 102, baseType: !145, size: 32, offset: 96)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2972, file: !2973, line: 111, baseType: !3036, size: 128)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2972, file: !2973, line: 108, size: 128, elements: !3037)
!3037 = !{!3038, !3039}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3036, file: !2973, line: 109, baseType: !269, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3036, file: !2973, line: 110, baseType: !193, size: 32, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2972, file: !2973, line: 118, baseType: !3041, size: 128)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2972, file: !2973, line: 114, size: 128, elements: !3042)
!3042 = !{!3043, !3044, !3045}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3041, file: !2973, line: 115, baseType: !105, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3041, file: !2973, line: 116, baseType: !193, size: 32, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3041, file: !2973, line: 117, baseType: !7, size: 32, offset: 96)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2272, file: !1917, line: 1208, baseType: !2826, size: 448, offset: 17664)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2272, file: !1917, line: 1215, baseType: !384, size: 64, offset: 18112)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2272, file: !1917, line: 1217, baseType: !384, size: 64, offset: 18176)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2272, file: !1917, line: 1219, baseType: !384, size: 64, offset: 18240)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2272, file: !1917, line: 1223, baseType: !3051, size: 64, offset: 18304)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3052, line: 99, baseType: !3053)
!3052 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3052, line: 99, size: 64, elements: !3054)
!3054 = !{!3055}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3053, file: !3052, line: 99, baseType: !2509, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2272, file: !1917, line: 1225, baseType: !353, size: 32, offset: 18368)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2272, file: !1917, line: 1226, baseType: !193, size: 32, offset: 18400)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2272, file: !1917, line: 1227, baseType: !193, size: 32, offset: 18432)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2272, file: !1917, line: 1231, baseType: !3060, size: 64, offset: 18496)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1917, line: 1231, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2272, file: !1917, line: 1233, baseType: !147, size: 128, offset: 18560)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2272, file: !1917, line: 1240, baseType: !3064, size: 64, offset: 18688)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1917, line: 62, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2272, file: !1917, line: 1242, baseType: !3067, size: 64, offset: 18752)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1917, line: 1242, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2272, file: !1917, line: 1244, baseType: !147, size: 128, offset: 18816)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2272, file: !1917, line: 1245, baseType: !3071, size: 64, offset: 18944)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1917, line: 51, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2272, file: !1917, line: 1246, baseType: !571, size: 256, offset: 19008)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2272, file: !1917, line: 1247, baseType: !7, size: 32, offset: 19264)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2272, file: !1917, line: 1250, baseType: !3076, size: 64, offset: 19328)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1917, line: 57, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2272, file: !1917, line: 1251, baseType: !571, size: 256, offset: 19392)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2272, file: !1917, line: 1252, baseType: !147, size: 128, offset: 19648)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2272, file: !1917, line: 1259, baseType: !1863, size: 64, offset: 19776)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2272, file: !1917, line: 1260, baseType: !709, size: 16, offset: 19840)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2272, file: !1917, line: 1261, baseType: !709, size: 16, offset: 19856)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2272, file: !1917, line: 1314, baseType: !3084, size: 64, offset: 19904)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3086, line: 62, size: 256, align: 256, elements: !3087)
!3086 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093, !3094}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3085, file: !3086, line: 75, baseType: !145, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3085, file: !3086, line: 90, baseType: !145, size: 32, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3085, file: !3086, line: 112, baseType: !385, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3085, file: !3086, line: 132, baseType: !145, size: 32, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3085, file: !3086, line: 140, baseType: !145, size: 32, offset: 160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3085, file: !3086, line: 149, baseType: !145, size: 32, offset: 192)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3085, file: !3086, line: 154, baseType: !3095, offset: 224)
!3095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, elements: !1126)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2272, file: !1917, line: 1315, baseType: !381, size: 32, offset: 19968)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2272, file: !1917, line: 1316, baseType: !381, size: 32, offset: 20000)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2272, file: !1917, line: 1321, baseType: !137, size: 64, offset: 20032)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2272, file: !1917, line: 1325, baseType: !193, size: 32, offset: 20096)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2272, file: !1917, line: 1326, baseType: !193, size: 32, offset: 20128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2272, file: !1917, line: 1327, baseType: !193, size: 32, offset: 20160)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2272, file: !1917, line: 1328, baseType: !193, size: 32, offset: 20192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2272, file: !1917, line: 1329, baseType: !791, size: 128, align: 64, offset: 20224)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2272, file: !1917, line: 1332, baseType: !3105, size: 128, offset: 20352)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3106, line: 51, size: 128, elements: !3107)
!3106 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3107 = !{!3108, !3113, !3114}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3105, file: !3106, line: 60, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3110, line: 7, size: 64, elements: !3111)
!3110 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3111 = !{!3112}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3109, file: !3110, line: 12, baseType: !2506, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3105, file: !3106, line: 63, baseType: !651, size: 8, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3105, file: !3106, line: 70, baseType: !651, size: 8, offset: 72)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2272, file: !1917, line: 1335, baseType: !1915, size: 64, offset: 20480)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2272, file: !1917, line: 1337, baseType: !3117, size: 128, offset: 20544)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3106, line: 39, size: 128, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3117, file: !3106, line: 40, baseType: !1702, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3117, file: !3106, line: 42, baseType: !145, size: 32, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3117, file: !3106, line: 43, baseType: !145, size: 32, offset: 96)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2272, file: !1917, line: 1340, baseType: !3123, size: 64, offset: 20672)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1917, line: 69, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2272, file: !1917, line: 1351, baseType: !193, size: 32, offset: 20736)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2272, file: !1917, line: 1352, baseType: !193, size: 32, offset: 20768)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2272, file: !1917, line: 1354, baseType: !137, size: 64, offset: 20800)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2272, file: !1917, line: 1364, baseType: !384, size: 64, offset: 20864)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2272, file: !1917, line: 1365, baseType: !384, size: 64, offset: 20928)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2272, file: !1917, line: 1412, baseType: !137, size: 64, offset: 20992)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2272, file: !1917, line: 1453, baseType: !3132, size: 64, offset: 21056)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1917, line: 1453, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2272, file: !1917, line: 1457, baseType: !3135, size: 64, offset: 21120)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !73, line: 61, size: 576, elements: !3137)
!3137 = !{!3138, !3139, !3158, !3161, !3162, !3195, !3205}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3136, file: !73, line: 62, baseType: !72, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, scope: !3136, file: !73, line: 64, baseType: !3140, size: 192, offset: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3136, file: !73, line: 64, size: 192, elements: !3141)
!3141 = !{!3142, !3153}
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !3140, file: !73, line: 65, baseType: !3143, size: 192)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !73, line: 65, size: 192, elements: !3144)
!3144 = !{!3145, !3152}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3143, file: !73, line: 66, baseType: !3146, size: 128)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3147, line: 50, size: 128, elements: !3148)
!3147 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3148 = !{!3149, !3150, !3151}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3146, file: !3147, line: 52, baseType: !137, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3146, file: !3147, line: 54, baseType: !7, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3146, file: !3147, line: 55, baseType: !7, size: 32, offset: 96)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3143, file: !73, line: 67, baseType: !137, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, scope: !3140, file: !73, line: 70, baseType: !3154, size: 192)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !73, line: 70, size: 192, elements: !3155)
!3155 = !{!3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3154, file: !73, line: 71, baseType: !791, size: 128, align: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3154, file: !73, line: 72, baseType: !137, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3136, file: !73, line: 76, baseType: !3159, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !73, line: 76, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3136, file: !73, line: 77, baseType: !137, size: 64, offset: 320)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3136, file: !73, line: 79, baseType: !3163, size: 64, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3147, line: 25, size: 256, elements: !3165)
!3165 = !{!3166, !3172, !3176}
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !3164, file: !3147, line: 26, baseType: !3167, size: 128)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3164, file: !3147, line: 26, size: 128, elements: !3168)
!3168 = !{!3169, !3171}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3167, file: !3147, line: 27, baseType: !3170, size: 128)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, elements: !134)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3167, file: !3147, line: 28, baseType: !3170, size: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3164, file: !3147, line: 31, baseType: !3173, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3175)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3147, line: 23, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, scope: !3164, file: !3147, line: 33, baseType: !3177, size: 64, offset: 192)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3164, file: !3147, line: 33, size: 64, elements: !3178)
!3178 = !{!3179, !3185, !3190}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3177, file: !3147, line: 38, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3177, file: !3147, line: 34, size: 64, elements: !3181)
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3180, file: !3147, line: 35, baseType: !567, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3180, file: !3147, line: 36, baseType: !198, size: 8, offset: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3180, file: !3147, line: 37, baseType: !198, size: 8, offset: 40)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3177, file: !3147, line: 42, baseType: !3186, size: 16)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3177, file: !3147, line: 39, size: 16, elements: !3187)
!3187 = !{!3188, !3189}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3186, file: !3147, line: 40, baseType: !198, size: 8)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3186, file: !3147, line: 41, baseType: !198, size: 8, offset: 8)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3177, file: !3147, line: 46, baseType: !3191, size: 16)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3177, file: !3147, line: 43, size: 16, elements: !3192)
!3192 = !{!3193, !3194}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3191, file: !3147, line: 44, baseType: !198, size: 8)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3191, file: !3147, line: 45, baseType: !198, size: 8, offset: 8)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3136, file: !73, line: 81, baseType: !3196, size: 64, offset: 448)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !73, line: 85, size: 384, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3197, file: !73, line: 86, baseType: !3159, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3197, file: !73, line: 87, baseType: !137, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3197, file: !73, line: 88, baseType: !137, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3197, file: !73, line: 89, baseType: !137, size: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3197, file: !73, line: 90, baseType: !651, size: 8, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3197, file: !73, line: 92, baseType: !3196, size: 64, offset: 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3136, file: !73, line: 82, baseType: !7, size: 32, offset: 512)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2272, file: !1917, line: 1463, baseType: !3207, offset: 21184)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1917, line: 739, elements: !860)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2272, file: !1917, line: 1470, baseType: !791, size: 128, align: 64, offset: 21184)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2272, file: !1917, line: 1471, baseType: !1100, size: 32, offset: 21312)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2272, file: !1917, line: 1472, baseType: !193, size: 32, offset: 21344)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2272, file: !1917, line: 1474, baseType: !2271, size: 64, offset: 21376)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2272, file: !1917, line: 1475, baseType: !813, size: 320, offset: 21440)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2272, file: !1917, line: 1478, baseType: !3214, size: 64, offset: 21760)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1917, line: 1478, flags: DIFlagFwdDecl)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2272, file: !1917, line: 1482, baseType: !1100, size: 32, offset: 21824)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2272, file: !1917, line: 1489, baseType: !105, size: 64, offset: 21888)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2272, file: !1917, line: 1504, baseType: !105, size: 64, offset: 21952)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2272, file: !1917, line: 1505, baseType: !385, size: 64, offset: 22016)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2272, file: !1917, line: 1506, baseType: !384, size: 64, offset: 22080)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2272, file: !1917, line: 1507, baseType: !385, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2272, file: !1917, line: 1508, baseType: !385, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2272, file: !1917, line: 1509, baseType: !385, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2272, file: !1917, line: 1510, baseType: !791, size: 128, align: 64, offset: 22208)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2272, file: !1917, line: 1511, baseType: !193, size: 32, offset: 22336)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2272, file: !1917, line: 1515, baseType: !3227, size: 64, offset: 22400)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1058, line: 56, size: 64, elements: !3228)
!3228 = !{!3229}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3227, file: !1058, line: 57, baseType: !1061, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2272, file: !1917, line: 1518, baseType: !3227, size: 64, offset: 22464)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2272, file: !1917, line: 1528, baseType: !791, size: 128, align: 64, offset: 22528)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2272, file: !1917, line: 1552, baseType: !3233, size: 35328, offset: 23040)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3234, line: 430, size: 35328, elements: !3235)
!3234 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3235 = !{!3236, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3265, !3266, !3267, !3268, !3269, !3270, !3273, !3274, !3275, !3276}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3233, file: !3234, line: 432, baseType: !3237, size: 192)
!3237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3238, size: 192, elements: !234)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3239, line: 16, size: 64, elements: !3240)
!3239 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3238, file: !3239, line: 17, baseType: !117, size: 16)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3238, file: !3239, line: 18, baseType: !117, size: 16, offset: 16)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3238, file: !3239, line: 19, baseType: !117, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3238, file: !3239, line: 19, baseType: !117, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3238, file: !3239, line: 19, baseType: !117, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3238, file: !3239, line: 19, baseType: !117, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3238, file: !3239, line: 19, baseType: !117, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3238, file: !3239, line: 20, baseType: !117, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3238, file: !3239, line: 20, baseType: !117, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3238, file: !3239, line: 20, baseType: !117, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3238, file: !3239, line: 20, baseType: !117, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3238, file: !3239, line: 20, baseType: !117, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3238, file: !3239, line: 20, baseType: !117, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3233, file: !3234, line: 436, baseType: !137, size: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3233, file: !3234, line: 440, baseType: !121, size: 16, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3233, file: !3234, line: 441, baseType: !121, size: 16, offset: 272)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3233, file: !3234, line: 442, baseType: !121, size: 16, offset: 288)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3233, file: !3234, line: 443, baseType: !121, size: 16, offset: 304)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3233, file: !3234, line: 447, baseType: !137, size: 64, offset: 320)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3233, file: !3234, line: 448, baseType: !137, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3233, file: !3234, line: 459, baseType: !3262, size: 256, offset: 448)
!3262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3263, size: 256, elements: !801)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3234, line: 428, flags: DIFlagFwdDecl)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3233, file: !3234, line: 461, baseType: !137, size: 64, offset: 704)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3233, file: !3234, line: 463, baseType: !137, size: 64, offset: 768)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3233, file: !3234, line: 465, baseType: !137, size: 64, offset: 832)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3233, file: !3234, line: 466, baseType: !137, size: 64, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3233, file: !3234, line: 467, baseType: !137, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3233, file: !3234, line: 473, baseType: !3271, size: 64, offset: 1024)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3234, line: 10, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3233, file: !3234, line: 480, baseType: !137, size: 64, offset: 1088)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3233, file: !3234, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3233, file: !3234, line: 491, baseType: !381, size: 32, offset: 1184)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3233, file: !3234, line: 501, baseType: !3277, size: 33792, offset: 1536)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3278, line: 448, size: 33792, elements: !3279)
!3278 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3279 = !{!3280, !3281, !3282, !3444, !3445, !3451, !3452}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3277, file: !3278, line: 461, baseType: !7, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3277, file: !3278, line: 468, baseType: !137, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3277, file: !3278, line: 476, baseType: !3283, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3278, line: 356, size: 33280, align: 512, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3284, file: !3278, line: 358, baseType: !7, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3284, file: !3278, line: 361, baseType: !7, size: 32, offset: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3284, file: !3278, line: 364, baseType: !384, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3284, file: !3278, line: 367, baseType: !384, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3284, file: !3278, line: 370, baseType: !384, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3284, file: !3278, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3284, file: !3278, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3284, file: !3278, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3284, file: !3278, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3284, file: !3278, line: 397, baseType: !3296, size: 32768, offset: 512)
!3296 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3278, line: 348, size: 32768, elements: !3297)
!3297 = !{!3298, !3313, !3350, !3427, !3440}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3296, file: !3278, line: 349, baseType: !3299, size: 896)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3278, line: 12, size: 896, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3312}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3299, file: !3278, line: 13, baseType: !381, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3299, file: !3278, line: 14, baseType: !381, size: 32, offset: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3299, file: !3278, line: 15, baseType: !381, size: 32, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3299, file: !3278, line: 16, baseType: !381, size: 32, offset: 96)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3299, file: !3278, line: 17, baseType: !381, size: 32, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3299, file: !3278, line: 18, baseType: !381, size: 32, offset: 160)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3299, file: !3278, line: 19, baseType: !381, size: 32, offset: 192)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3299, file: !3278, line: 22, baseType: !3309, size: 640, offset: 224)
!3309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 640, elements: !3310)
!3310 = !{!3311}
!3311 = !DISubrange(count: 20)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3299, file: !3278, line: 25, baseType: !381, size: 32, offset: 864)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3296, file: !3278, line: 350, baseType: !3314, size: 4096, align: 128)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3278, line: 34, size: 4096, align: 128, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3335, !3336, !3337, !3339, !3341, !3345}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3314, file: !3278, line: 35, baseType: !117, size: 16)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3314, file: !3278, line: 36, baseType: !117, size: 16, offset: 16)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3314, file: !3278, line: 37, baseType: !117, size: 16, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3314, file: !3278, line: 38, baseType: !117, size: 16, offset: 48)
!3320 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !3278, line: 39, baseType: !3321, size: 128, offset: 64)
!3321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3314, file: !3278, line: 39, size: 128, elements: !3322)
!3322 = !{!3323, !3328}
!3323 = !DIDerivedType(tag: DW_TAG_member, scope: !3321, file: !3278, line: 40, baseType: !3324, size: 128)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3321, file: !3278, line: 40, size: 128, elements: !3325)
!3325 = !{!3326, !3327}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3324, file: !3278, line: 41, baseType: !384, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3324, file: !3278, line: 42, baseType: !384, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, scope: !3321, file: !3278, line: 44, baseType: !3329, size: 128)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3321, file: !3278, line: 44, size: 128, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3334}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3329, file: !3278, line: 45, baseType: !381, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3329, file: !3278, line: 46, baseType: !381, size: 32, offset: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3329, file: !3278, line: 47, baseType: !381, size: 32, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3329, file: !3278, line: 48, baseType: !381, size: 32, offset: 96)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3314, file: !3278, line: 51, baseType: !381, size: 32, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3314, file: !3278, line: 52, baseType: !381, size: 32, offset: 224)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3314, file: !3278, line: 55, baseType: !3338, size: 1024, offset: 256)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 1024, elements: !393)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3314, file: !3278, line: 58, baseType: !3340, size: 2048, offset: 1280)
!3340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 2048, elements: !238)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3314, file: !3278, line: 60, baseType: !3342, size: 384, offset: 3328)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 384, elements: !3343)
!3343 = !{!3344}
!3344 = !DISubrange(count: 12)
!3345 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !3278, line: 62, baseType: !3346, size: 384, offset: 3712)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3314, file: !3278, line: 62, size: 384, elements: !3347)
!3347 = !{!3348, !3349}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3346, file: !3278, line: 63, baseType: !3342, size: 384)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3346, file: !3278, line: 64, baseType: !3342, size: 384)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3296, file: !3278, line: 351, baseType: !3351, size: 1088)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3278, line: 79, size: 1088, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3426}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3351, file: !3278, line: 80, baseType: !381, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3351, file: !3278, line: 81, baseType: !381, size: 32, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3351, file: !3278, line: 82, baseType: !381, size: 32, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3351, file: !3278, line: 83, baseType: !381, size: 32, offset: 96)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3351, file: !3278, line: 84, baseType: !381, size: 32, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3351, file: !3278, line: 85, baseType: !381, size: 32, offset: 160)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3351, file: !3278, line: 86, baseType: !381, size: 32, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3351, file: !3278, line: 88, baseType: !3309, size: 640, offset: 224)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3351, file: !3278, line: 89, baseType: !198, size: 8, offset: 864)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3351, file: !3278, line: 90, baseType: !198, size: 8, offset: 872)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3351, file: !3278, line: 91, baseType: !198, size: 8, offset: 880)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3351, file: !3278, line: 92, baseType: !198, size: 8, offset: 888)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3351, file: !3278, line: 93, baseType: !198, size: 8, offset: 896)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3351, file: !3278, line: 94, baseType: !198, size: 8, offset: 904)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3351, file: !3278, line: 95, baseType: !3368, size: 64, offset: 960)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3370, line: 11, size: 128, elements: !3371)
!3370 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3371 = !{!3372, !3373}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3369, file: !3370, line: 12, baseType: !269, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3369, file: !3370, line: 13, baseType: !3374, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3376, line: 103, size: 1344, elements: !3377)
!3376 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3406, !3407, !3408}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3375, file: !3376, line: 109, baseType: !137, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3375, file: !3376, line: 110, baseType: !137, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3375, file: !3376, line: 111, baseType: !137, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3375, file: !3376, line: 112, baseType: !137, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3375, file: !3376, line: 113, baseType: !137, size: 64, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3375, file: !3376, line: 114, baseType: !137, size: 64, offset: 320)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3375, file: !3376, line: 117, baseType: !137, size: 64, offset: 384)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3375, file: !3376, line: 118, baseType: !137, size: 64, offset: 448)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3375, file: !3376, line: 119, baseType: !137, size: 64, offset: 512)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3375, file: !3376, line: 120, baseType: !137, size: 64, offset: 576)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3375, file: !3376, line: 121, baseType: !137, size: 64, offset: 640)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3375, file: !3376, line: 122, baseType: !137, size: 64, offset: 704)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3375, file: !3376, line: 123, baseType: !137, size: 64, offset: 768)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3375, file: !3376, line: 124, baseType: !137, size: 64, offset: 832)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3375, file: !3376, line: 125, baseType: !137, size: 64, offset: 896)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3375, file: !3376, line: 139, baseType: !137, size: 64, offset: 960)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3375, file: !3376, line: 142, baseType: !137, size: 64, offset: 1024)
!3395 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !3376, line: 144, baseType: !3396, size: 64, offset: 1088)
!3396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !3376, line: 144, size: 64, elements: !3397)
!3397 = !{!3398, !3399, !3400}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3396, file: !3376, line: 146, baseType: !117, size: 16)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3396, file: !3376, line: 148, baseType: !384, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3396, file: !3376, line: 150, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3376, line: 59, size: 64, elements: !3402)
!3402 = !{!3403, !3404, !3405}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3401, file: !3376, line: 61, baseType: !384, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3401, file: !3376, line: 63, baseType: !384, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3401, file: !3376, line: 65, baseType: !384, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3375, file: !3376, line: 153, baseType: !137, size: 64, offset: 1152)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3375, file: !3376, line: 154, baseType: !137, size: 64, offset: 1216)
!3408 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !3376, line: 156, baseType: !3409, size: 64, offset: 1280)
!3409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !3376, line: 156, size: 64, elements: !3410)
!3410 = !{!3411, !3412, !3413}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3409, file: !3376, line: 158, baseType: !117, size: 16)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3409, file: !3376, line: 160, baseType: !384, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3409, file: !3376, line: 162, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3376, line: 69, size: 64, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3414, file: !3376, line: 71, baseType: !384, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3414, file: !3376, line: 73, baseType: !384, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3414, file: !3376, line: 75, baseType: !384, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3414, file: !3376, line: 77, baseType: !384, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3414, file: !3376, line: 80, baseType: !384, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3414, file: !3376, line: 83, baseType: !384, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3414, file: !3376, line: 86, baseType: !384, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3414, file: !3376, line: 88, baseType: !384, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3414, file: !3376, line: 93, baseType: !384, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3414, file: !3376, line: 100, baseType: !384, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3351, file: !3278, line: 96, baseType: !381, size: 32, offset: 1024)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3296, file: !3278, line: 352, baseType: !3428, size: 4608, align: 512)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3278, line: 333, size: 4608, align: 512, elements: !3429)
!3429 = !{!3430, !3431, !3438}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3428, file: !3278, line: 334, baseType: !3314, size: 4096, align: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3428, file: !3278, line: 335, baseType: !3432, size: 512, offset: 4096)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3278, line: 312, size: 512, elements: !3433)
!3433 = !{!3434, !3435, !3436}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3432, file: !3278, line: 313, baseType: !384, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3432, file: !3278, line: 314, baseType: !384, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3432, file: !3278, line: 315, baseType: !3437, size: 384, offset: 128)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 384, elements: !1219)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3428, file: !3278, line: 336, baseType: !3439, offset: 4608)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, elements: !1126)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3296, file: !3278, line: 353, baseType: !3441, size: 32768)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 32768, elements: !3442)
!3442 = !{!3443}
!3443 = !DISubrange(count: 4096)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3277, file: !3278, line: 484, baseType: !3283, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3277, file: !3278, line: 491, baseType: !3446, size: 128, offset: 256)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3278, line: 404, size: 128, elements: !3447)
!3447 = !{!3448, !3449, !3450}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3446, file: !3278, line: 424, baseType: !384, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3446, file: !3278, line: 432, baseType: !7, size: 32, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3446, file: !3278, line: 440, baseType: !7, size: 32, offset: 96)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3277, file: !3278, line: 498, baseType: !3446, size: 128, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3277, file: !3278, line: 508, baseType: !3284, size: 33280, align: 512, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2254, file: !2255, line: 16, baseType: !1111, size: 192, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2254, file: !2255, line: 17, baseType: !189, size: 32, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !463, file: !19, line: 1240, baseType: !105, size: 64, offset: 6912)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !463, file: !19, line: 1243, baseType: !381, size: 32, offset: 6976)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !463, file: !19, line: 1245, baseType: !1190, size: 64, offset: 7040)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !463, file: !19, line: 1246, baseType: !1190, size: 64, offset: 7104)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !463, file: !19, line: 1248, baseType: !145, size: 32, offset: 7168)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !463, file: !19, line: 1249, baseType: !3461, size: 64, offset: 7232)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !463, file: !19, line: 1252, baseType: !3464, size: 256, offset: 7296)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !393)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !463, file: !19, line: 1253, baseType: !3466, size: 128, offset: 7552)
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !127, line: 21, baseType: !3467)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 19, size: 128, elements: !3468)
!3468 = !{!3469}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3467, file: !127, line: 20, baseType: !131, size: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !463, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !463, file: !19, line: 1261, baseType: !571, size: 256, offset: 7744)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !463, file: !19, line: 1267, baseType: !157, size: 64, offset: 8000)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !463, file: !19, line: 1269, baseType: !409, size: 64, offset: 8064)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !463, file: !19, line: 1271, baseType: !3475, size: 448, offset: 8128)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2034, line: 63, size: 448, elements: !3476)
!3476 = !{!3477, !3482, !3483, !3484, !3485, !3486, !3487}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3475, file: !2034, line: 64, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!137, !3481, !2032}
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3475, file: !2034, line: 66, baseType: !3478, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3475, file: !2034, line: 69, baseType: !269, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3475, file: !2034, line: 70, baseType: !193, size: 32, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3475, file: !2034, line: 71, baseType: !7, size: 32, offset: 224)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3475, file: !2034, line: 74, baseType: !147, size: 128, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3475, file: !2034, line: 85, baseType: !3488, size: 64, offset: 384)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !463, file: !19, line: 1274, baseType: !575, size: 64, offset: 8576)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !463, file: !19, line: 1280, baseType: !575, size: 64, offset: 8640)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !463, file: !19, line: 1283, baseType: !193, size: 32, offset: 8704)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !463, file: !19, line: 1286, baseType: !1966, size: 32, offset: 8736)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !463, file: !19, line: 1289, baseType: !893, size: 64, offset: 8768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !463, file: !19, line: 1290, baseType: !941, size: 64, offset: 8832)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !463, file: !19, line: 1297, baseType: !1313, size: 64, offset: 8896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !463, file: !19, line: 1304, baseType: !3497, size: 64, offset: 8960)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3498, line: 49, size: 64, elements: !3499)
!3498 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3499 = !{!3500}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3497, file: !3498, line: 50, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3498, line: 41, size: 512, align: 512, elements: !3503)
!3503 = !{!3504, !3505, !3510}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3502, file: !3498, line: 43, baseType: !169, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3502, file: !3498, line: 45, baseType: !3506, size: 192, offset: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3498, line: 29, size: 192, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3506, file: !3498, line: 30, baseType: !147, size: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3506, file: !3498, line: 32, baseType: !269, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3502, file: !3498, line: 46, baseType: !269, size: 64, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !463, file: !19, line: 1305, baseType: !3497, size: 64, offset: 9024)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !463, file: !19, line: 1306, baseType: !791, size: 128, align: 64, offset: 9088)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !463, file: !19, line: 1307, baseType: !831, size: 256, offset: 9216)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !463, file: !19, line: 1309, baseType: !571, size: 256, offset: 9472)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !463, file: !19, line: 1314, baseType: !193, size: 32, offset: 9728)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !463, file: !19, line: 1317, baseType: !169, size: 32, align: 512, offset: 10240)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !463, file: !19, line: 1318, baseType: !147, size: 128, offset: 10304)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !463, file: !19, line: 1320, baseType: !169, size: 32, offset: 10432)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !463, file: !19, line: 1321, baseType: !147, size: 128, offset: 10496)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !457, file: !458, line: 73, baseType: !193, size: 32, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !457, file: !458, line: 74, baseType: !3522, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1150, line: 42, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !411, file: !349, line: 141, baseType: !3526, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!193, !2094, !651}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !411, file: !349, line: 142, baseType: !3530, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!347, !347, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !348, file: !349, line: 96, baseType: !462, size: 64, offset: 832)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !348, file: !349, line: 97, baseType: !137, size: 64, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !348, file: !349, line: 98, baseType: !105, size: 64, offset: 960)
!3538 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !349, line: 100, baseType: !3539, size: 128, offset: 1024)
!3539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !349, line: 100, size: 128, elements: !3540)
!3540 = !{!3541, !3542}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3539, file: !349, line: 101, baseType: !147, size: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3539, file: !349, line: 102, baseType: !1430, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !348, file: !349, line: 104, baseType: !147, size: 128, offset: 1152)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !348, file: !349, line: 105, baseType: !147, size: 128, offset: 1280)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !348, file: !349, line: 113, baseType: !3546, size: 128, offset: 1408)
!3546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !349, line: 109, size: 128, elements: !3547)
!3547 = !{!3548, !3549, !3550}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3546, file: !349, line: 110, baseType: !817, size: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3546, file: !349, line: 111, baseType: !363, size: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3546, file: !349, line: 112, baseType: !791, size: 128, align: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !341, file: !19, line: 1968, baseType: !3552, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!157, !347, !312, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3557, line: 10, size: 128, elements: !3558)
!3557 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3558 = !{!3559, !3560}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3556, file: !3557, line: 11, baseType: !614, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3556, file: !3557, line: 12, baseType: !105, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !341, file: !19, line: 1969, baseType: !3562, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!193, !3522, !312, !193}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !341, file: !19, line: 1970, baseType: !3566, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!335, !312, !193, !651}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !341, file: !19, line: 1972, baseType: !3570, size: 64, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!193, !347, !233, !193}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !341, file: !19, line: 1974, baseType: !3574, size: 64, offset: 320)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!193, !3522, !312, !347, !275, !651}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !341, file: !19, line: 1976, baseType: !3578, size: 64, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!193, !347, !312, !347}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !341, file: !19, line: 1977, baseType: !3582, size: 64, offset: 448)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!193, !312, !347}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !341, file: !19, line: 1978, baseType: !3586, size: 64, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!193, !3522, !312, !347, !157}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !341, file: !19, line: 1980, baseType: !3590, size: 64, offset: 576)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!193, !3522, !312, !347, !275}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !341, file: !19, line: 1982, baseType: !3582, size: 64, offset: 640)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !341, file: !19, line: 1983, baseType: !3595, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!193, !3522, !312, !347, !275, !467}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !341, file: !19, line: 1985, baseType: !3599, size: 64, offset: 768)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!193, !3522, !312, !347, !312, !347, !7}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !341, file: !19, line: 1987, baseType: !3603, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!193, !3522, !347, !3606}
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !3608)
!3608 = !{!3609, !3610, !3611, !3621, !3630, !3631, !3636, !3637, !3638}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3607, file: !19, line: 227, baseType: !7, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3607, file: !19, line: 228, baseType: !275, size: 16, offset: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !3607, file: !19, line: 241, baseType: !3612, size: 32, offset: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3607, file: !19, line: 241, size: 32, elements: !3613)
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3612, file: !19, line: 242, baseType: !318, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3612, file: !19, line: 243, baseType: !3616, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3617, line: 16, baseType: !3618)
!3617 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3617, line: 14, size: 32, elements: !3619)
!3619 = !{!3620}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3618, file: !3617, line: 15, baseType: !323, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, scope: !3607, file: !19, line: 245, baseType: !3622, size: 32, offset: 96)
!3622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3607, file: !19, line: 245, size: 32, elements: !3623)
!3623 = !{!3624, !3625}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3622, file: !19, line: 246, baseType: !327, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3622, file: !19, line: 247, baseType: !3626, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3617, line: 20, baseType: !3627)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3617, line: 18, size: 32, elements: !3628)
!3628 = !{!3629}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3627, file: !3617, line: 19, baseType: !331, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3607, file: !19, line: 249, baseType: !472, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3607, file: !19, line: 250, baseType: !3632, size: 128, offset: 192)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1191, line: 13, size: 128, elements: !3633)
!3633 = !{!3634, !3635}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3632, file: !1191, line: 14, baseType: !1190, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3632, file: !1191, line: 15, baseType: !269, size: 64, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3607, file: !19, line: 251, baseType: !3632, size: 128, offset: 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3607, file: !19, line: 252, baseType: !3632, size: 128, offset: 448)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3607, file: !19, line: 259, baseType: !1358, size: 64, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !341, file: !19, line: 1988, baseType: !3640, size: 64, offset: 896)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!193, !3522, !2094, !3643, !381, !7}
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3645, line: 22, size: 1280, elements: !3646)
!3645 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3646 = !{!3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3644, file: !3645, line: 23, baseType: !381, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3644, file: !3645, line: 24, baseType: !275, size: 16, offset: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3644, file: !3645, line: 25, baseType: !7, size: 32, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3644, file: !3645, line: 26, baseType: !1198, size: 32, offset: 96)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3644, file: !3645, line: 27, baseType: !384, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3644, file: !3645, line: 28, baseType: !384, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3644, file: !3645, line: 41, baseType: !384, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3644, file: !3645, line: 42, baseType: !467, size: 32, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3644, file: !3645, line: 43, baseType: !467, size: 32, offset: 352)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3644, file: !3645, line: 44, baseType: !318, size: 32, offset: 384)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3644, file: !3645, line: 45, baseType: !327, size: 32, offset: 416)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3644, file: !3645, line: 46, baseType: !472, size: 64, offset: 448)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3644, file: !3645, line: 47, baseType: !3632, size: 128, offset: 512)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3644, file: !3645, line: 48, baseType: !3632, size: 128, offset: 640)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3644, file: !3645, line: 49, baseType: !3632, size: 128, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3644, file: !3645, line: 50, baseType: !3632, size: 128, offset: 896)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3644, file: !3645, line: 51, baseType: !384, size: 64, offset: 1024)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3644, file: !3645, line: 52, baseType: !384, size: 64, offset: 1088)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3644, file: !3645, line: 53, baseType: !381, size: 32, offset: 1152)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3644, file: !3645, line: 54, baseType: !381, size: 32, offset: 1184)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3644, file: !3645, line: 55, baseType: !384, size: 64, offset: 1216)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !341, file: !19, line: 1990, baseType: !3669, size: 64, offset: 960)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!265, !347, !233, !280}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !341, file: !19, line: 1991, baseType: !3673, size: 64, offset: 1024)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!193, !312, !3676, !384, !384}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !341, file: !19, line: 1993, baseType: !3679, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!193, !312, !193}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !341, file: !19, line: 1994, baseType: !3683, size: 64, offset: 1152)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!193, !312, !347, !1358, !7, !275}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !341, file: !19, line: 1997, baseType: !3687, size: 64, offset: 1216)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!193, !3522, !312, !1358, !275}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !341, file: !19, line: 1999, baseType: !3691, size: 64, offset: 1280)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!335, !3522, !347, !193}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !341, file: !19, line: 2001, baseType: !3695, size: 64, offset: 1344)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!193, !3522, !347, !335, !193}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !341, file: !19, line: 2003, baseType: !3699, size: 64, offset: 1408)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!193, !3522, !347, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !341, file: !19, line: 2005, baseType: !3705, size: 64, offset: 1472)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!193, !347, !3702}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !341, file: !19, line: 2006, baseType: !3709, size: 64, offset: 1536)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!3712, !312}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !3714)
!3714 = !{!3715, !3722}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3713, file: !19, line: 3193, baseType: !3716, size: 128)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3717, line: 296, size: 128, elements: !3718)
!3717 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3718 = !{!3719, !3720, !3721}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3716, file: !3717, line: 297, baseType: !169, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3716, file: !3717, line: 299, baseType: !103, size: 32, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3716, file: !3717, line: 300, baseType: !105, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3713, file: !19, line: 3194, baseType: !381, size: 32, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !313, file: !19, line: 655, baseType: !462, size: 64, offset: 448)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !313, file: !19, line: 656, baseType: !308, size: 64, offset: 512)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !313, file: !19, line: 659, baseType: !105, size: 64, offset: 576)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !313, file: !19, line: 663, baseType: !137, size: 64, offset: 640)
!3727 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !19, line: 671, baseType: !3728, size: 32, offset: 704)
!3728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !19, line: 671, size: 32, elements: !3729)
!3729 = !{!3730, !3732}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3728, file: !19, line: 672, baseType: !3731, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3728, file: !19, line: 673, baseType: !7, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !313, file: !19, line: 675, baseType: !467, size: 32, offset: 736)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !313, file: !19, line: 676, baseType: !472, size: 64, offset: 768)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !313, file: !19, line: 677, baseType: !3632, size: 128, offset: 832)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !313, file: !19, line: 678, baseType: !3632, size: 128, offset: 960)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !313, file: !19, line: 679, baseType: !3632, size: 128, offset: 1088)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !313, file: !19, line: 680, baseType: !169, size: 32, offset: 1216)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !313, file: !19, line: 681, baseType: !121, size: 16, offset: 1248)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !313, file: !19, line: 682, baseType: !198, size: 8, offset: 1264)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !313, file: !19, line: 683, baseType: !198, size: 8, offset: 1272)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !313, file: !19, line: 684, baseType: !2167, size: 64, offset: 1280)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !313, file: !19, line: 691, baseType: !137, size: 64, offset: 1344)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !313, file: !19, line: 692, baseType: !1174, size: 320, offset: 1408)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !313, file: !19, line: 694, baseType: !137, size: 64, offset: 1728)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !313, file: !19, line: 695, baseType: !137, size: 64, offset: 1792)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !313, file: !19, line: 697, baseType: !817, size: 128, offset: 1856)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !313, file: !19, line: 698, baseType: !147, size: 128, offset: 1984)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !313, file: !19, line: 707, baseType: !147, size: 128, offset: 2112)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !313, file: !19, line: 708, baseType: !147, size: 128, offset: 2240)
!3751 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !19, line: 709, baseType: !3752, size: 128, offset: 2368)
!3752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !19, line: 709, size: 128, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3752, file: !19, line: 710, baseType: !941, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3752, file: !19, line: 711, baseType: !791, size: 128, align: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !313, file: !19, line: 713, baseType: !577, size: 64, offset: 2496)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !313, file: !19, line: 714, baseType: !577, size: 64, offset: 2560)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !313, file: !19, line: 715, baseType: !189, size: 32, offset: 2624)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !313, file: !19, line: 716, baseType: !189, size: 32, offset: 2656)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !313, file: !19, line: 717, baseType: !189, size: 32, offset: 2688)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !313, file: !19, line: 719, baseType: !189, size: 32, offset: 2720)
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !19, line: 721, baseType: !3763, size: 64, offset: 2752)
!3763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !19, line: 721, size: 64, elements: !3764)
!3764 = !{!3765, !3766}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3763, file: !19, line: 722, baseType: !1349, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3763, file: !19, line: 723, baseType: !964, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !313, file: !19, line: 725, baseType: !3768, size: 64, offset: 2816)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !313, file: !19, line: 726, baseType: !309, size: 1536, align: 64, offset: 2880)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !313, file: !19, line: 727, baseType: !147, size: 128, offset: 4416)
!3772 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !19, line: 728, baseType: !3773, size: 64, offset: 4544)
!3773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !19, line: 728, size: 64, elements: !3774)
!3774 = !{!3775, !3776, !3787, !3788}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3773, file: !19, line: 729, baseType: !1915, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3773, file: !19, line: 730, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3779, line: 14, size: 832, elements: !3780)
!3779 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3778, file: !3779, line: 15, baseType: !153, size: 512)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3778, file: !3779, line: 16, baseType: !500, size: 64, offset: 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3778, file: !3779, line: 17, baseType: !1349, size: 64, offset: 576)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3778, file: !3779, line: 18, baseType: !147, size: 128, offset: 640)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3778, file: !3779, line: 19, baseType: !467, size: 32, offset: 768)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3778, file: !3779, line: 20, baseType: !7, size: 32, offset: 800)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3773, file: !19, line: 731, baseType: !233, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3773, file: !19, line: 732, baseType: !7, size: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !313, file: !19, line: 735, baseType: !145, size: 32, offset: 4608)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !313, file: !19, line: 738, baseType: !145, size: 32, offset: 4640)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !313, file: !19, line: 739, baseType: !3461, size: 64, offset: 4672)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !313, file: !19, line: 750, baseType: !105, size: 64, offset: 4736)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !309, file: !19, line: 474, baseType: !3716, size: 128, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !309, file: !19, line: 475, baseType: !1174, size: 320, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !309, file: !19, line: 476, baseType: !103, size: 32, offset: 512)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !309, file: !19, line: 477, baseType: !189, size: 32, offset: 544)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !309, file: !19, line: 482, baseType: !2441, size: 128, offset: 576)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !309, file: !19, line: 483, baseType: !137, size: 64, offset: 704)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !309, file: !19, line: 484, baseType: !137, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !309, file: !19, line: 485, baseType: !3801, size: 64, offset: 832)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !3804)
!3804 = !{!3805, !3809, !3879, !3883, !3887, !3893, !3898, !3902, !3907, !3911, !3915, !3919, !3920, !3924, !3928, !3932, !3937, !3941, !3948, !3949}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3803, file: !19, line: 405, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!193, !1702, !976}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3803, file: !19, line: 406, baseType: !3810, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!193, !1358, !3813}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !32, line: 293, size: 1536, elements: !3815)
!3815 = !{!3816, !3846, !3860}
!3816 = !DIDerivedType(tag: DW_TAG_member, scope: !3814, file: !32, line: 295, baseType: !3817, size: 512)
!3817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3814, file: !32, line: 295, size: 512, elements: !3818)
!3818 = !{!3819, !3845}
!3819 = !DIDerivedType(tag: DW_TAG_member, scope: !3817, file: !32, line: 296, baseType: !3820, size: 448)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3817, file: !32, line: 296, size: 448, elements: !3821)
!3821 = !{!3822, !3823, !3832, !3833, !3834, !3843, !3844}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3820, file: !32, line: 298, baseType: !137, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !3820, file: !32, line: 299, baseType: !3824, size: 128, offset: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3820, file: !32, line: 299, size: 128, elements: !3825)
!3825 = !{!3826, !3827}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3824, file: !32, line: 300, baseType: !147, size: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !3824, file: !32, line: 302, baseType: !3828, size: 128)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3824, file: !32, line: 302, size: 128, elements: !3829)
!3829 = !{!3830, !3831}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3828, file: !32, line: 303, baseType: !105, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3828, file: !32, line: 305, baseType: !7, size: 32, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3820, file: !32, line: 310, baseType: !308, size: 64, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3820, file: !32, line: 311, baseType: !137, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !3820, file: !32, line: 312, baseType: !3835, size: 64, offset: 320)
!3835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3820, file: !32, line: 312, size: 64, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3835, file: !32, line: 313, baseType: !105, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3835, file: !32, line: 314, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !32, line: 257, baseType: !3840)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 255, size: 64, elements: !3841)
!3841 = !{!3842}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3840, file: !32, line: 256, baseType: !137, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3820, file: !32, line: 316, baseType: !189, size: 32, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3820, file: !32, line: 317, baseType: !189, size: 32, offset: 416)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3817, file: !32, line: 323, baseType: !1703, size: 512, align: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, scope: !3814, file: !32, line: 325, baseType: !3847, size: 512, offset: 512)
!3847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3814, file: !32, line: 325, size: 512, elements: !3848)
!3848 = !{!3849, !3859}
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !3847, file: !32, line: 326, baseType: !3850, size: 320)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3847, file: !32, line: 326, size: 320, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3850, file: !32, line: 327, baseType: !137, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3850, file: !32, line: 328, baseType: !137, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3850, file: !32, line: 329, baseType: !137, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3850, file: !32, line: 331, baseType: !189, size: 32, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3850, file: !32, line: 332, baseType: !189, size: 32, offset: 224)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3850, file: !32, line: 333, baseType: !189, size: 32, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3850, file: !32, line: 335, baseType: !7, size: 32, offset: 288)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3847, file: !32, line: 339, baseType: !1703, size: 512, align: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, scope: !3814, file: !32, line: 341, baseType: !3861, size: 512, offset: 1024)
!3861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3814, file: !32, line: 341, size: 512, elements: !3862)
!3862 = !{!3863, !3872, !3878}
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !32, line: 342, baseType: !3864, size: 384)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !32, line: 342, size: 384, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3864, file: !32, line: 343, baseType: !137, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3864, file: !32, line: 344, baseType: !137, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3864, file: !32, line: 346, baseType: !105, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3864, file: !32, line: 347, baseType: !105, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3864, file: !32, line: 348, baseType: !105, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3864, file: !32, line: 349, baseType: !105, size: 64, offset: 320)
!3872 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !32, line: 352, baseType: !3873, size: 256)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3861, file: !32, line: 352, size: 256, elements: !3874)
!3874 = !{!3875, !3876, !3877}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3873, file: !32, line: 353, baseType: !137, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3873, file: !32, line: 354, baseType: !137, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3873, file: !32, line: 356, baseType: !147, size: 128, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3861, file: !32, line: 359, baseType: !1703, size: 512, align: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3803, file: !19, line: 409, baseType: !3880, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!193, !308, !976}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3803, file: !19, line: 412, baseType: !3884, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!651, !308, !3813}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3803, file: !19, line: 414, baseType: !3888, size: 64, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{null, !3891}
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !19, line: 310, flags: DIFlagFwdDecl)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3803, file: !19, line: 416, baseType: !3894, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!193, !1358, !308, !472, !7, !3897, !1931}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3803, file: !19, line: 419, baseType: !3899, size: 64, offset: 384)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!193, !1358, !308, !472, !7, !7, !1702, !105}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3803, file: !19, line: 424, baseType: !3903, size: 64, offset: 448)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!3906, !308, !3906}
!3906 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !104, line: 131, baseType: !384)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3803, file: !19, line: 425, baseType: !3908, size: 64, offset: 512)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !3813, !280, !280}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3803, file: !19, line: 426, baseType: !3912, size: 64, offset: 576)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!651, !3813, !103}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3803, file: !19, line: 427, baseType: !3916, size: 64, offset: 640)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3813}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3803, file: !19, line: 428, baseType: !1368, size: 64, offset: 704)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3803, file: !19, line: 433, baseType: !3921, size: 64, offset: 768)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!193, !308, !3813, !3813, !79}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3803, file: !19, line: 435, baseType: !3925, size: 64, offset: 832)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!193, !3813}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3803, file: !19, line: 436, baseType: !3929, size: 64, offset: 896)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!651, !3813, !280, !280}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3803, file: !19, line: 438, baseType: !3933, size: 64, offset: 960)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !3813, !3936, !3936}
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3803, file: !19, line: 439, baseType: !3938, size: 64, offset: 1024)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!193, !308, !1702}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3803, file: !19, line: 442, baseType: !3942, size: 64, offset: 1088)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!193, !3945, !1358, !3947}
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !19, line: 66, flags: DIFlagFwdDecl)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3803, file: !19, line: 444, baseType: !1923, size: 64, offset: 1152)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3803, file: !19, line: 445, baseType: !3950, size: 64, offset: 1216)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!193, !1371, !1393}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !19, line: 486, baseType: !137, size: 64, offset: 896)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !309, file: !19, line: 487, baseType: !1174, size: 320, offset: 960)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !309, file: !19, line: 488, baseType: !1966, size: 32, offset: 1280)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !309, file: !19, line: 489, baseType: !169, size: 32, offset: 1312)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !309, file: !19, line: 490, baseType: !147, size: 128, offset: 1344)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !309, file: !19, line: 491, baseType: !105, size: 64, offset: 1472)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !299, file: !259, line: 180, baseType: !3960, size: 64, offset: 320)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!265, !1358, !162, !298, !233, !472, !280}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !299, file: !259, line: 182, baseType: !3960, size: 64, offset: 384)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !299, file: !259, line: 184, baseType: !3965, size: 64, offset: 448)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!193, !1358, !162, !298, !1441}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !287, file: !259, line: 90, baseType: !3969, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !287, file: !259, line: 91, baseType: !3971, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !249, file: !154, line: 120, baseType: !3973, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!3976, !216}
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3978)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !87, line: 39, size: 384, elements: !3979)
!3979 = !{!3980, !3981, !3985, !3989, !3995, !3999}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3978, file: !87, line: 40, baseType: !86, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3978, file: !87, line: 41, baseType: !3982, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!651}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3978, file: !87, line: 42, baseType: !3986, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!105}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3978, file: !87, line: 43, baseType: !3990, size: 64, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!1569, !3993}
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !87, line: 19, flags: DIFlagFwdDecl)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3978, file: !87, line: 44, baseType: !3996, size: 64, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!1569}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3978, file: !87, line: 45, baseType: !614, size: 64, offset: 320)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !249, file: !154, line: 121, baseType: !4001, size: 64, offset: 256)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!1569, !216}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !249, file: !154, line: 122, baseType: !4005, size: 64, offset: 320)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !216, !4008, !4009}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !153, file: !154, line: 70, baseType: !4011, size: 64, offset: 384)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4013, line: 190, size: 1152, elements: !4014)
!4013 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4094, !4095, !4096, !4097, !4098, !4101}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4012, file: !4013, line: 191, baseType: !189, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4012, file: !4013, line: 192, baseType: !189, size: 32, offset: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4012, file: !4013, line: 202, baseType: !4011, size: 64, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4012, file: !4013, line: 203, baseType: !157, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4012, file: !4013, line: 205, baseType: !683, size: 192, align: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4012, file: !4013, line: 207, baseType: !1569, size: 64, offset: 384)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4012, file: !4013, line: 208, baseType: !7, size: 32, offset: 448)
!4022 = !DIDerivedType(tag: DW_TAG_member, scope: !4012, file: !4013, line: 209, baseType: !4023, size: 256, offset: 512)
!4023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4012, file: !4013, line: 209, size: 256, elements: !4024)
!4024 = !{!4025, !4034, !4038}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4023, file: !4013, line: 210, baseType: !4026, size: 256)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4013, line: 153, size: 256, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4033}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4026, file: !4013, line: 154, baseType: !137, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4026, file: !4013, line: 156, baseType: !2444, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4026, file: !4013, line: 162, baseType: !4031, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4013, line: 162, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4026, file: !4013, line: 167, baseType: !137, size: 64, offset: 192)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4023, file: !4013, line: 211, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4013, line: 170, size: 64, elements: !4036)
!4036 = !{!4037}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4035, file: !4013, line: 171, baseType: !4011, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4023, file: !4013, line: 212, baseType: !4039, size: 256)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4013, line: 174, size: 256, elements: !4040)
!4040 = !{!4041, !4089, !4092, !4093}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4039, file: !4013, line: 175, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4044)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4013, line: 271, size: 768, elements: !4045)
!4045 = !{!4046, !4066, !4070, !4071, !4072, !4073, !4074, !4078, !4079, !4080, !4081, !4085}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4044, file: !4013, line: 276, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!193, !4050}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4013, line: 251, size: 1216, elements: !4052)
!4052 = !{!4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4051, file: !4013, line: 253, baseType: !4011, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4051, file: !4013, line: 254, baseType: !1358, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4051, file: !4013, line: 255, baseType: !1013, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4051, file: !4013, line: 256, baseType: !105, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4051, file: !4013, line: 259, baseType: !571, size: 256, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4051, file: !4013, line: 260, baseType: !571, size: 256, offset: 512)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4051, file: !4013, line: 261, baseType: !193, size: 32, offset: 768)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4051, file: !4013, line: 262, baseType: !147, size: 128, offset: 832)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4051, file: !4013, line: 263, baseType: !233, size: 64, offset: 960)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4051, file: !4013, line: 265, baseType: !280, size: 64, offset: 1024)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4051, file: !4013, line: 266, baseType: !651, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4051, file: !4013, line: 267, baseType: !651, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4051, file: !4013, line: 268, baseType: !1638, size: 64, offset: 1152)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4044, file: !4013, line: 277, baseType: !4067, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{null, !4050}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4044, file: !4013, line: 290, baseType: !1044, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4044, file: !4013, line: 292, baseType: !1031, size: 64, offset: 192)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4044, file: !4013, line: 293, baseType: !1040, size: 64, offset: 256)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4044, file: !4013, line: 294, baseType: !1036, size: 64, offset: 320)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4044, file: !4013, line: 296, baseType: !4075, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!265, !4050, !233, !280, !472}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4044, file: !4013, line: 306, baseType: !280, size: 64, offset: 448)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4044, file: !4013, line: 313, baseType: !651, size: 8, offset: 512)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4044, file: !4013, line: 314, baseType: !4075, size: 64, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4044, file: !4013, line: 317, baseType: !4082, size: 64, offset: 640)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!1419, !4050, !1421}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4044, file: !4013, line: 320, baseType: !4086, size: 64, offset: 704)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!193, !4050, !1441}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4039, file: !4013, line: 176, baseType: !4090, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4013, line: 35, flags: DIFlagFwdDecl)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4039, file: !4013, line: 177, baseType: !472, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4039, file: !4013, line: 178, baseType: !4011, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4012, file: !4013, line: 215, baseType: !105, size: 64, offset: 768)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4012, file: !4013, line: 221, baseType: !384, size: 64, offset: 832)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4012, file: !4013, line: 223, baseType: !121, size: 16, offset: 896)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4012, file: !4013, line: 224, baseType: !275, size: 16, offset: 912)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4012, file: !4013, line: 225, baseType: !4099, size: 64, offset: 960)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4013, line: 36, flags: DIFlagFwdDecl)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4012, file: !4013, line: 227, baseType: !791, size: 128, align: 64, offset: 1024)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !153, file: !154, line: 71, baseType: !4103, size: 32, offset: 448)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4104, line: 19, size: 32, elements: !4105)
!4104 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4105 = !{!4106}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4103, file: !4104, line: 20, baseType: !1100, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !153, file: !154, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !153, file: !154, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !153, file: !154, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !153, file: !154, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !153, file: !154, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !116, line: 985, size: 32, elements: !4115)
!4115 = !{!4116, !4117, !4118}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4114, file: !116, line: 986, baseType: !198, size: 8)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !4114, file: !116, line: 987, baseType: !198, size: 8, offset: 8)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4114, file: !116, line: 988, baseType: !117, size: 16, offset: 16)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!4121 = !{!0, !4122, !4127, !4132, !4137, !4142, !4147, !4152, !4154, !4157, !4159, !4161, !4163, !4166, !4168, !4170, !4172, !4177, !4182, !4187, !4189, !4192, !4195, !4210}
!4122 = !DIGlobalVariableExpression(var: !4123, expr: !DIExpression())
!4123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !4124, isLocal: true, isDefinition: true)
!4124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 304, elements: !4125)
!4125 = !{!4126}
!4126 = !DISubrange(count: 38)
!4127 = !DIGlobalVariableExpression(var: !4128, expr: !DIExpression())
!4128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !4129, isLocal: true, isDefinition: true)
!4129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 472, elements: !4130)
!4130 = !{!4131}
!4131 = !DISubrange(count: 59)
!4132 = !DIGlobalVariableExpression(var: !4133, expr: !DIExpression())
!4133 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !4134, isLocal: true, isDefinition: true)
!4134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 336, elements: !4135)
!4135 = !{!4136}
!4136 = !DISubrange(count: 42)
!4137 = !DIGlobalVariableExpression(var: !4138, expr: !DIExpression())
!4138 = distinct !DIGlobalVariable(scope: null, file: !93, line: 480, type: !4139, isLocal: true, isDefinition: true)
!4139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 168, elements: !4140)
!4140 = !{!4141}
!4141 = !DISubrange(count: 21)
!4142 = !DIGlobalVariableExpression(var: !4143, expr: !DIExpression())
!4143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !4144, isLocal: true, isDefinition: true)
!4144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 72, elements: !4145)
!4145 = !{!4146}
!4146 = !DISubrange(count: 9)
!4147 = !DIGlobalVariableExpression(var: !4148, expr: !DIExpression())
!4148 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !4149, isLocal: true, isDefinition: true)
!4149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 80, elements: !4150)
!4150 = !{!4151}
!4151 = !DISubrange(count: 10)
!4152 = !DIGlobalVariableExpression(var: !4153, expr: !DIExpression())
!4153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !1218, isLocal: true, isDefinition: true)
!4154 = !DIGlobalVariableExpression(var: !4155, expr: !DIExpression())
!4155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !4156, isLocal: true, isDefinition: true)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 96, elements: !3343)
!4157 = !DIGlobalVariableExpression(var: !4158, expr: !DIExpression())
!4158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !3021, isLocal: true, isDefinition: true)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !1218, isLocal: true, isDefinition: true)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !4144, isLocal: true, isDefinition: true)
!4163 = !DIGlobalVariableExpression(var: !4164, expr: !DIExpression())
!4164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !4165, isLocal: true, isDefinition: true)
!4165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 56, elements: !692)
!4166 = !DIGlobalVariableExpression(var: !4167, expr: !DIExpression())
!4167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !4149, isLocal: true, isDefinition: true)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !4165, isLocal: true, isDefinition: true)
!4170 = !DIGlobalVariableExpression(var: !4171, expr: !DIExpression())
!4171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !4149, isLocal: true, isDefinition: true)
!4172 = !DIGlobalVariableExpression(var: !4173, expr: !DIExpression())
!4173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !4174, isLocal: true, isDefinition: true)
!4174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 40, elements: !4175)
!4175 = !{!4176}
!4176 = !DISubrange(count: 5)
!4177 = !DIGlobalVariableExpression(var: !4178, expr: !DIExpression())
!4178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !4179, isLocal: true, isDefinition: true)
!4179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 112, elements: !4180)
!4180 = !{!4181}
!4181 = !DISubrange(count: 14)
!4182 = !DIGlobalVariableExpression(var: !4183, expr: !DIExpression())
!4183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !4184, isLocal: true, isDefinition: true)
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 104, elements: !4185)
!4185 = !{!4186}
!4186 = !DISubrange(count: 13)
!4187 = !DIGlobalVariableExpression(var: !4188, expr: !DIExpression())
!4188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !3021, isLocal: true, isDefinition: true)
!4189 = !DIGlobalVariableExpression(var: !4190, expr: !DIExpression())
!4190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !4191, isLocal: true, isDefinition: true)
!4191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 16, elements: !690)
!4192 = !DIGlobalVariableExpression(var: !4193, expr: !DIExpression())
!4193 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !4194, isLocal: true, isDefinition: true)
!4194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 8, elements: !2510)
!4195 = !DIGlobalVariableExpression(var: !4196, expr: !DIExpression())
!4196 = distinct !DIGlobalVariable(name: "variable_validate", scope: !2, file: !3, line: 168, type: !4197, isLocal: true, isDefinition: true)
!4197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4198, size: 4352, elements: !4208)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "variable_validate", file: !3, line: 150, size: 256, elements: !4200)
!4200 = !{!4201, !4202, !4203}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4199, file: !3, line: 151, baseType: !125, size: 128, align: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4199, file: !3, line: 152, baseType: !233, size: 64, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !4199, file: !3, line: 153, baseType: !4204, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!651, !4112, !193, !4207, !137}
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!4208 = !{!4209}
!4209 = !DISubrange(count: 17)
!4210 = !DIGlobalVariableExpression(var: !4211, expr: !DIExpression())
!4211 = distinct !DIGlobalVariable(scope: null, file: !3, line: 355, type: !4212, isLocal: true, isDefinition: true)
!4212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 320, elements: !4213)
!4213 = !{!4214}
!4214 = !DISubrange(count: 40)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 136, elements: !4208)
!4216 = !{i32 7, !"Dwarf Version", i32 5}
!4217 = !{i32 2, !"Debug Info Version", i32 3}
!4218 = !{i32 1, !"wchar_size", i32 2}
!4219 = !{i32 8, !"cf-protection-branch", i32 1}
!4220 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4221 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4222 = !{i32 1, !"Code Model", i32 2}
!4223 = !{i32 1, !"override-stack-alignment", i32 8}
!4224 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4225 = distinct !DISubprogram(name: "efivar_validate", scope: !3, file: !3, line: 229, type: !4226, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!651, !125, !4112, !4207, !137}
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4240}
!4229 = !DILocalVariable(name: "vendor", arg: 1, scope: !4225, file: !3, line: 229, type: !125)
!4230 = !DILocalVariable(name: "var_name", arg: 2, scope: !4225, file: !3, line: 229, type: !4112)
!4231 = !DILocalVariable(name: "data", arg: 3, scope: !4225, file: !3, line: 229, type: !4207)
!4232 = !DILocalVariable(name: "data_size", arg: 4, scope: !4225, file: !3, line: 230, type: !137)
!4233 = !DILocalVariable(name: "i", scope: !4225, file: !3, line: 232, type: !193)
!4234 = !DILocalVariable(name: "utf8_size", scope: !4225, file: !3, line: 233, type: !137)
!4235 = !DILocalVariable(name: "utf8_name", scope: !4225, file: !3, line: 234, type: !4207)
!4236 = !DILocalVariable(name: "name", scope: !4237, file: !3, line: 245, type: !157)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 244, column: 57)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 244, column: 2)
!4239 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 244, column: 2)
!4240 = !DILocalVariable(name: "match", scope: !4237, file: !3, line: 246, type: !193)
!4241 = !DILocation(line: 229, column: 28, scope: !4225)
!4242 = !DILocation(line: 229, column: 50, scope: !4225)
!4243 = !DILocation(line: 229, column: 64, scope: !4225)
!4244 = !DILocation(line: 230, column: 17, scope: !4225)
!4245 = !DILocation(line: 232, column: 2, scope: !4225)
!4246 = !DILocation(line: 232, column: 6, scope: !4225)
!4247 = !DILocation(line: 233, column: 2, scope: !4225)
!4248 = !DILocation(line: 233, column: 16, scope: !4225)
!4249 = !DILocation(line: 234, column: 2, scope: !4225)
!4250 = !DILocation(line: 234, column: 6, scope: !4225)
!4251 = !DILocation(line: 236, column: 28, scope: !4225)
!4252 = !DILocation(line: 236, column: 14, scope: !4225)
!4253 = !DILocation(line: 236, column: 12, scope: !4225)
!4254 = !DILocation(line: 237, column: 22, scope: !4225)
!4255 = !DILocation(line: 237, column: 32, scope: !4225)
!4256 = !DILocation(line: 237, column: 14, scope: !4225)
!4257 = !DILocation(line: 237, column: 12, scope: !4225)
!4258 = !DILocation(line: 238, column: 7, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 238, column: 6)
!4260 = !DILocation(line: 238, column: 6, scope: !4225)
!4261 = !DILocation(line: 239, column: 3, scope: !4259)
!4262 = !DILocation(line: 241, column: 15, scope: !4225)
!4263 = !DILocation(line: 241, column: 26, scope: !4225)
!4264 = !DILocation(line: 241, column: 36, scope: !4225)
!4265 = !DILocation(line: 241, column: 2, scope: !4225)
!4266 = !DILocation(line: 242, column: 2, scope: !4225)
!4267 = !DILocation(line: 242, column: 12, scope: !4225)
!4268 = !DILocation(line: 242, column: 23, scope: !4225)
!4269 = !DILocation(line: 244, column: 9, scope: !4239)
!4270 = !DILocation(line: 244, column: 7, scope: !4239)
!4271 = !DILocation(line: 244, column: 32, scope: !4238)
!4272 = !DILocation(line: 244, column: 14, scope: !4238)
!4273 = !DILocation(line: 244, column: 35, scope: !4238)
!4274 = !DILocation(line: 244, column: 43, scope: !4238)
!4275 = !DILocation(line: 244, column: 2, scope: !4239)
!4276 = !DILocation(line: 245, column: 3, scope: !4237)
!4277 = !DILocation(line: 245, column: 15, scope: !4237)
!4278 = !DILocation(line: 245, column: 40, scope: !4237)
!4279 = !DILocation(line: 245, column: 22, scope: !4237)
!4280 = !DILocation(line: 245, column: 43, scope: !4237)
!4281 = !DILocation(line: 246, column: 3, scope: !4237)
!4282 = !DILocation(line: 246, column: 7, scope: !4237)
!4283 = !DILocation(line: 248, column: 45, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 248, column: 7)
!4285 = !DILocation(line: 248, column: 27, scope: !4284)
!4286 = !DILocation(line: 248, column: 48, scope: !4284)
!4287 = !DILocation(line: 248, column: 7, scope: !4284)
!4288 = !DILocation(line: 248, column: 7, scope: !4237)
!4289 = !DILocation(line: 249, column: 4, scope: !4284)
!4290 = !DILocation(line: 251, column: 24, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 251, column: 7)
!4292 = !DILocation(line: 251, column: 35, scope: !4291)
!4293 = !DILocation(line: 251, column: 44, scope: !4291)
!4294 = !DILocation(line: 251, column: 48, scope: !4291)
!4295 = !DILocation(line: 251, column: 7, scope: !4291)
!4296 = !DILocation(line: 251, column: 7, scope: !4237)
!4297 = !DILocation(line: 252, column: 26, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 252, column: 8)
!4299 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 251, column: 63)
!4300 = !DILocation(line: 252, column: 8, scope: !4298)
!4301 = !DILocation(line: 252, column: 29, scope: !4298)
!4302 = !DILocation(line: 252, column: 38, scope: !4298)
!4303 = !DILocation(line: 252, column: 8, scope: !4299)
!4304 = !DILocation(line: 253, column: 5, scope: !4298)
!4305 = !DILocation(line: 254, column: 10, scope: !4299)
!4306 = !DILocation(line: 254, column: 4, scope: !4299)
!4307 = !DILocation(line: 255, column: 29, scope: !4299)
!4308 = !DILocation(line: 255, column: 11, scope: !4299)
!4309 = !DILocation(line: 255, column: 32, scope: !4299)
!4310 = !DILocation(line: 255, column: 41, scope: !4299)
!4311 = !DILocation(line: 255, column: 51, scope: !4299)
!4312 = !DILocation(line: 256, column: 13, scope: !4299)
!4313 = !DILocation(line: 256, column: 19, scope: !4299)
!4314 = !DILocation(line: 255, column: 4, scope: !4299)
!4315 = !DILocation(line: 258, column: 2, scope: !4238)
!4316 = !DILocation(line: 258, column: 2, scope: !4237)
!4317 = !DILocation(line: 244, column: 53, scope: !4238)
!4318 = !DILocation(line: 244, column: 2, scope: !4238)
!4319 = distinct !{!4319, !4275, !4320, !4321, !4322}
!4320 = !DILocation(line: 258, column: 2, scope: !4239)
!4321 = !{!"llvm.loop.mustprogress"}
!4322 = !{!"llvm.loop.unroll.disable"}
!4323 = !DILocation(line: 259, column: 8, scope: !4225)
!4324 = !DILocation(line: 259, column: 2, scope: !4225)
!4325 = !DILocation(line: 260, column: 2, scope: !4225)
!4326 = !DILocation(line: 261, column: 1, scope: !4225)
!4327 = !DISubprogram(name: "ucs2_utf8size", scope: !4328, file: !4328, line: 15, type: !4329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4328 = !DIFile(filename: "./include/linux/ucs2_string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddcc7be0d4b5d0c3532f3fc5935abbee")
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!137, !4331}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4333)
!4333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs2_char_t", file: !4328, line: 8, baseType: !117)
!4334 = distinct !DISubprogram(name: "kmalloc", scope: !93, file: !93, line: 591, type: !4335, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4337)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!105, !280, !103}
!4337 = !{!4338, !4339, !4340}
!4338 = !DILocalVariable(name: "size", arg: 1, scope: !4334, file: !93, line: 591, type: !280)
!4339 = !DILocalVariable(name: "flags", arg: 2, scope: !4334, file: !93, line: 591, type: !103)
!4340 = !DILocalVariable(name: "index", scope: !4341, file: !93, line: 594, type: !7)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !93, line: 593, column: 42)
!4342 = distinct !DILexicalBlock(scope: !4334, file: !93, line: 593, column: 6)
!4343 = !DILocation(line: 591, column: 61, scope: !4334)
!4344 = !DILocation(line: 591, column: 73, scope: !4334)
!4345 = !DILocation(line: 593, column: 27, scope: !4342)
!4346 = !DILocation(line: 593, column: 6, scope: !4342)
!4347 = !DILocation(line: 593, column: 33, scope: !4342)
!4348 = !DILocation(line: 593, column: 36, scope: !4342)
!4349 = !DILocation(line: 593, column: 6, scope: !4334)
!4350 = !DILocation(line: 594, column: 3, scope: !4341)
!4351 = !DILocation(line: 594, column: 16, scope: !4341)
!4352 = !DILocation(line: 596, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4341, file: !93, line: 596, column: 7)
!4354 = !DILocation(line: 596, column: 12, scope: !4353)
!4355 = !DILocation(line: 596, column: 7, scope: !4341)
!4356 = !DILocation(line: 597, column: 25, scope: !4353)
!4357 = !DILocation(line: 597, column: 31, scope: !4353)
!4358 = !DILocation(line: 597, column: 11, scope: !4353)
!4359 = !DILocation(line: 597, column: 4, scope: !4353)
!4360 = !DILocation(line: 599, column: 11, scope: !4341)
!4361 = !DILocation(line: 599, column: 9, scope: !4341)
!4362 = !DILocation(line: 601, column: 33, scope: !4341)
!4363 = !DILocation(line: 601, column: 40, scope: !4341)
!4364 = !DILocation(line: 601, column: 20, scope: !4341)
!4365 = !DILocation(line: 601, column: 5, scope: !4341)
!4366 = !DILocation(line: 601, column: 51, scope: !4341)
!4367 = !DILocation(line: 602, column: 5, scope: !4341)
!4368 = !DILocation(line: 602, column: 12, scope: !4341)
!4369 = !DILocation(line: 600, column: 10, scope: !4341)
!4370 = !DILocation(line: 600, column: 3, scope: !4341)
!4371 = !DILocation(line: 603, column: 2, scope: !4342)
!4372 = !DILocation(line: 604, column: 19, scope: !4334)
!4373 = !DILocation(line: 604, column: 25, scope: !4334)
!4374 = !DILocation(line: 604, column: 9, scope: !4334)
!4375 = !DILocation(line: 604, column: 2, scope: !4334)
!4376 = !DILocation(line: 605, column: 1, scope: !4334)
!4377 = !DISubprogram(name: "ucs2_as_utf8", scope: !4328, file: !4328, line: 16, type: !4378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!137, !4207, !4331, !137}
!4380 = distinct !DISubprogram(name: "efi_guidcmp", scope: !116, file: !116, line: 699, type: !4381, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4383)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!193, !125, !125}
!4383 = !{!4384, !4385}
!4384 = !DILocalVariable(name: "left", arg: 1, scope: !4380, file: !116, line: 699, type: !125)
!4385 = !DILocalVariable(name: "right", arg: 2, scope: !4380, file: !116, line: 699, type: !125)
!4386 = !DILocation(line: 699, column: 25, scope: !4380)
!4387 = !DILocation(line: 699, column: 42, scope: !4380)
!4388 = !DILocation(line: 701, column: 9, scope: !4380)
!4389 = !DILocation(line: 701, column: 2, scope: !4380)
!4390 = distinct !DISubprogram(name: "variable_matches", scope: !3, file: !3, line: 200, type: !4391, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4393)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!651, !157, !280, !157, !700}
!4393 = !{!4394, !4395, !4396, !4397, !4398}
!4394 = !DILocalVariable(name: "var_name", arg: 1, scope: !4390, file: !3, line: 200, type: !157)
!4395 = !DILocalVariable(name: "len", arg: 2, scope: !4390, file: !3, line: 200, type: !280)
!4396 = !DILocalVariable(name: "match_name", arg: 3, scope: !4390, file: !3, line: 200, type: !157)
!4397 = !DILocalVariable(name: "match", arg: 4, scope: !4390, file: !3, line: 201, type: !700)
!4398 = !DILocalVariable(name: "c", scope: !4399, file: !3, line: 204, type: !159)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 203, column: 33)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 203, column: 2)
!4401 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 203, column: 2)
!4402 = !DILocation(line: 200, column: 30, scope: !4390)
!4403 = !DILocation(line: 200, column: 47, scope: !4390)
!4404 = !DILocation(line: 200, column: 64, scope: !4390)
!4405 = !DILocation(line: 201, column: 9, scope: !4390)
!4406 = !DILocation(line: 203, column: 8, scope: !4401)
!4407 = !DILocation(line: 203, column: 14, scope: !4401)
!4408 = !DILocation(line: 203, column: 7, scope: !4401)
!4409 = !DILocation(line: 204, column: 3, scope: !4399)
!4410 = !DILocation(line: 204, column: 8, scope: !4399)
!4411 = !DILocation(line: 204, column: 12, scope: !4399)
!4412 = !DILocation(line: 204, column: 24, scope: !4399)
!4413 = !DILocation(line: 204, column: 23, scope: !4399)
!4414 = !DILocation(line: 206, column: 11, scope: !4399)
!4415 = !DILocation(line: 206, column: 3, scope: !4399)
!4416 = !DILocation(line: 209, column: 4, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 206, column: 14)
!4418 = !DILocation(line: 213, column: 13, scope: !4417)
!4419 = !DILocation(line: 213, column: 12, scope: !4417)
!4420 = !DILocation(line: 213, column: 22, scope: !4417)
!4421 = !DILocation(line: 213, column: 19, scope: !4417)
!4422 = !DILocation(line: 213, column: 4, scope: !4417)
!4423 = !DILocation(line: 221, column: 9, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 221, column: 8)
!4425 = !DILocation(line: 221, column: 8, scope: !4424)
!4426 = !DILocation(line: 221, column: 17, scope: !4424)
!4427 = !DILocation(line: 221, column: 15, scope: !4424)
!4428 = !DILocation(line: 221, column: 21, scope: !4424)
!4429 = !DILocation(line: 221, column: 24, scope: !4424)
!4430 = !DILocation(line: 221, column: 29, scope: !4424)
!4431 = !DILocation(line: 221, column: 39, scope: !4424)
!4432 = !DILocation(line: 221, column: 38, scope: !4424)
!4433 = !DILocation(line: 221, column: 26, scope: !4424)
!4434 = !DILocation(line: 221, column: 8, scope: !4417)
!4435 = !DILocation(line: 222, column: 5, scope: !4424)
!4436 = !DILocation(line: 223, column: 4, scope: !4417)
!4437 = !DILocation(line: 225, column: 2, scope: !4400)
!4438 = !DILocation(line: 203, column: 23, scope: !4400)
!4439 = !DILocation(line: 203, column: 29, scope: !4400)
!4440 = !DILocation(line: 203, column: 2, scope: !4400)
!4441 = distinct !{!4441, !4442, !4443, !4322}
!4442 = !DILocation(line: 203, column: 2, scope: !4401)
!4443 = !DILocation(line: 225, column: 2, scope: !4401)
!4444 = !DILocation(line: 226, column: 1, scope: !4390)
!4445 = !DISubprogram(name: "kfree", scope: !93, file: !93, line: 227, type: !4446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{null, !1569}
!4448 = distinct !DISubprogram(name: "efivar_variable_is_removable", scope: !3, file: !3, line: 264, type: !4449, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4451)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!651, !125, !157, !280}
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457}
!4452 = !DILocalVariable(name: "vendor", arg: 1, scope: !4448, file: !3, line: 264, type: !125)
!4453 = !DILocalVariable(name: "var_name", arg: 2, scope: !4448, file: !3, line: 264, type: !157)
!4454 = !DILocalVariable(name: "len", arg: 3, scope: !4448, file: !3, line: 265, type: !280)
!4455 = !DILocalVariable(name: "i", scope: !4448, file: !3, line: 267, type: !193)
!4456 = !DILocalVariable(name: "found", scope: !4448, file: !3, line: 268, type: !651)
!4457 = !DILocalVariable(name: "match", scope: !4448, file: !3, line: 269, type: !193)
!4458 = !DILocation(line: 264, column: 41, scope: !4448)
!4459 = !DILocation(line: 264, column: 61, scope: !4448)
!4460 = !DILocation(line: 265, column: 16, scope: !4448)
!4461 = !DILocation(line: 267, column: 2, scope: !4448)
!4462 = !DILocation(line: 267, column: 6, scope: !4448)
!4463 = !DILocation(line: 268, column: 2, scope: !4448)
!4464 = !DILocation(line: 268, column: 7, scope: !4448)
!4465 = !DILocation(line: 269, column: 2, scope: !4448)
!4466 = !DILocation(line: 269, column: 6, scope: !4448)
!4467 = !DILocation(line: 274, column: 9, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 274, column: 2)
!4469 = !DILocation(line: 274, column: 7, scope: !4468)
!4470 = !DILocation(line: 274, column: 32, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 274, column: 2)
!4472 = !DILocation(line: 274, column: 14, scope: !4471)
!4473 = !DILocation(line: 274, column: 35, scope: !4471)
!4474 = !DILocation(line: 274, column: 43, scope: !4471)
!4475 = !DILocation(line: 274, column: 2, scope: !4468)
!4476 = !DILocation(line: 275, column: 37, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 275, column: 7)
!4478 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 274, column: 57)
!4479 = !DILocation(line: 275, column: 19, scope: !4477)
!4480 = !DILocation(line: 275, column: 40, scope: !4477)
!4481 = !DILocation(line: 275, column: 7, scope: !4477)
!4482 = !DILocation(line: 275, column: 7, scope: !4478)
!4483 = !DILocation(line: 276, column: 4, scope: !4477)
!4484 = !DILocation(line: 278, column: 24, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 278, column: 7)
!4486 = !DILocation(line: 278, column: 34, scope: !4485)
!4487 = !DILocation(line: 279, column: 28, scope: !4485)
!4488 = !DILocation(line: 279, column: 10, scope: !4485)
!4489 = !DILocation(line: 279, column: 31, scope: !4485)
!4490 = !DILocation(line: 278, column: 7, scope: !4485)
!4491 = !DILocation(line: 278, column: 7, scope: !4478)
!4492 = !DILocation(line: 280, column: 10, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 279, column: 46)
!4494 = !DILocation(line: 281, column: 4, scope: !4493)
!4495 = !DILocation(line: 283, column: 2, scope: !4478)
!4496 = !DILocation(line: 274, column: 53, scope: !4471)
!4497 = !DILocation(line: 274, column: 2, scope: !4471)
!4498 = distinct !{!4498, !4475, !4499, !4321, !4322}
!4499 = !DILocation(line: 283, column: 2, scope: !4468)
!4500 = !DILocation(line: 288, column: 9, scope: !4448)
!4501 = !{i8 0, i8 2}
!4502 = !DILocation(line: 289, column: 1, scope: !4448)
!4503 = !DILocation(line: 288, column: 2, scope: !4448)
!4504 = distinct !DISubprogram(name: "efivar_init", scope: !3, file: !3, line: 372, type: !4505, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4510)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!193, !4507, !105, !651, !150}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!193, !4112, !125, !137, !105}
!4510 = !{!4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520}
!4511 = !DILocalVariable(name: "func", arg: 1, scope: !4504, file: !3, line: 372, type: !4507)
!4512 = !DILocalVariable(name: "data", arg: 2, scope: !4504, file: !3, line: 373, type: !105)
!4513 = !DILocalVariable(name: "duplicates", arg: 3, scope: !4504, file: !3, line: 373, type: !651)
!4514 = !DILocalVariable(name: "head", arg: 4, scope: !4504, file: !3, line: 373, type: !150)
!4515 = !DILocalVariable(name: "variable_name_size", scope: !4504, file: !3, line: 375, type: !137)
!4516 = !DILocalVariable(name: "variable_name", scope: !4504, file: !3, line: 376, type: !4112)
!4517 = !DILocalVariable(name: "status", scope: !4504, file: !3, line: 377, type: !143)
!4518 = !DILocalVariable(name: "vendor_guid", scope: !4504, file: !3, line: 378, type: !125)
!4519 = !DILocalVariable(name: "err", scope: !4504, file: !3, line: 379, type: !193)
!4520 = !DILabel(scope: !4504, name: "free", file: !3, line: 449)
!4521 = !DILocation(line: 372, column: 23, scope: !4504)
!4522 = !DILocation(line: 373, column: 9, scope: !4504)
!4523 = !DILocation(line: 373, column: 20, scope: !4504)
!4524 = !DILocation(line: 373, column: 50, scope: !4504)
!4525 = !DILocation(line: 375, column: 2, scope: !4504)
!4526 = !DILocation(line: 375, column: 16, scope: !4504)
!4527 = !DILocation(line: 376, column: 2, scope: !4504)
!4528 = !DILocation(line: 376, column: 16, scope: !4504)
!4529 = !DILocation(line: 377, column: 2, scope: !4504)
!4530 = !DILocation(line: 377, column: 15, scope: !4504)
!4531 = !DILocation(line: 378, column: 2, scope: !4504)
!4532 = !DILocation(line: 378, column: 13, scope: !4504)
!4533 = !DILocation(line: 379, column: 2, scope: !4504)
!4534 = !DILocation(line: 379, column: 6, scope: !4504)
!4535 = !DILocation(line: 381, column: 26, scope: !4504)
!4536 = !DILocation(line: 381, column: 18, scope: !4504)
!4537 = !DILocation(line: 381, column: 16, scope: !4504)
!4538 = !DILocation(line: 382, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 382, column: 6)
!4540 = !DILocation(line: 382, column: 6, scope: !4504)
!4541 = !DILocation(line: 383, column: 3, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 383, column: 3)
!4543 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 382, column: 22)
!4544 = !DILocation(line: 383, column: 3, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 383, column: 3)
!4546 = !DILocation(line: 384, column: 3, scope: !4543)
!4547 = !DILocation(line: 387, column: 8, scope: !4504)
!4548 = !DILocation(line: 387, column: 6, scope: !4504)
!4549 = !DILocation(line: 388, column: 6, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 388, column: 6)
!4551 = !DILocation(line: 388, column: 6, scope: !4504)
!4552 = !DILocation(line: 389, column: 3, scope: !4550)
!4553 = !DILocation(line: 397, column: 2, scope: !4504)
!4554 = !DILocation(line: 398, column: 22, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 397, column: 5)
!4556 = !DILocation(line: 401, column: 9, scope: !4555)
!4557 = !DILocation(line: 400, column: 12, scope: !4555)
!4558 = !DILocation(line: 400, column: 10, scope: !4555)
!4559 = !DILocation(line: 403, column: 11, scope: !4555)
!4560 = !DILocation(line: 403, column: 3, scope: !4555)
!4561 = !DILocation(line: 405, column: 43, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 403, column: 19)
!4563 = !DILocation(line: 406, column: 15, scope: !4562)
!4564 = !DILocation(line: 405, column: 25, scope: !4562)
!4565 = !DILocation(line: 405, column: 23, scope: !4562)
!4566 = !DILocation(line: 416, column: 8, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 416, column: 8)
!4568 = !DILocation(line: 416, column: 19, scope: !4567)
!4569 = !DILocation(line: 417, column: 28, scope: !4567)
!4570 = !DILocation(line: 418, column: 7, scope: !4567)
!4571 = !DILocation(line: 417, column: 8, scope: !4567)
!4572 = !DILocation(line: 416, column: 8, scope: !4562)
!4573 = !DILocation(line: 419, column: 22, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 418, column: 14)
!4575 = !DILocation(line: 420, column: 8, scope: !4574)
!4576 = !DILocation(line: 419, column: 5, scope: !4574)
!4577 = !DILocation(line: 421, column: 12, scope: !4574)
!4578 = !DILocation(line: 422, column: 4, scope: !4574)
!4579 = !DILocation(line: 423, column: 11, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 422, column: 11)
!4581 = !DILocation(line: 423, column: 16, scope: !4580)
!4582 = !DILocation(line: 424, column: 9, scope: !4580)
!4583 = !DILocation(line: 424, column: 29, scope: !4580)
!4584 = !DILocation(line: 423, column: 9, scope: !4580)
!4585 = !DILocation(line: 425, column: 9, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 425, column: 9)
!4587 = !DILocation(line: 425, column: 9, scope: !4580)
!4588 = !DILocation(line: 426, column: 13, scope: !4586)
!4589 = !DILocation(line: 426, column: 6, scope: !4586)
!4590 = !DILocation(line: 428, column: 4, scope: !4562)
!4591 = !DILocation(line: 430, column: 8, scope: !4562)
!4592 = !DILocation(line: 431, column: 11, scope: !4562)
!4593 = !DILocation(line: 432, column: 4, scope: !4562)
!4594 = !DILocation(line: 436, column: 4, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 436, column: 4)
!4596 = !DILocation(line: 436, column: 4, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 436, column: 4)
!4598 = !DILocation(line: 438, column: 11, scope: !4562)
!4599 = !DILocation(line: 439, column: 4, scope: !4562)
!4600 = !DILocation(line: 441, column: 4, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 441, column: 4)
!4602 = !DILocation(line: 441, column: 4, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 441, column: 4)
!4604 = !DILocation(line: 442, column: 11, scope: !4562)
!4605 = !DILocation(line: 443, column: 4, scope: !4562)
!4606 = !DILocation(line: 446, column: 2, scope: !4555)
!4607 = !DILocation(line: 446, column: 11, scope: !4504)
!4608 = !DILocation(line: 446, column: 18, scope: !4504)
!4609 = distinct !{!4609, !4553, !4610, !4321, !4322}
!4610 = !DILocation(line: 446, column: 34, scope: !4504)
!4611 = !DILocation(line: 448, column: 2, scope: !4504)
!4612 = !DILocation(line: 449, column: 1, scope: !4504)
!4613 = !DILocation(line: 450, column: 8, scope: !4504)
!4614 = !DILocation(line: 450, column: 2, scope: !4504)
!4615 = !DILocation(line: 452, column: 9, scope: !4504)
!4616 = !DILocation(line: 452, column: 2, scope: !4504)
!4617 = !DILocation(line: 453, column: 1, scope: !4504)
!4618 = distinct !DISubprogram(name: "kzalloc", scope: !93, file: !93, line: 719, type: !4335, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4619)
!4619 = !{!4620, !4621}
!4620 = !DILocalVariable(name: "size", arg: 1, scope: !4618, file: !93, line: 719, type: !280)
!4621 = !DILocalVariable(name: "flags", arg: 2, scope: !4618, file: !93, line: 719, type: !103)
!4622 = !DILocation(line: 719, column: 52, scope: !4618)
!4623 = !DILocation(line: 719, column: 64, scope: !4618)
!4624 = !DILocation(line: 721, column: 17, scope: !4618)
!4625 = !DILocation(line: 721, column: 23, scope: !4618)
!4626 = !DILocation(line: 721, column: 29, scope: !4618)
!4627 = !DILocation(line: 721, column: 9, scope: !4618)
!4628 = !DILocation(line: 721, column: 2, scope: !4618)
!4629 = !DISubprogram(name: "_printk", scope: !4630, file: !4630, line: 153, type: !4631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4630 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!193, !157, null}
!4633 = !DISubprogram(name: "efivar_lock", scope: !116, file: !116, line: 1095, type: !665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4634 = !DISubprogram(name: "efivar_get_next_variable", scope: !116, file: !116, line: 1102, type: !4635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!143, !922, !4112, !4637}
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!4638 = distinct !DISubprogram(name: "var_name_strnsize", scope: !3, file: !3, line: 318, type: !4639, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4641)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!137, !4112, !137}
!4641 = !{!4642, !4643, !4644, !4645, !4646, !4648}
!4642 = !DILocalVariable(name: "variable_name", arg: 1, scope: !4638, file: !3, line: 318, type: !4112)
!4643 = !DILocalVariable(name: "variable_name_size", arg: 2, scope: !4638, file: !3, line: 319, type: !137)
!4644 = !DILocalVariable(name: "len", scope: !4638, file: !3, line: 321, type: !137)
!4645 = !DILocalVariable(name: "c", scope: !4638, file: !3, line: 322, type: !115)
!4646 = !DILocalVariable(name: "__UNIQUE_ID___x254", scope: !4647, file: !3, line: 335, type: !137)
!4647 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 335, column: 9)
!4648 = !DILocalVariable(name: "__UNIQUE_ID___y255", scope: !4647, file: !3, line: 335, type: !137)
!4649 = !DILocation(line: 318, column: 54, scope: !4638)
!4650 = !DILocation(line: 319, column: 26, scope: !4638)
!4651 = !DILocation(line: 321, column: 2, scope: !4638)
!4652 = !DILocation(line: 321, column: 16, scope: !4638)
!4653 = !DILocation(line: 322, column: 2, scope: !4638)
!4654 = !DILocation(line: 322, column: 15, scope: !4638)
!4655 = !DILocation(line: 329, column: 11, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 329, column: 2)
!4657 = !DILocation(line: 329, column: 7, scope: !4656)
!4658 = !DILocation(line: 329, column: 16, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 329, column: 2)
!4660 = !DILocation(line: 329, column: 23, scope: !4659)
!4661 = !DILocation(line: 329, column: 20, scope: !4659)
!4662 = !DILocation(line: 329, column: 2, scope: !4656)
!4663 = !DILocation(line: 330, column: 7, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 329, column: 61)
!4665 = !DILocation(line: 330, column: 22, scope: !4664)
!4666 = !DILocation(line: 330, column: 26, scope: !4664)
!4667 = !DILocation(line: 330, column: 39, scope: !4664)
!4668 = !DILocation(line: 330, column: 5, scope: !4664)
!4669 = !DILocation(line: 331, column: 8, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 331, column: 7)
!4671 = !DILocation(line: 331, column: 7, scope: !4664)
!4672 = !DILocation(line: 332, column: 4, scope: !4670)
!4673 = !DILocation(line: 333, column: 2, scope: !4664)
!4674 = !DILocation(line: 329, column: 47, scope: !4659)
!4675 = !DILocation(line: 329, column: 2, scope: !4659)
!4676 = distinct !{!4676, !4662, !4677, !4321, !4322}
!4677 = !DILocation(line: 333, column: 2, scope: !4656)
!4678 = !DILocation(line: 335, column: 9, scope: !4647)
!4679 = !DILocation(line: 335, column: 9, scope: !4638)
!4680 = !DILocation(line: 336, column: 1, scope: !4638)
!4681 = !DILocation(line: 335, column: 2, scope: !4638)
!4682 = distinct !DISubprogram(name: "variable_is_present", scope: !3, file: !3, line: 291, type: !4683, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!651, !4112, !4637, !150}
!4685 = !{!4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4697, !4699}
!4686 = !DILocalVariable(name: "variable_name", arg: 1, scope: !4682, file: !3, line: 291, type: !4112)
!4687 = !DILocalVariable(name: "vendor", arg: 2, scope: !4682, file: !3, line: 291, type: !4637)
!4688 = !DILocalVariable(name: "head", arg: 3, scope: !4682, file: !3, line: 292, type: !150)
!4689 = !DILocalVariable(name: "entry", scope: !4682, file: !3, line: 294, type: !106)
!4690 = !DILocalVariable(name: "n", scope: !4682, file: !3, line: 294, type: !106)
!4691 = !DILocalVariable(name: "strsize1", scope: !4682, file: !3, line: 295, type: !137)
!4692 = !DILocalVariable(name: "strsize2", scope: !4682, file: !3, line: 295, type: !137)
!4693 = !DILocalVariable(name: "found", scope: !4682, file: !3, line: 296, type: !651)
!4694 = !DILocalVariable(name: "__mptr", scope: !4695, file: !3, line: 299, type: !105)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 299, column: 2)
!4696 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 299, column: 2)
!4697 = !DILocalVariable(name: "__mptr", scope: !4698, file: !3, line: 299, type: !105)
!4698 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 299, column: 2)
!4699 = !DILocalVariable(name: "__mptr", scope: !4700, file: !3, line: 299, type: !105)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 299, column: 2)
!4701 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 299, column: 2)
!4702 = !DILocation(line: 291, column: 47, scope: !4682)
!4703 = !DILocation(line: 291, column: 74, scope: !4682)
!4704 = !DILocation(line: 292, column: 23, scope: !4682)
!4705 = !DILocation(line: 294, column: 2, scope: !4682)
!4706 = !DILocation(line: 294, column: 23, scope: !4682)
!4707 = !DILocation(line: 294, column: 31, scope: !4682)
!4708 = !DILocation(line: 295, column: 2, scope: !4682)
!4709 = !DILocation(line: 295, column: 16, scope: !4682)
!4710 = !DILocation(line: 295, column: 26, scope: !4682)
!4711 = !DILocation(line: 296, column: 2, scope: !4682)
!4712 = !DILocation(line: 296, column: 7, scope: !4682)
!4713 = !DILocation(line: 298, column: 26, scope: !4682)
!4714 = !DILocation(line: 298, column: 13, scope: !4682)
!4715 = !DILocation(line: 298, column: 11, scope: !4682)
!4716 = !DILocation(line: 299, column: 2, scope: !4695)
!4717 = !DILocation(line: 299, column: 2, scope: !4696)
!4718 = !DILocation(line: 299, column: 2, scope: !4698)
!4719 = !DILocation(line: 299, column: 2, scope: !4701)
!4720 = !DILocation(line: 300, column: 27, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 299, column: 49)
!4722 = !DILocation(line: 300, column: 34, scope: !4721)
!4723 = !DILocation(line: 300, column: 38, scope: !4721)
!4724 = !DILocation(line: 300, column: 14, scope: !4721)
!4725 = !DILocation(line: 300, column: 12, scope: !4721)
!4726 = !DILocation(line: 301, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 301, column: 7)
!4728 = !DILocation(line: 301, column: 19, scope: !4727)
!4729 = !DILocation(line: 301, column: 16, scope: !4727)
!4730 = !DILocation(line: 301, column: 28, scope: !4727)
!4731 = !DILocation(line: 302, column: 12, scope: !4727)
!4732 = !DILocation(line: 302, column: 29, scope: !4727)
!4733 = !DILocation(line: 302, column: 36, scope: !4727)
!4734 = !DILocation(line: 302, column: 40, scope: !4727)
!4735 = !DILocation(line: 303, column: 5, scope: !4727)
!4736 = !DILocation(line: 302, column: 5, scope: !4727)
!4737 = !DILocation(line: 303, column: 15, scope: !4727)
!4738 = !DILocation(line: 304, column: 17, scope: !4727)
!4739 = !DILocation(line: 304, column: 24, scope: !4727)
!4740 = !DILocation(line: 304, column: 28, scope: !4727)
!4741 = !DILocation(line: 305, column: 6, scope: !4727)
!4742 = !DILocation(line: 304, column: 5, scope: !4727)
!4743 = !DILocation(line: 301, column: 7, scope: !4721)
!4744 = !DILocation(line: 306, column: 10, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 305, column: 15)
!4746 = !DILocation(line: 307, column: 4, scope: !4745)
!4747 = !DILocation(line: 309, column: 2, scope: !4721)
!4748 = !DILocation(line: 299, column: 2, scope: !4700)
!4749 = distinct !{!4749, !4717, !4750, !4321, !4322}
!4750 = !DILocation(line: 309, column: 2, scope: !4696)
!4751 = !DILocation(line: 310, column: 9, scope: !4682)
!4752 = !DILocation(line: 311, column: 1, scope: !4682)
!4753 = !DILocation(line: 310, column: 2, scope: !4682)
!4754 = distinct !DISubprogram(name: "dup_variable_bug", scope: !3, file: !3, line: 342, type: !4755, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4757)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{null, !4112, !4637, !137}
!4757 = !{!4758, !4759, !4760, !4761, !4762, !4763}
!4758 = !DILocalVariable(name: "str16", arg: 1, scope: !4754, file: !3, line: 342, type: !4112)
!4759 = !DILocalVariable(name: "vendor_guid", arg: 2, scope: !4754, file: !3, line: 342, type: !4637)
!4760 = !DILocalVariable(name: "len16", arg: 3, scope: !4754, file: !3, line: 343, type: !137)
!4761 = !DILocalVariable(name: "i", scope: !4754, file: !3, line: 345, type: !280)
!4762 = !DILocalVariable(name: "len8", scope: !4754, file: !3, line: 345, type: !280)
!4763 = !DILocalVariable(name: "str8", scope: !4754, file: !3, line: 346, type: !233)
!4764 = !DILocation(line: 342, column: 44, scope: !4754)
!4765 = !DILocation(line: 342, column: 63, scope: !4754)
!4766 = !DILocation(line: 343, column: 23, scope: !4754)
!4767 = !DILocation(line: 345, column: 2, scope: !4754)
!4768 = !DILocation(line: 345, column: 9, scope: !4754)
!4769 = !DILocation(line: 345, column: 12, scope: !4754)
!4770 = !DILocation(line: 345, column: 19, scope: !4754)
!4771 = !DILocation(line: 345, column: 25, scope: !4754)
!4772 = !DILocation(line: 346, column: 2, scope: !4754)
!4773 = !DILocation(line: 346, column: 8, scope: !4754)
!4774 = !DILocation(line: 348, column: 17, scope: !4754)
!4775 = !DILocation(line: 348, column: 9, scope: !4754)
!4776 = !DILocation(line: 348, column: 7, scope: !4754)
!4777 = !DILocation(line: 349, column: 7, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 349, column: 6)
!4779 = !DILocation(line: 349, column: 6, scope: !4754)
!4780 = !DILocation(line: 350, column: 3, scope: !4778)
!4781 = !DILocation(line: 352, column: 9, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 352, column: 2)
!4783 = !DILocation(line: 352, column: 7, scope: !4782)
!4784 = !DILocation(line: 352, column: 14, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 352, column: 2)
!4786 = !DILocation(line: 352, column: 18, scope: !4785)
!4787 = !DILocation(line: 352, column: 16, scope: !4785)
!4788 = !DILocation(line: 352, column: 2, scope: !4782)
!4789 = !DILocation(line: 353, column: 13, scope: !4785)
!4790 = !DILocation(line: 353, column: 19, scope: !4785)
!4791 = !DILocation(line: 353, column: 3, scope: !4785)
!4792 = !DILocation(line: 353, column: 8, scope: !4785)
!4793 = !DILocation(line: 353, column: 11, scope: !4785)
!4794 = !DILocation(line: 352, column: 25, scope: !4785)
!4795 = !DILocation(line: 352, column: 2, scope: !4785)
!4796 = distinct !{!4796, !4788, !4797, !4321, !4322}
!4797 = !DILocation(line: 353, column: 20, scope: !4782)
!4798 = !DILocation(line: 355, column: 2, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 355, column: 2)
!4800 = !DILocation(line: 355, column: 2, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 355, column: 2)
!4802 = !DILocation(line: 357, column: 8, scope: !4754)
!4803 = !DILocation(line: 357, column: 2, scope: !4754)
!4804 = !DILocation(line: 358, column: 1, scope: !4754)
!4805 = !DISubprogram(name: "efivar_unlock", scope: !116, file: !116, line: 1097, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4806 = distinct !DISubprogram(name: "efivar_entry_add", scope: !3, file: !3, line: 462, type: !4807, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!193, !106, !150}
!4809 = !{!4810, !4811, !4812}
!4810 = !DILocalVariable(name: "entry", arg: 1, scope: !4806, file: !3, line: 462, type: !106)
!4811 = !DILocalVariable(name: "head", arg: 2, scope: !4806, file: !3, line: 462, type: !150)
!4812 = !DILocalVariable(name: "err", scope: !4806, file: !3, line: 464, type: !193)
!4813 = !DILocation(line: 462, column: 43, scope: !4806)
!4814 = !DILocation(line: 462, column: 68, scope: !4806)
!4815 = !DILocation(line: 464, column: 2, scope: !4806)
!4816 = !DILocation(line: 464, column: 6, scope: !4806)
!4817 = !DILocation(line: 466, column: 8, scope: !4806)
!4818 = !DILocation(line: 466, column: 6, scope: !4806)
!4819 = !DILocation(line: 467, column: 6, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 467, column: 6)
!4821 = !DILocation(line: 467, column: 6, scope: !4806)
!4822 = !DILocation(line: 468, column: 10, scope: !4820)
!4823 = !DILocation(line: 468, column: 3, scope: !4820)
!4824 = !DILocation(line: 469, column: 12, scope: !4806)
!4825 = !DILocation(line: 469, column: 19, scope: !4806)
!4826 = !DILocation(line: 469, column: 25, scope: !4806)
!4827 = !DILocation(line: 469, column: 2, scope: !4806)
!4828 = !DILocation(line: 470, column: 2, scope: !4806)
!4829 = !DILocation(line: 472, column: 2, scope: !4806)
!4830 = !DILocation(line: 473, column: 1, scope: !4806)
!4831 = distinct !DISubprogram(name: "list_add", scope: !4832, file: !4832, line: 167, type: !4833, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4835)
!4832 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4833 = !DISubroutineType(types: !4834)
!4834 = !{null, !150, !150}
!4835 = !{!4836, !4837}
!4836 = !DILocalVariable(name: "new", arg: 1, scope: !4831, file: !4832, line: 167, type: !150)
!4837 = !DILocalVariable(name: "head", arg: 2, scope: !4831, file: !4832, line: 167, type: !150)
!4838 = !DILocation(line: 167, column: 47, scope: !4831)
!4839 = !DILocation(line: 167, column: 70, scope: !4831)
!4840 = !DILocation(line: 169, column: 13, scope: !4831)
!4841 = !DILocation(line: 169, column: 18, scope: !4831)
!4842 = !DILocation(line: 169, column: 24, scope: !4831)
!4843 = !DILocation(line: 169, column: 30, scope: !4831)
!4844 = !DILocation(line: 169, column: 2, scope: !4831)
!4845 = !DILocation(line: 170, column: 1, scope: !4831)
!4846 = distinct !DISubprogram(name: "__efivar_entry_add", scope: !3, file: !3, line: 480, type: !4847, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4849)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{null, !106, !150}
!4849 = !{!4850, !4851}
!4850 = !DILocalVariable(name: "entry", arg: 1, scope: !4846, file: !3, line: 480, type: !106)
!4851 = !DILocalVariable(name: "head", arg: 2, scope: !4846, file: !3, line: 480, type: !150)
!4852 = !DILocation(line: 480, column: 46, scope: !4846)
!4853 = !DILocation(line: 480, column: 71, scope: !4846)
!4854 = !DILocation(line: 482, column: 12, scope: !4846)
!4855 = !DILocation(line: 482, column: 19, scope: !4846)
!4856 = !DILocation(line: 482, column: 25, scope: !4846)
!4857 = !DILocation(line: 482, column: 2, scope: !4846)
!4858 = !DILocation(line: 483, column: 1, scope: !4846)
!4859 = distinct !DISubprogram(name: "efivar_entry_remove", scope: !3, file: !3, line: 491, type: !4860, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4862)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{null, !106}
!4862 = !{!4863}
!4863 = !DILocalVariable(name: "entry", arg: 1, scope: !4859, file: !3, line: 491, type: !106)
!4864 = !DILocation(line: 491, column: 47, scope: !4859)
!4865 = !DILocation(line: 493, column: 12, scope: !4859)
!4866 = !DILocation(line: 493, column: 19, scope: !4859)
!4867 = !DILocation(line: 493, column: 2, scope: !4859)
!4868 = !DILocation(line: 494, column: 1, scope: !4859)
!4869 = distinct !DISubprogram(name: "list_del", scope: !4832, file: !4832, line: 227, type: !4870, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4872)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{null, !150}
!4872 = !{!4873}
!4873 = !DILocalVariable(name: "entry", arg: 1, scope: !4869, file: !4832, line: 227, type: !150)
!4874 = !DILocation(line: 227, column: 47, scope: !4869)
!4875 = !DILocation(line: 229, column: 19, scope: !4869)
!4876 = !DILocation(line: 229, column: 2, scope: !4869)
!4877 = !DILocation(line: 230, column: 2, scope: !4869)
!4878 = !DILocation(line: 230, column: 9, scope: !4869)
!4879 = !DILocation(line: 230, column: 14, scope: !4869)
!4880 = !DILocation(line: 231, column: 2, scope: !4869)
!4881 = !DILocation(line: 231, column: 9, scope: !4869)
!4882 = !DILocation(line: 231, column: 14, scope: !4869)
!4883 = !DILocation(line: 232, column: 1, scope: !4869)
!4884 = distinct !DISubprogram(name: "efivar_entry_delete", scope: !3, file: !3, line: 524, type: !4885, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4887)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!193, !106}
!4887 = !{!4888, !4889, !4890}
!4888 = !DILocalVariable(name: "entry", arg: 1, scope: !4884, file: !3, line: 524, type: !106)
!4889 = !DILocalVariable(name: "status", scope: !4884, file: !3, line: 526, type: !143)
!4890 = !DILocalVariable(name: "err", scope: !4884, file: !3, line: 527, type: !193)
!4891 = !DILocation(line: 524, column: 46, scope: !4884)
!4892 = !DILocation(line: 526, column: 2, scope: !4884)
!4893 = !DILocation(line: 526, column: 15, scope: !4884)
!4894 = !DILocation(line: 527, column: 2, scope: !4884)
!4895 = !DILocation(line: 527, column: 6, scope: !4884)
!4896 = !DILocation(line: 529, column: 8, scope: !4884)
!4897 = !DILocation(line: 529, column: 6, scope: !4884)
!4898 = !DILocation(line: 530, column: 6, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 530, column: 6)
!4900 = !DILocation(line: 530, column: 6, scope: !4884)
!4901 = !DILocation(line: 531, column: 10, scope: !4899)
!4902 = !DILocation(line: 531, column: 3, scope: !4899)
!4903 = !DILocation(line: 533, column: 38, scope: !4884)
!4904 = !DILocation(line: 533, column: 45, scope: !4884)
!4905 = !DILocation(line: 533, column: 49, scope: !4884)
!4906 = !DILocation(line: 534, column: 11, scope: !4884)
!4907 = !DILocation(line: 534, column: 18, scope: !4884)
!4908 = !DILocation(line: 534, column: 22, scope: !4884)
!4909 = !DILocation(line: 533, column: 11, scope: !4884)
!4910 = !DILocation(line: 533, column: 9, scope: !4884)
!4911 = !DILocation(line: 536, column: 8, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 536, column: 6)
!4913 = !DILocation(line: 536, column: 15, scope: !4912)
!4914 = !DILocation(line: 536, column: 30, scope: !4912)
!4915 = !DILocation(line: 536, column: 33, scope: !4912)
!4916 = !DILocation(line: 536, column: 40, scope: !4912)
!4917 = !DILocation(line: 536, column: 6, scope: !4884)
!4918 = !DILocation(line: 537, column: 3, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 536, column: 59)
!4920 = !DILocation(line: 538, column: 28, scope: !4919)
!4921 = !DILocation(line: 538, column: 10, scope: !4919)
!4922 = !DILocation(line: 538, column: 3, scope: !4919)
!4923 = !DILocation(line: 541, column: 31, scope: !4884)
!4924 = !DILocation(line: 541, column: 2, scope: !4884)
!4925 = !DILocation(line: 542, column: 2, scope: !4884)
!4926 = !DILocation(line: 543, column: 1, scope: !4884)
!4927 = !DISubprogram(name: "efivar_set_variable_locked", scope: !116, file: !116, line: 1105, type: !4928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!143, !4112, !4637, !381, !137, !105, !651}
!4930 = !DISubprogram(name: "efi_status_to_err", scope: !116, file: !116, line: 920, type: !4931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!193, !143}
!4933 = distinct !DISubprogram(name: "efivar_entry_list_del_unlock", scope: !3, file: !3, line: 507, type: !4860, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4934)
!4934 = !{!4935}
!4935 = !DILocalVariable(name: "entry", arg: 1, scope: !4933, file: !3, line: 507, type: !106)
!4936 = !DILocation(line: 507, column: 63, scope: !4933)
!4937 = !DILocation(line: 509, column: 12, scope: !4933)
!4938 = !DILocation(line: 509, column: 19, scope: !4933)
!4939 = !DILocation(line: 509, column: 2, scope: !4933)
!4940 = !DILocation(line: 510, column: 2, scope: !4933)
!4941 = !DILocation(line: 511, column: 1, scope: !4933)
!4942 = distinct !DISubprogram(name: "efivar_entry_size", scope: !3, file: !3, line: 550, type: !4943, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4945)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!193, !106, !922}
!4945 = !{!4946, !4947, !4948, !4949}
!4946 = !DILocalVariable(name: "entry", arg: 1, scope: !4942, file: !3, line: 550, type: !106)
!4947 = !DILocalVariable(name: "size", arg: 2, scope: !4942, file: !3, line: 550, type: !922)
!4948 = !DILocalVariable(name: "status", scope: !4942, file: !3, line: 552, type: !143)
!4949 = !DILocalVariable(name: "err", scope: !4942, file: !3, line: 553, type: !193)
!4950 = !DILocation(line: 550, column: 44, scope: !4942)
!4951 = !DILocation(line: 550, column: 66, scope: !4942)
!4952 = !DILocation(line: 552, column: 2, scope: !4942)
!4953 = !DILocation(line: 552, column: 15, scope: !4942)
!4954 = !DILocation(line: 553, column: 2, scope: !4942)
!4955 = !DILocation(line: 553, column: 6, scope: !4942)
!4956 = !DILocation(line: 555, column: 3, scope: !4942)
!4957 = !DILocation(line: 555, column: 8, scope: !4942)
!4958 = !DILocation(line: 557, column: 8, scope: !4942)
!4959 = !DILocation(line: 557, column: 6, scope: !4942)
!4960 = !DILocation(line: 558, column: 6, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 558, column: 6)
!4962 = !DILocation(line: 558, column: 6, scope: !4942)
!4963 = !DILocation(line: 559, column: 10, scope: !4961)
!4964 = !DILocation(line: 559, column: 3, scope: !4961)
!4965 = !DILocation(line: 561, column: 31, scope: !4942)
!4966 = !DILocation(line: 561, column: 38, scope: !4942)
!4967 = !DILocation(line: 561, column: 42, scope: !4942)
!4968 = !DILocation(line: 562, column: 11, scope: !4942)
!4969 = !DILocation(line: 562, column: 18, scope: !4942)
!4970 = !DILocation(line: 562, column: 22, scope: !4942)
!4971 = !DILocation(line: 562, column: 40, scope: !4942)
!4972 = !DILocation(line: 561, column: 11, scope: !4942)
!4973 = !DILocation(line: 561, column: 9, scope: !4942)
!4974 = !DILocation(line: 563, column: 2, scope: !4942)
!4975 = !DILocation(line: 565, column: 6, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 565, column: 6)
!4977 = !DILocation(line: 565, column: 13, scope: !4976)
!4978 = !DILocation(line: 565, column: 6, scope: !4942)
!4979 = !DILocation(line: 566, column: 28, scope: !4976)
!4980 = !DILocation(line: 566, column: 10, scope: !4976)
!4981 = !DILocation(line: 566, column: 3, scope: !4976)
!4982 = !DILocation(line: 568, column: 2, scope: !4942)
!4983 = !DILocation(line: 569, column: 1, scope: !4942)
!4984 = !DISubprogram(name: "efivar_get_variable", scope: !116, file: !116, line: 1099, type: !4985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!143, !4112, !4637, !2596, !922, !105}
!4987 = distinct !DISubprogram(name: "__efivar_entry_get", scope: !3, file: !3, line: 582, type: !4988, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4990)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!193, !106, !2596, !922, !105}
!4990 = !{!4991, !4992, !4993, !4994, !4995}
!4991 = !DILocalVariable(name: "entry", arg: 1, scope: !4987, file: !3, line: 582, type: !106)
!4992 = !DILocalVariable(name: "attributes", arg: 2, scope: !4987, file: !3, line: 582, type: !2596)
!4993 = !DILocalVariable(name: "size", arg: 3, scope: !4987, file: !3, line: 583, type: !922)
!4994 = !DILocalVariable(name: "data", arg: 4, scope: !4987, file: !3, line: 583, type: !105)
!4995 = !DILocalVariable(name: "status", scope: !4987, file: !3, line: 585, type: !143)
!4996 = !DILocation(line: 582, column: 45, scope: !4987)
!4997 = !DILocation(line: 582, column: 57, scope: !4987)
!4998 = !DILocation(line: 583, column: 25, scope: !4987)
!4999 = !DILocation(line: 583, column: 37, scope: !4987)
!5000 = !DILocation(line: 585, column: 2, scope: !4987)
!5001 = !DILocation(line: 585, column: 15, scope: !4987)
!5002 = !DILocation(line: 587, column: 31, scope: !4987)
!5003 = !DILocation(line: 587, column: 38, scope: !4987)
!5004 = !DILocation(line: 587, column: 42, scope: !4987)
!5005 = !DILocation(line: 588, column: 11, scope: !4987)
!5006 = !DILocation(line: 588, column: 18, scope: !4987)
!5007 = !DILocation(line: 588, column: 22, scope: !4987)
!5008 = !DILocation(line: 589, column: 10, scope: !4987)
!5009 = !DILocation(line: 589, column: 22, scope: !4987)
!5010 = !DILocation(line: 589, column: 28, scope: !4987)
!5011 = !DILocation(line: 587, column: 11, scope: !4987)
!5012 = !DILocation(line: 587, column: 9, scope: !4987)
!5013 = !DILocation(line: 591, column: 27, scope: !4987)
!5014 = !DILocation(line: 591, column: 9, scope: !4987)
!5015 = !DILocation(line: 592, column: 1, scope: !4987)
!5016 = !DILocation(line: 591, column: 2, scope: !4987)
!5017 = distinct !DISubprogram(name: "efivar_entry_get", scope: !3, file: !3, line: 601, type: !4988, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5018)
!5018 = !{!5019, !5020, !5021, !5022, !5023}
!5019 = !DILocalVariable(name: "entry", arg: 1, scope: !5017, file: !3, line: 601, type: !106)
!5020 = !DILocalVariable(name: "attributes", arg: 2, scope: !5017, file: !3, line: 601, type: !2596)
!5021 = !DILocalVariable(name: "size", arg: 3, scope: !5017, file: !3, line: 602, type: !922)
!5022 = !DILocalVariable(name: "data", arg: 4, scope: !5017, file: !3, line: 602, type: !105)
!5023 = !DILocalVariable(name: "err", scope: !5017, file: !3, line: 604, type: !193)
!5024 = !DILocation(line: 601, column: 43, scope: !5017)
!5025 = !DILocation(line: 601, column: 55, scope: !5017)
!5026 = !DILocation(line: 602, column: 23, scope: !5017)
!5027 = !DILocation(line: 602, column: 35, scope: !5017)
!5028 = !DILocation(line: 604, column: 2, scope: !5017)
!5029 = !DILocation(line: 604, column: 6, scope: !5017)
!5030 = !DILocation(line: 606, column: 8, scope: !5017)
!5031 = !DILocation(line: 606, column: 6, scope: !5017)
!5032 = !DILocation(line: 607, column: 6, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 607, column: 6)
!5034 = !DILocation(line: 607, column: 6, scope: !5017)
!5035 = !DILocation(line: 608, column: 10, scope: !5033)
!5036 = !DILocation(line: 608, column: 3, scope: !5033)
!5037 = !DILocation(line: 609, column: 27, scope: !5017)
!5038 = !DILocation(line: 609, column: 34, scope: !5017)
!5039 = !DILocation(line: 609, column: 46, scope: !5017)
!5040 = !DILocation(line: 609, column: 52, scope: !5017)
!5041 = !DILocation(line: 609, column: 8, scope: !5017)
!5042 = !DILocation(line: 609, column: 6, scope: !5017)
!5043 = !DILocation(line: 610, column: 2, scope: !5017)
!5044 = !DILocation(line: 612, column: 2, scope: !5017)
!5045 = !DILocation(line: 613, column: 1, scope: !5017)
!5046 = distinct !DISubprogram(name: "efivar_entry_set_get_size", scope: !3, file: !3, line: 637, type: !5047, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5049)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!193, !106, !381, !922, !105, !3936}
!5049 = !{!5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059}
!5050 = !DILocalVariable(name: "entry", arg: 1, scope: !5046, file: !3, line: 637, type: !106)
!5051 = !DILocalVariable(name: "attributes", arg: 2, scope: !5046, file: !3, line: 637, type: !381)
!5052 = !DILocalVariable(name: "size", arg: 3, scope: !5046, file: !3, line: 638, type: !922)
!5053 = !DILocalVariable(name: "data", arg: 4, scope: !5046, file: !3, line: 638, type: !105)
!5054 = !DILocalVariable(name: "set", arg: 5, scope: !5046, file: !3, line: 638, type: !3936)
!5055 = !DILocalVariable(name: "name", scope: !5046, file: !3, line: 640, type: !4112)
!5056 = !DILocalVariable(name: "vendor", scope: !5046, file: !3, line: 641, type: !4637)
!5057 = !DILocalVariable(name: "status", scope: !5046, file: !3, line: 642, type: !143)
!5058 = !DILocalVariable(name: "err", scope: !5046, file: !3, line: 643, type: !193)
!5059 = !DILabel(scope: !5046, name: "out", file: !3, line: 689)
!5060 = !DILocation(line: 637, column: 52, scope: !5046)
!5061 = !DILocation(line: 637, column: 63, scope: !5046)
!5062 = !DILocation(line: 638, column: 25, scope: !5046)
!5063 = !DILocation(line: 638, column: 37, scope: !5046)
!5064 = !DILocation(line: 638, column: 49, scope: !5046)
!5065 = !DILocation(line: 640, column: 2, scope: !5046)
!5066 = !DILocation(line: 640, column: 16, scope: !5046)
!5067 = !DILocation(line: 640, column: 23, scope: !5046)
!5068 = !DILocation(line: 640, column: 30, scope: !5046)
!5069 = !DILocation(line: 640, column: 34, scope: !5046)
!5070 = !DILocation(line: 641, column: 2, scope: !5046)
!5071 = !DILocation(line: 641, column: 14, scope: !5046)
!5072 = !DILocation(line: 641, column: 24, scope: !5046)
!5073 = !DILocation(line: 641, column: 31, scope: !5046)
!5074 = !DILocation(line: 641, column: 35, scope: !5046)
!5075 = !DILocation(line: 642, column: 2, scope: !5046)
!5076 = !DILocation(line: 642, column: 15, scope: !5046)
!5077 = !DILocation(line: 643, column: 2, scope: !5046)
!5078 = !DILocation(line: 643, column: 6, scope: !5046)
!5079 = !DILocation(line: 645, column: 3, scope: !5046)
!5080 = !DILocation(line: 645, column: 7, scope: !5046)
!5081 = !DILocation(line: 647, column: 23, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 647, column: 6)
!5083 = !DILocation(line: 647, column: 31, scope: !5082)
!5084 = !DILocation(line: 647, column: 37, scope: !5082)
!5085 = !DILocation(line: 647, column: 44, scope: !5082)
!5086 = !DILocation(line: 647, column: 43, scope: !5082)
!5087 = !DILocation(line: 647, column: 6, scope: !5082)
!5088 = !DILocation(line: 647, column: 50, scope: !5082)
!5089 = !DILocation(line: 647, column: 6, scope: !5046)
!5090 = !DILocation(line: 648, column: 3, scope: !5082)
!5091 = !DILocation(line: 655, column: 8, scope: !5046)
!5092 = !DILocation(line: 655, column: 6, scope: !5046)
!5093 = !DILocation(line: 656, column: 6, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 656, column: 6)
!5095 = !DILocation(line: 656, column: 6, scope: !5046)
!5096 = !DILocation(line: 657, column: 10, scope: !5094)
!5097 = !DILocation(line: 657, column: 3, scope: !5094)
!5098 = !DILocation(line: 659, column: 38, scope: !5046)
!5099 = !DILocation(line: 659, column: 44, scope: !5046)
!5100 = !DILocation(line: 659, column: 52, scope: !5046)
!5101 = !DILocation(line: 659, column: 65, scope: !5046)
!5102 = !DILocation(line: 659, column: 64, scope: !5046)
!5103 = !DILocation(line: 660, column: 10, scope: !5046)
!5104 = !DILocation(line: 659, column: 11, scope: !5046)
!5105 = !DILocation(line: 659, column: 9, scope: !5046)
!5106 = !DILocation(line: 661, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 661, column: 6)
!5108 = !DILocation(line: 661, column: 13, scope: !5107)
!5109 = !DILocation(line: 661, column: 6, scope: !5046)
!5110 = !DILocation(line: 662, column: 27, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 661, column: 29)
!5112 = !DILocation(line: 662, column: 9, scope: !5111)
!5113 = !DILocation(line: 662, column: 7, scope: !5111)
!5114 = !DILocation(line: 663, column: 3, scope: !5111)
!5115 = !DILocation(line: 666, column: 3, scope: !5046)
!5116 = !DILocation(line: 666, column: 7, scope: !5046)
!5117 = !DILocation(line: 674, column: 3, scope: !5046)
!5118 = !DILocation(line: 674, column: 8, scope: !5046)
!5119 = !DILocation(line: 675, column: 31, scope: !5046)
!5120 = !DILocation(line: 675, column: 38, scope: !5046)
!5121 = !DILocation(line: 675, column: 42, scope: !5046)
!5122 = !DILocation(line: 676, column: 10, scope: !5046)
!5123 = !DILocation(line: 676, column: 17, scope: !5046)
!5124 = !DILocation(line: 676, column: 21, scope: !5046)
!5125 = !DILocation(line: 677, column: 15, scope: !5046)
!5126 = !DILocation(line: 675, column: 11, scope: !5046)
!5127 = !DILocation(line: 675, column: 9, scope: !5046)
!5128 = !DILocation(line: 679, column: 6, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 679, column: 6)
!5130 = !DILocation(line: 679, column: 13, scope: !5129)
!5131 = !DILocation(line: 679, column: 6, scope: !5046)
!5132 = !DILocation(line: 680, column: 32, scope: !5129)
!5133 = !DILocation(line: 680, column: 3, scope: !5129)
!5134 = !DILocation(line: 682, column: 3, scope: !5129)
!5135 = !DILocation(line: 684, column: 6, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 684, column: 6)
!5137 = !DILocation(line: 684, column: 13, scope: !5136)
!5138 = !DILocation(line: 684, column: 16, scope: !5136)
!5139 = !DILocation(line: 684, column: 23, scope: !5136)
!5140 = !DILocation(line: 684, column: 6, scope: !5046)
!5141 = !DILocation(line: 685, column: 28, scope: !5136)
!5142 = !DILocation(line: 685, column: 10, scope: !5136)
!5143 = !DILocation(line: 685, column: 3, scope: !5136)
!5144 = !DILocation(line: 687, column: 2, scope: !5046)
!5145 = !DILocation(line: 689, column: 1, scope: !5046)
!5146 = !DILocation(line: 690, column: 2, scope: !5046)
!5147 = !DILocation(line: 691, column: 9, scope: !5046)
!5148 = !DILocation(line: 691, column: 2, scope: !5046)
!5149 = !DILocation(line: 693, column: 1, scope: !5046)
!5150 = distinct !DISubprogram(name: "efivar_entry_iter", scope: !3, file: !3, line: 709, type: !5151, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5156)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!193, !5153, !150, !105}
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!193, !106, !105}
!5156 = !{!5157, !5158, !5159, !5160, !5161, !5162, !5163, !5166, !5168}
!5157 = !DILocalVariable(name: "func", arg: 1, scope: !5150, file: !3, line: 709, type: !5153)
!5158 = !DILocalVariable(name: "head", arg: 2, scope: !5150, file: !3, line: 710, type: !150)
!5159 = !DILocalVariable(name: "data", arg: 3, scope: !5150, file: !3, line: 710, type: !105)
!5160 = !DILocalVariable(name: "entry", scope: !5150, file: !3, line: 712, type: !106)
!5161 = !DILocalVariable(name: "n", scope: !5150, file: !3, line: 712, type: !106)
!5162 = !DILocalVariable(name: "err", scope: !5150, file: !3, line: 713, type: !193)
!5163 = !DILocalVariable(name: "__mptr", scope: !5164, file: !3, line: 719, type: !105)
!5164 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 719, column: 2)
!5165 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 719, column: 2)
!5166 = !DILocalVariable(name: "__mptr", scope: !5167, file: !3, line: 719, type: !105)
!5167 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 719, column: 2)
!5168 = !DILocalVariable(name: "__mptr", scope: !5169, file: !3, line: 719, type: !105)
!5169 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 719, column: 2)
!5170 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 719, column: 2)
!5171 = !DILocation(line: 709, column: 29, scope: !5150)
!5172 = !DILocation(line: 710, column: 27, scope: !5150)
!5173 = !DILocation(line: 710, column: 39, scope: !5150)
!5174 = !DILocation(line: 712, column: 2, scope: !5150)
!5175 = !DILocation(line: 712, column: 23, scope: !5150)
!5176 = !DILocation(line: 712, column: 31, scope: !5150)
!5177 = !DILocation(line: 713, column: 2, scope: !5150)
!5178 = !DILocation(line: 713, column: 6, scope: !5150)
!5179 = !DILocation(line: 715, column: 8, scope: !5150)
!5180 = !DILocation(line: 715, column: 6, scope: !5150)
!5181 = !DILocation(line: 716, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 716, column: 6)
!5183 = !DILocation(line: 716, column: 6, scope: !5150)
!5184 = !DILocation(line: 717, column: 10, scope: !5182)
!5185 = !DILocation(line: 717, column: 3, scope: !5182)
!5186 = !DILocation(line: 719, column: 2, scope: !5164)
!5187 = !DILocation(line: 719, column: 2, scope: !5165)
!5188 = !DILocation(line: 719, column: 2, scope: !5167)
!5189 = !DILocation(line: 719, column: 2, scope: !5170)
!5190 = !DILocation(line: 720, column: 9, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 719, column: 49)
!5192 = !DILocation(line: 720, column: 14, scope: !5191)
!5193 = !DILocation(line: 720, column: 21, scope: !5191)
!5194 = !DILocation(line: 720, column: 7, scope: !5191)
!5195 = !DILocation(line: 721, column: 7, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 721, column: 7)
!5197 = !DILocation(line: 721, column: 7, scope: !5191)
!5198 = !DILocation(line: 722, column: 4, scope: !5196)
!5199 = !DILocation(line: 723, column: 2, scope: !5191)
!5200 = !DILocation(line: 719, column: 2, scope: !5169)
!5201 = distinct !{!5201, !5187, !5202, !4321, !4322}
!5202 = !DILocation(line: 723, column: 2, scope: !5165)
!5203 = !DILocation(line: 724, column: 2, scope: !5150)
!5204 = !DILocation(line: 726, column: 9, scope: !5150)
!5205 = !DILocation(line: 726, column: 2, scope: !5150)
!5206 = !DILocation(line: 727, column: 1, scope: !5150)
!5207 = !DISubprogram(name: "kmalloc_large", scope: !93, file: !93, line: 531, type: !4335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5208 = distinct !DISubprogram(name: "__kmalloc_index", scope: !93, file: !93, line: 444, type: !5209, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5211)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!7, !280, !651}
!5211 = !{!5212, !5213}
!5212 = !DILocalVariable(name: "size", arg: 1, scope: !5208, file: !93, line: 444, type: !280)
!5213 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5208, file: !93, line: 445, type: !651)
!5214 = !DILocation(line: 444, column: 60, scope: !5208)
!5215 = !DILocation(line: 445, column: 16, scope: !5208)
!5216 = !DILocation(line: 447, column: 7, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 447, column: 6)
!5218 = !DILocation(line: 447, column: 6, scope: !5208)
!5219 = !DILocation(line: 448, column: 3, scope: !5217)
!5220 = !DILocation(line: 450, column: 6, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 450, column: 6)
!5222 = !DILocation(line: 450, column: 11, scope: !5221)
!5223 = !DILocation(line: 450, column: 6, scope: !5208)
!5224 = !DILocation(line: 451, column: 3, scope: !5221)
!5225 = !DILocation(line: 453, column: 32, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 453, column: 6)
!5227 = !DILocation(line: 453, column: 37, scope: !5226)
!5228 = !DILocation(line: 453, column: 42, scope: !5226)
!5229 = !DILocation(line: 453, column: 45, scope: !5226)
!5230 = !DILocation(line: 453, column: 50, scope: !5226)
!5231 = !DILocation(line: 453, column: 6, scope: !5208)
!5232 = !DILocation(line: 454, column: 3, scope: !5226)
!5233 = !DILocation(line: 455, column: 32, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 455, column: 6)
!5235 = !DILocation(line: 455, column: 37, scope: !5234)
!5236 = !DILocation(line: 455, column: 43, scope: !5234)
!5237 = !DILocation(line: 455, column: 46, scope: !5234)
!5238 = !DILocation(line: 455, column: 51, scope: !5234)
!5239 = !DILocation(line: 455, column: 6, scope: !5208)
!5240 = !DILocation(line: 456, column: 3, scope: !5234)
!5241 = !DILocation(line: 457, column: 6, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 457, column: 6)
!5243 = !DILocation(line: 457, column: 11, scope: !5242)
!5244 = !DILocation(line: 457, column: 6, scope: !5208)
!5245 = !DILocation(line: 457, column: 26, scope: !5242)
!5246 = !DILocation(line: 458, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 458, column: 6)
!5248 = !DILocation(line: 458, column: 11, scope: !5247)
!5249 = !DILocation(line: 458, column: 6, scope: !5208)
!5250 = !DILocation(line: 458, column: 26, scope: !5247)
!5251 = !DILocation(line: 459, column: 6, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 459, column: 6)
!5253 = !DILocation(line: 459, column: 11, scope: !5252)
!5254 = !DILocation(line: 459, column: 6, scope: !5208)
!5255 = !DILocation(line: 459, column: 26, scope: !5252)
!5256 = !DILocation(line: 460, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 460, column: 6)
!5258 = !DILocation(line: 460, column: 11, scope: !5257)
!5259 = !DILocation(line: 460, column: 6, scope: !5208)
!5260 = !DILocation(line: 460, column: 26, scope: !5257)
!5261 = !DILocation(line: 461, column: 6, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 461, column: 6)
!5263 = !DILocation(line: 461, column: 11, scope: !5262)
!5264 = !DILocation(line: 461, column: 6, scope: !5208)
!5265 = !DILocation(line: 461, column: 26, scope: !5262)
!5266 = !DILocation(line: 462, column: 6, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 462, column: 6)
!5268 = !DILocation(line: 462, column: 11, scope: !5267)
!5269 = !DILocation(line: 462, column: 6, scope: !5208)
!5270 = !DILocation(line: 462, column: 26, scope: !5267)
!5271 = !DILocation(line: 463, column: 6, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 463, column: 6)
!5273 = !DILocation(line: 463, column: 11, scope: !5272)
!5274 = !DILocation(line: 463, column: 6, scope: !5208)
!5275 = !DILocation(line: 463, column: 26, scope: !5272)
!5276 = !DILocation(line: 464, column: 6, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 464, column: 6)
!5278 = !DILocation(line: 464, column: 11, scope: !5277)
!5279 = !DILocation(line: 464, column: 6, scope: !5208)
!5280 = !DILocation(line: 464, column: 26, scope: !5277)
!5281 = !DILocation(line: 465, column: 6, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 465, column: 6)
!5283 = !DILocation(line: 465, column: 11, scope: !5282)
!5284 = !DILocation(line: 465, column: 6, scope: !5208)
!5285 = !DILocation(line: 465, column: 26, scope: !5282)
!5286 = !DILocation(line: 466, column: 6, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 466, column: 6)
!5288 = !DILocation(line: 466, column: 11, scope: !5287)
!5289 = !DILocation(line: 466, column: 6, scope: !5208)
!5290 = !DILocation(line: 466, column: 26, scope: !5287)
!5291 = !DILocation(line: 467, column: 6, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 467, column: 6)
!5293 = !DILocation(line: 467, column: 11, scope: !5292)
!5294 = !DILocation(line: 467, column: 6, scope: !5208)
!5295 = !DILocation(line: 467, column: 26, scope: !5292)
!5296 = !DILocation(line: 468, column: 6, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 468, column: 6)
!5298 = !DILocation(line: 468, column: 11, scope: !5297)
!5299 = !DILocation(line: 468, column: 6, scope: !5208)
!5300 = !DILocation(line: 468, column: 26, scope: !5297)
!5301 = !DILocation(line: 469, column: 6, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 469, column: 6)
!5303 = !DILocation(line: 469, column: 11, scope: !5302)
!5304 = !DILocation(line: 469, column: 6, scope: !5208)
!5305 = !DILocation(line: 469, column: 26, scope: !5302)
!5306 = !DILocation(line: 470, column: 6, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 470, column: 6)
!5308 = !DILocation(line: 470, column: 11, scope: !5307)
!5309 = !DILocation(line: 470, column: 6, scope: !5208)
!5310 = !DILocation(line: 470, column: 26, scope: !5307)
!5311 = !DILocation(line: 471, column: 6, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 471, column: 6)
!5313 = !DILocation(line: 471, column: 11, scope: !5312)
!5314 = !DILocation(line: 471, column: 6, scope: !5208)
!5315 = !DILocation(line: 471, column: 26, scope: !5312)
!5316 = !DILocation(line: 472, column: 6, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 472, column: 6)
!5318 = !DILocation(line: 472, column: 11, scope: !5317)
!5319 = !DILocation(line: 472, column: 6, scope: !5208)
!5320 = !DILocation(line: 472, column: 26, scope: !5317)
!5321 = !DILocation(line: 473, column: 6, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 473, column: 6)
!5323 = !DILocation(line: 473, column: 11, scope: !5322)
!5324 = !DILocation(line: 473, column: 6, scope: !5208)
!5325 = !DILocation(line: 473, column: 26, scope: !5322)
!5326 = !DILocation(line: 474, column: 6, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 474, column: 6)
!5328 = !DILocation(line: 474, column: 11, scope: !5327)
!5329 = !DILocation(line: 474, column: 6, scope: !5208)
!5330 = !DILocation(line: 474, column: 27, scope: !5327)
!5331 = !DILocation(line: 475, column: 6, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 475, column: 6)
!5333 = !DILocation(line: 475, column: 11, scope: !5332)
!5334 = !DILocation(line: 475, column: 6, scope: !5208)
!5335 = !DILocation(line: 475, column: 32, scope: !5332)
!5336 = !DILocation(line: 477, column: 50, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5208, file: !93, line: 477, column: 6)
!5338 = !DILocation(line: 477, column: 6, scope: !5208)
!5339 = !DILocation(line: 478, column: 3, scope: !5337)
!5340 = !DILocation(line: 478, column: 3, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5342, file: !93, line: 478, column: 3)
!5342 = distinct !DILexicalBlock(scope: !5337, file: !93, line: 478, column: 3)
!5343 = !{i32 -2142327441}
!5344 = !DILocation(line: 478, column: 3, scope: !5342)
!5345 = !DILocation(line: 480, column: 3, scope: !5337)
!5346 = !DILocation(line: 480, column: 3, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5337, file: !93, line: 480, column: 3)
!5348 = !DILocation(line: 480, column: 3, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5347, file: !93, line: 480, column: 3)
!5350 = !DILocation(line: 480, column: 3, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5347, file: !93, line: 480, column: 3)
!5352 = !{i64 2152640058, i64 2152640087, i64 2152640133, i64 2152640191, i64 2152640245, i64 2152640299, i64 2152640354, i64 2152640385}
!5353 = !DILocation(line: 483, column: 2, scope: !5208)
!5354 = !DILocation(line: 484, column: 1, scope: !5208)
!5355 = !DISubprogram(name: "kmalloc_trace", scope: !93, file: !93, line: 525, type: !5356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!105, !5358, !103, !280}
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5360, line: 11, flags: DIFlagFwdDecl)
!5360 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5361 = distinct !DISubprogram(name: "kmalloc_type", scope: !93, file: !93, line: 401, type: !5362, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5364)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!92, !103, !137}
!5364 = !{!5365, !5366}
!5365 = !DILocalVariable(name: "flags", arg: 1, scope: !5361, file: !93, line: 401, type: !103)
!5366 = !DILocalVariable(name: "caller", arg: 2, scope: !5361, file: !93, line: 401, type: !137)
!5367 = !DILocation(line: 401, column: 67, scope: !5361)
!5368 = !DILocation(line: 401, column: 88, scope: !5361)
!5369 = !DILocation(line: 407, column: 6, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5361, file: !93, line: 407, column: 6)
!5371 = !DILocation(line: 407, column: 6, scope: !5361)
!5372 = !DILocation(line: 413, column: 3, scope: !5370)
!5373 = !DILocation(line: 423, column: 38, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5361, file: !93, line: 423, column: 6)
!5375 = !DILocation(line: 423, column: 44, scope: !5374)
!5376 = !DILocation(line: 423, column: 6, scope: !5361)
!5377 = !DILocation(line: 424, column: 3, scope: !5374)
!5378 = !DILocation(line: 426, column: 3, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5361, file: !93, line: 425, column: 6)
!5380 = !DILocation(line: 429, column: 1, scope: !5361)
!5381 = !DISubprogram(name: "__kmalloc", scope: !93, file: !93, line: 488, type: !4335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5382 = !DISubprogram(name: "__compiletime_assert_181", scope: !93, file: !93, line: 478, type: !936, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5383 = distinct !DISubprogram(name: "validate_uint16", scope: !3, file: !3, line: 123, type: !4205, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5384)
!5384 = !{!5385, !5386, !5387, !5388}
!5385 = !DILocalVariable(name: "var_name", arg: 1, scope: !5383, file: !3, line: 123, type: !4112)
!5386 = !DILocalVariable(name: "match", arg: 2, scope: !5383, file: !3, line: 123, type: !193)
!5387 = !DILocalVariable(name: "buffer", arg: 3, scope: !5383, file: !3, line: 123, type: !4207)
!5388 = !DILocalVariable(name: "len", arg: 4, scope: !5383, file: !3, line: 124, type: !137)
!5389 = !DILocation(line: 123, column: 31, scope: !5383)
!5390 = !DILocation(line: 123, column: 45, scope: !5383)
!5391 = !DILocation(line: 123, column: 56, scope: !5383)
!5392 = !DILocation(line: 124, column: 17, scope: !5383)
!5393 = !DILocation(line: 127, column: 6, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 127, column: 6)
!5395 = !DILocation(line: 127, column: 10, scope: !5394)
!5396 = !DILocation(line: 127, column: 6, scope: !5383)
!5397 = !DILocation(line: 128, column: 3, scope: !5394)
!5398 = !DILocation(line: 130, column: 2, scope: !5383)
!5399 = !DILocation(line: 131, column: 1, scope: !5383)
!5400 = distinct !DISubprogram(name: "validate_boot_order", scope: !3, file: !3, line: 61, type: !4205, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5401)
!5401 = !{!5402, !5403, !5404, !5405}
!5402 = !DILocalVariable(name: "var_name", arg: 1, scope: !5400, file: !3, line: 61, type: !4112)
!5403 = !DILocalVariable(name: "match", arg: 2, scope: !5400, file: !3, line: 61, type: !193)
!5404 = !DILocalVariable(name: "buffer", arg: 3, scope: !5400, file: !3, line: 61, type: !4207)
!5405 = !DILocalVariable(name: "len", arg: 4, scope: !5400, file: !3, line: 62, type: !137)
!5406 = !DILocation(line: 61, column: 35, scope: !5400)
!5407 = !DILocation(line: 61, column: 49, scope: !5400)
!5408 = !DILocation(line: 61, column: 60, scope: !5400)
!5409 = !DILocation(line: 62, column: 21, scope: !5400)
!5410 = !DILocation(line: 65, column: 7, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 65, column: 6)
!5412 = !DILocation(line: 65, column: 11, scope: !5411)
!5413 = !DILocation(line: 65, column: 16, scope: !5411)
!5414 = !DILocation(line: 65, column: 6, scope: !5400)
!5415 = !DILocation(line: 66, column: 3, scope: !5411)
!5416 = !DILocation(line: 68, column: 2, scope: !5400)
!5417 = !DILocation(line: 69, column: 1, scope: !5400)
!5418 = distinct !DISubprogram(name: "validate_load_option", scope: !3, file: !3, line: 72, type: !4205, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5419)
!5419 = !{!5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427}
!5420 = !DILocalVariable(name: "var_name", arg: 1, scope: !5418, file: !3, line: 72, type: !4112)
!5421 = !DILocalVariable(name: "match", arg: 2, scope: !5418, file: !3, line: 72, type: !193)
!5422 = !DILocalVariable(name: "buffer", arg: 3, scope: !5418, file: !3, line: 72, type: !4207)
!5423 = !DILocalVariable(name: "len", arg: 4, scope: !5418, file: !3, line: 73, type: !137)
!5424 = !DILocalVariable(name: "filepathlength", scope: !5418, file: !3, line: 75, type: !117)
!5425 = !DILocalVariable(name: "i", scope: !5418, file: !3, line: 76, type: !193)
!5426 = !DILocalVariable(name: "desclength", scope: !5418, file: !3, line: 76, type: !193)
!5427 = !DILocalVariable(name: "namelen", scope: !5418, file: !3, line: 76, type: !193)
!5428 = !DILocation(line: 72, column: 36, scope: !5418)
!5429 = !DILocation(line: 72, column: 50, scope: !5418)
!5430 = !DILocation(line: 72, column: 61, scope: !5418)
!5431 = !DILocation(line: 73, column: 22, scope: !5418)
!5432 = !DILocation(line: 75, column: 2, scope: !5418)
!5433 = !DILocation(line: 75, column: 6, scope: !5418)
!5434 = !DILocation(line: 76, column: 2, scope: !5418)
!5435 = !DILocation(line: 76, column: 6, scope: !5418)
!5436 = !DILocation(line: 76, column: 9, scope: !5418)
!5437 = !DILocation(line: 76, column: 25, scope: !5418)
!5438 = !DILocation(line: 78, column: 25, scope: !5418)
!5439 = !DILocation(line: 78, column: 12, scope: !5418)
!5440 = !DILocation(line: 78, column: 10, scope: !5418)
!5441 = !DILocation(line: 81, column: 11, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 81, column: 2)
!5443 = !DILocation(line: 81, column: 9, scope: !5442)
!5444 = !DILocation(line: 81, column: 7, scope: !5442)
!5445 = !DILocation(line: 81, column: 18, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 81, column: 2)
!5447 = !DILocation(line: 81, column: 22, scope: !5446)
!5448 = !DILocation(line: 81, column: 27, scope: !5446)
!5449 = !DILocation(line: 81, column: 20, scope: !5446)
!5450 = !DILocation(line: 81, column: 2, scope: !5442)
!5451 = !DILocation(line: 82, column: 7, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 82, column: 7)
!5453 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 81, column: 36)
!5454 = !DILocation(line: 82, column: 16, scope: !5452)
!5455 = !DILocation(line: 82, column: 19, scope: !5452)
!5456 = !DILocation(line: 82, column: 25, scope: !5452)
!5457 = !DILocation(line: 83, column: 18, scope: !5452)
!5458 = !DILocation(line: 83, column: 27, scope: !5452)
!5459 = !DILocation(line: 83, column: 30, scope: !5452)
!5460 = !DILocation(line: 83, column: 7, scope: !5452)
!5461 = !DILocation(line: 83, column: 38, scope: !5452)
!5462 = !DILocation(line: 82, column: 7, scope: !5453)
!5463 = !DILocation(line: 84, column: 4, scope: !5452)
!5464 = !DILocation(line: 85, column: 2, scope: !5453)
!5465 = !DILocation(line: 81, column: 32, scope: !5446)
!5466 = !DILocation(line: 81, column: 2, scope: !5446)
!5467 = distinct !{!5467, !5450, !5468, !4321, !4322}
!5468 = !DILocation(line: 85, column: 2, scope: !5442)
!5469 = !DILocation(line: 88, column: 6, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 88, column: 6)
!5471 = !DILocation(line: 88, column: 16, scope: !5470)
!5472 = !DILocation(line: 88, column: 22, scope: !5470)
!5473 = !DILocation(line: 88, column: 14, scope: !5470)
!5474 = !DILocation(line: 88, column: 6, scope: !5418)
!5475 = !DILocation(line: 89, column: 3, scope: !5470)
!5476 = !DILocation(line: 92, column: 6, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 92, column: 6)
!5478 = !DILocation(line: 92, column: 10, scope: !5477)
!5479 = !DILocation(line: 92, column: 6, scope: !5418)
!5480 = !DILocation(line: 93, column: 3, scope: !5477)
!5481 = !DILocation(line: 95, column: 19, scope: !5418)
!5482 = !DILocation(line: 95, column: 31, scope: !5418)
!5483 = !DILocation(line: 95, column: 41, scope: !5418)
!5484 = !DILocation(line: 95, column: 29, scope: !5418)
!5485 = !DILocation(line: 95, column: 17, scope: !5418)
!5486 = !DILocation(line: 101, column: 45, scope: !5418)
!5487 = !DILocation(line: 101, column: 52, scope: !5418)
!5488 = !DILocation(line: 101, column: 58, scope: !5418)
!5489 = !DILocation(line: 101, column: 62, scope: !5418)
!5490 = !DILocation(line: 101, column: 15, scope: !5418)
!5491 = !DILocation(line: 101, column: 67, scope: !5418)
!5492 = !DILocation(line: 101, column: 13, scope: !5418)
!5493 = !DILocation(line: 104, column: 7, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 104, column: 6)
!5495 = !DILocation(line: 104, column: 6, scope: !5418)
!5496 = !DILocation(line: 105, column: 3, scope: !5494)
!5497 = !DILocation(line: 112, column: 7, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 112, column: 6)
!5499 = !DILocation(line: 112, column: 20, scope: !5498)
!5500 = !DILocation(line: 112, column: 18, scope: !5498)
!5501 = !DILocation(line: 112, column: 35, scope: !5498)
!5502 = !DILocation(line: 112, column: 6, scope: !5498)
!5503 = !DILocation(line: 112, column: 42, scope: !5498)
!5504 = !DILocation(line: 112, column: 40, scope: !5498)
!5505 = !DILocation(line: 112, column: 6, scope: !5418)
!5506 = !DILocation(line: 113, column: 3, scope: !5498)
!5507 = !DILocation(line: 118, column: 30, scope: !5418)
!5508 = !DILocation(line: 118, column: 40, scope: !5418)
!5509 = !DILocation(line: 118, column: 47, scope: !5418)
!5510 = !DILocation(line: 118, column: 56, scope: !5418)
!5511 = !DILocation(line: 118, column: 54, scope: !5418)
!5512 = !DILocation(line: 118, column: 67, scope: !5418)
!5513 = !DILocation(line: 119, column: 9, scope: !5418)
!5514 = !DILocation(line: 118, column: 9, scope: !5418)
!5515 = !DILocation(line: 118, column: 2, scope: !5418)
!5516 = !DILocation(line: 120, column: 1, scope: !5418)
!5517 = distinct !DISubprogram(name: "validate_device_path", scope: !3, file: !3, line: 28, type: !4205, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5518)
!5518 = !{!5519, !5520, !5521, !5522, !5523, !5524}
!5519 = !DILocalVariable(name: "var_name", arg: 1, scope: !5517, file: !3, line: 28, type: !4112)
!5520 = !DILocalVariable(name: "match", arg: 2, scope: !5517, file: !3, line: 28, type: !193)
!5521 = !DILocalVariable(name: "buffer", arg: 3, scope: !5517, file: !3, line: 28, type: !4207)
!5522 = !DILocalVariable(name: "len", arg: 4, scope: !5517, file: !3, line: 29, type: !137)
!5523 = !DILocalVariable(name: "node", scope: !5517, file: !3, line: 31, type: !4113)
!5524 = !DILocalVariable(name: "offset", scope: !5517, file: !3, line: 32, type: !193)
!5525 = !DILocation(line: 28, column: 36, scope: !5517)
!5526 = !DILocation(line: 28, column: 50, scope: !5517)
!5527 = !DILocation(line: 28, column: 61, scope: !5517)
!5528 = !DILocation(line: 29, column: 22, scope: !5517)
!5529 = !DILocation(line: 31, column: 2, scope: !5517)
!5530 = !DILocation(line: 31, column: 31, scope: !5517)
!5531 = !DILocation(line: 32, column: 2, scope: !5517)
!5532 = !DILocation(line: 32, column: 6, scope: !5517)
!5533 = !DILocation(line: 34, column: 40, scope: !5517)
!5534 = !DILocation(line: 34, column: 7, scope: !5517)
!5535 = !DILocation(line: 36, column: 6, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 36, column: 6)
!5537 = !DILocation(line: 36, column: 10, scope: !5536)
!5538 = !DILocation(line: 36, column: 6, scope: !5517)
!5539 = !DILocation(line: 37, column: 3, scope: !5536)
!5540 = !DILocation(line: 39, column: 2, scope: !5517)
!5541 = !DILocation(line: 39, column: 9, scope: !5517)
!5542 = !DILocation(line: 39, column: 19, scope: !5517)
!5543 = !DILocation(line: 39, column: 23, scope: !5517)
!5544 = !DILocation(line: 39, column: 16, scope: !5517)
!5545 = !DILocation(line: 39, column: 39, scope: !5517)
!5546 = !DILocation(line: 40, column: 9, scope: !5517)
!5547 = !DILocation(line: 40, column: 15, scope: !5517)
!5548 = !DILocation(line: 40, column: 22, scope: !5517)
!5549 = !DILocation(line: 40, column: 39, scope: !5517)
!5550 = !DILocation(line: 41, column: 3, scope: !5517)
!5551 = !DILocation(line: 41, column: 9, scope: !5517)
!5552 = !DILocation(line: 41, column: 19, scope: !5517)
!5553 = !DILocation(line: 41, column: 25, scope: !5517)
!5554 = !DILocation(line: 41, column: 23, scope: !5517)
!5555 = !DILocation(line: 41, column: 16, scope: !5517)
!5556 = !DILocation(line: 0, scope: !5517)
!5557 = !DILocation(line: 42, column: 13, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 41, column: 33)
!5559 = !DILocation(line: 42, column: 19, scope: !5558)
!5560 = !DILocation(line: 42, column: 10, scope: !5558)
!5561 = !DILocation(line: 44, column: 8, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 44, column: 7)
!5563 = !DILocation(line: 44, column: 14, scope: !5562)
!5564 = !DILocation(line: 44, column: 19, scope: !5562)
!5565 = !DILocation(line: 44, column: 39, scope: !5562)
!5566 = !DILocation(line: 45, column: 8, scope: !5562)
!5567 = !DILocation(line: 45, column: 14, scope: !5562)
!5568 = !DILocation(line: 45, column: 19, scope: !5562)
!5569 = !DILocation(line: 45, column: 41, scope: !5562)
!5570 = !DILocation(line: 46, column: 7, scope: !5562)
!5571 = !DILocation(line: 46, column: 13, scope: !5562)
!5572 = !DILocation(line: 46, column: 22, scope: !5562)
!5573 = !DILocation(line: 44, column: 7, scope: !5558)
!5574 = !DILocation(line: 47, column: 4, scope: !5562)
!5575 = !DILocation(line: 49, column: 42, scope: !5558)
!5576 = !DILocation(line: 49, column: 51, scope: !5558)
!5577 = !DILocation(line: 49, column: 49, scope: !5558)
!5578 = !DILocation(line: 49, column: 8, scope: !5558)
!5579 = distinct !{!5579, !5540, !5580, !4321, !4322}
!5580 = !DILocation(line: 50, column: 2, scope: !5517)
!5581 = !DILocation(line: 57, column: 2, scope: !5517)
!5582 = !DILocation(line: 58, column: 1, scope: !5517)
!5583 = distinct !DISubprogram(name: "validate_ascii_string", scope: !3, file: !3, line: 134, type: !4205, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5584)
!5584 = !{!5585, !5586, !5587, !5588, !5589}
!5585 = !DILocalVariable(name: "var_name", arg: 1, scope: !5583, file: !3, line: 134, type: !4112)
!5586 = !DILocalVariable(name: "match", arg: 2, scope: !5583, file: !3, line: 134, type: !193)
!5587 = !DILocalVariable(name: "buffer", arg: 3, scope: !5583, file: !3, line: 134, type: !4207)
!5588 = !DILocalVariable(name: "len", arg: 4, scope: !5583, file: !3, line: 135, type: !137)
!5589 = !DILocalVariable(name: "i", scope: !5583, file: !3, line: 137, type: !193)
!5590 = !DILocation(line: 134, column: 37, scope: !5583)
!5591 = !DILocation(line: 134, column: 51, scope: !5583)
!5592 = !DILocation(line: 134, column: 62, scope: !5583)
!5593 = !DILocation(line: 135, column: 23, scope: !5583)
!5594 = !DILocation(line: 137, column: 2, scope: !5583)
!5595 = !DILocation(line: 137, column: 6, scope: !5583)
!5596 = !DILocation(line: 139, column: 9, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 139, column: 2)
!5598 = !DILocation(line: 139, column: 7, scope: !5597)
!5599 = !DILocation(line: 139, column: 14, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 139, column: 2)
!5601 = !DILocation(line: 139, column: 18, scope: !5600)
!5602 = !DILocation(line: 139, column: 16, scope: !5600)
!5603 = !DILocation(line: 139, column: 2, scope: !5597)
!5604 = !DILocation(line: 140, column: 7, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5606, file: !3, line: 140, column: 7)
!5606 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 139, column: 28)
!5607 = !DILocation(line: 140, column: 14, scope: !5605)
!5608 = !DILocation(line: 140, column: 17, scope: !5605)
!5609 = !DILocation(line: 140, column: 7, scope: !5606)
!5610 = !DILocation(line: 141, column: 4, scope: !5605)
!5611 = !DILocation(line: 143, column: 7, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5606, file: !3, line: 143, column: 7)
!5613 = !DILocation(line: 143, column: 14, scope: !5612)
!5614 = !DILocation(line: 143, column: 17, scope: !5612)
!5615 = !DILocation(line: 143, column: 7, scope: !5606)
!5616 = !DILocation(line: 144, column: 4, scope: !5612)
!5617 = !DILocation(line: 145, column: 2, scope: !5606)
!5618 = !DILocation(line: 139, column: 24, scope: !5600)
!5619 = !DILocation(line: 139, column: 2, scope: !5600)
!5620 = distinct !{!5620, !5603, !5621, !4321, !4322}
!5621 = !DILocation(line: 145, column: 2, scope: !5597)
!5622 = !DILocation(line: 147, column: 2, scope: !5583)
!5623 = !DILocation(line: 148, column: 1, scope: !5583)
!5624 = !DISubprogram(name: "ucs2_strnlen", scope: !4328, file: !4328, line: 10, type: !5625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{!137, !4331, !280}
!5627 = !DISubprogram(name: "hex_to_bin", scope: !5628, file: !5628, line: 29, type: !5629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5628 = !DIFile(filename: "./include/linux/hex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6eb26d4dbd04841a1512df2f8e16e7dd")
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!193, !133}
!5631 = !DISubprogram(name: "ucs2_strsize", scope: !4328, file: !4328, line: 12, type: !5632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!137, !4331, !137}
!5634 = !DISubprogram(name: "memcmp", scope: !5635, file: !5635, line: 196, type: !5636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5635 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5636 = !DISubroutineType(types: !5637)
!5637 = !{!193, !1569, !1569, !281}
!5638 = distinct !DISubprogram(name: "__list_add", scope: !4832, file: !4832, line: 146, type: !5639, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5641)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{null, !150, !150, !150}
!5641 = !{!5642, !5643, !5644}
!5642 = !DILocalVariable(name: "new", arg: 1, scope: !5638, file: !4832, line: 146, type: !150)
!5643 = !DILocalVariable(name: "prev", arg: 2, scope: !5638, file: !4832, line: 147, type: !150)
!5644 = !DILocalVariable(name: "next", arg: 3, scope: !5638, file: !4832, line: 148, type: !150)
!5645 = !DILocation(line: 146, column: 49, scope: !5638)
!5646 = !DILocation(line: 147, column: 28, scope: !5638)
!5647 = !DILocation(line: 148, column: 28, scope: !5638)
!5648 = !DILocation(line: 150, column: 24, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5638, file: !4832, line: 150, column: 6)
!5650 = !DILocation(line: 150, column: 29, scope: !5649)
!5651 = !DILocation(line: 150, column: 35, scope: !5649)
!5652 = !DILocation(line: 150, column: 7, scope: !5649)
!5653 = !DILocation(line: 150, column: 6, scope: !5638)
!5654 = !DILocation(line: 151, column: 3, scope: !5649)
!5655 = !DILocation(line: 153, column: 15, scope: !5638)
!5656 = !DILocation(line: 153, column: 2, scope: !5638)
!5657 = !DILocation(line: 153, column: 8, scope: !5638)
!5658 = !DILocation(line: 153, column: 13, scope: !5638)
!5659 = !DILocation(line: 154, column: 14, scope: !5638)
!5660 = !DILocation(line: 154, column: 2, scope: !5638)
!5661 = !DILocation(line: 154, column: 7, scope: !5638)
!5662 = !DILocation(line: 154, column: 12, scope: !5638)
!5663 = !DILocation(line: 155, column: 14, scope: !5638)
!5664 = !DILocation(line: 155, column: 2, scope: !5638)
!5665 = !DILocation(line: 155, column: 7, scope: !5638)
!5666 = !DILocation(line: 155, column: 12, scope: !5638)
!5667 = !DILocation(line: 156, column: 2, scope: !5638)
!5668 = !DILocation(line: 156, column: 2, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5638, file: !4832, line: 156, column: 2)
!5670 = !DILocation(line: 156, column: 2, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5669, file: !4832, line: 156, column: 2)
!5672 = !DILocation(line: 156, column: 2, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5669, file: !4832, line: 156, column: 2)
!5674 = !DILocation(line: 157, column: 1, scope: !5638)
!5675 = distinct !DISubprogram(name: "__list_add_valid", scope: !4832, file: !4832, line: 128, type: !5676, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5678)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!651, !150, !150, !150}
!5678 = !{!5679, !5680, !5681}
!5679 = !DILocalVariable(name: "new", arg: 1, scope: !5675, file: !4832, line: 128, type: !150)
!5680 = !DILocalVariable(name: "prev", arg: 2, scope: !5675, file: !4832, line: 129, type: !150)
!5681 = !DILocalVariable(name: "next", arg: 3, scope: !5675, file: !4832, line: 130, type: !150)
!5682 = !DILocation(line: 128, column: 55, scope: !5675)
!5683 = !DILocation(line: 129, column: 23, scope: !5675)
!5684 = !DILocation(line: 130, column: 23, scope: !5675)
!5685 = !DILocation(line: 132, column: 2, scope: !5675)
!5686 = distinct !DISubprogram(name: "__list_del_entry", scope: !4832, file: !4832, line: 213, type: !4870, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5687)
!5687 = !{!5688}
!5688 = !DILocalVariable(name: "entry", arg: 1, scope: !5686, file: !4832, line: 213, type: !150)
!5689 = !DILocation(line: 213, column: 55, scope: !5686)
!5690 = !DILocation(line: 215, column: 30, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5686, file: !4832, line: 215, column: 6)
!5692 = !DILocation(line: 215, column: 7, scope: !5691)
!5693 = !DILocation(line: 215, column: 6, scope: !5686)
!5694 = !DILocation(line: 216, column: 3, scope: !5691)
!5695 = !DILocation(line: 218, column: 13, scope: !5686)
!5696 = !DILocation(line: 218, column: 20, scope: !5686)
!5697 = !DILocation(line: 218, column: 26, scope: !5686)
!5698 = !DILocation(line: 218, column: 33, scope: !5686)
!5699 = !DILocation(line: 218, column: 2, scope: !5686)
!5700 = !DILocation(line: 219, column: 1, scope: !5686)
!5701 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4832, file: !4832, line: 134, type: !5702, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5704)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{!651, !150}
!5704 = !{!5705}
!5705 = !DILocalVariable(name: "entry", arg: 1, scope: !5701, file: !4832, line: 134, type: !150)
!5706 = !DILocation(line: 134, column: 61, scope: !5701)
!5707 = !DILocation(line: 136, column: 2, scope: !5701)
!5708 = distinct !DISubprogram(name: "__list_del", scope: !4832, file: !4832, line: 193, type: !4833, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5709)
!5709 = !{!5710, !5711}
!5710 = !DILocalVariable(name: "prev", arg: 1, scope: !5708, file: !4832, line: 193, type: !150)
!5711 = !DILocalVariable(name: "next", arg: 2, scope: !5708, file: !4832, line: 193, type: !150)
!5712 = !DILocation(line: 193, column: 50, scope: !5708)
!5713 = !DILocation(line: 193, column: 75, scope: !5708)
!5714 = !DILocation(line: 195, column: 15, scope: !5708)
!5715 = !DILocation(line: 195, column: 2, scope: !5708)
!5716 = !DILocation(line: 195, column: 8, scope: !5708)
!5717 = !DILocation(line: 195, column: 13, scope: !5708)
!5718 = !DILocation(line: 196, column: 2, scope: !5708)
!5719 = !DILocation(line: 196, column: 2, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5708, file: !4832, line: 196, column: 2)
!5721 = !DILocation(line: 196, column: 2, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5720, file: !4832, line: 196, column: 2)
!5723 = !DILocation(line: 196, column: 2, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5720, file: !4832, line: 196, column: 2)
!5725 = !DILocation(line: 197, column: 1, scope: !5708)
