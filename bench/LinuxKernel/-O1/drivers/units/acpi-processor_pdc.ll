; ModuleID = 'drivers/acpi/processor_pdc.c'
source_filename = "drivers/acpi/processor_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.7, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.7 = type { i64, [88 x i8] }
%struct.acpi_object_list = type { i32, ptr }
%struct.anon.1 = type { i32, i32, ptr }
%struct.anon.6 = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [9 x i8] c"ACPI0007\00", align 1, !dbg !0
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.1 = private unnamed_addr constant [33 x i8] c"\013ACPI: Memory allocation error\0A\00", align 1, !dbg !7
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !12
@boot_option_idle_override = external dso_local global i64, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"_PDC\00", align 1, !dbg !18

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_set_pdc(ptr noundef %handle) #0 align 16 !dbg !148 {
entry:
  %handle.addr = alloca ptr, align 8
  %obj_list = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !152, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_list) #15, !dbg !209
  call void @llvm.dbg.declare(metadata ptr %obj_list, metadata !153, metadata !DIExpression()), !dbg !210
  %call = call zeroext i1 @arch_has_acpi_pdc() #16, !dbg !211
  %conv = zext i1 %call to i32, !dbg !211
  %cmp = icmp eq i32 %conv, 0, !dbg !213
  br i1 %cmp, label %if.then, label %if.end, !dbg !214

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !215

if.end:                                           ; preds = %entry
  %call2 = call ptr @acpi_processor_alloc_pdc() #16, !dbg !216
  store ptr %call2, ptr %obj_list, align 8, !dbg !217
  %0 = load ptr, ptr %obj_list, align 8, !dbg !218
  %tobool = icmp ne ptr %0, null, !dbg !218
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !220

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !221

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !222
  %2 = load ptr, ptr %obj_list, align 8, !dbg !223
  %call5 = call i32 @acpi_processor_eval_pdc(ptr noundef %1, ptr noundef %2) #16, !dbg !224
  %3 = load ptr, ptr %obj_list, align 8, !dbg !225
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %3, i32 0, i32 1, !dbg !226
  %4 = load ptr, ptr %pointer, align 8, !dbg !226
  %pointer6 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 2, !dbg !227
  %5 = load ptr, ptr %pointer6, align 8, !dbg !227
  call void @kfree(ptr noundef %5) #16, !dbg !228
  %6 = load ptr, ptr %obj_list, align 8, !dbg !229
  %pointer7 = getelementptr inbounds %struct.acpi_object_list, ptr %6, i32 0, i32 1, !dbg !230
  %7 = load ptr, ptr %pointer7, align 8, !dbg !230
  call void @kfree(ptr noundef %7) #16, !dbg !231
  %8 = load ptr, ptr %obj_list, align 8, !dbg !232
  call void @kfree(ptr noundef %8) #16, !dbg !233
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !234
  br label %cleanup, !dbg !234

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_list) #15, !dbg !234
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !234

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_has_acpi_pdc() #3 align 16 !dbg !235 {
entry:
  %c = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #15, !dbg !248
  call void @llvm.dbg.declare(metadata ptr %c, metadata !240, metadata !DIExpression()), !dbg !249
  br label %do.body, !dbg !250

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !251
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !241, metadata !DIExpression()), !dbg !251
  store ptr null, ptr %__vpp_verify, align 8, !dbg !251
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !250
  br label %do.cond, !dbg !251

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !251

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !246, metadata !DIExpression()), !dbg !252
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !252
  %1 = load i64, ptr %__ptr, align 8, !dbg !252
  %2 = load i64, ptr @__per_cpu_offset, align 16, !dbg !252
  %add = add i64 %1, %2, !dbg !252
  %3 = inttoptr i64 %add to ptr, !dbg !252
  store ptr %3, ptr %tmp1, align 8, !dbg !252
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !250
  %4 = load ptr, ptr %tmp1, align 8, !dbg !252
  store ptr %4, ptr %tmp, align 8, !dbg !251
  %5 = load ptr, ptr %tmp, align 8, !dbg !250
  store ptr %5, ptr %c, align 8, !dbg !249
  %6 = load ptr, ptr %c, align 8, !dbg !253
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 0, !dbg !254
  %x86_vendor = getelementptr inbounds %struct.anon.6, ptr %7, i32 0, i32 2, !dbg !254
  %8 = load i8, ptr %x86_vendor, align 2, !dbg !254
  %conv = zext i8 %8 to i32, !dbg !253
  %cmp = icmp eq i32 %conv, 0, !dbg !255
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !256

lor.rhs:                                          ; preds = %do.end
  %9 = load ptr, ptr %c, align 8, !dbg !257
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !258
  %x86_vendor3 = getelementptr inbounds %struct.anon.6, ptr %10, i32 0, i32 2, !dbg !258
  %11 = load i8, ptr %x86_vendor3, align 2, !dbg !258
  %conv4 = zext i8 %11 to i32, !dbg !257
  %cmp5 = icmp eq i32 %conv4, 5, !dbg !259
  br label %lor.end, !dbg !256

lor.end:                                          ; preds = %lor.rhs, %do.end
  %12 = phi i1 [ true, %do.end ], [ %cmp5, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #15, !dbg !260
  ret i1 %12, !dbg !261
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_processor_alloc_pdc() #0 align 16 !dbg !262 {
entry:
  %retval = alloca ptr, align 8
  %obj_list = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_list) #15, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %obj_list, metadata !266, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !268, metadata !DIExpression()), !dbg !276
  %call = call noalias ptr @kmalloc(i64 noundef 16, i32 noundef 3264) #17, !dbg !277
  store ptr %call, ptr %obj_list, align 8, !dbg !278
  %0 = load ptr, ptr %obj_list, align 8, !dbg !279
  %tobool = icmp ne ptr %0, null, !dbg !279
  br i1 %tobool, label %if.end, label %if.then, !dbg !281

if.then:                                          ; preds = %entry
  br label %out, !dbg !282

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kmalloc(i64 noundef 24, i32 noundef 3264) #17, !dbg !283
  store ptr %call1, ptr %obj, align 8, !dbg !284
  %1 = load ptr, ptr %obj, align 8, !dbg !285
  %tobool2 = icmp ne ptr %1, null, !dbg !285
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !287

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %obj_list, align 8, !dbg !288
  call void @kfree(ptr noundef %2) #16, !dbg !290
  br label %out, !dbg !291

if.end4:                                          ; preds = %if.end
  %call5 = call noalias ptr @kmalloc(i64 noundef 12, i32 noundef 3264) #17, !dbg !292
  store ptr %call5, ptr %buf, align 8, !dbg !293
  %3 = load ptr, ptr %buf, align 8, !dbg !294
  %tobool6 = icmp ne ptr %3, null, !dbg !294
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !296

if.then7:                                         ; preds = %if.end4
  %4 = load ptr, ptr %obj, align 8, !dbg !297
  call void @kfree(ptr noundef %4) #16, !dbg !299
  %5 = load ptr, ptr %obj_list, align 8, !dbg !300
  call void @kfree(ptr noundef %5) #16, !dbg !301
  br label %out, !dbg !302

if.end8:                                          ; preds = %if.end4
  %6 = load ptr, ptr %buf, align 8, !dbg !303
  call void @acpi_set_pdc_bits(ptr noundef %6) #16, !dbg !304
  %7 = load ptr, ptr %obj, align 8, !dbg !305
  store i32 3, ptr %7, align 8, !dbg !306
  %8 = load ptr, ptr %obj, align 8, !dbg !307
  %length = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 1, !dbg !308
  store i32 12, ptr %length, align 4, !dbg !309
  %9 = load ptr, ptr %buf, align 8, !dbg !310
  %10 = load ptr, ptr %obj, align 8, !dbg !311
  %pointer = getelementptr inbounds %struct.anon.1, ptr %10, i32 0, i32 2, !dbg !312
  store ptr %9, ptr %pointer, align 8, !dbg !313
  %11 = load ptr, ptr %obj_list, align 8, !dbg !314
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %11, i32 0, i32 0, !dbg !315
  store i32 1, ptr %count, align 8, !dbg !316
  %12 = load ptr, ptr %obj, align 8, !dbg !317
  %13 = load ptr, ptr %obj_list, align 8, !dbg !318
  %pointer9 = getelementptr inbounds %struct.acpi_object_list, ptr %13, i32 0, i32 1, !dbg !319
  store ptr %12, ptr %pointer9, align 8, !dbg !320
  %14 = load ptr, ptr %obj_list, align 8, !dbg !321
  store ptr %14, ptr %retval, align 8, !dbg !322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !322

out:                                              ; preds = %if.then7, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !270), !dbg !323
  br label %do.body, !dbg !324

do.body:                                          ; preds = %out
  br label %do.cond, !dbg !326

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !326

do.end:                                           ; preds = %do.cond
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #18, !dbg !324
  store i32 %call10, ptr %tmp, align 4, !dbg !326
  %15 = load i32, ptr %tmp, align 4, !dbg !324
  store ptr null, ptr %retval, align 8, !dbg !328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !328

cleanup:                                          ; preds = %do.end, %if.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !329
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !329
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_list) #15, !dbg !329
  %16 = load ptr, ptr %retval, align 8, !dbg !329
  ret ptr %16, !dbg !329
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_processor_eval_pdc(ptr noundef %handle, ptr noundef %pdc_in) #0 align 16 !dbg !330 {
entry:
  %handle.addr = alloca ptr, align 8
  %pdc_in.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !334, metadata !DIExpression()), !dbg !337
  store ptr %pdc_in, ptr %pdc_in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdc_in.addr, metadata !335, metadata !DIExpression()), !dbg !338
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %status, metadata !336, metadata !DIExpression()), !dbg !340
  store i32 0, ptr %status, align 4, !dbg !340
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !341
  %1 = load ptr, ptr %pdc_in.addr, align 8, !dbg !342
  %call = call i32 @acpi_evaluate_object(ptr noundef %0, ptr noundef @.str.3, ptr noundef %1, ptr noundef null) #16, !dbg !343
  store i32 %call, ptr %status, align 4, !dbg !344
  %2 = load i32, ptr %status, align 4, !dbg !345
  %tobool = icmp ne i32 %2, 0, !dbg !345
  br i1 %tobool, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !348
  %3 = load i32, ptr %tmp, align 4, !dbg !351
  br label %if.end, !dbg !352

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %status, align 4, !dbg !353
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !354
  ret i32 %4, !dbg !355
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !356 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_early_processor_set_pdc() #5 section ".init.text" align 16 !dbg !359 {
entry:
  call void @acpi_proc_quirk_mwait_check() #16, !dbg !362
  %call = call i32 @acpi_walk_namespace(i32 noundef 12, ptr noundef inttoptr (i64 -1 to ptr), i32 noundef -1, ptr noundef @early_init_pdc, ptr noundef null, ptr noundef null, ptr noundef null) #16, !dbg !363
  %call1 = call i32 @acpi_get_devices(ptr noundef @.str, ptr noundef @early_init_pdc, ptr noundef null, ptr noundef null) #16, !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !366 dso_local void @acpi_proc_quirk_mwait_check() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !368 dso_local i32 @acpi_walk_namespace(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @early_init_pdc(ptr noundef %handle, i32 noundef %lvl, ptr noundef %context, ptr noundef %rv) #5 section ".init.text" align 16 !dbg !377 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %lvl.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %rv.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !379, metadata !DIExpression()), !dbg !383
  store i32 %lvl, ptr %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lvl.addr, metadata !380, metadata !DIExpression()), !dbg !384
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !381, metadata !DIExpression()), !dbg !385
  store ptr %rv, ptr %rv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rv.addr, metadata !382, metadata !DIExpression()), !dbg !386
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !387
  %call = call zeroext i1 @processor_physically_present(ptr noundef %0) #16, !dbg !389
  %conv = zext i1 %call to i32, !dbg !389
  %cmp = icmp eq i32 %conv, 0, !dbg !390
  br i1 %cmp, label %if.then, label %if.end, !dbg !391

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !392
  br label %return, !dbg !392

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !393
  call void @acpi_processor_set_pdc(ptr noundef %1) #16, !dbg !394
  store i32 0, ptr %retval, align 4, !dbg !395
  br label %return, !dbg !395

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !396
  ret i32 %2, !dbg !396
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !397 dso_local i32 @acpi_get_devices(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !402 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !410, metadata !DIExpression()), !dbg !415
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !411, metadata !DIExpression()), !dbg !416
  %0 = load i64, ptr %size.addr, align 8, !dbg !417
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !418
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !419

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !420
  %tobool = icmp ne i64 %2, 0, !dbg !420
  br i1 %tobool, label %if.then, label %if.end7, !dbg !421

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %index, metadata !412, metadata !DIExpression()), !dbg !423
  %3 = load i64, ptr %size.addr, align 8, !dbg !424
  %cmp = icmp ugt i64 %3, 8192, !dbg !426
  br i1 %cmp, label %if.then1, label %if.end, !dbg !427

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !428
  %5 = load i32, ptr %flags.addr, align 4, !dbg !429
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !430
  store ptr %call, ptr %retval, align 8, !dbg !431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !431

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !432
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !432
  store i32 %call2, ptr %index, align 4, !dbg !433
  %7 = load i32, ptr %flags.addr, align 4, !dbg !434
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !435
  %9 = ptrtoint ptr %8 to i64, !dbg !435
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !436
  %idxprom = zext i32 %call3 to i64, !dbg !437
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !437
  %10 = load i32, ptr %index, align 4, !dbg !438
  %idxprom4 = zext i32 %10 to i64, !dbg !437
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !437
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !437
  %12 = load i32, ptr %flags.addr, align 4, !dbg !439
  %13 = load i64, ptr %size.addr, align 8, !dbg !440
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !441
  store ptr %call6, ptr %retval, align 8, !dbg !442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !442

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !443
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !444
  %15 = load i32, ptr %flags.addr, align 4, !dbg !445
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !446
  store ptr %call8, ptr %retval, align 8, !dbg !447
  br label %return, !dbg !447

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !448
  ret ptr %16, !dbg !448
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_set_pdc_bits(ptr noundef %buf) #0 align 16 !dbg !449 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !455
  %arrayidx = getelementptr i32, ptr %0, i64 0, !dbg !455
  store i32 1, ptr %arrayidx, align 4, !dbg !456
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !457
  %arrayidx1 = getelementptr i32, ptr %1, i64 1, !dbg !457
  store i32 1, ptr %arrayidx1, align 4, !dbg !458
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !459
  %arrayidx2 = getelementptr i32, ptr %2, i64 2, !dbg !459
  store i32 0, ptr %arrayidx2, align 4, !dbg !460
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !461
  %arrayidx3 = getelementptr i32, ptr %3, i64 2, !dbg !461
  call void @arch_acpi_set_proc_cap_bits(ptr noundef %arrayidx3) #16, !dbg !462
  ret void, !dbg !463
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !464 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !468 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !469 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !473, metadata !DIExpression()), !dbg !475
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !474, metadata !DIExpression()), !dbg !476
  %0 = load i64, ptr %size.addr, align 8, !dbg !477
  %tobool = icmp ne i64 %0, 0, !dbg !477
  br i1 %tobool, label %if.end, label %if.then, !dbg !479

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !480
  br label %return, !dbg !480

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !481
  %cmp = icmp ule i64 %1, 8, !dbg !483
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !484

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !485
  br label %return, !dbg !485

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !486
  %cmp3 = icmp ugt i64 %2, 64, !dbg !488
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !489

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !490
  %cmp4 = icmp ule i64 %3, 96, !dbg !491
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !492

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !493
  br label %return, !dbg !493

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !494
  %cmp7 = icmp ugt i64 %4, 128, !dbg !496
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !497

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !498
  %cmp9 = icmp ule i64 %5, 192, !dbg !499
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !500

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !501
  br label %return, !dbg !501

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !502
  %cmp12 = icmp ule i64 %6, 8, !dbg !504
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !505

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !506
  br label %return, !dbg !506

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !507
  %cmp15 = icmp ule i64 %7, 16, !dbg !509
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !510

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !511
  br label %return, !dbg !511

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !512
  %cmp18 = icmp ule i64 %8, 32, !dbg !514
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !515

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !516
  br label %return, !dbg !516

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !517
  %cmp21 = icmp ule i64 %9, 64, !dbg !519
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !520

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !521
  br label %return, !dbg !521

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !522
  %cmp24 = icmp ule i64 %10, 128, !dbg !524
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !525

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !526
  br label %return, !dbg !526

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !527
  %cmp27 = icmp ule i64 %11, 256, !dbg !529
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !530

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !531
  br label %return, !dbg !531

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !532
  %cmp30 = icmp ule i64 %12, 512, !dbg !534
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !535

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !536
  br label %return, !dbg !536

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !537
  %cmp33 = icmp ule i64 %13, 1024, !dbg !539
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !540

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !541
  br label %return, !dbg !541

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !542
  %cmp36 = icmp ule i64 %14, 2048, !dbg !544
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !545

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !546
  br label %return, !dbg !546

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !547
  %cmp39 = icmp ule i64 %15, 4096, !dbg !549
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !550

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !551
  br label %return, !dbg !551

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !552
  %cmp42 = icmp ule i64 %16, 8192, !dbg !554
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !555

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !556
  br label %return, !dbg !556

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !557
  %cmp45 = icmp ule i64 %17, 16384, !dbg !559
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !560

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !561
  br label %return, !dbg !561

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !562
  %cmp48 = icmp ule i64 %18, 32768, !dbg !564
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !565

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !566
  br label %return, !dbg !566

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !567
  %cmp51 = icmp ule i64 %19, 65536, !dbg !569
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !570

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !571
  br label %return, !dbg !571

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !572
  %cmp54 = icmp ule i64 %20, 131072, !dbg !574
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !575

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !576
  br label %return, !dbg !576

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !577
  %cmp57 = icmp ule i64 %21, 262144, !dbg !579
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !580

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !581
  br label %return, !dbg !581

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !582
  %cmp60 = icmp ule i64 %22, 524288, !dbg !584
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !585

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !586
  br label %return, !dbg !586

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !587
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !589
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !590

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !591
  br label %return, !dbg !591

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !592
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !594
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !595

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !596
  br label %return, !dbg !596

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !597, !range !599, !noundef !600
  %tobool69 = trunc i8 %25 to i1, !dbg !597
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !601

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !602

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !603, !srcloc !606
  unreachable, !dbg !603

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !607

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !608

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !609

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !611

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !609

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !613, !srcloc !615
  br label %do.end75, !dbg !613

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !609

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !616
  br label %return, !dbg !616

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !617
  ret i32 %26, !dbg !617
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !618 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !624 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !628, metadata !DIExpression()), !dbg !630
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !629, metadata !DIExpression()), !dbg !631
  %0 = load i32, ptr %flags.addr, align 4, !dbg !632
  %and = and i32 %0, 17, !dbg !632
  %cmp = icmp eq i32 %and, 0, !dbg !632
  %lnot = xor i1 %cmp, true, !dbg !632
  %lnot1 = xor i1 %lnot, true, !dbg !632
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !632
  %conv = sext i32 %lnot.ext to i64, !dbg !632
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !632
  %tobool = icmp ne i64 %expval, 0, !dbg !632
  br i1 %tobool, label %if.then, label %if.end, !dbg !634

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !635
  br label %return, !dbg !635

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !636
  %and2 = and i32 %1, 1, !dbg !638
  %tobool3 = icmp ne i32 %and2, 0, !dbg !638
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !639

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !640
  br label %return, !dbg !640

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !641
  br label %return, !dbg !641

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !643
  ret i32 %2, !dbg !643
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !644 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !645 dso_local void @__compiletime_assert_117() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_acpi_set_proc_cap_bits(ptr noundef %cap) #3 align 16 !dbg !646 {
entry:
  %cap.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %cap, ptr %cap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !648, metadata !DIExpression()), !dbg !655
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #15, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %c, metadata !649, metadata !DIExpression()), !dbg !657
  br label %do.body, !dbg !658

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !659
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !650, metadata !DIExpression()), !dbg !659
  store ptr null, ptr %__vpp_verify, align 8, !dbg !659
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !659
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !658
  br label %do.cond, !dbg !659

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !659

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !660
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !653, metadata !DIExpression()), !dbg !660
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !660
  %1 = load i64, ptr %__ptr, align 8, !dbg !660
  %2 = load i64, ptr @__per_cpu_offset, align 16, !dbg !660
  %add = add i64 %1, %2, !dbg !660
  %3 = inttoptr i64 %add to ptr, !dbg !660
  store ptr %3, ptr %tmp1, align 8, !dbg !660
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !658
  %4 = load ptr, ptr %tmp1, align 8, !dbg !660
  store ptr %4, ptr %tmp, align 8, !dbg !659
  %5 = load ptr, ptr %tmp, align 8, !dbg !658
  store ptr %5, ptr %c, align 8, !dbg !657
  %6 = load ptr, ptr %cap.addr, align 8, !dbg !661
  %7 = load i32, ptr %6, align 4, !dbg !662
  %or = or i32 %7, 794, !dbg !662
  store i32 %or, ptr %6, align 4, !dbg !662
  %8 = load ptr, ptr %cap.addr, align 8, !dbg !663
  %9 = load i32, ptr %8, align 4, !dbg !664
  %or2 = or i32 %9, 128, !dbg !664
  store i32 %or2, ptr %8, align 4, !dbg !664
  br i1 false, label %cond.true, label %cond.false, !dbg !665

cond.true:                                        ; preds = %do.end
  br i1 true, label %if.then, label %if.end, !dbg !666

cond.false:                                       ; preds = %do.end
  %10 = load ptr, ptr %c, align 8, !dbg !666
  %11 = getelementptr inbounds %struct.cpuinfo_x86, ptr %10, i32 0, i32 10, !dbg !666
  %arraydecay = getelementptr inbounds [24 x i32], ptr %11, i64 0, i64 0, !dbg !666
  %call = call zeroext i1 @arch_test_bit(i64 noundef 135, ptr noundef %arraydecay) #16, !dbg !666
  br i1 %call, label %if.then, label %if.end, !dbg !665

if.then:                                          ; preds = %cond.false, %cond.true
  %12 = load ptr, ptr %cap.addr, align 8, !dbg !668
  %13 = load i32, ptr %12, align 4, !dbg !669
  %or3 = or i32 %13, 2091, !dbg !669
  store i32 %or3, ptr %12, align 4, !dbg !669
  br label %if.end, !dbg !670

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  br i1 false, label %cond.true4, label %cond.false5, !dbg !671

cond.true4:                                       ; preds = %if.end
  br i1 true, label %if.then8, label %if.end10, !dbg !672

cond.false5:                                      ; preds = %if.end
  %14 = load ptr, ptr %c, align 8, !dbg !672
  %15 = getelementptr inbounds %struct.cpuinfo_x86, ptr %14, i32 0, i32 10, !dbg !672
  %arraydecay6 = getelementptr inbounds [24 x i32], ptr %15, i64 0, i64 0, !dbg !672
  %call7 = call zeroext i1 @arch_test_bit(i64 noundef 22, ptr noundef %arraydecay6) #16, !dbg !672
  br i1 %call7, label %if.then8, label %if.end10, !dbg !671

if.then8:                                         ; preds = %cond.false5, %cond.true4
  %16 = load ptr, ptr %cap.addr, align 8, !dbg !674
  %17 = load i32, ptr %16, align 4, !dbg !675
  %or9 = or i32 %17, 4, !dbg !675
  store i32 %or9, ptr %16, align 4, !dbg !675
  br label %if.end10, !dbg !676

if.end10:                                         ; preds = %if.then8, %cond.false5, %cond.true4
  br i1 false, label %cond.true11, label %cond.false12, !dbg !677

cond.true11:                                      ; preds = %if.end10
  br i1 true, label %if.then15, label %if.end17, !dbg !678

cond.false12:                                     ; preds = %if.end10
  %18 = load ptr, ptr %c, align 8, !dbg !678
  %19 = getelementptr inbounds %struct.cpuinfo_x86, ptr %18, i32 0, i32 10, !dbg !678
  %arraydecay13 = getelementptr inbounds [24 x i32], ptr %19, i64 0, i64 0, !dbg !678
  %call14 = call zeroext i1 @arch_test_bit(i64 noundef 455, ptr noundef %arraydecay13) #16, !dbg !678
  br i1 %call14, label %if.then15, label %if.end17, !dbg !677

if.then15:                                        ; preds = %cond.false12, %cond.true11
  %20 = load ptr, ptr %cap.addr, align 8, !dbg !680
  %21 = load i32, ptr %20, align 4, !dbg !681
  %or16 = or i32 %21, 4096, !dbg !681
  store i32 %or16, ptr %20, align 4, !dbg !681
  br label %if.end17, !dbg !682

if.end17:                                         ; preds = %if.then15, %cond.false12, %cond.true11
  br i1 false, label %cond.true18, label %cond.false19, !dbg !683

cond.true18:                                      ; preds = %if.end17
  br i1 true, label %lor.lhs.false, label %if.then22, !dbg !685

cond.false19:                                     ; preds = %if.end17
  %22 = load ptr, ptr %c, align 8, !dbg !685
  %23 = getelementptr inbounds %struct.cpuinfo_x86, ptr %22, i32 0, i32 10, !dbg !685
  %arraydecay20 = getelementptr inbounds [24 x i32], ptr %23, i64 0, i64 0, !dbg !685
  %call21 = call zeroext i1 @arch_test_bit(i64 noundef 131, ptr noundef %arraydecay20) #16, !dbg !685
  br i1 %call21, label %lor.lhs.false, label %if.then22, !dbg !683

lor.lhs.false:                                    ; preds = %cond.false19, %cond.true18
  %24 = load i64, ptr @boot_option_idle_override, align 8, !dbg !686
  %cmp = icmp eq i64 %24, 2, !dbg !687
  br i1 %cmp, label %if.then22, label %if.end23, !dbg !688

if.then22:                                        ; preds = %lor.lhs.false, %cond.false19, %cond.true18
  %25 = load ptr, ptr %cap.addr, align 8, !dbg !689
  %26 = load i32, ptr %25, align 4, !dbg !690
  %and = and i32 %26, -769, !dbg !690
  store i32 %and, ptr %25, align 4, !dbg !690
  br label %if.end23, !dbg !691

if.end23:                                         ; preds = %if.then22, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #15, !dbg !692
  ret void, !dbg !692
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !693 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !701, metadata !DIExpression()), !dbg !703
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !702, metadata !DIExpression()), !dbg !704
  %0 = load i64, ptr %nr.addr, align 8, !dbg !705
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !706
  br i1 %1, label %cond.true, label %cond.false, !dbg !706

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !707
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !708
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !709
  %conv = zext i1 %call to i32, !dbg !709
  br label %cond.end, !dbg !706

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !710
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !711
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !712
  %conv2 = zext i1 %call1 to i32, !dbg !712
  br label %cond.end, !dbg !706

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !706
  %tobool = icmp ne i32 %cond, 0, !dbg !706
  ret i1 %tobool, !dbg !713
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !714 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !719, metadata !DIExpression()), !dbg !721
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !720, metadata !DIExpression()), !dbg !722
  %0 = load i64, ptr %nr.addr, align 8, !dbg !723
  %and = and i64 %0, 63, !dbg !724
  %shl = shl i64 1, %and, !dbg !725
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !726
  %2 = load i64, ptr %nr.addr, align 8, !dbg !727
  %shr = ashr i64 %2, 6, !dbg !728
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !726
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !726
  %and1 = and i64 %shl, %3, !dbg !729
  %cmp = icmp ne i64 %and1, 0, !dbg !730
  ret i1 %cmp, !dbg !731
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !732 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !734, metadata !DIExpression()), !dbg !737
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !735, metadata !DIExpression()), !dbg !738
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !739
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !736, metadata !DIExpression()), !dbg !740
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !741
  %1 = load i64, ptr %nr.addr, align 8, !dbg !742
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !743, !srcloc !744
  %3 = icmp ult i8 %2, 2, !dbg !743
  call void @llvm.assume(i1 %3), !dbg !743
  store i8 %2, ptr %oldbit, align 1, !dbg !743
  %4 = load i8, ptr %oldbit, align 1, !dbg !745, !range !599, !noundef !600
  %tobool = trunc i8 %4 to i1, !dbg !745
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !746
  ret i1 %tobool, !dbg !747
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !748 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !757 dso_local zeroext i1 @processor_physically_present(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/processor_pdc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e13b771c6fab6b9ed068c85fd775f0aa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !14, line: 480, type: !15, isLocal: true, isDefinition: true)
!14 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 21)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 5)
!23 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.processor_pdc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22processor_pdc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/processor_pdc.ll drivers/acpi/processor_pdc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !24, retainedTypes: !47, globals: !138, splitDebugInlining: false, nameTableKind: None)
!24 = !{!25, !31, !40}
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 10, baseType: !27, size: 32, elements: !28)
!26 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "false", value: 0)
!30 = !DIEnumerator(name: "true", value: 1)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !14, line: 364, baseType: !27, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !39}
!33 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!34 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!35 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!36 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!37 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!38 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!39 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "idle_boot_override", file: !41, line: 563, baseType: !27, size: 32, elements: !42)
!41 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "IDLE_NO_OVERRIDE", value: 0)
!44 = !DIEnumerator(name: "IDLE_HALT", value: 1)
!45 = !DIEnumerator(name: "IDLE_NOMWAIT", value: 2)
!46 = !DIEnumerator(name: "IDLE_POLL", value: 3)
!47 = !{!48, !50, !51, !54, !55, !60, !62, !53, !134, !135, !80, !136, !137}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !49, line: 424, baseType: !50)
!49 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !52, line: 42, baseType: !53)
!52 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !49, line: 127, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !56, line: 23, baseType: !57)
!56 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !58, line: 31, baseType: !59)
!58 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!59 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !56, line: 21, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !58, line: 27, baseType: !27)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !41, line: 83, size: 2368, elements: !64)
!64 = !{!65, !78, !79, !81, !83, !84, !85, !86, !87, !88, !89, !97, !101, !105, !106, !107, !108, !109, !110, !111, !112, !113, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !130, !131, !133}
!65 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !41, line: 84, baseType: !66, size: 32)
!66 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !41, line: 84, size: 32, elements: !67)
!67 = !{!68, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !66, file: !41, line: 90, baseType: !69, size: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !66, file: !41, line: 90, size: 32, elements: !70)
!70 = !{!71, !74, !75, !76}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !69, file: !41, line: 91, baseType: !72, size: 8)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !58, line: 21, baseType: !73)
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !69, file: !41, line: 93, baseType: !72, size: 8, offset: 8)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !69, file: !41, line: 95, baseType: !72, size: 8, offset: 16)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !69, file: !41, line: 96, baseType: !72, size: 8, offset: 24)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !66, file: !41, line: 99, baseType: !61, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !63, file: !41, line: 101, baseType: !72, size: 8, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !63, file: !41, line: 104, baseType: !80, size: 32, offset: 64)
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !63, file: !41, line: 107, baseType: !82, size: 160, offset: 96)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !21)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !63, file: !41, line: 109, baseType: !72, size: 8, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !63, file: !41, line: 110, baseType: !72, size: 8, offset: 264)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !63, file: !41, line: 112, baseType: !72, size: 8, offset: 272)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !63, file: !41, line: 113, baseType: !72, size: 8, offset: 280)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !63, file: !41, line: 115, baseType: !61, size: 32, offset: 288)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !63, file: !41, line: 117, baseType: !80, size: 32, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !41, line: 123, baseType: !90, size: 768, offset: 384)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !41, line: 123, size: 768, elements: !91)
!91 = !{!92, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !90, file: !41, line: 124, baseType: !93, size: 768)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 768, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 24)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !90, file: !41, line: 125, baseType: !53, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !63, file: !41, line: 127, baseType: !98, size: 128, offset: 1152)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !63, file: !41, line: 128, baseType: !102, size: 512, offset: 1280)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !63, file: !41, line: 130, baseType: !27, size: 32, offset: 1792)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !63, file: !41, line: 131, baseType: !80, size: 32, offset: 1824)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !63, file: !41, line: 133, baseType: !80, size: 32, offset: 1856)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !63, file: !41, line: 134, baseType: !80, size: 32, offset: 1888)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !63, file: !41, line: 135, baseType: !80, size: 32, offset: 1920)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !63, file: !41, line: 136, baseType: !80, size: 32, offset: 1952)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !63, file: !41, line: 137, baseType: !53, size: 64, offset: 1984)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !63, file: !41, line: 139, baseType: !55, size: 64, offset: 2048)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !63, file: !41, line: 141, baseType: !114, size: 16, offset: 2112)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !56, line: 19, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !58, line: 24, baseType: !116)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !63, file: !41, line: 142, baseType: !114, size: 16, offset: 2128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !63, file: !41, line: 143, baseType: !114, size: 16, offset: 2144)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !63, file: !41, line: 144, baseType: !114, size: 16, offset: 2160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !63, file: !41, line: 146, baseType: !114, size: 16, offset: 2176)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !63, file: !41, line: 148, baseType: !114, size: 16, offset: 2192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !63, file: !41, line: 150, baseType: !114, size: 16, offset: 2208)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !63, file: !41, line: 152, baseType: !114, size: 16, offset: 2224)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !63, file: !41, line: 153, baseType: !114, size: 16, offset: 2240)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !63, file: !41, line: 154, baseType: !114, size: 16, offset: 2256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !63, file: !41, line: 156, baseType: !114, size: 16, offset: 2272)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !63, file: !41, line: 158, baseType: !128, size: 8, offset: 2288)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !52, line: 35, baseType: !129)
!129 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !63, file: !41, line: 159, baseType: !60, size: 32, offset: 2304)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !63, file: !41, line: 161, baseType: !132, size: 8, offset: 2336)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !56, line: 17, baseType: !72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !63, file: !41, line: 162, baseType: !27, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !52, line: 154, baseType: !27)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !49, line: 421, baseType: !60)
!138 = !{!0, !7, !12, !18}
!139 = !{i32 7, !"Dwarf Version", i32 5}
!140 = !{i32 2, !"Debug Info Version", i32 3}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 8, !"cf-protection-branch", i32 1}
!143 = !{i32 4, !"function_return_thunk_extern", i32 1}
!144 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!145 = !{i32 1, !"Code Model", i32 2}
!146 = !{i32 1, !"override-stack-alignment", i32 8}
!147 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!148 = distinct !DISubprogram(name: "acpi_processor_set_pdc", scope: !2, file: !2, line: 84, type: !149, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !48}
!151 = !{!152, !153}
!152 = !DILocalVariable(name: "handle", arg: 1, scope: !148, file: !2, line: 84, type: !48)
!153 = !DILocalVariable(name: "obj_list", scope: !148, file: !2, line: 86, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !49, line: 956, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !155, file: !49, line: 957, baseType: !60, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !155, file: !49, line: 958, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !49, line: 908, size: 192, elements: !161)
!161 = !{!162, !164, !169, !176, !182, !188, !194, !202}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !49, line: 909, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !49, line: 644, baseType: !60)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !160, file: !49, line: 913, baseType: !165, size: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !49, line: 910, size: 128, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !49, line: 911, baseType: !163, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !165, file: !49, line: 912, baseType: !55, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !160, file: !49, line: 919, baseType: !170, size: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !49, line: 915, size: 128, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !49, line: 916, baseType: !163, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !170, file: !49, line: 917, baseType: !60, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !170, file: !49, line: 918, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !160, file: !49, line: 925, baseType: !177, size: 128)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !49, line: 921, size: 128, elements: !178)
!178 = !{!179, !180, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !49, line: 922, baseType: !163, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !177, file: !49, line: 923, baseType: !60, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !177, file: !49, line: 924, baseType: !135, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !160, file: !49, line: 931, baseType: !183, size: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !49, line: 927, size: 128, elements: !184)
!184 = !{!185, !186, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !183, file: !49, line: 928, baseType: !163, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !183, file: !49, line: 929, baseType: !60, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !183, file: !49, line: 930, baseType: !159, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !160, file: !49, line: 937, baseType: !189, size: 128)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !49, line: 933, size: 128, elements: !190)
!190 = !{!191, !192, !193}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !49, line: 934, baseType: !163, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !189, file: !49, line: 935, baseType: !163, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !189, file: !49, line: 936, baseType: !48, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !160, file: !49, line: 944, baseType: !195, size: 192)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !49, line: 939, size: 192, elements: !196)
!196 = !{!197, !198, !199, !201}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !49, line: 940, baseType: !163, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !195, file: !49, line: 941, baseType: !60, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !195, file: !49, line: 942, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !49, line: 128, baseType: !55)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !195, file: !49, line: 943, baseType: !60, size: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !160, file: !49, line: 950, baseType: !203, size: 96)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !49, line: 946, size: 96, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !49, line: 947, baseType: !163, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !203, file: !49, line: 948, baseType: !60, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !203, file: !49, line: 949, baseType: !60, size: 32, offset: 64)
!208 = !DILocation(line: 84, column: 41, scope: !148)
!209 = !DILocation(line: 86, column: 2, scope: !148)
!210 = !DILocation(line: 86, column: 27, scope: !148)
!211 = !DILocation(line: 88, column: 6, scope: !212)
!212 = distinct !DILexicalBlock(scope: !148, file: !2, line: 88, column: 6)
!213 = !DILocation(line: 88, column: 26, scope: !212)
!214 = !DILocation(line: 88, column: 6, scope: !148)
!215 = !DILocation(line: 89, column: 3, scope: !212)
!216 = !DILocation(line: 91, column: 13, scope: !148)
!217 = !DILocation(line: 91, column: 11, scope: !148)
!218 = !DILocation(line: 92, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !148, file: !2, line: 92, column: 6)
!220 = !DILocation(line: 92, column: 6, scope: !148)
!221 = !DILocation(line: 93, column: 3, scope: !219)
!222 = !DILocation(line: 95, column: 26, scope: !148)
!223 = !DILocation(line: 95, column: 34, scope: !148)
!224 = !DILocation(line: 95, column: 2, scope: !148)
!225 = !DILocation(line: 97, column: 8, scope: !148)
!226 = !DILocation(line: 97, column: 18, scope: !148)
!227 = !DILocation(line: 97, column: 34, scope: !148)
!228 = !DILocation(line: 97, column: 2, scope: !148)
!229 = !DILocation(line: 98, column: 8, scope: !148)
!230 = !DILocation(line: 98, column: 18, scope: !148)
!231 = !DILocation(line: 98, column: 2, scope: !148)
!232 = !DILocation(line: 99, column: 8, scope: !148)
!233 = !DILocation(line: 99, column: 2, scope: !148)
!234 = !DILocation(line: 100, column: 1, scope: !148)
!235 = distinct !DISubprogram(name: "arch_has_acpi_pdc", scope: !236, file: !236, line: 101, type: !237, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !239)
!236 = !DIFile(filename: "./arch/x86/include/asm/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "db0e71f1d0512784f5cad3b4cf7bba38")
!237 = !DISubroutineType(types: !238)
!238 = !{!128}
!239 = !{!240, !241, !246}
!240 = !DILocalVariable(name: "c", scope: !235, file: !236, line: 103, type: !62)
!241 = !DILocalVariable(name: "__vpp_verify", scope: !242, file: !236, line: 103, type: !244)
!242 = distinct !DILexicalBlock(scope: !243, file: !236, line: 103, column: 27)
!243 = distinct !DILexicalBlock(scope: !235, file: !236, line: 103, column: 27)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!246 = !DILocalVariable(name: "__ptr", scope: !247, file: !236, line: 103, type: !53)
!247 = distinct !DILexicalBlock(scope: !243, file: !236, line: 103, column: 27)
!248 = !DILocation(line: 103, column: 2, scope: !235)
!249 = !DILocation(line: 103, column: 22, scope: !235)
!250 = !DILocation(line: 103, column: 27, scope: !243)
!251 = !DILocation(line: 103, column: 27, scope: !242)
!252 = !DILocation(line: 103, column: 27, scope: !247)
!253 = !DILocation(line: 104, column: 10, scope: !235)
!254 = !DILocation(line: 104, column: 13, scope: !235)
!255 = !DILocation(line: 104, column: 24, scope: !235)
!256 = !DILocation(line: 104, column: 44, scope: !235)
!257 = !DILocation(line: 105, column: 3, scope: !235)
!258 = !DILocation(line: 105, column: 6, scope: !235)
!259 = !DILocation(line: 105, column: 17, scope: !235)
!260 = !DILocation(line: 106, column: 1, scope: !235)
!261 = !DILocation(line: 104, column: 2, scope: !235)
!262 = distinct !DISubprogram(name: "acpi_processor_alloc_pdc", scope: !2, file: !2, line: 28, type: !263, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!154}
!265 = !{!266, !267, !268, !270}
!266 = !DILocalVariable(name: "obj_list", scope: !262, file: !2, line: 30, type: !154)
!267 = !DILocalVariable(name: "obj", scope: !262, file: !2, line: 31, type: !159)
!268 = !DILocalVariable(name: "buf", scope: !262, file: !2, line: 32, type: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!270 = !DILabel(scope: !262, name: "out", file: !2, line: 61)
!271 = !DILocation(line: 30, column: 2, scope: !262)
!272 = !DILocation(line: 30, column: 27, scope: !262)
!273 = !DILocation(line: 31, column: 2, scope: !262)
!274 = !DILocation(line: 31, column: 21, scope: !262)
!275 = !DILocation(line: 32, column: 2, scope: !262)
!276 = !DILocation(line: 32, column: 7, scope: !262)
!277 = !DILocation(line: 35, column: 13, scope: !262)
!278 = !DILocation(line: 35, column: 11, scope: !262)
!279 = !DILocation(line: 36, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !262, file: !2, line: 36, column: 6)
!281 = !DILocation(line: 36, column: 6, scope: !262)
!282 = !DILocation(line: 37, column: 3, scope: !280)
!283 = !DILocation(line: 39, column: 8, scope: !262)
!284 = !DILocation(line: 39, column: 6, scope: !262)
!285 = !DILocation(line: 40, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !262, file: !2, line: 40, column: 6)
!287 = !DILocation(line: 40, column: 6, scope: !262)
!288 = !DILocation(line: 41, column: 9, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !2, line: 40, column: 12)
!290 = !DILocation(line: 41, column: 3, scope: !289)
!291 = !DILocation(line: 42, column: 3, scope: !289)
!292 = !DILocation(line: 45, column: 8, scope: !262)
!293 = !DILocation(line: 45, column: 6, scope: !262)
!294 = !DILocation(line: 46, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !262, file: !2, line: 46, column: 6)
!296 = !DILocation(line: 46, column: 6, scope: !262)
!297 = !DILocation(line: 47, column: 9, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !2, line: 46, column: 12)
!299 = !DILocation(line: 47, column: 3, scope: !298)
!300 = !DILocation(line: 48, column: 9, scope: !298)
!301 = !DILocation(line: 48, column: 3, scope: !298)
!302 = !DILocation(line: 49, column: 3, scope: !298)
!303 = !DILocation(line: 52, column: 20, scope: !262)
!304 = !DILocation(line: 52, column: 2, scope: !262)
!305 = !DILocation(line: 54, column: 2, scope: !262)
!306 = !DILocation(line: 54, column: 12, scope: !262)
!307 = !DILocation(line: 55, column: 2, scope: !262)
!308 = !DILocation(line: 55, column: 14, scope: !262)
!309 = !DILocation(line: 55, column: 21, scope: !262)
!310 = !DILocation(line: 56, column: 31, scope: !262)
!311 = !DILocation(line: 56, column: 2, scope: !262)
!312 = !DILocation(line: 56, column: 14, scope: !262)
!313 = !DILocation(line: 56, column: 22, scope: !262)
!314 = !DILocation(line: 57, column: 2, scope: !262)
!315 = !DILocation(line: 57, column: 12, scope: !262)
!316 = !DILocation(line: 57, column: 18, scope: !262)
!317 = !DILocation(line: 58, column: 22, scope: !262)
!318 = !DILocation(line: 58, column: 2, scope: !262)
!319 = !DILocation(line: 58, column: 12, scope: !262)
!320 = !DILocation(line: 58, column: 20, scope: !262)
!321 = !DILocation(line: 60, column: 9, scope: !262)
!322 = !DILocation(line: 60, column: 2, scope: !262)
!323 = !DILocation(line: 61, column: 1, scope: !262)
!324 = !DILocation(line: 62, column: 2, scope: !325)
!325 = distinct !DILexicalBlock(scope: !262, file: !2, line: 62, column: 2)
!326 = !DILocation(line: 62, column: 2, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !2, line: 62, column: 2)
!328 = !DILocation(line: 63, column: 2, scope: !262)
!329 = !DILocation(line: 64, column: 1, scope: !262)
!330 = distinct !DISubprogram(name: "acpi_processor_eval_pdc", scope: !2, file: !2, line: 71, type: !331, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!137, !48, !154}
!333 = !{!334, !335, !336}
!334 = !DILocalVariable(name: "handle", arg: 1, scope: !330, file: !2, line: 71, type: !48)
!335 = !DILocalVariable(name: "pdc_in", arg: 2, scope: !330, file: !2, line: 71, type: !154)
!336 = !DILocalVariable(name: "status", scope: !330, file: !2, line: 73, type: !137)
!337 = !DILocation(line: 71, column: 37, scope: !330)
!338 = !DILocation(line: 71, column: 70, scope: !330)
!339 = !DILocation(line: 73, column: 2, scope: !330)
!340 = !DILocation(line: 73, column: 14, scope: !330)
!341 = !DILocation(line: 75, column: 32, scope: !330)
!342 = !DILocation(line: 75, column: 48, scope: !330)
!343 = !DILocation(line: 75, column: 11, scope: !330)
!344 = !DILocation(line: 75, column: 9, scope: !330)
!345 = !DILocation(line: 77, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !330, file: !2, line: 77, column: 6)
!347 = !DILocation(line: 77, column: 6, scope: !330)
!348 = !DILocation(line: 78, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 78, column: 3)
!350 = distinct !DILexicalBlock(scope: !346, file: !2, line: 78, column: 3)
!351 = !DILocation(line: 78, column: 3, scope: !350)
!352 = !DILocation(line: 78, column: 3, scope: !346)
!353 = !DILocation(line: 81, column: 9, scope: !330)
!354 = !DILocation(line: 82, column: 1, scope: !330)
!355 = !DILocation(line: 81, column: 2, scope: !330)
!356 = !DISubprogram(name: "kfree", scope: !14, file: !14, line: 227, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !244}
!359 = distinct !DISubprogram(name: "acpi_early_processor_set_pdc", scope: !2, file: !2, line: 112, type: !360, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23)
!360 = !DISubroutineType(types: !361)
!361 = !{null}
!362 = !DILocation(line: 114, column: 2, scope: !359)
!363 = !DILocation(line: 116, column: 2, scope: !359)
!364 = !DILocation(line: 119, column: 2, scope: !359)
!365 = !DILocation(line: 120, column: 1, scope: !359)
!366 = !DISubprogram(name: "acpi_proc_quirk_mwait_check", scope: !367, file: !367, line: 152, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf5cbbce8a2c7457da3066f6da7b3bd")
!368 = !DISubprogram(name: "acpi_walk_namespace", scope: !369, file: !369, line: 509, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!370 = !DISubroutineType(types: !371)
!371 = !{!137, !163, !48, !60, !372, !372, !50, !376}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !49, line: 1135, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!137, !48, !60, !50, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!377 = distinct !DISubprogram(name: "early_init_pdc", scope: !2, file: !2, line: 103, type: !374, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !378)
!378 = !{!379, !380, !381, !382}
!379 = !DILocalVariable(name: "handle", arg: 1, scope: !377, file: !2, line: 103, type: !48)
!380 = !DILocalVariable(name: "lvl", arg: 2, scope: !377, file: !2, line: 103, type: !60)
!381 = !DILocalVariable(name: "context", arg: 3, scope: !377, file: !2, line: 103, type: !50)
!382 = !DILocalVariable(name: "rv", arg: 4, scope: !377, file: !2, line: 103, type: !376)
!383 = !DILocation(line: 103, column: 28, scope: !377)
!384 = !DILocation(line: 103, column: 40, scope: !377)
!385 = !DILocation(line: 103, column: 51, scope: !377)
!386 = !DILocation(line: 103, column: 67, scope: !377)
!387 = !DILocation(line: 105, column: 35, scope: !388)
!388 = distinct !DILexicalBlock(scope: !377, file: !2, line: 105, column: 6)
!389 = !DILocation(line: 105, column: 6, scope: !388)
!390 = !DILocation(line: 105, column: 43, scope: !388)
!391 = !DILocation(line: 105, column: 6, scope: !377)
!392 = !DILocation(line: 106, column: 3, scope: !388)
!393 = !DILocation(line: 108, column: 25, scope: !377)
!394 = !DILocation(line: 108, column: 2, scope: !377)
!395 = !DILocation(line: 109, column: 2, scope: !377)
!396 = !DILocation(line: 110, column: 1, scope: !377)
!397 = !DISubprogram(name: "acpi_get_devices", scope: !369, file: !369, line: 519, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubroutineType(types: !399)
!399 = !{!137, !400, !372, !50, !376}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!402 = distinct !DISubprogram(name: "kmalloc", scope: !14, file: !14, line: 591, type: !403, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !409)
!403 = !DISubroutineType(types: !404)
!404 = !{!50, !405, !134}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 61, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !407, line: 72, baseType: !408)
!407 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !407, line: 16, baseType: !53)
!409 = !{!410, !411, !412}
!410 = !DILocalVariable(name: "size", arg: 1, scope: !402, file: !14, line: 591, type: !405)
!411 = !DILocalVariable(name: "flags", arg: 2, scope: !402, file: !14, line: 591, type: !134)
!412 = !DILocalVariable(name: "index", scope: !413, file: !14, line: 594, type: !27)
!413 = distinct !DILexicalBlock(scope: !414, file: !14, line: 593, column: 42)
!414 = distinct !DILexicalBlock(scope: !402, file: !14, line: 593, column: 6)
!415 = !DILocation(line: 591, column: 61, scope: !402)
!416 = !DILocation(line: 591, column: 73, scope: !402)
!417 = !DILocation(line: 593, column: 27, scope: !414)
!418 = !DILocation(line: 593, column: 6, scope: !414)
!419 = !DILocation(line: 593, column: 33, scope: !414)
!420 = !DILocation(line: 593, column: 36, scope: !414)
!421 = !DILocation(line: 593, column: 6, scope: !402)
!422 = !DILocation(line: 594, column: 3, scope: !413)
!423 = !DILocation(line: 594, column: 16, scope: !413)
!424 = !DILocation(line: 596, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !413, file: !14, line: 596, column: 7)
!426 = !DILocation(line: 596, column: 12, scope: !425)
!427 = !DILocation(line: 596, column: 7, scope: !413)
!428 = !DILocation(line: 597, column: 25, scope: !425)
!429 = !DILocation(line: 597, column: 31, scope: !425)
!430 = !DILocation(line: 597, column: 11, scope: !425)
!431 = !DILocation(line: 597, column: 4, scope: !425)
!432 = !DILocation(line: 599, column: 11, scope: !413)
!433 = !DILocation(line: 599, column: 9, scope: !413)
!434 = !DILocation(line: 601, column: 33, scope: !413)
!435 = !DILocation(line: 601, column: 40, scope: !413)
!436 = !DILocation(line: 601, column: 20, scope: !413)
!437 = !DILocation(line: 601, column: 5, scope: !413)
!438 = !DILocation(line: 601, column: 51, scope: !413)
!439 = !DILocation(line: 602, column: 5, scope: !413)
!440 = !DILocation(line: 602, column: 12, scope: !413)
!441 = !DILocation(line: 600, column: 10, scope: !413)
!442 = !DILocation(line: 600, column: 3, scope: !413)
!443 = !DILocation(line: 603, column: 2, scope: !414)
!444 = !DILocation(line: 604, column: 19, scope: !402)
!445 = !DILocation(line: 604, column: 25, scope: !402)
!446 = !DILocation(line: 604, column: 9, scope: !402)
!447 = !DILocation(line: 604, column: 2, scope: !402)
!448 = !DILocation(line: 605, column: 1, scope: !402)
!449 = distinct !DISubprogram(name: "acpi_set_pdc_bits", scope: !2, file: !2, line: 18, type: !450, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !269}
!452 = !{!453}
!453 = !DILocalVariable(name: "buf", arg: 1, scope: !449, file: !2, line: 18, type: !269)
!454 = !DILocation(line: 18, column: 36, scope: !449)
!455 = !DILocation(line: 20, column: 2, scope: !449)
!456 = !DILocation(line: 20, column: 9, scope: !449)
!457 = !DILocation(line: 21, column: 2, scope: !449)
!458 = !DILocation(line: 21, column: 9, scope: !449)
!459 = !DILocation(line: 22, column: 2, scope: !449)
!460 = !DILocation(line: 22, column: 9, scope: !449)
!461 = !DILocation(line: 25, column: 31, scope: !449)
!462 = !DILocation(line: 25, column: 2, scope: !449)
!463 = !DILocation(line: 26, column: 1, scope: !449)
!464 = !DISubprogram(name: "_printk", scope: !465, file: !465, line: 153, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!466 = !DISubroutineType(types: !467)
!467 = !{!80, !400, null}
!468 = !DISubprogram(name: "kmalloc_large", scope: !14, file: !14, line: 531, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = distinct !DISubprogram(name: "__kmalloc_index", scope: !14, file: !14, line: 444, type: !470, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!27, !405, !128}
!472 = !{!473, !474}
!473 = !DILocalVariable(name: "size", arg: 1, scope: !469, file: !14, line: 444, type: !405)
!474 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !469, file: !14, line: 445, type: !128)
!475 = !DILocation(line: 444, column: 60, scope: !469)
!476 = !DILocation(line: 445, column: 16, scope: !469)
!477 = !DILocation(line: 447, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !469, file: !14, line: 447, column: 6)
!479 = !DILocation(line: 447, column: 6, scope: !469)
!480 = !DILocation(line: 448, column: 3, scope: !478)
!481 = !DILocation(line: 450, column: 6, scope: !482)
!482 = distinct !DILexicalBlock(scope: !469, file: !14, line: 450, column: 6)
!483 = !DILocation(line: 450, column: 11, scope: !482)
!484 = !DILocation(line: 450, column: 6, scope: !469)
!485 = !DILocation(line: 451, column: 3, scope: !482)
!486 = !DILocation(line: 453, column: 32, scope: !487)
!487 = distinct !DILexicalBlock(scope: !469, file: !14, line: 453, column: 6)
!488 = !DILocation(line: 453, column: 37, scope: !487)
!489 = !DILocation(line: 453, column: 42, scope: !487)
!490 = !DILocation(line: 453, column: 45, scope: !487)
!491 = !DILocation(line: 453, column: 50, scope: !487)
!492 = !DILocation(line: 453, column: 6, scope: !469)
!493 = !DILocation(line: 454, column: 3, scope: !487)
!494 = !DILocation(line: 455, column: 32, scope: !495)
!495 = distinct !DILexicalBlock(scope: !469, file: !14, line: 455, column: 6)
!496 = !DILocation(line: 455, column: 37, scope: !495)
!497 = !DILocation(line: 455, column: 43, scope: !495)
!498 = !DILocation(line: 455, column: 46, scope: !495)
!499 = !DILocation(line: 455, column: 51, scope: !495)
!500 = !DILocation(line: 455, column: 6, scope: !469)
!501 = !DILocation(line: 456, column: 3, scope: !495)
!502 = !DILocation(line: 457, column: 6, scope: !503)
!503 = distinct !DILexicalBlock(scope: !469, file: !14, line: 457, column: 6)
!504 = !DILocation(line: 457, column: 11, scope: !503)
!505 = !DILocation(line: 457, column: 6, scope: !469)
!506 = !DILocation(line: 457, column: 26, scope: !503)
!507 = !DILocation(line: 458, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !469, file: !14, line: 458, column: 6)
!509 = !DILocation(line: 458, column: 11, scope: !508)
!510 = !DILocation(line: 458, column: 6, scope: !469)
!511 = !DILocation(line: 458, column: 26, scope: !508)
!512 = !DILocation(line: 459, column: 6, scope: !513)
!513 = distinct !DILexicalBlock(scope: !469, file: !14, line: 459, column: 6)
!514 = !DILocation(line: 459, column: 11, scope: !513)
!515 = !DILocation(line: 459, column: 6, scope: !469)
!516 = !DILocation(line: 459, column: 26, scope: !513)
!517 = !DILocation(line: 460, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !469, file: !14, line: 460, column: 6)
!519 = !DILocation(line: 460, column: 11, scope: !518)
!520 = !DILocation(line: 460, column: 6, scope: !469)
!521 = !DILocation(line: 460, column: 26, scope: !518)
!522 = !DILocation(line: 461, column: 6, scope: !523)
!523 = distinct !DILexicalBlock(scope: !469, file: !14, line: 461, column: 6)
!524 = !DILocation(line: 461, column: 11, scope: !523)
!525 = !DILocation(line: 461, column: 6, scope: !469)
!526 = !DILocation(line: 461, column: 26, scope: !523)
!527 = !DILocation(line: 462, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !469, file: !14, line: 462, column: 6)
!529 = !DILocation(line: 462, column: 11, scope: !528)
!530 = !DILocation(line: 462, column: 6, scope: !469)
!531 = !DILocation(line: 462, column: 26, scope: !528)
!532 = !DILocation(line: 463, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !469, file: !14, line: 463, column: 6)
!534 = !DILocation(line: 463, column: 11, scope: !533)
!535 = !DILocation(line: 463, column: 6, scope: !469)
!536 = !DILocation(line: 463, column: 26, scope: !533)
!537 = !DILocation(line: 464, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !469, file: !14, line: 464, column: 6)
!539 = !DILocation(line: 464, column: 11, scope: !538)
!540 = !DILocation(line: 464, column: 6, scope: !469)
!541 = !DILocation(line: 464, column: 26, scope: !538)
!542 = !DILocation(line: 465, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !469, file: !14, line: 465, column: 6)
!544 = !DILocation(line: 465, column: 11, scope: !543)
!545 = !DILocation(line: 465, column: 6, scope: !469)
!546 = !DILocation(line: 465, column: 26, scope: !543)
!547 = !DILocation(line: 466, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !469, file: !14, line: 466, column: 6)
!549 = !DILocation(line: 466, column: 11, scope: !548)
!550 = !DILocation(line: 466, column: 6, scope: !469)
!551 = !DILocation(line: 466, column: 26, scope: !548)
!552 = !DILocation(line: 467, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !469, file: !14, line: 467, column: 6)
!554 = !DILocation(line: 467, column: 11, scope: !553)
!555 = !DILocation(line: 467, column: 6, scope: !469)
!556 = !DILocation(line: 467, column: 26, scope: !553)
!557 = !DILocation(line: 468, column: 6, scope: !558)
!558 = distinct !DILexicalBlock(scope: !469, file: !14, line: 468, column: 6)
!559 = !DILocation(line: 468, column: 11, scope: !558)
!560 = !DILocation(line: 468, column: 6, scope: !469)
!561 = !DILocation(line: 468, column: 26, scope: !558)
!562 = !DILocation(line: 469, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !469, file: !14, line: 469, column: 6)
!564 = !DILocation(line: 469, column: 11, scope: !563)
!565 = !DILocation(line: 469, column: 6, scope: !469)
!566 = !DILocation(line: 469, column: 26, scope: !563)
!567 = !DILocation(line: 470, column: 6, scope: !568)
!568 = distinct !DILexicalBlock(scope: !469, file: !14, line: 470, column: 6)
!569 = !DILocation(line: 470, column: 11, scope: !568)
!570 = !DILocation(line: 470, column: 6, scope: !469)
!571 = !DILocation(line: 470, column: 26, scope: !568)
!572 = !DILocation(line: 471, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !469, file: !14, line: 471, column: 6)
!574 = !DILocation(line: 471, column: 11, scope: !573)
!575 = !DILocation(line: 471, column: 6, scope: !469)
!576 = !DILocation(line: 471, column: 26, scope: !573)
!577 = !DILocation(line: 472, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !469, file: !14, line: 472, column: 6)
!579 = !DILocation(line: 472, column: 11, scope: !578)
!580 = !DILocation(line: 472, column: 6, scope: !469)
!581 = !DILocation(line: 472, column: 26, scope: !578)
!582 = !DILocation(line: 473, column: 6, scope: !583)
!583 = distinct !DILexicalBlock(scope: !469, file: !14, line: 473, column: 6)
!584 = !DILocation(line: 473, column: 11, scope: !583)
!585 = !DILocation(line: 473, column: 6, scope: !469)
!586 = !DILocation(line: 473, column: 26, scope: !583)
!587 = !DILocation(line: 474, column: 6, scope: !588)
!588 = distinct !DILexicalBlock(scope: !469, file: !14, line: 474, column: 6)
!589 = !DILocation(line: 474, column: 11, scope: !588)
!590 = !DILocation(line: 474, column: 6, scope: !469)
!591 = !DILocation(line: 474, column: 27, scope: !588)
!592 = !DILocation(line: 475, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !469, file: !14, line: 475, column: 6)
!594 = !DILocation(line: 475, column: 11, scope: !593)
!595 = !DILocation(line: 475, column: 6, scope: !469)
!596 = !DILocation(line: 475, column: 32, scope: !593)
!597 = !DILocation(line: 477, column: 50, scope: !598)
!598 = distinct !DILexicalBlock(scope: !469, file: !14, line: 477, column: 6)
!599 = !{i8 0, i8 2}
!600 = !{}
!601 = !DILocation(line: 477, column: 6, scope: !469)
!602 = !DILocation(line: 478, column: 3, scope: !598)
!603 = !DILocation(line: 478, column: 3, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !14, line: 478, column: 3)
!605 = distinct !DILexicalBlock(scope: !598, file: !14, line: 478, column: 3)
!606 = !{i32 -2143560619}
!607 = !DILocation(line: 478, column: 3, scope: !605)
!608 = !DILocation(line: 480, column: 3, scope: !598)
!609 = !DILocation(line: 480, column: 3, scope: !610)
!610 = distinct !DILexicalBlock(scope: !598, file: !14, line: 480, column: 3)
!611 = !DILocation(line: 480, column: 3, scope: !612)
!612 = distinct !DILexicalBlock(scope: !610, file: !14, line: 480, column: 3)
!613 = !DILocation(line: 480, column: 3, scope: !614)
!614 = distinct !DILexicalBlock(scope: !610, file: !14, line: 480, column: 3)
!615 = !{i64 2151406880, i64 2151406909, i64 2151406955, i64 2151407013, i64 2151407067, i64 2151407121, i64 2151407176, i64 2151407207}
!616 = !DILocation(line: 483, column: 2, scope: !469)
!617 = !DILocation(line: 484, column: 1, scope: !469)
!618 = !DISubprogram(name: "kmalloc_trace", scope: !14, file: !14, line: 525, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!619 = !DISubroutineType(types: !620)
!620 = !{!50, !621, !134, !405}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !623, line: 11, flags: DIFlagFwdDecl)
!623 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!624 = distinct !DISubprogram(name: "kmalloc_type", scope: !14, file: !14, line: 401, type: !625, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{!31, !134, !53}
!627 = !{!628, !629}
!628 = !DILocalVariable(name: "flags", arg: 1, scope: !624, file: !14, line: 401, type: !134)
!629 = !DILocalVariable(name: "caller", arg: 2, scope: !624, file: !14, line: 401, type: !53)
!630 = !DILocation(line: 401, column: 67, scope: !624)
!631 = !DILocation(line: 401, column: 88, scope: !624)
!632 = !DILocation(line: 407, column: 6, scope: !633)
!633 = distinct !DILexicalBlock(scope: !624, file: !14, line: 407, column: 6)
!634 = !DILocation(line: 407, column: 6, scope: !624)
!635 = !DILocation(line: 413, column: 3, scope: !633)
!636 = !DILocation(line: 423, column: 38, scope: !637)
!637 = distinct !DILexicalBlock(scope: !624, file: !14, line: 423, column: 6)
!638 = !DILocation(line: 423, column: 44, scope: !637)
!639 = !DILocation(line: 423, column: 6, scope: !624)
!640 = !DILocation(line: 424, column: 3, scope: !637)
!641 = !DILocation(line: 426, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !624, file: !14, line: 425, column: 6)
!643 = !DILocation(line: 429, column: 1, scope: !624)
!644 = !DISubprogram(name: "__kmalloc", scope: !14, file: !14, line: 488, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!645 = !DISubprogram(name: "__compiletime_assert_117", scope: !14, file: !14, line: 478, type: !360, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!646 = distinct !DISubprogram(name: "arch_acpi_set_proc_cap_bits", scope: !236, file: !236, line: 108, type: !450, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !647)
!647 = !{!648, !649, !650, !653}
!648 = !DILocalVariable(name: "cap", arg: 1, scope: !646, file: !236, line: 108, type: !269)
!649 = !DILocalVariable(name: "c", scope: !646, file: !236, line: 110, type: !62)
!650 = !DILocalVariable(name: "__vpp_verify", scope: !651, file: !236, line: 110, type: !244)
!651 = distinct !DILexicalBlock(scope: !652, file: !236, line: 110, column: 27)
!652 = distinct !DILexicalBlock(scope: !646, file: !236, line: 110, column: 27)
!653 = !DILocalVariable(name: "__ptr", scope: !654, file: !236, line: 110, type: !53)
!654 = distinct !DILexicalBlock(scope: !652, file: !236, line: 110, column: 27)
!655 = !DILocation(line: 108, column: 53, scope: !646)
!656 = !DILocation(line: 110, column: 2, scope: !646)
!657 = !DILocation(line: 110, column: 22, scope: !646)
!658 = !DILocation(line: 110, column: 27, scope: !652)
!659 = !DILocation(line: 110, column: 27, scope: !651)
!660 = !DILocation(line: 110, column: 27, scope: !654)
!661 = !DILocation(line: 112, column: 3, scope: !646)
!662 = !DILocation(line: 112, column: 7, scope: !646)
!663 = !DILocation(line: 115, column: 3, scope: !646)
!664 = !DILocation(line: 115, column: 7, scope: !646)
!665 = !DILocation(line: 117, column: 6, scope: !646)
!666 = !DILocation(line: 117, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !646, file: !236, line: 117, column: 6)
!668 = !DILocation(line: 118, column: 4, scope: !667)
!669 = !DILocation(line: 118, column: 8, scope: !667)
!670 = !DILocation(line: 118, column: 3, scope: !667)
!671 = !DILocation(line: 120, column: 6, scope: !646)
!672 = !DILocation(line: 120, column: 6, scope: !673)
!673 = distinct !DILexicalBlock(scope: !646, file: !236, line: 120, column: 6)
!674 = !DILocation(line: 121, column: 4, scope: !673)
!675 = !DILocation(line: 121, column: 8, scope: !673)
!676 = !DILocation(line: 121, column: 3, scope: !673)
!677 = !DILocation(line: 123, column: 6, scope: !646)
!678 = !DILocation(line: 123, column: 6, scope: !679)
!679 = distinct !DILexicalBlock(scope: !646, file: !236, line: 123, column: 6)
!680 = !DILocation(line: 124, column: 4, scope: !679)
!681 = !DILocation(line: 124, column: 8, scope: !679)
!682 = !DILocation(line: 124, column: 3, scope: !679)
!683 = !DILocation(line: 130, column: 37, scope: !684)
!684 = distinct !DILexicalBlock(scope: !646, file: !236, line: 130, column: 6)
!685 = !DILocation(line: 130, column: 7, scope: !684)
!686 = !DILocation(line: 131, column: 6, scope: !684)
!687 = !DILocation(line: 131, column: 32, scope: !684)
!688 = !DILocation(line: 130, column: 6, scope: !646)
!689 = !DILocation(line: 132, column: 4, scope: !684)
!690 = !DILocation(line: 132, column: 8, scope: !684)
!691 = !DILocation(line: 132, column: 3, scope: !684)
!692 = !DILocation(line: 144, column: 1, scope: !646)
!693 = distinct !DISubprogram(name: "arch_test_bit", scope: !694, file: !694, line: 237, type: !695, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !700)
!694 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!695 = !DISubroutineType(types: !696)
!696 = !{!128, !53, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!700 = !{!701, !702}
!701 = !DILocalVariable(name: "nr", arg: 1, scope: !693, file: !694, line: 237, type: !53)
!702 = !DILocalVariable(name: "addr", arg: 2, scope: !693, file: !694, line: 237, type: !697)
!703 = !DILocation(line: 237, column: 29, scope: !693)
!704 = !DILocation(line: 237, column: 63, scope: !693)
!705 = !DILocation(line: 239, column: 30, scope: !693)
!706 = !DILocation(line: 239, column: 9, scope: !693)
!707 = !DILocation(line: 239, column: 54, scope: !693)
!708 = !DILocation(line: 239, column: 58, scope: !693)
!709 = !DILocation(line: 239, column: 36, scope: !693)
!710 = !DILocation(line: 240, column: 26, scope: !693)
!711 = !DILocation(line: 240, column: 30, scope: !693)
!712 = !DILocation(line: 240, column: 8, scope: !693)
!713 = !DILocation(line: 239, column: 2, scope: !693)
!714 = distinct !DISubprogram(name: "constant_test_bit", scope: !694, file: !694, line: 204, type: !715, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !718)
!715 = !DISubroutineType(types: !716)
!716 = !{!128, !717, !697}
!717 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!718 = !{!719, !720}
!719 = !DILocalVariable(name: "nr", arg: 1, scope: !714, file: !694, line: 204, type: !717)
!720 = !DILocalVariable(name: "addr", arg: 2, scope: !714, file: !694, line: 204, type: !697)
!721 = !DILocation(line: 204, column: 52, scope: !714)
!722 = !DILocation(line: 204, column: 86, scope: !714)
!723 = !DILocation(line: 206, column: 19, scope: !714)
!724 = !DILocation(line: 206, column: 22, scope: !714)
!725 = !DILocation(line: 206, column: 15, scope: !714)
!726 = !DILocation(line: 207, column: 4, scope: !714)
!727 = !DILocation(line: 207, column: 9, scope: !714)
!728 = !DILocation(line: 207, column: 12, scope: !714)
!729 = !DILocation(line: 206, column: 44, scope: !714)
!730 = !DILocation(line: 207, column: 37, scope: !714)
!731 = !DILocation(line: 206, column: 2, scope: !714)
!732 = distinct !DISubprogram(name: "variable_test_bit", scope: !694, file: !694, line: 224, type: !715, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !733)
!733 = !{!734, !735, !736}
!734 = !DILocalVariable(name: "nr", arg: 1, scope: !732, file: !694, line: 224, type: !717)
!735 = !DILocalVariable(name: "addr", arg: 2, scope: !732, file: !694, line: 224, type: !697)
!736 = !DILocalVariable(name: "oldbit", scope: !732, file: !694, line: 226, type: !128)
!737 = !DILocation(line: 224, column: 52, scope: !732)
!738 = !DILocation(line: 224, column: 86, scope: !732)
!739 = !DILocation(line: 226, column: 2, scope: !732)
!740 = !DILocation(line: 226, column: 7, scope: !732)
!741 = !DILocation(line: 231, column: 33, scope: !732)
!742 = !DILocation(line: 231, column: 46, scope: !732)
!743 = !DILocation(line: 228, column: 2, scope: !732)
!744 = !{i64 2148088909, i64 2148088983}
!745 = !DILocation(line: 233, column: 9, scope: !732)
!746 = !DILocation(line: 234, column: 1, scope: !732)
!747 = !DILocation(line: 233, column: 2, scope: !732)
!748 = !DISubprogram(name: "acpi_evaluate_object", scope: !369, file: !369, line: 549, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DISubroutineType(types: !750)
!750 = !{!137, !48, !751, !154, !752}
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !49, line: 423, baseType: !175)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !49, line: 978, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !753, file: !49, line: 979, baseType: !54, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !753, file: !49, line: 980, baseType: !50, size: 64, offset: 64)
!757 = !DISubprogram(name: "processor_physically_present", scope: !367, file: !367, line: 153, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubroutineType(types: !759)
!759 = !{!128, !48}
