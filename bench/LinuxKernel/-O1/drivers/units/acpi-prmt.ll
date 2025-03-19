; ModuleID = 'drivers/acpi/prmt.c'
source_filename = "drivers/acpi/prmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.acpi_prmt_module_info = type <{ i16, i16, [16 x i8], i16, i16, i16, i32, i64 }>
%struct.prm_module_info = type { %struct.guid_t, i16, i16, i16, ptr, i8, %struct.list_head, [0 x %struct.prm_handler_info] }
%struct.guid_t = type { [16 x i8] }
%struct.prm_handler_info = type { %struct.guid_t, ptr, i64, i64, %struct.list_head }
%struct.prm_mmio_info = type { i64, [0 x %struct.prm_mmio_addr_range] }
%struct.prm_mmio_addr_range = type <{ i64, i64, i32 }>
%struct.acpi_prmt_handler_info = type <{ i16, i16, [16 x i8], i64, i64, i64 }>
%struct.prm_context_buffer = type { [4 x i8], i16, i16, %struct.guid_t, i64, ptr }
%struct.prm_buffer = type <{ i8, i64, i8, %struct.guid_t }>
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"PRMT\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [25 x i8] c"\016PRM: found %u modules\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [41 x i8] c"\013PRM: EFI runtime services unavailable\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [55 x i8] c"\011PRM: OperationRegion handler could not be installed\0A\00", align 1, !dbg !17
@prm_module_list = internal global %struct.list_head { ptr @prm_module_list, ptr @prm_module_list }, align 8, !dbg !22
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !172
@efi = external dso_local global %struct.efi, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"\014Failed to find VA for GUID: %pUL, PA: 0x%llx\00", align 1, !dbg !177
@acpi_platformrt_space_handler._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !182
@__func__.acpi_platformrt_space_handler = private unnamed_addr constant [30 x i8] c"acpi_platformrt_space_handler\00", align 1, !dbg !251
@.str.6 = private unnamed_addr constant [49 x i8] c"\013PRM: EFI runtime services no longer available\0A\00", align 1, !dbg !257
@.str.7 = private unnamed_addr constant [5 x i8] c"PRMC\00", align 1, !dbg !262

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @init_prmt() #0 section ".init.text" align 16 !dbg !273 {
entry:
  %tbl = alloca ptr, align 8
  %status = alloca i32, align 4
  %mc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tbl) #16, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %tbl, metadata !277, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %status, metadata !297, metadata !DIExpression()), !dbg !302
  call void @llvm.lifetime.start.p0(i64 4, ptr %mc) #16, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %mc, metadata !298, metadata !DIExpression()), !dbg !304
  %call = call i32 @acpi_get_table(ptr noundef @.str, i32 noundef 0, ptr noundef %tbl) #17, !dbg !305
  store i32 %call, ptr %status, align 4, !dbg !306
  %0 = load i32, ptr %status, align 4, !dbg !307
  %tobool = icmp ne i32 %0, 0, !dbg !307
  br i1 %tobool, label %if.then, label %if.end, !dbg !309

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !310

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_table_parse_entries(ptr noundef @.str, i64 noundef 60, i32 noundef 0, ptr noundef @acpi_parse_prmt, i32 noundef 0) #18, !dbg !311
  store i32 %call1, ptr %mc, align 4, !dbg !312
  %1 = load ptr, ptr %tbl, align 8, !dbg !313
  call void @acpi_put_table(ptr noundef %1) #17, !dbg !314
  %2 = load i32, ptr %mc, align 4, !dbg !315
  %cmp = icmp sle i32 %2, 0, !dbg !317
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !318

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !319

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !320

do.body:                                          ; preds = %if.end3
  br label %do.cond, !dbg !322

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !322

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %mc, align 4, !dbg !320
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %3) #18, !dbg !320
  store i32 %call4, ptr %tmp, align 4, !dbg !322
  %4 = load i32, ptr %tmp, align 4, !dbg !320
  %call5 = call zeroext i1 @efi_enabled(i32 noundef 3) #17, !dbg !324
  br i1 %call5, label %if.end12, label %if.then6, !dbg !326

if.then6:                                         ; preds = %do.end
  br label %do.body7, !dbg !327

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !330

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !330

do.end9:                                          ; preds = %do.cond8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #18, !dbg !327
  store i32 %call11, ptr %tmp10, align 4, !dbg !330
  %5 = load i32, ptr %tmp10, align 4, !dbg !327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !332

if.end12:                                         ; preds = %do.end
  %call13 = call i32 @acpi_install_address_space_handler(ptr noundef inttoptr (i64 -1 to ptr), i8 noundef zeroext 11, ptr noundef @acpi_platformrt_space_handler, ptr noundef null, ptr noundef null) #17, !dbg !333
  store i32 %call13, ptr %status, align 4, !dbg !334
  %6 = load i32, ptr %status, align 4, !dbg !335
  %tobool14 = icmp ne i32 %6, 0, !dbg !335
  br i1 %tobool14, label %if.then15, label %if.end21, !dbg !337

if.then15:                                        ; preds = %if.end12
  br label %do.body16, !dbg !338

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !340

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !340

do.end18:                                         ; preds = %do.cond17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #18, !dbg !338
  store i32 %call20, ptr %tmp19, align 4, !dbg !340
  %7 = load i32, ptr %tmp19, align 4, !dbg !338
  br label %if.end21, !dbg !342

if.end21:                                         ; preds = %do.end18, %if.end12
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !343
  br label %cleanup, !dbg !343

cleanup:                                          ; preds = %if.end21, %do.end9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mc) #16, !dbg !343
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !343
  call void @llvm.lifetime.end.p0(i64 8, ptr %tbl) #16, !dbg !343
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !343

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !344 dso_local i32 @acpi_get_table(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !350 dso_local i32 @acpi_table_parse_entries(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #4 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_parse_prmt(ptr noundef %header, i64 noundef %end) #0 section ".init.text" align 16 !dbg !384 {
entry:
  %retval = alloca i32, align 4
  %header.addr = alloca ptr, align 8
  %end.addr = alloca i64, align 8
  %module_info = alloca ptr, align 8
  %handler_info = alloca ptr, align 8
  %th = alloca ptr, align 8
  %tm = alloca ptr, align 8
  %mmio_count = alloca ptr, align 8
  %cur_handler = alloca i64, align 8
  %module_info_size = alloca i32, align 4
  %mmio_range_size = alloca i64, align 8
  %temp_mmio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %header, ptr %header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !386, metadata !DIExpression()), !dbg !401
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !387, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 8, ptr %module_info) #16, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %module_info, metadata !388, metadata !DIExpression()), !dbg !404
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_info) #16, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %handler_info, metadata !389, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 8, ptr %th) #16, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %th, metadata !390, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 8, ptr %tm) #16, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %tm, metadata !391, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmio_count) #16, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %mmio_count, metadata !392, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_handler) #16, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %cur_handler, metadata !393, metadata !DIExpression()), !dbg !414
  store i64 0, ptr %cur_handler, align 8, !dbg !414
  call void @llvm.lifetime.start.p0(i64 4, ptr %module_info_size) #16, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %module_info_size, metadata !394, metadata !DIExpression()), !dbg !416
  store i32 0, ptr %module_info_size, align 4, !dbg !416
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmio_range_size) #16, !dbg !417
  call void @llvm.dbg.declare(metadata ptr %mmio_range_size, metadata !395, metadata !DIExpression()), !dbg !418
  store i64 0, ptr %mmio_range_size, align 8, !dbg !418
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_mmio) #16, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %temp_mmio, metadata !396, metadata !DIExpression()), !dbg !420
  %0 = load ptr, ptr %header.addr, align 8, !dbg !421
  store ptr %0, ptr %module_info, align 8, !dbg !422
  %1 = load ptr, ptr %module_info, align 8, !dbg !423
  %handler_info_count = getelementptr inbounds %struct.acpi_prmt_module_info, ptr %1, i32 0, i32 5, !dbg !423
  %2 = load i16, ptr %handler_info_count, align 1, !dbg !423
  %conv = zext i16 %2 to i64, !dbg !423
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 56) #17, !dbg !423
  %call1 = call i64 @size_add(i64 noundef 56, i64 noundef %call) #17, !dbg !423
  %conv2 = trunc i64 %call1 to i32, !dbg !423
  store i32 %conv2, ptr %module_info_size, align 4, !dbg !424
  %3 = load i32, ptr %module_info_size, align 4, !dbg !425
  %conv3 = zext i32 %3 to i64, !dbg !425
  %call4 = call noalias ptr @kmalloc(i64 noundef %conv3, i32 noundef 3264) #19, !dbg !426
  store ptr %call4, ptr %tm, align 8, !dbg !427
  %4 = load ptr, ptr %tm, align 8, !dbg !428
  %tobool = icmp ne ptr %4, null, !dbg !428
  br i1 %tobool, label %if.end, label %if.then, !dbg !430

if.then:                                          ; preds = %entry
  br label %parse_prmt_out1, !dbg !431

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tm, align 8, !dbg !432
  %guid = getelementptr inbounds %struct.prm_module_info, ptr %5, i32 0, i32 0, !dbg !433
  %6 = load ptr, ptr %module_info, align 8, !dbg !434
  %module_guid = getelementptr inbounds %struct.acpi_prmt_module_info, ptr %6, i32 0, i32 2, !dbg !435
  %arraydecay = getelementptr inbounds [16 x i8], ptr %module_guid, i64 0, i64 0, !dbg !434
  call void @guid_copy(ptr noundef %guid, ptr noundef %arraydecay) #17, !dbg !436
  %7 = load ptr, ptr %module_info, align 8, !dbg !437
  %major_rev = getelementptr inbounds %struct.acpi_prmt_module_info, ptr %7, i32 0, i32 3, !dbg !438
  %8 = load i16, ptr %major_rev, align 1, !dbg !438
  %9 = load ptr, ptr %tm, align 8, !dbg !439
  %major_rev5 = getelementptr inbounds %struct.prm_module_info, ptr %9, i32 0, i32 1, !dbg !440
  store i16 %8, ptr %major_rev5, align 8, !dbg !441
  %10 = load ptr, ptr %module_info, align 8, !dbg !442
  %minor_rev = getelementptr inbounds %struct.acpi_prmt_module_info, ptr %10, i32 0, i32 4, !dbg !443
  %11 = load i16, ptr %minor_rev, align 1, !dbg !443
  %12 = load ptr, ptr %tm, align 8, !dbg !444
  %minor_rev6 = getelementptr inbounds %struct.prm_module_info, ptr %12, i32 0, i32 2, !dbg !445
  store i16 %11, ptr %minor_rev6, align 2, !dbg !446
  %13 = load ptr, ptr %module_info, align 8, !dbg !447
  %handler_info_count7 = getelementptr inbounds %struct.acpi_prmt_module_info, ptr %13, i32 0, i32 5, !dbg !448
  %14 = load i16, ptr %handler_info_count7, align 1, !dbg !448
  %15 = load ptr, ptr %tm, align 8, !dbg !449
  %handler_count = getelementptr inbounds %struct.prm_module_info, ptr %15, i32 0, i32 3, !dbg !450
  store i16 %14, ptr %handler_count, align 4, !dbg !451
  %16 = load ptr, ptr %tm, align 8, !dbg !452
  %updatable = getelementptr inbounds %struct.prm_module_info, ptr %16, i32 0, i32 5, !dbg !453
  store i8 1, ptr %updatable, align 8, !dbg !454
  %17 = load ptr, ptr %module_info, align 8, !dbg !455
  %mmio_list_pointer = getelementptr inbounds %struct.acpi_prmt_module_info, ptr %17, i32 0, i32 7, !dbg !457
  %18 = load i64, ptr %mmio_list_pointer, align 1, !dbg !457
  %tobool8 = icmp ne i64 %18, 0, !dbg !455
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !458

if.then9:                                         ; preds = %if.end
  %19 = load ptr, ptr %module_info, align 8, !dbg !459
  %mmio_list_pointer10 = getelementptr inbounds %struct.acpi_prmt_module_info, ptr %19, i32 0, i32 7, !dbg !461
  %20 = load i64, ptr %mmio_list_pointer10, align 1, !dbg !461
  %call11 = call ptr @memremap(i64 noundef %20, i64 noundef 8, i64 noundef 1) #17, !dbg !462
  store ptr %call11, ptr %mmio_count, align 8, !dbg !463
  %21 = load ptr, ptr %mmio_count, align 8, !dbg !464
  %tobool12 = icmp ne ptr %21, null, !dbg !464
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !466

if.then13:                                        ; preds = %if.then9
  br label %parse_prmt_out2, !dbg !467

if.end14:                                         ; preds = %if.then9
  %22 = load ptr, ptr %mmio_count, align 8, !dbg !468
  %23 = load i64, ptr %22, align 8, !dbg !468
  %call15 = call i64 @size_mul(i64 noundef %23, i64 noundef 20) #17, !dbg !468
  %call16 = call i64 @size_add(i64 noundef 8, i64 noundef %call15) #17, !dbg !468
  store i64 %call16, ptr %mmio_range_size, align 8, !dbg !469
  %24 = load i64, ptr %mmio_range_size, align 8, !dbg !470
  %call17 = call noalias ptr @kmalloc(i64 noundef %24, i32 noundef 3264) #19, !dbg !471
  %25 = load ptr, ptr %tm, align 8, !dbg !472
  %mmio_info = getelementptr inbounds %struct.prm_module_info, ptr %25, i32 0, i32 4, !dbg !473
  store ptr %call17, ptr %mmio_info, align 8, !dbg !474
  %26 = load ptr, ptr %tm, align 8, !dbg !475
  %mmio_info18 = getelementptr inbounds %struct.prm_module_info, ptr %26, i32 0, i32 4, !dbg !477
  %27 = load ptr, ptr %mmio_info18, align 8, !dbg !477
  %tobool19 = icmp ne ptr %27, null, !dbg !475
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !478

if.then20:                                        ; preds = %if.end14
  br label %parse_prmt_out3, !dbg !479

if.end21:                                         ; preds = %if.end14
  %28 = load ptr, ptr %module_info, align 8, !dbg !480
  %mmio_list_pointer22 = getelementptr inbounds %struct.acpi_prmt_module_info, ptr %28, i32 0, i32 7, !dbg !481
  %29 = load i64, ptr %mmio_list_pointer22, align 1, !dbg !481
  %30 = load i64, ptr %mmio_range_size, align 8, !dbg !482
  %call23 = call ptr @memremap(i64 noundef %29, i64 noundef %30, i64 noundef 1) #17, !dbg !483
  store ptr %call23, ptr %temp_mmio, align 8, !dbg !484
  %31 = load ptr, ptr %temp_mmio, align 8, !dbg !485
  %tobool24 = icmp ne ptr %31, null, !dbg !485
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !487

if.then25:                                        ; preds = %if.end21
  br label %parse_prmt_out4, !dbg !488

if.end26:                                         ; preds = %if.end21
  %32 = load ptr, ptr %tm, align 8, !dbg !489
  %mmio_info27 = getelementptr inbounds %struct.prm_module_info, ptr %32, i32 0, i32 4, !dbg !490
  %33 = load ptr, ptr %mmio_info27, align 8, !dbg !490
  %34 = load ptr, ptr %temp_mmio, align 8, !dbg !491
  %35 = load i64, ptr %mmio_range_size, align 8, !dbg !492
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %33, ptr align 1 %34, i64 %35, i1 false), !dbg !493
  br label %if.end36, !dbg !494

if.else:                                          ; preds = %if.end
  %call28 = call noalias ptr @kmalloc(i64 noundef 8, i32 noundef 3264) #19, !dbg !495
  %36 = load ptr, ptr %tm, align 8, !dbg !497
  %mmio_info29 = getelementptr inbounds %struct.prm_module_info, ptr %36, i32 0, i32 4, !dbg !498
  store ptr %call28, ptr %mmio_info29, align 8, !dbg !499
  %37 = load ptr, ptr %tm, align 8, !dbg !500
  %mmio_info30 = getelementptr inbounds %struct.prm_module_info, ptr %37, i32 0, i32 4, !dbg !502
  %38 = load ptr, ptr %mmio_info30, align 8, !dbg !502
  %tobool31 = icmp ne ptr %38, null, !dbg !500
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !503

if.then32:                                        ; preds = %if.else
  br label %parse_prmt_out2, !dbg !504

if.end33:                                         ; preds = %if.else
  %39 = load ptr, ptr %tm, align 8, !dbg !505
  %mmio_info34 = getelementptr inbounds %struct.prm_module_info, ptr %39, i32 0, i32 4, !dbg !506
  %40 = load ptr, ptr %mmio_info34, align 8, !dbg !506
  %mmio_count35 = getelementptr inbounds %struct.prm_mmio_info, ptr %40, i32 0, i32 0, !dbg !507
  store i64 0, ptr %mmio_count35, align 1, !dbg !508
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end26
  %41 = load ptr, ptr %tm, align 8, !dbg !509
  %module_list = getelementptr inbounds %struct.prm_module_info, ptr %41, i32 0, i32 6, !dbg !510
  call void @INIT_LIST_HEAD(ptr noundef %module_list) #17, !dbg !511
  %42 = load ptr, ptr %tm, align 8, !dbg !512
  %module_list37 = getelementptr inbounds %struct.prm_module_info, ptr %42, i32 0, i32 6, !dbg !513
  call void @list_add(ptr noundef %module_list37, ptr noundef @prm_module_list) #17, !dbg !514
  %43 = load ptr, ptr %module_info, align 8, !dbg !515
  %44 = load ptr, ptr %module_info, align 8, !dbg !515
  %handler_info_offset = getelementptr inbounds %struct.acpi_prmt_module_info, ptr %44, i32 0, i32 6, !dbg !515
  %45 = load i32, ptr %handler_info_offset, align 1, !dbg !515
  %idx.ext = zext i32 %45 to i64, !dbg !515
  %add.ptr = getelementptr i8, ptr %43, i64 %idx.ext, !dbg !515
  store ptr %add.ptr, ptr %handler_info, align 8, !dbg !516
  br label %do.body, !dbg !517

do.body:                                          ; preds = %land.end, %if.end36
  %46 = load ptr, ptr %tm, align 8, !dbg !518
  %handlers = getelementptr inbounds %struct.prm_module_info, ptr %46, i32 0, i32 7, !dbg !520
  %47 = load i64, ptr %cur_handler, align 8, !dbg !521
  %arrayidx = getelementptr [0 x %struct.prm_handler_info], ptr %handlers, i64 0, i64 %47, !dbg !518
  store ptr %arrayidx, ptr %th, align 8, !dbg !522
  %48 = load ptr, ptr %th, align 8, !dbg !523
  %guid38 = getelementptr inbounds %struct.prm_handler_info, ptr %48, i32 0, i32 0, !dbg !524
  %49 = load ptr, ptr %handler_info, align 8, !dbg !525
  %handler_guid = getelementptr inbounds %struct.acpi_prmt_handler_info, ptr %49, i32 0, i32 2, !dbg !526
  %arraydecay39 = getelementptr inbounds [16 x i8], ptr %handler_guid, i64 0, i64 0, !dbg !525
  call void @guid_copy(ptr noundef %guid38, ptr noundef %arraydecay39) #17, !dbg !527
  %50 = load ptr, ptr %th, align 8, !dbg !528
  %guid40 = getelementptr inbounds %struct.prm_handler_info, ptr %50, i32 0, i32 0, !dbg !529
  %51 = load ptr, ptr %handler_info, align 8, !dbg !530
  %handler_address = getelementptr inbounds %struct.acpi_prmt_handler_info, ptr %51, i32 0, i32 3, !dbg !531
  %52 = load i64, ptr %handler_address, align 1, !dbg !531
  %call41 = call i64 @efi_pa_va_lookup(ptr noundef %guid40, i64 noundef %52) #17, !dbg !532
  %53 = inttoptr i64 %call41 to ptr, !dbg !533
  %54 = load ptr, ptr %th, align 8, !dbg !534
  %handler_addr = getelementptr inbounds %struct.prm_handler_info, ptr %54, i32 0, i32 1, !dbg !535
  store ptr %53, ptr %handler_addr, align 8, !dbg !536
  %55 = load ptr, ptr %th, align 8, !dbg !537
  %guid42 = getelementptr inbounds %struct.prm_handler_info, ptr %55, i32 0, i32 0, !dbg !538
  %56 = load ptr, ptr %handler_info, align 8, !dbg !539
  %static_data_buffer_address = getelementptr inbounds %struct.acpi_prmt_handler_info, ptr %56, i32 0, i32 4, !dbg !540
  %57 = load i64, ptr %static_data_buffer_address, align 1, !dbg !540
  %call43 = call i64 @efi_pa_va_lookup(ptr noundef %guid42, i64 noundef %57) #17, !dbg !541
  %58 = load ptr, ptr %th, align 8, !dbg !542
  %static_data_buffer_addr = getelementptr inbounds %struct.prm_handler_info, ptr %58, i32 0, i32 2, !dbg !543
  store i64 %call43, ptr %static_data_buffer_addr, align 8, !dbg !544
  %59 = load ptr, ptr %th, align 8, !dbg !545
  %guid44 = getelementptr inbounds %struct.prm_handler_info, ptr %59, i32 0, i32 0, !dbg !546
  %60 = load ptr, ptr %handler_info, align 8, !dbg !547
  %acpi_param_buffer_address = getelementptr inbounds %struct.acpi_prmt_handler_info, ptr %60, i32 0, i32 5, !dbg !548
  %61 = load i64, ptr %acpi_param_buffer_address, align 1, !dbg !548
  %call45 = call i64 @efi_pa_va_lookup(ptr noundef %guid44, i64 noundef %61) #17, !dbg !549
  %62 = load ptr, ptr %th, align 8, !dbg !550
  %acpi_param_buffer_addr = getelementptr inbounds %struct.prm_handler_info, ptr %62, i32 0, i32 3, !dbg !551
  store i64 %call45, ptr %acpi_param_buffer_addr, align 8, !dbg !552
  br label %do.cond, !dbg !553

do.cond:                                          ; preds = %do.body
  %63 = load i64, ptr %cur_handler, align 8, !dbg !554
  %inc = add i64 %63, 1, !dbg !554
  store i64 %inc, ptr %cur_handler, align 8, !dbg !554
  %64 = load ptr, ptr %tm, align 8, !dbg !555
  %handler_count46 = getelementptr inbounds %struct.prm_module_info, ptr %64, i32 0, i32 3, !dbg !556
  %65 = load i16, ptr %handler_count46, align 4, !dbg !556
  %conv47 = zext i16 %65 to i64, !dbg !555
  %cmp = icmp ult i64 %inc, %conv47, !dbg !557
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !558

land.rhs:                                         ; preds = %do.cond
  %66 = load ptr, ptr %handler_info, align 8, !dbg !559
  %add.ptr49 = getelementptr i8, ptr %66, i64 44, !dbg !559
  store ptr %add.ptr49, ptr %handler_info, align 8, !dbg !560
  %tobool50 = icmp ne ptr %add.ptr49, null, !dbg !558
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %67 = phi i1 [ false, %do.cond ], [ %tobool50, %land.rhs ], !dbg !561
  br i1 %67, label %do.body, label %do.end, !dbg !553, !llvm.loop !562

do.end:                                           ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !566

parse_prmt_out4:                                  ; preds = %if.then25
  call void @llvm.dbg.label(metadata !397), !dbg !567
  %68 = load ptr, ptr %tm, align 8, !dbg !568
  %mmio_info51 = getelementptr inbounds %struct.prm_module_info, ptr %68, i32 0, i32 4, !dbg !569
  %69 = load ptr, ptr %mmio_info51, align 8, !dbg !569
  call void @kfree(ptr noundef %69) #17, !dbg !570
  br label %parse_prmt_out3, !dbg !570

parse_prmt_out3:                                  ; preds = %parse_prmt_out4, %if.then20
  call void @llvm.dbg.label(metadata !398), !dbg !571
  %70 = load ptr, ptr %mmio_count, align 8, !dbg !572
  call void @memunmap(ptr noundef %70) #17, !dbg !573
  br label %parse_prmt_out2, !dbg !573

parse_prmt_out2:                                  ; preds = %parse_prmt_out3, %if.then32, %if.then13
  call void @llvm.dbg.label(metadata !399), !dbg !574
  %71 = load ptr, ptr %tm, align 8, !dbg !575
  call void @kfree(ptr noundef %71) #17, !dbg !576
  br label %parse_prmt_out1, !dbg !576

parse_prmt_out1:                                  ; preds = %parse_prmt_out2, %if.then
  call void @llvm.dbg.label(metadata !400), !dbg !577
  store i32 -12, ptr %retval, align 4, !dbg !578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !578

cleanup:                                          ; preds = %parse_prmt_out1, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_mmio) #16, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmio_range_size) #16, !dbg !579
  call void @llvm.lifetime.end.p0(i64 4, ptr %module_info_size) #16, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_handler) #16, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmio_count) #16, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr %tm) #16, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr %th) #16, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_info) #16, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr %module_info) #16, !dbg !579
  %72 = load i32, ptr %retval, align 4, !dbg !579
  ret i32 %72, !dbg !579
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !580 dso_local void @acpi_put_table(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !583 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_enabled(i32 noundef %feature) #5 align 16 !dbg !588 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = load i32, ptr %feature.addr, align 4, !dbg !594
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !594
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !594

land.lhs.true:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0) to i32, !dbg !594
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !594
  br i1 %2, label %land.lhs.true1, label %cond.false, !dbg !594

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28) to i64), i64 0), label %land.lhs.true3, label %cond.false, !dbg !594

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %3 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28), align 8, !dbg !594
  %4 = call i1 @llvm.is.constant.i64(i64 %3), !dbg !594
  br i1 %4, label %cond.true, label %cond.false, !dbg !594

cond.true:                                        ; preds = %land.lhs.true3
  %5 = load i32, ptr %feature.addr, align 4, !dbg !594
  %conv4 = sext i32 %5 to i64, !dbg !594
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #17, !dbg !594
  %conv5 = zext i1 %call to i32, !dbg !594
  br label %cond.end, !dbg !594

cond.false:                                       ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true, %entry
  %6 = load i32, ptr %feature.addr, align 4, !dbg !594
  %conv6 = sext i32 %6 to i64, !dbg !594
  %call7 = call zeroext i1 @_test_bit(i64 noundef %conv6, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 28)) #17, !dbg !594
  %conv8 = zext i1 %call7 to i32, !dbg !594
  br label %cond.end, !dbg !594

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv8, %cond.false ], !dbg !594
  %cmp = icmp ne i32 %cond, 0, !dbg !595
  ret i1 %cmp, !dbg !596
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !597 dso_local i32 @acpi_install_address_space_handler(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_platformrt_space_handler(i32 noundef %function, i64 noundef %addr, i32 noundef %bits, ptr noundef %value, ptr noundef %handler_context, ptr noundef %region_context) #6 align 16 !dbg !184 {
entry:
  %retval = alloca i32, align 4
  %function.addr = alloca i32, align 4
  %addr.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %handler = alloca ptr, align 8
  %module = alloca ptr, align 8
  %status = alloca i64, align 8
  %context = alloca %struct.prm_context_buffer, align 1
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !191, metadata !DIExpression()), !dbg !609
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !192, metadata !DIExpression()), !dbg !610
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !193, metadata !DIExpression()), !dbg !611
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !194, metadata !DIExpression()), !dbg !612
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !195, metadata !DIExpression()), !dbg !613
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !196, metadata !DIExpression()), !dbg !614
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #16, !dbg !615
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !197, metadata !DIExpression()), !dbg !616
  %0 = load ptr, ptr %value.addr, align 8, !dbg !617
  %1 = ptrtoint ptr %0 to i64, !dbg !617
  %2 = inttoptr i64 %1 to ptr, !dbg !617
  store ptr %2, ptr %buffer, align 8, !dbg !616
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #16, !dbg !618
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !198, metadata !DIExpression()), !dbg !619
  call void @llvm.lifetime.start.p0(i64 8, ptr %module) #16, !dbg !620
  call void @llvm.dbg.declare(metadata ptr %module, metadata !199, metadata !DIExpression()), !dbg !621
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #16, !dbg !622
  call void @llvm.dbg.declare(metadata ptr %status, metadata !200, metadata !DIExpression()), !dbg !623
  call void @llvm.lifetime.start.p0(i64 40, ptr %context) #16, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %context, metadata !201, metadata !DIExpression()), !dbg !625
  %call = call zeroext i1 @efi_enabled(i32 noundef 3) #17, !dbg !626
  br i1 %call, label %if.end4, label %if.then, !dbg !628

if.then:                                          ; preds = %entry
  %call1 = call i32 @___ratelimit(ptr noundef @acpi_platformrt_space_handler._rs, ptr noundef @__func__.acpi_platformrt_space_handler) #17, !dbg !629
  %tobool = icmp ne i32 %call1, 0, !dbg !629
  br i1 %tobool, label %if.then2, label %if.end, !dbg !633

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !634

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !636

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !636

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #18, !dbg !634
  store i32 %call3, ptr %tmp, align 4, !dbg !636
  %3 = load i32, ptr %tmp, align 4, !dbg !634
  br label %if.end, !dbg !629

if.end:                                           ; preds = %do.end, %if.then
  store i32 26, ptr %retval, align 4, !dbg !638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !638

if.end4:                                          ; preds = %entry
  %4 = load ptr, ptr %buffer, align 8, !dbg !639
  %prm_cmd = getelementptr inbounds %struct.prm_buffer, ptr %4, i32 0, i32 2, !dbg !640
  %5 = load i8, ptr %prm_cmd, align 1, !dbg !640
  %conv = zext i8 %5 to i32, !dbg !639
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb34
  ], !dbg !641

sw.bb:                                            ; preds = %if.end4
  %6 = load ptr, ptr %buffer, align 8, !dbg !642
  %handler_guid = getelementptr inbounds %struct.prm_buffer, ptr %6, i32 0, i32 3, !dbg !644
  %call5 = call ptr @find_prm_handler(ptr noundef %handler_guid) #17, !dbg !645
  store ptr %call5, ptr %handler, align 8, !dbg !646
  %7 = load ptr, ptr %buffer, align 8, !dbg !647
  %handler_guid6 = getelementptr inbounds %struct.prm_buffer, ptr %7, i32 0, i32 3, !dbg !648
  %call7 = call ptr @find_prm_module(ptr noundef %handler_guid6) #17, !dbg !649
  store ptr %call7, ptr %module, align 8, !dbg !650
  %8 = load ptr, ptr %handler, align 8, !dbg !651
  %tobool8 = icmp ne ptr %8, null, !dbg !651
  br i1 %tobool8, label %lor.lhs.false, label %if.then10, !dbg !653

lor.lhs.false:                                    ; preds = %sw.bb
  %9 = load ptr, ptr %module, align 8, !dbg !654
  %tobool9 = icmp ne ptr %9, null, !dbg !654
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !655

if.then10:                                        ; preds = %lor.lhs.false, %sw.bb
  br label %invalid_guid, !dbg !656

if.end11:                                         ; preds = %lor.lhs.false
  %10 = load ptr, ptr %handler, align 8, !dbg !657
  %handler_addr = getelementptr inbounds %struct.prm_handler_info, ptr %10, i32 0, i32 1, !dbg !659
  %11 = load ptr, ptr %handler_addr, align 8, !dbg !659
  %tobool12 = icmp ne ptr %11, null, !dbg !657
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !660

if.then13:                                        ; preds = %if.end11
  %12 = load ptr, ptr %buffer, align 8, !dbg !661
  %prm_status = getelementptr inbounds %struct.prm_buffer, ptr %12, i32 0, i32 0, !dbg !663
  store i8 1, ptr %prm_status, align 1, !dbg !664
  store i32 0, ptr %retval, align 4, !dbg !665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !665

if.end14:                                         ; preds = %if.end11
  %13 = load i32, ptr @.str.7, align 4, !dbg !666
  %signature = getelementptr inbounds %struct.prm_context_buffer, ptr %context, i32 0, i32 0, !dbg !666
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !666
  %14 = ptrtoint ptr %arraydecay to i64, !dbg !666
  %15 = inttoptr i64 %14 to ptr, !dbg !666
  store i32 %13, ptr %15, align 4, !dbg !666
  %revision = getelementptr inbounds %struct.prm_context_buffer, ptr %context, i32 0, i32 1, !dbg !667
  store i16 0, ptr %revision, align 1, !dbg !668
  %reserved = getelementptr inbounds %struct.prm_context_buffer, ptr %context, i32 0, i32 2, !dbg !669
  store i16 0, ptr %reserved, align 1, !dbg !670
  %identifier = getelementptr inbounds %struct.prm_context_buffer, ptr %context, i32 0, i32 3, !dbg !671
  %16 = load ptr, ptr %handler, align 8, !dbg !672
  %guid = getelementptr inbounds %struct.prm_handler_info, ptr %16, i32 0, i32 0, !dbg !673
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %identifier, ptr align 8 %guid, i64 16, i1 false), !dbg !673
  %17 = load ptr, ptr %handler, align 8, !dbg !674
  %static_data_buffer_addr = getelementptr inbounds %struct.prm_handler_info, ptr %17, i32 0, i32 2, !dbg !675
  %18 = load i64, ptr %static_data_buffer_addr, align 8, !dbg !675
  %static_data_buffer = getelementptr inbounds %struct.prm_context_buffer, ptr %context, i32 0, i32 4, !dbg !676
  store i64 %18, ptr %static_data_buffer, align 1, !dbg !677
  %19 = load ptr, ptr %module, align 8, !dbg !678
  %mmio_info = getelementptr inbounds %struct.prm_module_info, ptr %19, i32 0, i32 4, !dbg !679
  %20 = load ptr, ptr %mmio_info, align 8, !dbg !679
  %mmio_ranges = getelementptr inbounds %struct.prm_context_buffer, ptr %context, i32 0, i32 5, !dbg !680
  store ptr %20, ptr %mmio_ranges, align 1, !dbg !681
  %21 = load ptr, ptr %handler, align 8, !dbg !682
  %handler_addr15 = getelementptr inbounds %struct.prm_handler_info, ptr %21, i32 0, i32 1, !dbg !683
  %22 = load ptr, ptr %handler_addr15, align 8, !dbg !683
  %23 = load ptr, ptr %handler, align 8, !dbg !684
  %acpi_param_buffer_addr = getelementptr inbounds %struct.prm_handler_info, ptr %23, i32 0, i32 3, !dbg !685
  %24 = load i64, ptr %acpi_param_buffer_addr, align 8, !dbg !685
  %call16 = call i64 @efi_call_acpi_prm_handler(ptr noundef %22, i64 noundef %24, ptr noundef %context) #17, !dbg !686
  store i64 %call16, ptr %status, align 8, !dbg !687
  %25 = load i64, ptr %status, align 8, !dbg !688
  %cmp = icmp eq i64 %25, 0, !dbg !690
  br i1 %cmp, label %if.then18, label %if.else, !dbg !691

if.then18:                                        ; preds = %if.end14
  %26 = load ptr, ptr %buffer, align 8, !dbg !692
  %prm_status19 = getelementptr inbounds %struct.prm_buffer, ptr %26, i32 0, i32 0, !dbg !694
  store i8 0, ptr %prm_status19, align 1, !dbg !695
  br label %if.end21, !dbg !696

if.else:                                          ; preds = %if.end14
  %27 = load ptr, ptr %buffer, align 8, !dbg !697
  %prm_status20 = getelementptr inbounds %struct.prm_buffer, ptr %27, i32 0, i32 0, !dbg !699
  store i8 1, ptr %prm_status20, align 1, !dbg !700
  %28 = load i64, ptr %status, align 8, !dbg !701
  %29 = load ptr, ptr %buffer, align 8, !dbg !702
  %efi_status = getelementptr inbounds %struct.prm_buffer, ptr %29, i32 0, i32 1, !dbg !703
  store i64 %28, ptr %efi_status, align 1, !dbg !704
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  br label %sw.epilog, !dbg !705

sw.bb22:                                          ; preds = %if.end4
  %30 = load ptr, ptr %buffer, align 8, !dbg !706
  %handler_guid23 = getelementptr inbounds %struct.prm_buffer, ptr %30, i32 0, i32 3, !dbg !707
  %call24 = call ptr @find_prm_module(ptr noundef %handler_guid23) #17, !dbg !708
  store ptr %call24, ptr %module, align 8, !dbg !709
  %31 = load ptr, ptr %module, align 8, !dbg !710
  %tobool25 = icmp ne ptr %31, null, !dbg !710
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !712

if.then26:                                        ; preds = %sw.bb22
  br label %invalid_guid, !dbg !713

if.end27:                                         ; preds = %sw.bb22
  %32 = load ptr, ptr %module, align 8, !dbg !714
  %updatable = getelementptr inbounds %struct.prm_module_info, ptr %32, i32 0, i32 5, !dbg !716
  %33 = load i8, ptr %updatable, align 8, !dbg !716, !range !717, !noundef !718
  %tobool28 = trunc i8 %33 to i1, !dbg !716
  br i1 %tobool28, label %if.then29, label %if.else31, !dbg !719

if.then29:                                        ; preds = %if.end27
  %34 = load ptr, ptr %module, align 8, !dbg !720
  %updatable30 = getelementptr inbounds %struct.prm_module_info, ptr %34, i32 0, i32 5, !dbg !721
  store i8 0, ptr %updatable30, align 8, !dbg !722
  br label %if.end33, !dbg !720

if.else31:                                        ; preds = %if.end27
  %35 = load ptr, ptr %buffer, align 8, !dbg !723
  %prm_status32 = getelementptr inbounds %struct.prm_buffer, ptr %35, i32 0, i32 0, !dbg !724
  store i8 4, ptr %prm_status32, align 1, !dbg !725
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then29
  br label %sw.epilog, !dbg !726

sw.bb34:                                          ; preds = %if.end4
  %36 = load ptr, ptr %buffer, align 8, !dbg !727
  %handler_guid35 = getelementptr inbounds %struct.prm_buffer, ptr %36, i32 0, i32 3, !dbg !728
  %call36 = call ptr @find_prm_module(ptr noundef %handler_guid35) #17, !dbg !729
  store ptr %call36, ptr %module, align 8, !dbg !730
  %37 = load ptr, ptr %module, align 8, !dbg !731
  %tobool37 = icmp ne ptr %37, null, !dbg !731
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !733

if.then38:                                        ; preds = %sw.bb34
  br label %invalid_guid, !dbg !734

if.end39:                                         ; preds = %sw.bb34
  %38 = load ptr, ptr %module, align 8, !dbg !735
  %updatable40 = getelementptr inbounds %struct.prm_module_info, ptr %38, i32 0, i32 5, !dbg !737
  %39 = load i8, ptr %updatable40, align 8, !dbg !737, !range !717, !noundef !718
  %tobool41 = trunc i8 %39 to i1, !dbg !737
  br i1 %tobool41, label %if.then42, label %if.else44, !dbg !738

if.then42:                                        ; preds = %if.end39
  %40 = load ptr, ptr %buffer, align 8, !dbg !739
  %prm_status43 = getelementptr inbounds %struct.prm_buffer, ptr %40, i32 0, i32 0, !dbg !740
  store i8 5, ptr %prm_status43, align 1, !dbg !741
  br label %if.end46, !dbg !739

if.else44:                                        ; preds = %if.end39
  %41 = load ptr, ptr %module, align 8, !dbg !742
  %updatable45 = getelementptr inbounds %struct.prm_module_info, ptr %41, i32 0, i32 5, !dbg !743
  store i8 1, ptr %updatable45, align 8, !dbg !744
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then42
  br label %sw.epilog, !dbg !745

sw.default:                                       ; preds = %if.end4
  %42 = load ptr, ptr %buffer, align 8, !dbg !746
  %prm_status47 = getelementptr inbounds %struct.prm_buffer, ptr %42, i32 0, i32 0, !dbg !747
  store i8 2, ptr %prm_status47, align 1, !dbg !748
  br label %sw.epilog, !dbg !749

sw.epilog:                                        ; preds = %sw.default, %if.end46, %if.end33, %if.end21
  store i32 0, ptr %retval, align 4, !dbg !750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !750

invalid_guid:                                     ; preds = %if.then38, %if.then26, %if.then10
  call void @llvm.dbg.label(metadata !213), !dbg !751
  %43 = load ptr, ptr %buffer, align 8, !dbg !752
  %prm_status48 = getelementptr inbounds %struct.prm_buffer, ptr %43, i32 0, i32 0, !dbg !753
  store i8 3, ptr %prm_status48, align 1, !dbg !754
  store i32 0, ptr %retval, align 4, !dbg !755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !755

cleanup:                                          ; preds = %invalid_guid, %sw.epilog, %if.then13, %if.end
  call void @llvm.lifetime.end.p0(i64 40, ptr %context) #16, !dbg !756
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #16, !dbg !756
  call void @llvm.lifetime.end.p0(i64 8, ptr %module) #16, !dbg !756
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #16, !dbg !756
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #16, !dbg !756
  %44 = load i32, ptr %retval, align 4, !dbg !756
  ret i32 %44, !dbg !756
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #5 align 16 !dbg !757 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !762, metadata !DIExpression()), !dbg !765
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !763, metadata !DIExpression()), !dbg !766
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !767
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !764, metadata !DIExpression()), !dbg !768
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !769
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !769
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !769
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !769
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !769
  store i64 %4, ptr %bytes, align 8, !dbg !769
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !769
  br i1 %call, label %if.then, label %if.end, !dbg !771

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !772

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !773
  store i64 %5, ptr %retval, align 8, !dbg !774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !774

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !775
  %6 = load i64, ptr %retval, align 8, !dbg !775
  ret i64 %6, !dbg !775
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #5 align 16 !dbg !776 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !778, metadata !DIExpression()), !dbg !781
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !779, metadata !DIExpression()), !dbg !782
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !783
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !780, metadata !DIExpression()), !dbg !784
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !785
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !785
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !785
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !785
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !785
  store i64 %4, ptr %bytes, align 8, !dbg !785
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !785
  br i1 %call, label %if.then, label %if.end, !dbg !787

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !788

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !789
  store i64 %5, ptr %retval, align 8, !dbg !790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !790

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !791
  %6 = load i64, ptr %retval, align 8, !dbg !791
  ret i64 %6, !dbg !791
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !792 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !796, metadata !DIExpression()), !dbg !801
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !797, metadata !DIExpression()), !dbg !802
  %0 = load i64, ptr %size.addr, align 8, !dbg !803
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !804
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !805

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !806
  %tobool = icmp ne i64 %2, 0, !dbg !806
  br i1 %tobool, label %if.then, label %if.end7, !dbg !807

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !808
  call void @llvm.dbg.declare(metadata ptr %index, metadata !798, metadata !DIExpression()), !dbg !809
  %3 = load i64, ptr %size.addr, align 8, !dbg !810
  %cmp = icmp ugt i64 %3, 8192, !dbg !812
  br i1 %cmp, label %if.then1, label %if.end, !dbg !813

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !814
  %5 = load i32, ptr %flags.addr, align 4, !dbg !815
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !816
  store ptr %call, ptr %retval, align 8, !dbg !817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !817

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !818
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !818
  store i32 %call2, ptr %index, align 4, !dbg !819
  %7 = load i32, ptr %flags.addr, align 4, !dbg !820
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !821
  %9 = ptrtoint ptr %8 to i64, !dbg !821
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !822
  %idxprom = zext i32 %call3 to i64, !dbg !823
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !823
  %10 = load i32, ptr %index, align 4, !dbg !824
  %idxprom4 = zext i32 %10 to i64, !dbg !823
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !823
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !823
  %12 = load i32, ptr %flags.addr, align 4, !dbg !825
  %13 = load i64, ptr %size.addr, align 8, !dbg !826
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !827
  store ptr %call6, ptr %retval, align 8, !dbg !828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !828

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !829
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !830
  %15 = load i32, ptr %flags.addr, align 4, !dbg !831
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !832
  store ptr %call8, ptr %retval, align 8, !dbg !833
  br label %return, !dbg !833

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !834
  ret ptr %16, !dbg !834
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @guid_copy(ptr noundef %dst, ptr noundef %src) #5 align 16 !dbg !835 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !841, metadata !DIExpression()), !dbg !843
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !842, metadata !DIExpression()), !dbg !844
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !845
  %1 = load ptr, ptr %src.addr, align 8, !dbg !846
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 16, i1 false), !dbg !847
  ret void, !dbg !848
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !849 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !854 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !859, metadata !DIExpression()), !dbg !860
  br label %do.body, !dbg !861

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !862

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !864

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !862

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !866
  %1 = load ptr, ptr %list.addr, align 8, !dbg !866
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !866
  store volatile ptr %0, ptr %next, align 8, !dbg !866
  br label %do.end3, !dbg !866

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !862

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !868

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !869

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !871

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !869

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !873
  %3 = load ptr, ptr %list.addr, align 8, !dbg !873
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !873
  store volatile ptr %2, ptr %prev, align 8, !dbg !873
  br label %do.end9, !dbg !873

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !869

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !875
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !876 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !880, metadata !DIExpression()), !dbg !882
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !881, metadata !DIExpression()), !dbg !883
  %0 = load ptr, ptr %new.addr, align 8, !dbg !884
  %1 = load ptr, ptr %head.addr, align 8, !dbg !885
  %2 = load ptr, ptr %head.addr, align 8, !dbg !886
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !887
  %3 = load ptr, ptr %next, align 8, !dbg !887
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !888
  ret void, !dbg !889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @efi_pa_va_lookup(ptr noundef %guid, i64 noundef %pa) #6 align 16 !dbg !890 {
entry:
  %retval = alloca i64, align 8
  %guid.addr = alloca ptr, align 8
  %pa.addr = alloca i64, align 8
  %md = alloca ptr, align 8
  %pa_offset = alloca i64, align 8
  %page = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !895, metadata !DIExpression()), !dbg !910
  store i64 %pa, ptr %pa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa.addr, metadata !896, metadata !DIExpression()), !dbg !911
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #16, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %md, metadata !897, metadata !DIExpression()), !dbg !913
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_offset) #16, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %pa_offset, metadata !908, metadata !DIExpression()), !dbg !915
  %0 = load i64, ptr %pa.addr, align 8, !dbg !916
  %and = and i64 %0, 4095, !dbg !917
  store i64 %and, ptr %pa_offset, align 8, !dbg !915
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %page, metadata !909, metadata !DIExpression()), !dbg !919
  %1 = load i64, ptr %pa.addr, align 8, !dbg !920
  %and1 = and i64 %1, -4096, !dbg !921
  store i64 %and1, ptr %page, align 8, !dbg !919
  %2 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 1), align 8, !dbg !922
  store ptr %2, ptr %md, align 8, !dbg !922
  br label %for.cond, !dbg !922

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %md, align 8, !dbg !924
  %tobool = icmp ne ptr %3, null, !dbg !924
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !924

land.rhs:                                         ; preds = %for.cond
  %4 = load ptr, ptr %md, align 8, !dbg !924
  %5 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !924
  %add.ptr = getelementptr i8, ptr %4, i64 %5, !dbg !924
  %6 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 2), align 8, !dbg !924
  %cmp = icmp ule ptr %add.ptr, %6, !dbg !924
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !926
  br i1 %7, label %for.body, label %for.end, !dbg !922

for.body:                                         ; preds = %land.end
  %8 = load ptr, ptr %md, align 8, !dbg !927
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %8, i32 0, i32 5, !dbg !930
  %9 = load i64, ptr %attribute, align 8, !dbg !930
  %and2 = and i64 %9, -9223372036854775808, !dbg !931
  %tobool3 = icmp ne i64 %and2, 0, !dbg !931
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !932

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %md, align 8, !dbg !933
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %10, i32 0, i32 2, !dbg !934
  %11 = load i64, ptr %phys_addr, align 8, !dbg !934
  %12 = load i64, ptr %pa.addr, align 8, !dbg !935
  %cmp4 = icmp ult i64 %11, %12, !dbg !936
  br i1 %cmp4, label %land.lhs.true5, label %if.end, !dbg !937

land.lhs.true5:                                   ; preds = %land.lhs.true
  %13 = load i64, ptr %pa.addr, align 8, !dbg !938
  %14 = load ptr, ptr %md, align 8, !dbg !939
  %phys_addr6 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %14, i32 0, i32 2, !dbg !940
  %15 = load i64, ptr %phys_addr6, align 8, !dbg !940
  %16 = load ptr, ptr %md, align 8, !dbg !941
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %16, i32 0, i32 4, !dbg !942
  %17 = load i64, ptr %num_pages, align 8, !dbg !942
  %mul = mul i64 4096, %17, !dbg !943
  %add = add i64 %15, %mul, !dbg !944
  %cmp7 = icmp ult i64 %13, %add, !dbg !945
  br i1 %cmp7, label %if.then, label %if.end, !dbg !946

if.then:                                          ; preds = %land.lhs.true5
  %18 = load i64, ptr %pa_offset, align 8, !dbg !947
  %19 = load ptr, ptr %md, align 8, !dbg !949
  %virt_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %19, i32 0, i32 3, !dbg !950
  %20 = load i64, ptr %virt_addr, align 8, !dbg !950
  %add8 = add i64 %18, %20, !dbg !951
  %21 = load i64, ptr %page, align 8, !dbg !952
  %add9 = add i64 %add8, %21, !dbg !953
  %22 = load ptr, ptr %md, align 8, !dbg !954
  %phys_addr10 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %22, i32 0, i32 2, !dbg !955
  %23 = load i64, ptr %phys_addr10, align 8, !dbg !955
  %sub = sub i64 %add9, %23, !dbg !956
  store i64 %sub, ptr %retval, align 8, !dbg !957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !957

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %for.body
  br label %for.inc, !dbg !958

for.inc:                                          ; preds = %if.end
  %24 = load ptr, ptr %md, align 8, !dbg !924
  %25 = load i64, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 27, i32 5), align 8, !dbg !924
  %add.ptr11 = getelementptr i8, ptr %24, i64 %25, !dbg !924
  store ptr %add.ptr11, ptr %md, align 8, !dbg !924
  br label %for.cond, !dbg !924, !llvm.loop !959

for.end:                                          ; preds = %land.end
  br label %do.body, !dbg !961

do.body:                                          ; preds = %for.end
  br label %do.cond, !dbg !963

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !963

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %guid.addr, align 8, !dbg !961
  %27 = load i64, ptr %pa.addr, align 8, !dbg !961
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %26, i64 noundef %27) #18, !dbg !961
  store i32 %call, ptr %tmp, align 4, !dbg !963
  %28 = load i32, ptr %tmp, align 4, !dbg !961
  store i64 0, ptr %retval, align 8, !dbg !965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !965

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !966
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_offset) #16, !dbg !966
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #16, !dbg !966
  %29 = load i64, ptr %retval, align 8, !dbg !966
  ret i64 %29, !dbg !966
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !967 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !972 dso_local void @memunmap(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !975 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !979, metadata !DIExpression()), !dbg !980
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !981, !range !717, !noundef !718
  %tobool = trunc i8 %0 to i1, !dbg !981
  %lnot = xor i1 %tobool, true, !dbg !981
  %lnot1 = xor i1 %lnot, true, !dbg !981
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !981
  %conv = sext i32 %lnot.ext to i64, !dbg !981
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !981
  %tobool2 = icmp ne i64 %expval, 0, !dbg !981
  ret i1 %tobool2, !dbg !982
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !983 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !984 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !988, metadata !DIExpression()), !dbg !990
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !989, metadata !DIExpression()), !dbg !991
  %0 = load i64, ptr %size.addr, align 8, !dbg !992
  %tobool = icmp ne i64 %0, 0, !dbg !992
  br i1 %tobool, label %if.end, label %if.then, !dbg !994

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !995
  br label %return, !dbg !995

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !996
  %cmp = icmp ule i64 %1, 8, !dbg !998
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !999

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1000
  br label %return, !dbg !1000

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1001
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1003
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1004

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1005
  %cmp4 = icmp ule i64 %3, 96, !dbg !1006
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1007

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1008
  br label %return, !dbg !1008

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1009
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1011
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1012

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1013
  %cmp9 = icmp ule i64 %5, 192, !dbg !1014
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1015

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1016
  br label %return, !dbg !1016

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1017
  %cmp12 = icmp ule i64 %6, 8, !dbg !1019
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1020

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1021
  br label %return, !dbg !1021

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1022
  %cmp15 = icmp ule i64 %7, 16, !dbg !1024
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1025

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1026
  br label %return, !dbg !1026

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1027
  %cmp18 = icmp ule i64 %8, 32, !dbg !1029
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1030

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1031
  br label %return, !dbg !1031

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1032
  %cmp21 = icmp ule i64 %9, 64, !dbg !1034
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1035

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1036
  br label %return, !dbg !1036

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1037
  %cmp24 = icmp ule i64 %10, 128, !dbg !1039
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1040

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1041
  br label %return, !dbg !1041

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1042
  %cmp27 = icmp ule i64 %11, 256, !dbg !1044
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1045

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1046
  br label %return, !dbg !1046

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1047
  %cmp30 = icmp ule i64 %12, 512, !dbg !1049
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1050

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1051
  br label %return, !dbg !1051

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1052
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1054
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1055

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1056
  br label %return, !dbg !1056

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1057
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1059
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1060

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1061
  br label %return, !dbg !1061

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1062
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1064
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1065

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1066
  br label %return, !dbg !1066

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1067
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1069
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1070

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1071
  br label %return, !dbg !1071

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1072
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1074
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1075

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1076
  br label %return, !dbg !1076

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1077
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1079
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1080

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1082
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1084
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1085

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1086
  br label %return, !dbg !1086

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1087
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1089
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1090

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1091
  br label %return, !dbg !1091

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1092
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1094
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1095

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1096
  br label %return, !dbg !1096

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1097
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1099
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1100

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1101
  br label %return, !dbg !1101

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1102
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1104
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1105

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1106
  br label %return, !dbg !1106

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1107
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1109
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1110

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1111
  br label %return, !dbg !1111

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1112, !range !717, !noundef !718
  %tobool69 = trunc i8 %25 to i1, !dbg !1112
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1114

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1115

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !1116, !srcloc !1119
  unreachable, !dbg !1116

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1120

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1121

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1122

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1124

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1122

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #16, !dbg !1126, !srcloc !1128
  br label %do.end75, !dbg !1126

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1122

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1129
  br label %return, !dbg !1129

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1130
  ret i32 %26, !dbg !1130
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1131 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !1137 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1141, metadata !DIExpression()), !dbg !1143
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1142, metadata !DIExpression()), !dbg !1144
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1145
  %and = and i32 %0, 17, !dbg !1145
  %cmp = icmp eq i32 %and, 0, !dbg !1145
  %lnot = xor i1 %cmp, true, !dbg !1145
  %lnot1 = xor i1 %lnot, true, !dbg !1145
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1145
  %conv = sext i32 %lnot.ext to i64, !dbg !1145
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1145
  %tobool = icmp ne i64 %expval, 0, !dbg !1145
  br i1 %tobool, label %if.then, label %if.end, !dbg !1147

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1148
  br label %return, !dbg !1148

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1149
  %and2 = and i32 %1, 1, !dbg !1151
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1151
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1152

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1153
  br label %return, !dbg !1153

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1154
  br label %return, !dbg !1154

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1156
  ret i32 %2, !dbg !1156
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1157 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1158 dso_local void @__compiletime_assert_245() #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !1159 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1163, metadata !DIExpression()), !dbg !1166
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1164, metadata !DIExpression()), !dbg !1167
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1165, metadata !DIExpression()), !dbg !1168
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1169
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !1171
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1172
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !1173
  br i1 %call, label %if.end, label %if.then, !dbg !1174

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1175

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1176
  %4 = load ptr, ptr %next.addr, align 8, !dbg !1177
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !1178
  store ptr %3, ptr %prev1, align 8, !dbg !1179
  %5 = load ptr, ptr %next.addr, align 8, !dbg !1180
  %6 = load ptr, ptr %new.addr, align 8, !dbg !1181
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !1182
  store ptr %5, ptr %next2, align 8, !dbg !1183
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !1184
  %8 = load ptr, ptr %new.addr, align 8, !dbg !1185
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !1186
  store ptr %7, ptr %prev3, align 8, !dbg !1187
  br label %do.body, !dbg !1188

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1189

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1191

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1189

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !1193
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !1193
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !1193
  store volatile ptr %9, ptr %next6, align 8, !dbg !1193
  br label %do.end7, !dbg !1193

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1189

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1195
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !1196 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1200, metadata !DIExpression()), !dbg !1203
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1201, metadata !DIExpression()), !dbg !1204
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1202, metadata !DIExpression()), !dbg !1205
  ret i1 true, !dbg !1206
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1207 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1215, metadata !DIExpression()), !dbg !1220
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1216, metadata !DIExpression()), !dbg !1221
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1217, metadata !DIExpression()), !dbg !1223
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1224
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1225
  %div = udiv i64 %1, 64, !dbg !1225
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1226
  store ptr %add.ptr, ptr %p, align 8, !dbg !1223
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1218, metadata !DIExpression()), !dbg !1228
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1229
  %rem = urem i64 %2, 64, !dbg !1229
  %shl = shl i64 1, %rem, !dbg !1229
  store i64 %shl, ptr %mask, align 8, !dbg !1228
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1219, metadata !DIExpression()), !dbg !1231
  %3 = load ptr, ptr %p, align 8, !dbg !1232
  %4 = load i64, ptr %3, align 8, !dbg !1233
  store i64 %4, ptr %val, align 8, !dbg !1231
  %5 = load i64, ptr %val, align 8, !dbg !1234
  %6 = load i64, ptr %mask, align 8, !dbg !1235
  %and = and i64 %5, %6, !dbg !1236
  %tobool = icmp ne i64 %and, 0, !dbg !1237
  %lnot = xor i1 %tobool, true, !dbg !1237
  %lnot1 = xor i1 %lnot, true, !dbg !1238
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !1239
  ret i1 %lnot1, !dbg !1240
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1241 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1244, metadata !DIExpression()), !dbg !1246
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1245, metadata !DIExpression()), !dbg !1247
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1248
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1249
  %div = udiv i64 %1, 64, !dbg !1249
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1250
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !1251
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1252
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1253
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1254
  ret i1 %call, !dbg !1255
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #12 align 16 !dbg !1256 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1264, metadata !DIExpression()), !dbg !1266
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1265, metadata !DIExpression()), !dbg !1267
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1268
  %1 = load i64, ptr %size.addr, align 8, !dbg !1269
  %conv = trunc i64 %1 to i32, !dbg !1269
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !1270
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1271
  %3 = load i64, ptr %size.addr, align 8, !dbg !1271
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !1271
  ret void, !dbg !1272
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1273 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1276, metadata !DIExpression()), !dbg !1278
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1277, metadata !DIExpression()), !dbg !1279
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1280
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1281
  br i1 %1, label %cond.true, label %cond.false, !dbg !1281

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1282
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1283
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1284
  %conv = zext i1 %call to i32, !dbg !1284
  br label %cond.end, !dbg !1281

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1285
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1286
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !1287
  %conv2 = zext i1 %call1 to i32, !dbg !1287
  br label %cond.end, !dbg !1281

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1281
  %tobool = icmp ne i32 %cond, 0, !dbg !1281
  ret i1 %tobool, !dbg !1288
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !1289 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1294, metadata !DIExpression()), !dbg !1296
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1295, metadata !DIExpression()), !dbg !1297
  ret i1 true, !dbg !1298
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !1299 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1304, metadata !DIExpression()), !dbg !1307
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1305, metadata !DIExpression()), !dbg !1308
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1306, metadata !DIExpression()), !dbg !1309
  ret void, !dbg !1310
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1311 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1316, metadata !DIExpression()), !dbg !1318
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1317, metadata !DIExpression()), !dbg !1319
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1320
  %and = and i64 %0, 63, !dbg !1321
  %shl = shl i64 1, %and, !dbg !1322
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1323
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1324
  %shr = ashr i64 %2, 6, !dbg !1325
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1323
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1323
  %and1 = and i64 %shl, %3, !dbg !1326
  %cmp = icmp ne i64 %and1, 0, !dbg !1327
  ret i1 %cmp, !dbg !1328
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #12 align 16 !dbg !1329 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1331, metadata !DIExpression()), !dbg !1334
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1332, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !1336
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1333, metadata !DIExpression()), !dbg !1337
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1338
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1339
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !1340, !srcloc !1341
  %3 = icmp ult i8 %2, 2, !dbg !1340
  call void @llvm.assume(i1 %3), !dbg !1340
  store i8 %2, ptr %oldbit, align 1, !dbg !1340
  %4 = load i8, ptr %oldbit, align 1, !dbg !1342, !range !717, !noundef !718
  %tobool = trunc i8 %4 to i1, !dbg !1342
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !1343
  ret i1 %tobool, !dbg !1344
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1345 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_prm_handler(ptr noundef %guid) #6 align 16 !dbg !1349 {
entry:
  %guid.addr = alloca ptr, align 8
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !1353, metadata !DIExpression()), !dbg !1354
  %0 = load ptr, ptr %guid.addr, align 8, !dbg !1355
  %call = call ptr @find_guid_info(ptr noundef %0, i8 noundef zeroext 1) #17, !dbg !1356
  ret ptr %call, !dbg !1357
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_prm_module(ptr noundef %guid) #6 align 16 !dbg !1358 {
entry:
  %guid.addr = alloca ptr, align 8
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !1362, metadata !DIExpression()), !dbg !1363
  %0 = load ptr, ptr %guid.addr, align 8, !dbg !1364
  %call = call ptr @find_guid_info(ptr noundef %0, i8 noundef zeroext 0) #17, !dbg !1365
  ret ptr %call, !dbg !1366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1367 dso_local i64 @efi_call_acpi_prm_handler(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_guid_info(ptr noundef %guid, i8 noundef zeroext %mode) #6 align 16 !dbg !1370 {
entry:
  %retval = alloca ptr, align 8
  %guid.addr = alloca ptr, align 8
  %mode.addr = alloca i8, align 1
  %cur_handler = alloca ptr, align 8
  %cur_module = alloca ptr, align 8
  %i = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr11 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !1374, metadata !DIExpression()), !dbg !1385
  store i8 %mode, ptr %mode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !1375, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_handler) #16, !dbg !1387
  call void @llvm.dbg.declare(metadata ptr %cur_handler, metadata !1376, metadata !DIExpression()), !dbg !1388
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_module) #16, !dbg !1389
  call void @llvm.dbg.declare(metadata ptr %cur_module, metadata !1377, metadata !DIExpression()), !dbg !1390
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !1391
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1378, metadata !DIExpression()), !dbg !1392
  store i32 0, ptr %i, align 4, !dbg !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !1393
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1379, metadata !DIExpression()), !dbg !1393
  %0 = load ptr, ptr @prm_module_list, align 8, !dbg !1393
  store ptr %0, ptr %__mptr, align 8, !dbg !1393
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1393
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !1393
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !1394
  %2 = load ptr, ptr %tmp, align 8, !dbg !1393
  store ptr %2, ptr %cur_module, align 8, !dbg !1394
  br label %for.cond, !dbg !1394

for.cond:                                         ; preds = %for.inc10, %entry
  %3 = load ptr, ptr %cur_module, align 8, !dbg !1395
  %module_list = getelementptr inbounds %struct.prm_module_info, ptr %3, i32 0, i32 6, !dbg !1395
  %cmp = icmp eq ptr %module_list, @prm_module_list, !dbg !1395
  %lnot = xor i1 %cmp, true, !dbg !1395
  br i1 %lnot, label %for.body, label %for.end15, !dbg !1394

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1396
  br label %for.cond1, !dbg !1399

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %i, align 4, !dbg !1400
  %5 = load ptr, ptr %cur_module, align 8, !dbg !1402
  %handler_count = getelementptr inbounds %struct.prm_module_info, ptr %5, i32 0, i32 3, !dbg !1403
  %6 = load i16, ptr %handler_count, align 4, !dbg !1403
  %conv = zext i16 %6 to i32, !dbg !1402
  %cmp2 = icmp slt i32 %4, %conv, !dbg !1404
  br i1 %cmp2, label %for.body4, label %for.end, !dbg !1405

for.body4:                                        ; preds = %for.cond1
  %7 = load ptr, ptr %cur_module, align 8, !dbg !1406
  %handlers = getelementptr inbounds %struct.prm_module_info, ptr %7, i32 0, i32 7, !dbg !1408
  %8 = load i32, ptr %i, align 4, !dbg !1409
  %idxprom = sext i32 %8 to i64, !dbg !1406
  %arrayidx = getelementptr [0 x %struct.prm_handler_info], ptr %handlers, i64 0, i64 %idxprom, !dbg !1406
  store ptr %arrayidx, ptr %cur_handler, align 8, !dbg !1410
  %9 = load ptr, ptr %guid.addr, align 8, !dbg !1411
  %10 = load ptr, ptr %cur_handler, align 8, !dbg !1413
  %guid5 = getelementptr inbounds %struct.prm_handler_info, ptr %10, i32 0, i32 0, !dbg !1414
  %call = call zeroext i1 @guid_equal(ptr noundef %9, ptr noundef %guid5) #17, !dbg !1415
  br i1 %call, label %if.then, label %if.end, !dbg !1416

if.then:                                          ; preds = %for.body4
  %11 = load i8, ptr %mode.addr, align 1, !dbg !1417
  %conv6 = zext i8 %11 to i32, !dbg !1417
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !1420
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1421

if.then9:                                         ; preds = %if.then
  %12 = load ptr, ptr %cur_module, align 8, !dbg !1422
  store ptr %12, ptr %retval, align 8, !dbg !1423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1423

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %cur_handler, align 8, !dbg !1424
  store ptr %13, ptr %retval, align 8, !dbg !1425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1425

if.end:                                           ; preds = %for.body4
  br label %for.inc, !dbg !1426

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !dbg !1427
  %inc = add i32 %14, 1, !dbg !1427
  store i32 %inc, ptr %i, align 4, !dbg !1427
  br label %for.cond1, !dbg !1428, !llvm.loop !1429

for.end:                                          ; preds = %for.cond1
  br label %for.inc10, !dbg !1431

for.inc10:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #16, !dbg !1432
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !1382, metadata !DIExpression()), !dbg !1432
  %15 = load ptr, ptr %cur_module, align 8, !dbg !1432
  %module_list12 = getelementptr inbounds %struct.prm_module_info, ptr %15, i32 0, i32 6, !dbg !1432
  %next = getelementptr inbounds %struct.list_head, ptr %module_list12, i32 0, i32 0, !dbg !1432
  %16 = load ptr, ptr %next, align 8, !dbg !1432
  store ptr %16, ptr %__mptr11, align 8, !dbg !1432
  %17 = load ptr, ptr %__mptr11, align 8, !dbg !1432
  %add.ptr14 = getelementptr i8, ptr %17, i64 -40, !dbg !1432
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !1432
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #16, !dbg !1395
  %18 = load ptr, ptr %tmp13, align 8, !dbg !1432
  store ptr %18, ptr %cur_module, align 8, !dbg !1395
  br label %for.cond, !dbg !1395, !llvm.loop !1433

for.end15:                                        ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1435

cleanup:                                          ; preds = %for.end15, %if.else, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !1436
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_module) #16, !dbg !1436
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_handler) #16, !dbg !1436
  %19 = load ptr, ptr %retval, align 8, !dbg !1436
  ret ptr %19, !dbg !1436
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @guid_equal(ptr noundef %u1, ptr noundef %u2) #5 align 16 !dbg !1437 {
entry:
  %u1.addr = alloca ptr, align 8
  %u2.addr = alloca ptr, align 8
  store ptr %u1, ptr %u1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u1.addr, metadata !1441, metadata !DIExpression()), !dbg !1443
  store ptr %u2, ptr %u2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u2.addr, metadata !1442, metadata !DIExpression()), !dbg !1444
  %0 = load ptr, ptr %u1.addr, align 8, !dbg !1445
  %1 = load ptr, ptr %u2.addr, align 8, !dbg !1446
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef 16) #17, !dbg !1447
  %cmp = icmp eq i32 %call, 0, !dbg !1448
  ret i1 %cmp, !dbg !1449
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1450 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 332, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/prmt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9a66e18d0ab12cb9d9f81c7412c4e4c2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 25)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 349, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 41)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 55)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "prm_module_list", scope: !24, file: !2, line: 52, type: !114, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.prmt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22prmt\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/prmt.ll drivers/acpi/prmt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !50, globals: !171, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !32, !40}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 10, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "false", value: 0)
!31 = !DIEnumerator(name: "true", value: 1)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 140, baseType: !28, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!36 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!37 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!38 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!39 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !41, line: 364, baseType: !28, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!42 = !{!43, !44, !45, !46, !47, !48, !49}
!43 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!44 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!45 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!46 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!47 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!48 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!49 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!50 = !{!51, !53, !54, !57, !58, !63, !67, !87, !88, !89, !96, !97, !106, !107, !56, !111, !118, !120, !121, !128, !129, !130, !144}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !52, line: 424, baseType: !53)
!52 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 42, baseType: !56)
!55 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !52, line: 127, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !59, line: 23, baseType: !60)
!59 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !61, line: 31, baseType: !62)
!61 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!62 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !52, line: 814, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !59, line: 17, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !61, line: 21, baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_prmt_module_info", file: !69, line: 2630, size: 304, elements: !70)
!69 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7839eaf4648a429aeaa0ab12e30ee4db")
!70 = !{!71, !75, !76, !80, !81, !82, !83, !86}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !68, file: !69, line: 2631, baseType: !72, size: 16)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !59, line: 19, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !61, line: 24, baseType: !74)
!74 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !69, line: 2632, baseType: !72, size: 16, offset: 16)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "module_guid", scope: !68, file: !69, line: 2633, baseType: !77, size: 128, offset: 32)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 128, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !68, file: !69, line: 2634, baseType: !72, size: 16, offset: 160)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !68, file: !69, line: 2635, baseType: !72, size: 16, offset: 176)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "handler_info_count", scope: !68, file: !69, line: 2636, baseType: !72, size: 16, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "handler_info_offset", scope: !68, file: !69, line: 2637, baseType: !84, size: 32, offset: 208)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !59, line: 21, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !61, line: 27, baseType: !28)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_list_pointer", scope: !68, file: !69, line: 2638, baseType: !58, size: 64, offset: 240)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !55, line: 154, baseType: !28)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !91, line: 17, baseType: !92)
!91 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 15, size: 128, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !92, file: !91, line: 16, baseType: !95, size: 128)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 128, elements: !78)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_prmt_handler_info", file: !69, line: 2641, size: 352, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !98, file: !69, line: 2642, baseType: !72, size: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !98, file: !69, line: 2643, baseType: !72, size: 16, offset: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "handler_guid", scope: !98, file: !69, line: 2644, baseType: !77, size: 128, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "handler_address", scope: !98, file: !69, line: 2645, baseType: !58, size: 64, offset: 160)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "static_data_buffer_address", scope: !98, file: !69, line: 2646, baseType: !58, size: 64, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_param_buffer_address", scope: !98, file: !69, line: 2647, baseType: !58, size: 64, offset: 288)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 61, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !109, line: 72, baseType: !110)
!109 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !109, line: 16, baseType: !56)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !55, line: 190, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !55, line: 191, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !55, line: 191, baseType: !113, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prm_buffer", file: !2, line: 35, size: 208, elements: !123)
!123 = !{!124, !125, !126, !127}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prm_status", scope: !122, file: !2, line: 36, baseType: !64, size: 8)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "efi_status", scope: !122, file: !2, line: 37, baseType: !58, size: 64, offset: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prm_cmd", scope: !122, file: !2, line: 38, baseType: !64, size: 8, offset: 72)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "handler_guid", scope: !122, file: !2, line: 39, baseType: !90, size: 128, offset: 80)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !52, line: 421, baseType: !84)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prm_handler_info", file: !2, line: 54, size: 448, elements: !132)
!132 = !{!133, !136, !141, !142, !143}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !131, file: !2, line: 55, baseType: !134, size: 128, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !135, line: 74, baseType: !90, align: 32)
!135 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!136 = !DIDerivedType(tag: DW_TAG_member, name: "handler_addr", scope: !131, file: !2, line: 56, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !139)
!139 = !{!140, !58, !53}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !135, line: 47, baseType: !56)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "static_data_buffer_addr", scope: !131, file: !2, line: 57, baseType: !58, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_param_buffer_addr", scope: !131, file: !2, line: 58, baseType: !58, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list", scope: !131, file: !2, line: 60, baseType: !114, size: 128, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prm_module_info", file: !2, line: 63, size: 448, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !165, !168, !169}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "guid", scope: !145, file: !2, line: 64, baseType: !90, size: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "major_rev", scope: !145, file: !2, line: 65, baseType: !72, size: 16, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "minor_rev", scope: !145, file: !2, line: 66, baseType: !72, size: 16, offset: 144)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "handler_count", scope: !145, file: !2, line: 67, baseType: !72, size: 16, offset: 160)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_info", scope: !145, file: !2, line: 68, baseType: !152, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prm_mmio_info", file: !2, line: 30, size: 64, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_count", scope: !153, file: !2, line: 31, baseType: !58, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ranges", scope: !153, file: !2, line: 32, baseType: !157, offset: 64)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, elements: !163)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prm_mmio_addr_range", file: !2, line: 24, size: 160, elements: !159)
!159 = !{!160, !161, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !158, file: !2, line: 25, baseType: !58, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !158, file: !2, line: 26, baseType: !58, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !158, file: !2, line: 27, baseType: !84, size: 32, offset: 128)
!163 = !{!164}
!164 = !DISubrange(count: -1)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "updatable", scope: !145, file: !2, line: 69, baseType: !166, size: 8, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !55, line: 35, baseType: !167)
!167 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "module_list", scope: !145, file: !2, line: 71, baseType: !114, size: 128, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !145, file: !2, line: 72, baseType: !170, offset: 448)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, elements: !163)
!171 = !{!0, !7, !12, !17, !172, !22, !177, !182, !251, !257, !262}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !41, line: 480, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 21)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 47)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "_rs", scope: !184, file: !2, line: 250, type: !214, isLocal: true, isDefinition: true)
!184 = distinct !DISubprogram(name: "acpi_platformrt_space_handler", scope: !2, file: !2, line: 237, type: !185, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !190)
!185 = !DISubroutineType(types: !186)
!186 = !{!128, !84, !187, !84, !188, !53, !53}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !52, line: 129, baseType: !58)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_integer", file: !52, line: 472, baseType: !58)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !213}
!191 = !DILocalVariable(name: "function", arg: 1, scope: !184, file: !2, line: 237, type: !84)
!192 = !DILocalVariable(name: "addr", arg: 2, scope: !184, file: !2, line: 238, type: !187)
!193 = !DILocalVariable(name: "bits", arg: 3, scope: !184, file: !2, line: 239, type: !84)
!194 = !DILocalVariable(name: "value", arg: 4, scope: !184, file: !2, line: 239, type: !188)
!195 = !DILocalVariable(name: "handler_context", arg: 5, scope: !184, file: !2, line: 240, type: !53)
!196 = !DILocalVariable(name: "region_context", arg: 6, scope: !184, file: !2, line: 241, type: !53)
!197 = !DILocalVariable(name: "buffer", scope: !184, file: !2, line: 243, type: !121)
!198 = !DILocalVariable(name: "handler", scope: !184, file: !2, line: 244, type: !130)
!199 = !DILocalVariable(name: "module", scope: !184, file: !2, line: 245, type: !144)
!200 = !DILocalVariable(name: "status", scope: !184, file: !2, line: 246, type: !140)
!201 = !DILocalVariable(name: "context", scope: !184, file: !2, line: 247, type: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prm_context_buffer", file: !2, line: 42, size: 320, elements: !203)
!203 = !{!204, !208, !209, !210, !211, !212}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !202, file: !2, line: 43, baseType: !205, size: 32)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 4)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !202, file: !2, line: 44, baseType: !72, size: 16, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !202, file: !2, line: 45, baseType: !72, size: 16, offset: 48)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !202, file: !2, line: 46, baseType: !90, size: 128, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "static_data_buffer", scope: !202, file: !2, line: 47, baseType: !58, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_ranges", scope: !202, file: !2, line: 48, baseType: !152, size: 64, offset: 256)
!213 = !DILabel(scope: !184, name: "invalid_guid", file: !2, line: 321)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !215, line: 15, size: 320, elements: !216)
!215 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!216 = !{!217, !245, !246, !247, !248, !249, !250}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !214, file: !215, line: 16, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !219, line: 23, baseType: !220)
!219 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !219, line: 14, size: 32, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !220, file: !219, line: 15, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !224, line: 44, baseType: !225)
!224 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !224, line: 14, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !224, line: 15, baseType: !228, size: 32)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !224, line: 15, size: 32, elements: !229)
!229 = !{!230, !235, !240}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !228, file: !224, line: 16, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !55, line: 174, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 172, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !232, file: !55, line: 173, baseType: !87, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !224, line: 24, baseType: !236, size: 16)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !228, file: !224, line: 24, size: 16, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !236, file: !224, line: 25, baseType: !64, size: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !236, file: !224, line: 26, baseType: !64, size: 8, offset: 8)
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !224, line: 28, baseType: !241, size: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !228, file: !224, line: 28, size: 32, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !241, file: !224, line: 29, baseType: !72, size: 16)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !241, file: !224, line: 30, baseType: !72, size: 16, offset: 16)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !214, file: !215, line: 18, baseType: !87, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !214, file: !215, line: 19, baseType: !87, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !214, file: !215, line: 20, baseType: !87, size: 32, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !214, file: !215, line: 21, baseType: !87, size: 32, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !214, file: !215, line: 22, baseType: !56, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !215, line: 23, baseType: !56, size: 64, offset: 256)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 240, elements: !255)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!255 = !{!256}
!256 = !DISubrange(count: 30)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 49)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 271, type: !3, isLocal: true, isDefinition: true)
!264 = !{i32 7, !"Dwarf Version", i32 5}
!265 = !{i32 2, !"Debug Info Version", i32 3}
!266 = !{i32 1, !"wchar_size", i32 2}
!267 = !{i32 8, !"cf-protection-branch", i32 1}
!268 = !{i32 4, !"function_return_thunk_extern", i32 1}
!269 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!270 = !{i32 1, !"Code Model", i32 2}
!271 = !{i32 1, !"override-stack-alignment", i32 8}
!272 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!273 = distinct !DISubprogram(name: "init_prmt", scope: !2, file: !2, line: 326, type: !274, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{null}
!276 = !{!277, !297, !298}
!277 = !DILocalVariable(name: "tbl", scope: !273, file: !2, line: 328, type: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !280, line: 68, size: 288, elements: !281)
!280 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!281 = !{!282, !283, !284, !285, !286, !290, !294, !295, !296}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !279, file: !280, line: 69, baseType: !205, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !279, file: !280, line: 70, baseType: !84, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !279, file: !280, line: 71, baseType: !64, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !279, file: !280, line: 72, baseType: !64, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !279, file: !280, line: 73, baseType: !287, size: 48, offset: 80)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 6)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !279, file: !280, line: 74, baseType: !291, size: 64, offset: 128)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !279, file: !280, line: 75, baseType: !84, size: 32, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !279, file: !280, line: 76, baseType: !205, size: 32, offset: 224)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !279, file: !280, line: 77, baseType: !84, size: 32, offset: 256)
!297 = !DILocalVariable(name: "status", scope: !273, file: !2, line: 329, type: !128)
!298 = !DILocalVariable(name: "mc", scope: !273, file: !2, line: 330, type: !87)
!299 = !DILocation(line: 328, column: 2, scope: !273)
!300 = !DILocation(line: 328, column: 28, scope: !273)
!301 = !DILocation(line: 329, column: 2, scope: !273)
!302 = !DILocation(line: 329, column: 14, scope: !273)
!303 = !DILocation(line: 330, column: 2, scope: !273)
!304 = !DILocation(line: 330, column: 6, scope: !273)
!305 = !DILocation(line: 332, column: 11, scope: !273)
!306 = !DILocation(line: 332, column: 9, scope: !273)
!307 = !DILocation(line: 333, column: 6, scope: !308)
!308 = distinct !DILexicalBlock(scope: !273, file: !2, line: 333, column: 6)
!309 = !DILocation(line: 333, column: 6, scope: !273)
!310 = !DILocation(line: 334, column: 3, scope: !308)
!311 = !DILocation(line: 336, column: 7, scope: !273)
!312 = !DILocation(line: 336, column: 5, scope: !273)
!313 = !DILocation(line: 339, column: 17, scope: !273)
!314 = !DILocation(line: 339, column: 2, scope: !273)
!315 = !DILocation(line: 343, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !273, file: !2, line: 343, column: 6)
!317 = !DILocation(line: 343, column: 9, scope: !316)
!318 = !DILocation(line: 343, column: 6, scope: !273)
!319 = !DILocation(line: 344, column: 3, scope: !316)
!320 = !DILocation(line: 346, column: 2, scope: !321)
!321 = distinct !DILexicalBlock(scope: !273, file: !2, line: 346, column: 2)
!322 = !DILocation(line: 346, column: 2, scope: !323)
!323 = distinct !DILexicalBlock(scope: !321, file: !2, line: 346, column: 2)
!324 = !DILocation(line: 348, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !273, file: !2, line: 348, column: 6)
!326 = !DILocation(line: 348, column: 6, scope: !273)
!327 = !DILocation(line: 349, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 349, column: 3)
!329 = distinct !DILexicalBlock(scope: !325, file: !2, line: 348, column: 42)
!330 = !DILocation(line: 349, column: 3, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !2, line: 349, column: 3)
!332 = !DILocation(line: 350, column: 3, scope: !329)
!333 = !DILocation(line: 353, column: 11, scope: !273)
!334 = !DILocation(line: 353, column: 9, scope: !273)
!335 = !DILocation(line: 357, column: 6, scope: !336)
!336 = distinct !DILexicalBlock(scope: !273, file: !2, line: 357, column: 6)
!337 = !DILocation(line: 357, column: 6, scope: !273)
!338 = !DILocation(line: 358, column: 3, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !2, line: 358, column: 3)
!340 = !DILocation(line: 358, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !339, file: !2, line: 358, column: 3)
!342 = !DILocation(line: 358, column: 3, scope: !336)
!343 = !DILocation(line: 359, column: 1, scope: !273)
!344 = !DISubprogram(name: "acpi_get_table", scope: !345, file: !345, line: 489, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!346 = !DISubroutineType(types: !347)
!347 = !{!128, !348, !84, !349}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !52, line: 423, baseType: !106)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!350 = !DISubprogram(name: "acpi_table_parse_entries", scope: !351, file: !351, line: 243, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!352 = !DISubroutineType(types: !353)
!353 = !{!87, !106, !56, !87, !354, !28}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_entry_handler", file: !351, line: 131, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!87, !358, !119}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_subtable_headers", file: !351, line: 122, size: 64, elements: !360)
!360 = !{!361, !367, !373, !378}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !359, file: !351, line: 123, baseType: !362, size: 16)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_header", file: !363, line: 96, size: 16, elements: !364)
!363 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !363, line: 97, baseType: !64, size: 8)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !362, file: !363, line: 98, baseType: !64, size: 8, offset: 8)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "hmat", scope: !359, file: !351, line: 124, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hmat_structure", file: !363, line: 1712, size: 64, elements: !369)
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !363, line: 1713, baseType: !72, size: 16)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !368, file: !363, line: 1714, baseType: !72, size: 16, offset: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !368, file: !363, line: 1715, baseType: !84, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "prmt", scope: !359, file: !351, line: 125, baseType: !374, size: 32)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_prmt_module_header", file: !69, line: 2625, size: 32, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !374, file: !69, line: 2626, baseType: !72, size: 16)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !374, file: !69, line: 2627, baseType: !72, size: 16, offset: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "cedt", scope: !359, file: !351, line: 126, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_cedt_header", file: !363, line: 483, size: 32, elements: !380)
!380 = !{!381, !382, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !379, file: !363, line: 484, baseType: !64, size: 8)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !379, file: !363, line: 485, baseType: !64, size: 8, offset: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !379, file: !363, line: 486, baseType: !72, size: 16, offset: 16)
!384 = distinct !DISubprogram(name: "acpi_parse_prmt", scope: !2, file: !2, line: 97, type: !356, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!386 = !DILocalVariable(name: "header", arg: 1, scope: !384, file: !2, line: 97, type: !358)
!387 = !DILocalVariable(name: "end", arg: 2, scope: !384, file: !2, line: 97, type: !119)
!388 = !DILocalVariable(name: "module_info", scope: !384, file: !2, line: 99, type: !67)
!389 = !DILocalVariable(name: "handler_info", scope: !384, file: !2, line: 100, type: !97)
!390 = !DILocalVariable(name: "th", scope: !384, file: !2, line: 101, type: !130)
!391 = !DILocalVariable(name: "tm", scope: !384, file: !2, line: 102, type: !144)
!392 = !DILocalVariable(name: "mmio_count", scope: !384, file: !2, line: 103, type: !96)
!393 = !DILocalVariable(name: "cur_handler", scope: !384, file: !2, line: 104, type: !58)
!394 = !DILocalVariable(name: "module_info_size", scope: !384, file: !2, line: 105, type: !84)
!395 = !DILocalVariable(name: "mmio_range_size", scope: !384, file: !2, line: 106, type: !58)
!396 = !DILocalVariable(name: "temp_mmio", scope: !384, file: !2, line: 107, type: !53)
!397 = !DILabel(scope: !384, name: "parse_prmt_out4", file: !2, line: 168)
!398 = !DILabel(scope: !384, name: "parse_prmt_out3", file: !2, line: 170)
!399 = !DILabel(scope: !384, name: "parse_prmt_out2", file: !2, line: 172)
!400 = !DILabel(scope: !384, name: "parse_prmt_out1", file: !2, line: 174)
!401 = !DILocation(line: 97, column: 46, scope: !384)
!402 = !DILocation(line: 97, column: 74, scope: !384)
!403 = !DILocation(line: 99, column: 2, scope: !384)
!404 = !DILocation(line: 99, column: 32, scope: !384)
!405 = !DILocation(line: 100, column: 2, scope: !384)
!406 = !DILocation(line: 100, column: 33, scope: !384)
!407 = !DILocation(line: 101, column: 2, scope: !384)
!408 = !DILocation(line: 101, column: 27, scope: !384)
!409 = !DILocation(line: 102, column: 2, scope: !384)
!410 = !DILocation(line: 102, column: 26, scope: !384)
!411 = !DILocation(line: 103, column: 2, scope: !384)
!412 = !DILocation(line: 103, column: 7, scope: !384)
!413 = !DILocation(line: 104, column: 2, scope: !384)
!414 = !DILocation(line: 104, column: 6, scope: !384)
!415 = !DILocation(line: 105, column: 2, scope: !384)
!416 = !DILocation(line: 105, column: 6, scope: !384)
!417 = !DILocation(line: 106, column: 2, scope: !384)
!418 = !DILocation(line: 106, column: 6, scope: !384)
!419 = !DILocation(line: 107, column: 2, scope: !384)
!420 = !DILocation(line: 107, column: 8, scope: !384)
!421 = !DILocation(line: 109, column: 49, scope: !384)
!422 = !DILocation(line: 109, column: 14, scope: !384)
!423 = !DILocation(line: 110, column: 21, scope: !384)
!424 = !DILocation(line: 110, column: 19, scope: !384)
!425 = !DILocation(line: 111, column: 15, scope: !384)
!426 = !DILocation(line: 111, column: 7, scope: !384)
!427 = !DILocation(line: 111, column: 5, scope: !384)
!428 = !DILocation(line: 112, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !384, file: !2, line: 112, column: 6)
!430 = !DILocation(line: 112, column: 6, scope: !384)
!431 = !DILocation(line: 113, column: 3, scope: !429)
!432 = !DILocation(line: 115, column: 13, scope: !384)
!433 = !DILocation(line: 115, column: 17, scope: !384)
!434 = !DILocation(line: 115, column: 34, scope: !384)
!435 = !DILocation(line: 115, column: 47, scope: !384)
!436 = !DILocation(line: 115, column: 2, scope: !384)
!437 = !DILocation(line: 116, column: 18, scope: !384)
!438 = !DILocation(line: 116, column: 31, scope: !384)
!439 = !DILocation(line: 116, column: 2, scope: !384)
!440 = !DILocation(line: 116, column: 6, scope: !384)
!441 = !DILocation(line: 116, column: 16, scope: !384)
!442 = !DILocation(line: 117, column: 18, scope: !384)
!443 = !DILocation(line: 117, column: 31, scope: !384)
!444 = !DILocation(line: 117, column: 2, scope: !384)
!445 = !DILocation(line: 117, column: 6, scope: !384)
!446 = !DILocation(line: 117, column: 16, scope: !384)
!447 = !DILocation(line: 118, column: 22, scope: !384)
!448 = !DILocation(line: 118, column: 35, scope: !384)
!449 = !DILocation(line: 118, column: 2, scope: !384)
!450 = !DILocation(line: 118, column: 6, scope: !384)
!451 = !DILocation(line: 118, column: 20, scope: !384)
!452 = !DILocation(line: 119, column: 2, scope: !384)
!453 = !DILocation(line: 119, column: 6, scope: !384)
!454 = !DILocation(line: 119, column: 16, scope: !384)
!455 = !DILocation(line: 121, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !384, file: !2, line: 121, column: 6)
!457 = !DILocation(line: 121, column: 19, scope: !456)
!458 = !DILocation(line: 121, column: 6, scope: !384)
!459 = !DILocation(line: 126, column: 33, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !2, line: 121, column: 38)
!461 = !DILocation(line: 126, column: 46, scope: !460)
!462 = !DILocation(line: 126, column: 24, scope: !460)
!463 = !DILocation(line: 126, column: 14, scope: !460)
!464 = !DILocation(line: 127, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !2, line: 127, column: 7)
!466 = !DILocation(line: 127, column: 7, scope: !460)
!467 = !DILocation(line: 128, column: 4, scope: !465)
!468 = !DILocation(line: 130, column: 21, scope: !460)
!469 = !DILocation(line: 130, column: 19, scope: !460)
!470 = !DILocation(line: 131, column: 27, scope: !460)
!471 = !DILocation(line: 131, column: 19, scope: !460)
!472 = !DILocation(line: 131, column: 3, scope: !460)
!473 = !DILocation(line: 131, column: 7, scope: !460)
!474 = !DILocation(line: 131, column: 17, scope: !460)
!475 = !DILocation(line: 132, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !460, file: !2, line: 132, column: 7)
!477 = !DILocation(line: 132, column: 12, scope: !476)
!478 = !DILocation(line: 132, column: 7, scope: !460)
!479 = !DILocation(line: 133, column: 4, scope: !476)
!480 = !DILocation(line: 135, column: 24, scope: !460)
!481 = !DILocation(line: 135, column: 37, scope: !460)
!482 = !DILocation(line: 135, column: 56, scope: !460)
!483 = !DILocation(line: 135, column: 15, scope: !460)
!484 = !DILocation(line: 135, column: 13, scope: !460)
!485 = !DILocation(line: 136, column: 8, scope: !486)
!486 = distinct !DILexicalBlock(scope: !460, file: !2, line: 136, column: 7)
!487 = !DILocation(line: 136, column: 7, scope: !460)
!488 = !DILocation(line: 137, column: 4, scope: !486)
!489 = !DILocation(line: 138, column: 11, scope: !460)
!490 = !DILocation(line: 138, column: 15, scope: !460)
!491 = !DILocation(line: 138, column: 26, scope: !460)
!492 = !DILocation(line: 138, column: 37, scope: !460)
!493 = !DILocation(line: 138, column: 3, scope: !460)
!494 = !DILocation(line: 139, column: 2, scope: !460)
!495 = !DILocation(line: 140, column: 19, scope: !496)
!496 = distinct !DILexicalBlock(scope: !456, file: !2, line: 139, column: 9)
!497 = !DILocation(line: 140, column: 3, scope: !496)
!498 = !DILocation(line: 140, column: 7, scope: !496)
!499 = !DILocation(line: 140, column: 17, scope: !496)
!500 = !DILocation(line: 141, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !2, line: 141, column: 7)
!502 = !DILocation(line: 141, column: 12, scope: !501)
!503 = !DILocation(line: 141, column: 7, scope: !496)
!504 = !DILocation(line: 142, column: 4, scope: !501)
!505 = !DILocation(line: 144, column: 3, scope: !496)
!506 = !DILocation(line: 144, column: 7, scope: !496)
!507 = !DILocation(line: 144, column: 18, scope: !496)
!508 = !DILocation(line: 144, column: 29, scope: !496)
!509 = !DILocation(line: 147, column: 18, scope: !384)
!510 = !DILocation(line: 147, column: 22, scope: !384)
!511 = !DILocation(line: 147, column: 2, scope: !384)
!512 = !DILocation(line: 148, column: 12, scope: !384)
!513 = !DILocation(line: 148, column: 16, scope: !384)
!514 = !DILocation(line: 148, column: 2, scope: !384)
!515 = !DILocation(line: 150, column: 17, scope: !384)
!516 = !DILocation(line: 150, column: 15, scope: !384)
!517 = !DILocation(line: 151, column: 2, scope: !384)
!518 = !DILocation(line: 152, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !384, file: !2, line: 151, column: 5)
!520 = !DILocation(line: 152, column: 13, scope: !519)
!521 = !DILocation(line: 152, column: 22, scope: !519)
!522 = !DILocation(line: 152, column: 6, scope: !519)
!523 = !DILocation(line: 154, column: 14, scope: !519)
!524 = !DILocation(line: 154, column: 18, scope: !519)
!525 = !DILocation(line: 154, column: 34, scope: !519)
!526 = !DILocation(line: 154, column: 48, scope: !519)
!527 = !DILocation(line: 154, column: 3, scope: !519)
!528 = !DILocation(line: 156, column: 30, scope: !519)
!529 = !DILocation(line: 156, column: 34, scope: !519)
!530 = !DILocation(line: 156, column: 40, scope: !519)
!531 = !DILocation(line: 156, column: 54, scope: !519)
!532 = !DILocation(line: 156, column: 12, scope: !519)
!533 = !DILocation(line: 156, column: 4, scope: !519)
!534 = !DILocation(line: 155, column: 3, scope: !519)
!535 = !DILocation(line: 155, column: 7, scope: !519)
!536 = !DILocation(line: 155, column: 20, scope: !519)
!537 = !DILocation(line: 159, column: 22, scope: !519)
!538 = !DILocation(line: 159, column: 26, scope: !519)
!539 = !DILocation(line: 159, column: 32, scope: !519)
!540 = !DILocation(line: 159, column: 46, scope: !519)
!541 = !DILocation(line: 159, column: 4, scope: !519)
!542 = !DILocation(line: 158, column: 3, scope: !519)
!543 = !DILocation(line: 158, column: 7, scope: !519)
!544 = !DILocation(line: 158, column: 31, scope: !519)
!545 = !DILocation(line: 162, column: 22, scope: !519)
!546 = !DILocation(line: 162, column: 26, scope: !519)
!547 = !DILocation(line: 162, column: 32, scope: !519)
!548 = !DILocation(line: 162, column: 46, scope: !519)
!549 = !DILocation(line: 162, column: 4, scope: !519)
!550 = !DILocation(line: 161, column: 3, scope: !519)
!551 = !DILocation(line: 161, column: 7, scope: !519)
!552 = !DILocation(line: 161, column: 30, scope: !519)
!553 = !DILocation(line: 164, column: 2, scope: !519)
!554 = !DILocation(line: 164, column: 11, scope: !384)
!555 = !DILocation(line: 164, column: 27, scope: !384)
!556 = !DILocation(line: 164, column: 31, scope: !384)
!557 = !DILocation(line: 164, column: 25, scope: !384)
!558 = !DILocation(line: 164, column: 45, scope: !384)
!559 = !DILocation(line: 164, column: 64, scope: !384)
!560 = !DILocation(line: 164, column: 62, scope: !384)
!561 = !DILocation(line: 0, scope: !384)
!562 = distinct !{!562, !517, !563, !564, !565}
!563 = !DILocation(line: 164, column: 95, scope: !384)
!564 = !{!"llvm.loop.mustprogress"}
!565 = !{!"llvm.loop.unroll.disable"}
!566 = !DILocation(line: 166, column: 2, scope: !384)
!567 = !DILocation(line: 168, column: 1, scope: !384)
!568 = !DILocation(line: 169, column: 8, scope: !384)
!569 = !DILocation(line: 169, column: 12, scope: !384)
!570 = !DILocation(line: 169, column: 2, scope: !384)
!571 = !DILocation(line: 170, column: 1, scope: !384)
!572 = !DILocation(line: 171, column: 11, scope: !384)
!573 = !DILocation(line: 171, column: 2, scope: !384)
!574 = !DILocation(line: 172, column: 1, scope: !384)
!575 = !DILocation(line: 173, column: 8, scope: !384)
!576 = !DILocation(line: 173, column: 2, scope: !384)
!577 = !DILocation(line: 174, column: 1, scope: !384)
!578 = !DILocation(line: 175, column: 2, scope: !384)
!579 = !DILocation(line: 176, column: 1, scope: !384)
!580 = !DISubprogram(name: "acpi_put_table", scope: !345, file: !345, line: 493, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !278}
!583 = !DISubprogram(name: "_printk", scope: !584, file: !584, line: 153, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!585 = !DISubroutineType(types: !586)
!586 = !{!87, !587, null}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!588 = distinct !DISubprogram(name: "efi_enabled", scope: !135, file: !135, line: 880, type: !589, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{!166, !87}
!591 = !{!592}
!592 = !DILocalVariable(name: "feature", arg: 1, scope: !588, file: !135, line: 880, type: !87)
!593 = !DILocation(line: 880, column: 36, scope: !588)
!594 = !DILocation(line: 882, column: 9, scope: !588)
!595 = !DILocation(line: 882, column: 39, scope: !588)
!596 = !DILocation(line: 882, column: 2, scope: !588)
!597 = !DISubprogram(name: "acpi_install_address_space_handler", scope: !345, file: !345, line: 645, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!598 = !DISubroutineType(types: !599)
!599 = !{!128, !51, !63, !600, !604, !53}
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !52, line: 1093, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!128, !84, !187, !84, !96, !53, !53}
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !52, line: 1126, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!128, !51, !84, !53, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!609 = !DILocation(line: 237, column: 54, scope: !184)
!610 = !DILocation(line: 238, column: 30, scope: !184)
!611 = !DILocation(line: 239, column: 12, scope: !184)
!612 = !DILocation(line: 239, column: 32, scope: !184)
!613 = !DILocation(line: 240, column: 14, scope: !184)
!614 = !DILocation(line: 241, column: 14, scope: !184)
!615 = !DILocation(line: 243, column: 2, scope: !184)
!616 = !DILocation(line: 243, column: 21, scope: !184)
!617 = !DILocation(line: 243, column: 30, scope: !184)
!618 = !DILocation(line: 244, column: 2, scope: !184)
!619 = !DILocation(line: 244, column: 27, scope: !184)
!620 = !DILocation(line: 245, column: 2, scope: !184)
!621 = !DILocation(line: 245, column: 26, scope: !184)
!622 = !DILocation(line: 246, column: 2, scope: !184)
!623 = !DILocation(line: 246, column: 15, scope: !184)
!624 = !DILocation(line: 247, column: 2, scope: !184)
!625 = !DILocation(line: 247, column: 28, scope: !184)
!626 = !DILocation(line: 249, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !184, file: !2, line: 249, column: 6)
!628 = !DILocation(line: 249, column: 6, scope: !184)
!629 = !DILocation(line: 250, column: 3, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !2, line: 250, column: 3)
!631 = distinct !DILexicalBlock(scope: !632, file: !2, line: 250, column: 3)
!632 = distinct !DILexicalBlock(scope: !627, file: !2, line: 249, column: 42)
!633 = !DILocation(line: 250, column: 3, scope: !631)
!634 = !DILocation(line: 250, column: 3, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !2, line: 250, column: 3)
!636 = !DILocation(line: 250, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !2, line: 250, column: 3)
!638 = !DILocation(line: 251, column: 3, scope: !632)
!639 = !DILocation(line: 258, column: 10, scope: !184)
!640 = !DILocation(line: 258, column: 18, scope: !184)
!641 = !DILocation(line: 258, column: 2, scope: !184)
!642 = !DILocation(line: 261, column: 31, scope: !643)
!643 = distinct !DILexicalBlock(scope: !184, file: !2, line: 258, column: 27)
!644 = !DILocation(line: 261, column: 39, scope: !643)
!645 = !DILocation(line: 261, column: 13, scope: !643)
!646 = !DILocation(line: 261, column: 11, scope: !643)
!647 = !DILocation(line: 262, column: 29, scope: !643)
!648 = !DILocation(line: 262, column: 37, scope: !643)
!649 = !DILocation(line: 262, column: 12, scope: !643)
!650 = !DILocation(line: 262, column: 10, scope: !643)
!651 = !DILocation(line: 263, column: 8, scope: !652)
!652 = distinct !DILexicalBlock(scope: !643, file: !2, line: 263, column: 7)
!653 = !DILocation(line: 263, column: 16, scope: !652)
!654 = !DILocation(line: 263, column: 20, scope: !652)
!655 = !DILocation(line: 263, column: 7, scope: !643)
!656 = !DILocation(line: 264, column: 4, scope: !652)
!657 = !DILocation(line: 266, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !643, file: !2, line: 266, column: 7)
!659 = !DILocation(line: 266, column: 17, scope: !658)
!660 = !DILocation(line: 266, column: 7, scope: !643)
!661 = !DILocation(line: 267, column: 4, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !2, line: 266, column: 31)
!663 = !DILocation(line: 267, column: 12, scope: !662)
!664 = !DILocation(line: 267, column: 23, scope: !662)
!665 = !DILocation(line: 268, column: 4, scope: !662)
!666 = !DILocation(line: 271, column: 3, scope: !643)
!667 = !DILocation(line: 272, column: 11, scope: !643)
!668 = !DILocation(line: 272, column: 20, scope: !643)
!669 = !DILocation(line: 273, column: 11, scope: !643)
!670 = !DILocation(line: 273, column: 20, scope: !643)
!671 = !DILocation(line: 274, column: 11, scope: !643)
!672 = !DILocation(line: 274, column: 24, scope: !643)
!673 = !DILocation(line: 274, column: 33, scope: !643)
!674 = !DILocation(line: 275, column: 32, scope: !643)
!675 = !DILocation(line: 275, column: 41, scope: !643)
!676 = !DILocation(line: 275, column: 11, scope: !643)
!677 = !DILocation(line: 275, column: 30, scope: !643)
!678 = !DILocation(line: 276, column: 25, scope: !643)
!679 = !DILocation(line: 276, column: 33, scope: !643)
!680 = !DILocation(line: 276, column: 11, scope: !643)
!681 = !DILocation(line: 276, column: 23, scope: !643)
!682 = !DILocation(line: 278, column: 38, scope: !643)
!683 = !DILocation(line: 278, column: 47, scope: !643)
!684 = !DILocation(line: 279, column: 10, scope: !643)
!685 = !DILocation(line: 279, column: 19, scope: !643)
!686 = !DILocation(line: 278, column: 12, scope: !643)
!687 = !DILocation(line: 278, column: 10, scope: !643)
!688 = !DILocation(line: 281, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !643, file: !2, line: 281, column: 7)
!690 = !DILocation(line: 281, column: 14, scope: !689)
!691 = !DILocation(line: 281, column: 7, scope: !643)
!692 = !DILocation(line: 282, column: 4, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !2, line: 281, column: 30)
!694 = !DILocation(line: 282, column: 12, scope: !693)
!695 = !DILocation(line: 282, column: 23, scope: !693)
!696 = !DILocation(line: 283, column: 3, scope: !693)
!697 = !DILocation(line: 284, column: 4, scope: !698)
!698 = distinct !DILexicalBlock(scope: !689, file: !2, line: 283, column: 10)
!699 = !DILocation(line: 284, column: 12, scope: !698)
!700 = !DILocation(line: 284, column: 23, scope: !698)
!701 = !DILocation(line: 285, column: 25, scope: !698)
!702 = !DILocation(line: 285, column: 4, scope: !698)
!703 = !DILocation(line: 285, column: 12, scope: !698)
!704 = !DILocation(line: 285, column: 23, scope: !698)
!705 = !DILocation(line: 287, column: 3, scope: !643)
!706 = !DILocation(line: 291, column: 29, scope: !643)
!707 = !DILocation(line: 291, column: 37, scope: !643)
!708 = !DILocation(line: 291, column: 12, scope: !643)
!709 = !DILocation(line: 291, column: 10, scope: !643)
!710 = !DILocation(line: 292, column: 8, scope: !711)
!711 = distinct !DILexicalBlock(scope: !643, file: !2, line: 292, column: 7)
!712 = !DILocation(line: 292, column: 7, scope: !643)
!713 = !DILocation(line: 293, column: 4, scope: !711)
!714 = !DILocation(line: 295, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !643, file: !2, line: 295, column: 7)
!716 = !DILocation(line: 295, column: 15, scope: !715)
!717 = !{i8 0, i8 2}
!718 = !{}
!719 = !DILocation(line: 295, column: 7, scope: !643)
!720 = !DILocation(line: 296, column: 4, scope: !715)
!721 = !DILocation(line: 296, column: 12, scope: !715)
!722 = !DILocation(line: 296, column: 22, scope: !715)
!723 = !DILocation(line: 298, column: 4, scope: !715)
!724 = !DILocation(line: 298, column: 12, scope: !715)
!725 = !DILocation(line: 298, column: 23, scope: !715)
!726 = !DILocation(line: 299, column: 3, scope: !643)
!727 = !DILocation(line: 303, column: 29, scope: !643)
!728 = !DILocation(line: 303, column: 37, scope: !643)
!729 = !DILocation(line: 303, column: 12, scope: !643)
!730 = !DILocation(line: 303, column: 10, scope: !643)
!731 = !DILocation(line: 304, column: 8, scope: !732)
!732 = distinct !DILexicalBlock(scope: !643, file: !2, line: 304, column: 7)
!733 = !DILocation(line: 304, column: 7, scope: !643)
!734 = !DILocation(line: 305, column: 4, scope: !732)
!735 = !DILocation(line: 307, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !643, file: !2, line: 307, column: 7)
!737 = !DILocation(line: 307, column: 15, scope: !736)
!738 = !DILocation(line: 307, column: 7, scope: !643)
!739 = !DILocation(line: 308, column: 4, scope: !736)
!740 = !DILocation(line: 308, column: 12, scope: !736)
!741 = !DILocation(line: 308, column: 23, scope: !736)
!742 = !DILocation(line: 310, column: 4, scope: !736)
!743 = !DILocation(line: 310, column: 12, scope: !736)
!744 = !DILocation(line: 310, column: 22, scope: !736)
!745 = !DILocation(line: 311, column: 3, scope: !643)
!746 = !DILocation(line: 315, column: 3, scope: !643)
!747 = !DILocation(line: 315, column: 11, scope: !643)
!748 = !DILocation(line: 315, column: 22, scope: !643)
!749 = !DILocation(line: 316, column: 3, scope: !643)
!750 = !DILocation(line: 319, column: 2, scope: !184)
!751 = !DILocation(line: 321, column: 1, scope: !184)
!752 = !DILocation(line: 322, column: 2, scope: !184)
!753 = !DILocation(line: 322, column: 10, scope: !184)
!754 = !DILocation(line: 322, column: 21, scope: !184)
!755 = !DILocation(line: 323, column: 2, scope: !184)
!756 = !DILocation(line: 324, column: 1, scope: !184)
!757 = distinct !DISubprogram(name: "size_add", scope: !758, file: !758, line: 208, type: !759, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !761)
!758 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!759 = !DISubroutineType(types: !760)
!760 = !{!107, !107, !107}
!761 = !{!762, !763, !764}
!762 = !DILocalVariable(name: "addend1", arg: 1, scope: !757, file: !758, line: 208, type: !107)
!763 = !DILocalVariable(name: "addend2", arg: 2, scope: !757, file: !758, line: 208, type: !107)
!764 = !DILocalVariable(name: "bytes", scope: !757, file: !758, line: 210, type: !107)
!765 = !DILocation(line: 208, column: 51, scope: !757)
!766 = !DILocation(line: 208, column: 67, scope: !757)
!767 = !DILocation(line: 210, column: 2, scope: !757)
!768 = !DILocation(line: 210, column: 9, scope: !757)
!769 = !DILocation(line: 212, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !757, file: !758, line: 212, column: 6)
!771 = !DILocation(line: 212, column: 6, scope: !757)
!772 = !DILocation(line: 213, column: 3, scope: !770)
!773 = !DILocation(line: 215, column: 9, scope: !757)
!774 = !DILocation(line: 215, column: 2, scope: !757)
!775 = !DILocation(line: 216, column: 1, scope: !757)
!776 = distinct !DISubprogram(name: "size_mul", scope: !758, file: !758, line: 189, type: !759, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !777)
!777 = !{!778, !779, !780}
!778 = !DILocalVariable(name: "factor1", arg: 1, scope: !776, file: !758, line: 189, type: !107)
!779 = !DILocalVariable(name: "factor2", arg: 2, scope: !776, file: !758, line: 189, type: !107)
!780 = !DILocalVariable(name: "bytes", scope: !776, file: !758, line: 191, type: !107)
!781 = !DILocation(line: 189, column: 51, scope: !776)
!782 = !DILocation(line: 189, column: 67, scope: !776)
!783 = !DILocation(line: 191, column: 2, scope: !776)
!784 = !DILocation(line: 191, column: 9, scope: !776)
!785 = !DILocation(line: 193, column: 6, scope: !786)
!786 = distinct !DILexicalBlock(scope: !776, file: !758, line: 193, column: 6)
!787 = !DILocation(line: 193, column: 6, scope: !776)
!788 = !DILocation(line: 194, column: 3, scope: !786)
!789 = !DILocation(line: 196, column: 9, scope: !776)
!790 = !DILocation(line: 196, column: 2, scope: !776)
!791 = !DILocation(line: 197, column: 1, scope: !776)
!792 = distinct !DISubprogram(name: "kmalloc", scope: !41, file: !41, line: 591, type: !793, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{!53, !107, !88}
!795 = !{!796, !797, !798}
!796 = !DILocalVariable(name: "size", arg: 1, scope: !792, file: !41, line: 591, type: !107)
!797 = !DILocalVariable(name: "flags", arg: 2, scope: !792, file: !41, line: 591, type: !88)
!798 = !DILocalVariable(name: "index", scope: !799, file: !41, line: 594, type: !28)
!799 = distinct !DILexicalBlock(scope: !800, file: !41, line: 593, column: 42)
!800 = distinct !DILexicalBlock(scope: !792, file: !41, line: 593, column: 6)
!801 = !DILocation(line: 591, column: 61, scope: !792)
!802 = !DILocation(line: 591, column: 73, scope: !792)
!803 = !DILocation(line: 593, column: 27, scope: !800)
!804 = !DILocation(line: 593, column: 6, scope: !800)
!805 = !DILocation(line: 593, column: 33, scope: !800)
!806 = !DILocation(line: 593, column: 36, scope: !800)
!807 = !DILocation(line: 593, column: 6, scope: !792)
!808 = !DILocation(line: 594, column: 3, scope: !799)
!809 = !DILocation(line: 594, column: 16, scope: !799)
!810 = !DILocation(line: 596, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !799, file: !41, line: 596, column: 7)
!812 = !DILocation(line: 596, column: 12, scope: !811)
!813 = !DILocation(line: 596, column: 7, scope: !799)
!814 = !DILocation(line: 597, column: 25, scope: !811)
!815 = !DILocation(line: 597, column: 31, scope: !811)
!816 = !DILocation(line: 597, column: 11, scope: !811)
!817 = !DILocation(line: 597, column: 4, scope: !811)
!818 = !DILocation(line: 599, column: 11, scope: !799)
!819 = !DILocation(line: 599, column: 9, scope: !799)
!820 = !DILocation(line: 601, column: 33, scope: !799)
!821 = !DILocation(line: 601, column: 40, scope: !799)
!822 = !DILocation(line: 601, column: 20, scope: !799)
!823 = !DILocation(line: 601, column: 5, scope: !799)
!824 = !DILocation(line: 601, column: 51, scope: !799)
!825 = !DILocation(line: 602, column: 5, scope: !799)
!826 = !DILocation(line: 602, column: 12, scope: !799)
!827 = !DILocation(line: 600, column: 10, scope: !799)
!828 = !DILocation(line: 600, column: 3, scope: !799)
!829 = !DILocation(line: 603, column: 2, scope: !800)
!830 = !DILocation(line: 604, column: 19, scope: !792)
!831 = !DILocation(line: 604, column: 25, scope: !792)
!832 = !DILocation(line: 604, column: 9, scope: !792)
!833 = !DILocation(line: 604, column: 2, scope: !792)
!834 = !DILocation(line: 605, column: 1, scope: !792)
!835 = distinct !DISubprogram(name: "guid_copy", scope: !91, file: !91, line: 51, type: !836, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !840)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !89, !838}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!840 = !{!841, !842}
!841 = !DILocalVariable(name: "dst", arg: 1, scope: !835, file: !91, line: 51, type: !89)
!842 = !DILocalVariable(name: "src", arg: 2, scope: !835, file: !91, line: 51, type: !838)
!843 = !DILocation(line: 51, column: 38, scope: !835)
!844 = !DILocation(line: 51, column: 57, scope: !835)
!845 = !DILocation(line: 53, column: 9, scope: !835)
!846 = !DILocation(line: 53, column: 14, scope: !835)
!847 = !DILocation(line: 53, column: 2, scope: !835)
!848 = !DILocation(line: 54, column: 1, scope: !835)
!849 = !DISubprogram(name: "memremap", scope: !33, file: !33, line: 149, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!850 = !DISubroutineType(types: !851)
!851 = !{!53, !852, !107, !56}
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !55, line: 164, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !55, line: 159, baseType: !58)
!854 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !855, file: !855, line: 35, type: !856, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !858)
!855 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!856 = !DISubroutineType(types: !857)
!857 = !{null, !113}
!858 = !{!859}
!859 = !DILocalVariable(name: "list", arg: 1, scope: !854, file: !855, line: 35, type: !113)
!860 = !DILocation(line: 35, column: 53, scope: !854)
!861 = !DILocation(line: 37, column: 2, scope: !854)
!862 = !DILocation(line: 37, column: 2, scope: !863)
!863 = distinct !DILexicalBlock(scope: !854, file: !855, line: 37, column: 2)
!864 = !DILocation(line: 37, column: 2, scope: !865)
!865 = distinct !DILexicalBlock(scope: !863, file: !855, line: 37, column: 2)
!866 = !DILocation(line: 37, column: 2, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !855, line: 37, column: 2)
!868 = !DILocation(line: 38, column: 2, scope: !854)
!869 = !DILocation(line: 38, column: 2, scope: !870)
!870 = distinct !DILexicalBlock(scope: !854, file: !855, line: 38, column: 2)
!871 = !DILocation(line: 38, column: 2, scope: !872)
!872 = distinct !DILexicalBlock(scope: !870, file: !855, line: 38, column: 2)
!873 = !DILocation(line: 38, column: 2, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !855, line: 38, column: 2)
!875 = !DILocation(line: 39, column: 1, scope: !854)
!876 = distinct !DISubprogram(name: "list_add", scope: !855, file: !855, line: 167, type: !877, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !113, !113}
!879 = !{!880, !881}
!880 = !DILocalVariable(name: "new", arg: 1, scope: !876, file: !855, line: 167, type: !113)
!881 = !DILocalVariable(name: "head", arg: 2, scope: !876, file: !855, line: 167, type: !113)
!882 = !DILocation(line: 167, column: 47, scope: !876)
!883 = !DILocation(line: 167, column: 70, scope: !876)
!884 = !DILocation(line: 169, column: 13, scope: !876)
!885 = !DILocation(line: 169, column: 18, scope: !876)
!886 = !DILocation(line: 169, column: 24, scope: !876)
!887 = !DILocation(line: 169, column: 30, scope: !876)
!888 = !DILocation(line: 169, column: 2, scope: !876)
!889 = !DILocation(line: 170, column: 1, scope: !876)
!890 = distinct !DISubprogram(name: "efi_pa_va_lookup", scope: !2, file: !2, line: 75, type: !891, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !894)
!891 = !DISubroutineType(types: !892)
!892 = !{!58, !893, !58}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!894 = !{!895, !896, !897, !908, !909}
!895 = !DILocalVariable(name: "guid", arg: 1, scope: !890, file: !2, line: 75, type: !893)
!896 = !DILocalVariable(name: "pa", arg: 2, scope: !890, file: !2, line: 75, type: !58)
!897 = !DILocalVariable(name: "md", scope: !890, file: !2, line: 77, type: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !135, line: 145, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 138, size: 320, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !900, file: !135, line: 139, baseType: !84, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !900, file: !135, line: 140, baseType: !84, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !900, file: !135, line: 141, baseType: !58, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !900, file: !135, line: 142, baseType: !58, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !900, file: !135, line: 143, baseType: !58, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !900, file: !135, line: 144, baseType: !58, size: 64, offset: 256)
!908 = !DILocalVariable(name: "pa_offset", scope: !890, file: !2, line: 78, type: !58)
!909 = !DILocalVariable(name: "page", scope: !890, file: !2, line: 79, type: !58)
!910 = !DILocation(line: 75, column: 41, scope: !890)
!911 = !DILocation(line: 75, column: 51, scope: !890)
!912 = !DILocation(line: 77, column: 2, scope: !890)
!913 = !DILocation(line: 77, column: 21, scope: !890)
!914 = !DILocation(line: 78, column: 2, scope: !890)
!915 = !DILocation(line: 78, column: 6, scope: !890)
!916 = !DILocation(line: 78, column: 18, scope: !890)
!917 = !DILocation(line: 78, column: 21, scope: !890)
!918 = !DILocation(line: 79, column: 2, scope: !890)
!919 = !DILocation(line: 79, column: 6, scope: !890)
!920 = !DILocation(line: 79, column: 13, scope: !890)
!921 = !DILocation(line: 79, column: 16, scope: !890)
!922 = !DILocation(line: 81, column: 2, scope: !923)
!923 = distinct !DILexicalBlock(scope: !890, file: !2, line: 81, column: 2)
!924 = !DILocation(line: 81, column: 2, scope: !925)
!925 = distinct !DILexicalBlock(scope: !923, file: !2, line: 81, column: 2)
!926 = !DILocation(line: 0, scope: !925)
!927 = !DILocation(line: 82, column: 8, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 82, column: 7)
!929 = distinct !DILexicalBlock(scope: !925, file: !2, line: 81, column: 31)
!930 = !DILocation(line: 82, column: 12, scope: !928)
!931 = !DILocation(line: 82, column: 22, scope: !928)
!932 = !DILocation(line: 82, column: 44, scope: !928)
!933 = !DILocation(line: 83, column: 8, scope: !928)
!934 = !DILocation(line: 83, column: 12, scope: !928)
!935 = !DILocation(line: 83, column: 24, scope: !928)
!936 = !DILocation(line: 83, column: 22, scope: !928)
!937 = !DILocation(line: 83, column: 27, scope: !928)
!938 = !DILocation(line: 83, column: 30, scope: !928)
!939 = !DILocation(line: 83, column: 35, scope: !928)
!940 = !DILocation(line: 83, column: 39, scope: !928)
!941 = !DILocation(line: 83, column: 63, scope: !928)
!942 = !DILocation(line: 83, column: 67, scope: !928)
!943 = !DILocation(line: 83, column: 61, scope: !928)
!944 = !DILocation(line: 83, column: 49, scope: !928)
!945 = !DILocation(line: 83, column: 33, scope: !928)
!946 = !DILocation(line: 82, column: 7, scope: !929)
!947 = !DILocation(line: 84, column: 11, scope: !948)
!948 = distinct !DILexicalBlock(scope: !928, file: !2, line: 83, column: 79)
!949 = !DILocation(line: 84, column: 23, scope: !948)
!950 = !DILocation(line: 84, column: 27, scope: !948)
!951 = !DILocation(line: 84, column: 21, scope: !948)
!952 = !DILocation(line: 84, column: 39, scope: !948)
!953 = !DILocation(line: 84, column: 37, scope: !948)
!954 = !DILocation(line: 84, column: 46, scope: !948)
!955 = !DILocation(line: 84, column: 50, scope: !948)
!956 = !DILocation(line: 84, column: 44, scope: !948)
!957 = !DILocation(line: 84, column: 4, scope: !948)
!958 = !DILocation(line: 86, column: 2, scope: !929)
!959 = distinct !{!959, !922, !960, !564, !565}
!960 = !DILocation(line: 86, column: 2, scope: !923)
!961 = !DILocation(line: 88, column: 2, scope: !962)
!962 = distinct !DILexicalBlock(scope: !890, file: !2, line: 88, column: 2)
!963 = !DILocation(line: 88, column: 2, scope: !964)
!964 = distinct !DILexicalBlock(scope: !962, file: !2, line: 88, column: 2)
!965 = !DILocation(line: 90, column: 2, scope: !890)
!966 = !DILocation(line: 91, column: 1, scope: !890)
!967 = !DISubprogram(name: "kfree", scope: !41, file: !41, line: 227, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!972 = !DISubprogram(name: "memunmap", scope: !33, file: !33, line: 150, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !53}
!975 = distinct !DISubprogram(name: "__must_check_overflow", scope: !758, file: !758, line: 51, type: !976, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{!166, !166}
!978 = !{!979}
!979 = !DILocalVariable(name: "overflow", arg: 1, scope: !975, file: !758, line: 51, type: !166)
!980 = !DILocation(line: 51, column: 60, scope: !975)
!981 = !DILocation(line: 53, column: 9, scope: !975)
!982 = !DILocation(line: 53, column: 2, scope: !975)
!983 = !DISubprogram(name: "kmalloc_large", scope: !41, file: !41, line: 531, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = distinct !DISubprogram(name: "__kmalloc_index", scope: !41, file: !41, line: 444, type: !985, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!28, !107, !166}
!987 = !{!988, !989}
!988 = !DILocalVariable(name: "size", arg: 1, scope: !984, file: !41, line: 444, type: !107)
!989 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !984, file: !41, line: 445, type: !166)
!990 = !DILocation(line: 444, column: 60, scope: !984)
!991 = !DILocation(line: 445, column: 16, scope: !984)
!992 = !DILocation(line: 447, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !984, file: !41, line: 447, column: 6)
!994 = !DILocation(line: 447, column: 6, scope: !984)
!995 = !DILocation(line: 448, column: 3, scope: !993)
!996 = !DILocation(line: 450, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !984, file: !41, line: 450, column: 6)
!998 = !DILocation(line: 450, column: 11, scope: !997)
!999 = !DILocation(line: 450, column: 6, scope: !984)
!1000 = !DILocation(line: 451, column: 3, scope: !997)
!1001 = !DILocation(line: 453, column: 32, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !984, file: !41, line: 453, column: 6)
!1003 = !DILocation(line: 453, column: 37, scope: !1002)
!1004 = !DILocation(line: 453, column: 42, scope: !1002)
!1005 = !DILocation(line: 453, column: 45, scope: !1002)
!1006 = !DILocation(line: 453, column: 50, scope: !1002)
!1007 = !DILocation(line: 453, column: 6, scope: !984)
!1008 = !DILocation(line: 454, column: 3, scope: !1002)
!1009 = !DILocation(line: 455, column: 32, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !984, file: !41, line: 455, column: 6)
!1011 = !DILocation(line: 455, column: 37, scope: !1010)
!1012 = !DILocation(line: 455, column: 43, scope: !1010)
!1013 = !DILocation(line: 455, column: 46, scope: !1010)
!1014 = !DILocation(line: 455, column: 51, scope: !1010)
!1015 = !DILocation(line: 455, column: 6, scope: !984)
!1016 = !DILocation(line: 456, column: 3, scope: !1010)
!1017 = !DILocation(line: 457, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !984, file: !41, line: 457, column: 6)
!1019 = !DILocation(line: 457, column: 11, scope: !1018)
!1020 = !DILocation(line: 457, column: 6, scope: !984)
!1021 = !DILocation(line: 457, column: 26, scope: !1018)
!1022 = !DILocation(line: 458, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !984, file: !41, line: 458, column: 6)
!1024 = !DILocation(line: 458, column: 11, scope: !1023)
!1025 = !DILocation(line: 458, column: 6, scope: !984)
!1026 = !DILocation(line: 458, column: 26, scope: !1023)
!1027 = !DILocation(line: 459, column: 6, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !984, file: !41, line: 459, column: 6)
!1029 = !DILocation(line: 459, column: 11, scope: !1028)
!1030 = !DILocation(line: 459, column: 6, scope: !984)
!1031 = !DILocation(line: 459, column: 26, scope: !1028)
!1032 = !DILocation(line: 460, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !984, file: !41, line: 460, column: 6)
!1034 = !DILocation(line: 460, column: 11, scope: !1033)
!1035 = !DILocation(line: 460, column: 6, scope: !984)
!1036 = !DILocation(line: 460, column: 26, scope: !1033)
!1037 = !DILocation(line: 461, column: 6, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !984, file: !41, line: 461, column: 6)
!1039 = !DILocation(line: 461, column: 11, scope: !1038)
!1040 = !DILocation(line: 461, column: 6, scope: !984)
!1041 = !DILocation(line: 461, column: 26, scope: !1038)
!1042 = !DILocation(line: 462, column: 6, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !984, file: !41, line: 462, column: 6)
!1044 = !DILocation(line: 462, column: 11, scope: !1043)
!1045 = !DILocation(line: 462, column: 6, scope: !984)
!1046 = !DILocation(line: 462, column: 26, scope: !1043)
!1047 = !DILocation(line: 463, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !984, file: !41, line: 463, column: 6)
!1049 = !DILocation(line: 463, column: 11, scope: !1048)
!1050 = !DILocation(line: 463, column: 6, scope: !984)
!1051 = !DILocation(line: 463, column: 26, scope: !1048)
!1052 = !DILocation(line: 464, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !984, file: !41, line: 464, column: 6)
!1054 = !DILocation(line: 464, column: 11, scope: !1053)
!1055 = !DILocation(line: 464, column: 6, scope: !984)
!1056 = !DILocation(line: 464, column: 26, scope: !1053)
!1057 = !DILocation(line: 465, column: 6, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !984, file: !41, line: 465, column: 6)
!1059 = !DILocation(line: 465, column: 11, scope: !1058)
!1060 = !DILocation(line: 465, column: 6, scope: !984)
!1061 = !DILocation(line: 465, column: 26, scope: !1058)
!1062 = !DILocation(line: 466, column: 6, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !984, file: !41, line: 466, column: 6)
!1064 = !DILocation(line: 466, column: 11, scope: !1063)
!1065 = !DILocation(line: 466, column: 6, scope: !984)
!1066 = !DILocation(line: 466, column: 26, scope: !1063)
!1067 = !DILocation(line: 467, column: 6, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !984, file: !41, line: 467, column: 6)
!1069 = !DILocation(line: 467, column: 11, scope: !1068)
!1070 = !DILocation(line: 467, column: 6, scope: !984)
!1071 = !DILocation(line: 467, column: 26, scope: !1068)
!1072 = !DILocation(line: 468, column: 6, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !984, file: !41, line: 468, column: 6)
!1074 = !DILocation(line: 468, column: 11, scope: !1073)
!1075 = !DILocation(line: 468, column: 6, scope: !984)
!1076 = !DILocation(line: 468, column: 26, scope: !1073)
!1077 = !DILocation(line: 469, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !984, file: !41, line: 469, column: 6)
!1079 = !DILocation(line: 469, column: 11, scope: !1078)
!1080 = !DILocation(line: 469, column: 6, scope: !984)
!1081 = !DILocation(line: 469, column: 26, scope: !1078)
!1082 = !DILocation(line: 470, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !984, file: !41, line: 470, column: 6)
!1084 = !DILocation(line: 470, column: 11, scope: !1083)
!1085 = !DILocation(line: 470, column: 6, scope: !984)
!1086 = !DILocation(line: 470, column: 26, scope: !1083)
!1087 = !DILocation(line: 471, column: 6, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !984, file: !41, line: 471, column: 6)
!1089 = !DILocation(line: 471, column: 11, scope: !1088)
!1090 = !DILocation(line: 471, column: 6, scope: !984)
!1091 = !DILocation(line: 471, column: 26, scope: !1088)
!1092 = !DILocation(line: 472, column: 6, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !984, file: !41, line: 472, column: 6)
!1094 = !DILocation(line: 472, column: 11, scope: !1093)
!1095 = !DILocation(line: 472, column: 6, scope: !984)
!1096 = !DILocation(line: 472, column: 26, scope: !1093)
!1097 = !DILocation(line: 473, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !984, file: !41, line: 473, column: 6)
!1099 = !DILocation(line: 473, column: 11, scope: !1098)
!1100 = !DILocation(line: 473, column: 6, scope: !984)
!1101 = !DILocation(line: 473, column: 26, scope: !1098)
!1102 = !DILocation(line: 474, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !984, file: !41, line: 474, column: 6)
!1104 = !DILocation(line: 474, column: 11, scope: !1103)
!1105 = !DILocation(line: 474, column: 6, scope: !984)
!1106 = !DILocation(line: 474, column: 27, scope: !1103)
!1107 = !DILocation(line: 475, column: 6, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !984, file: !41, line: 475, column: 6)
!1109 = !DILocation(line: 475, column: 11, scope: !1108)
!1110 = !DILocation(line: 475, column: 6, scope: !984)
!1111 = !DILocation(line: 475, column: 32, scope: !1108)
!1112 = !DILocation(line: 477, column: 50, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !984, file: !41, line: 477, column: 6)
!1114 = !DILocation(line: 477, column: 6, scope: !984)
!1115 = !DILocation(line: 478, column: 3, scope: !1113)
!1116 = !DILocation(line: 478, column: 3, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !41, line: 478, column: 3)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !41, line: 478, column: 3)
!1119 = !{i32 -2141660967}
!1120 = !DILocation(line: 478, column: 3, scope: !1118)
!1121 = !DILocation(line: 480, column: 3, scope: !1113)
!1122 = !DILocation(line: 480, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1113, file: !41, line: 480, column: 3)
!1124 = !DILocation(line: 480, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !41, line: 480, column: 3)
!1126 = !DILocation(line: 480, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !41, line: 480, column: 3)
!1128 = !{i64 2153306532, i64 2153306561, i64 2153306607, i64 2153306665, i64 2153306719, i64 2153306773, i64 2153306828, i64 2153306859}
!1129 = !DILocation(line: 483, column: 2, scope: !984)
!1130 = !DILocation(line: 484, column: 1, scope: !984)
!1131 = !DISubprogram(name: "kmalloc_trace", scope: !41, file: !41, line: 525, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!53, !1134, !88, !107}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1136, line: 325, flags: DIFlagFwdDecl)
!1136 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1137 = distinct !DISubprogram(name: "kmalloc_type", scope: !41, file: !41, line: 401, type: !1138, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!40, !88, !56}
!1140 = !{!1141, !1142}
!1141 = !DILocalVariable(name: "flags", arg: 1, scope: !1137, file: !41, line: 401, type: !88)
!1142 = !DILocalVariable(name: "caller", arg: 2, scope: !1137, file: !41, line: 401, type: !56)
!1143 = !DILocation(line: 401, column: 67, scope: !1137)
!1144 = !DILocation(line: 401, column: 88, scope: !1137)
!1145 = !DILocation(line: 407, column: 6, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1137, file: !41, line: 407, column: 6)
!1147 = !DILocation(line: 407, column: 6, scope: !1137)
!1148 = !DILocation(line: 413, column: 3, scope: !1146)
!1149 = !DILocation(line: 423, column: 38, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1137, file: !41, line: 423, column: 6)
!1151 = !DILocation(line: 423, column: 44, scope: !1150)
!1152 = !DILocation(line: 423, column: 6, scope: !1137)
!1153 = !DILocation(line: 424, column: 3, scope: !1150)
!1154 = !DILocation(line: 426, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1137, file: !41, line: 425, column: 6)
!1156 = !DILocation(line: 429, column: 1, scope: !1137)
!1157 = !DISubprogram(name: "__kmalloc", scope: !41, file: !41, line: 488, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DISubprogram(name: "__compiletime_assert_245", scope: !41, file: !41, line: 478, type: !274, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1159 = distinct !DISubprogram(name: "__list_add", scope: !855, file: !855, line: 146, type: !1160, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !113, !113, !113}
!1162 = !{!1163, !1164, !1165}
!1163 = !DILocalVariable(name: "new", arg: 1, scope: !1159, file: !855, line: 146, type: !113)
!1164 = !DILocalVariable(name: "prev", arg: 2, scope: !1159, file: !855, line: 147, type: !113)
!1165 = !DILocalVariable(name: "next", arg: 3, scope: !1159, file: !855, line: 148, type: !113)
!1166 = !DILocation(line: 146, column: 49, scope: !1159)
!1167 = !DILocation(line: 147, column: 28, scope: !1159)
!1168 = !DILocation(line: 148, column: 28, scope: !1159)
!1169 = !DILocation(line: 150, column: 24, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1159, file: !855, line: 150, column: 6)
!1171 = !DILocation(line: 150, column: 29, scope: !1170)
!1172 = !DILocation(line: 150, column: 35, scope: !1170)
!1173 = !DILocation(line: 150, column: 7, scope: !1170)
!1174 = !DILocation(line: 150, column: 6, scope: !1159)
!1175 = !DILocation(line: 151, column: 3, scope: !1170)
!1176 = !DILocation(line: 153, column: 15, scope: !1159)
!1177 = !DILocation(line: 153, column: 2, scope: !1159)
!1178 = !DILocation(line: 153, column: 8, scope: !1159)
!1179 = !DILocation(line: 153, column: 13, scope: !1159)
!1180 = !DILocation(line: 154, column: 14, scope: !1159)
!1181 = !DILocation(line: 154, column: 2, scope: !1159)
!1182 = !DILocation(line: 154, column: 7, scope: !1159)
!1183 = !DILocation(line: 154, column: 12, scope: !1159)
!1184 = !DILocation(line: 155, column: 14, scope: !1159)
!1185 = !DILocation(line: 155, column: 2, scope: !1159)
!1186 = !DILocation(line: 155, column: 7, scope: !1159)
!1187 = !DILocation(line: 155, column: 12, scope: !1159)
!1188 = !DILocation(line: 156, column: 2, scope: !1159)
!1189 = !DILocation(line: 156, column: 2, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1159, file: !855, line: 156, column: 2)
!1191 = !DILocation(line: 156, column: 2, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1190, file: !855, line: 156, column: 2)
!1193 = !DILocation(line: 156, column: 2, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !855, line: 156, column: 2)
!1195 = !DILocation(line: 157, column: 1, scope: !1159)
!1196 = distinct !DISubprogram(name: "__list_add_valid", scope: !855, file: !855, line: 128, type: !1197, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!166, !113, !113, !113}
!1199 = !{!1200, !1201, !1202}
!1200 = !DILocalVariable(name: "new", arg: 1, scope: !1196, file: !855, line: 128, type: !113)
!1201 = !DILocalVariable(name: "prev", arg: 2, scope: !1196, file: !855, line: 129, type: !113)
!1202 = !DILocalVariable(name: "next", arg: 3, scope: !1196, file: !855, line: 130, type: !113)
!1203 = !DILocation(line: 128, column: 55, scope: !1196)
!1204 = !DILocation(line: 129, column: 23, scope: !1196)
!1205 = !DILocation(line: 130, column: 23, scope: !1196)
!1206 = !DILocation(line: 132, column: 2, scope: !1196)
!1207 = distinct !DISubprogram(name: "const_test_bit", scope: !1208, file: !1208, line: 166, type: !1209, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1214)
!1208 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!166, !56, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!1214 = !{!1215, !1216, !1217, !1218, !1219}
!1215 = !DILocalVariable(name: "nr", arg: 1, scope: !1207, file: !1208, line: 166, type: !56)
!1216 = !DILocalVariable(name: "addr", arg: 2, scope: !1207, file: !1208, line: 166, type: !1211)
!1217 = !DILocalVariable(name: "p", scope: !1207, file: !1208, line: 168, type: !118)
!1218 = !DILocalVariable(name: "mask", scope: !1207, file: !1208, line: 169, type: !56)
!1219 = !DILocalVariable(name: "val", scope: !1207, file: !1208, line: 170, type: !56)
!1220 = !DILocation(line: 166, column: 30, scope: !1207)
!1221 = !DILocation(line: 166, column: 64, scope: !1207)
!1222 = !DILocation(line: 168, column: 2, scope: !1207)
!1223 = !DILocation(line: 168, column: 23, scope: !1207)
!1224 = !DILocation(line: 168, column: 50, scope: !1207)
!1225 = !DILocation(line: 168, column: 57, scope: !1207)
!1226 = !DILocation(line: 168, column: 55, scope: !1207)
!1227 = !DILocation(line: 169, column: 2, scope: !1207)
!1228 = !DILocation(line: 169, column: 16, scope: !1207)
!1229 = !DILocation(line: 169, column: 23, scope: !1207)
!1230 = !DILocation(line: 170, column: 2, scope: !1207)
!1231 = !DILocation(line: 170, column: 16, scope: !1207)
!1232 = !DILocation(line: 170, column: 23, scope: !1207)
!1233 = !DILocation(line: 170, column: 22, scope: !1207)
!1234 = !DILocation(line: 172, column: 12, scope: !1207)
!1235 = !DILocation(line: 172, column: 18, scope: !1207)
!1236 = !DILocation(line: 172, column: 16, scope: !1207)
!1237 = !DILocation(line: 172, column: 10, scope: !1207)
!1238 = !DILocation(line: 172, column: 9, scope: !1207)
!1239 = !DILocation(line: 173, column: 1, scope: !1207)
!1240 = !DILocation(line: 172, column: 2, scope: !1207)
!1241 = distinct !DISubprogram(name: "_test_bit", scope: !1242, file: !1242, line: 139, type: !1209, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1243)
!1242 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1243 = !{!1244, !1245}
!1244 = !DILocalVariable(name: "nr", arg: 1, scope: !1241, file: !1242, line: 139, type: !56)
!1245 = !DILocalVariable(name: "addr", arg: 2, scope: !1241, file: !1242, line: 139, type: !1211)
!1246 = !DILocation(line: 139, column: 25, scope: !1241)
!1247 = !DILocation(line: 139, column: 59, scope: !1241)
!1248 = !DILocation(line: 141, column: 25, scope: !1241)
!1249 = !DILocation(line: 141, column: 32, scope: !1241)
!1250 = !DILocation(line: 141, column: 30, scope: !1241)
!1251 = !DILocation(line: 141, column: 2, scope: !1241)
!1252 = !DILocation(line: 142, column: 23, scope: !1241)
!1253 = !DILocation(line: 142, column: 27, scope: !1241)
!1254 = !DILocation(line: 142, column: 9, scope: !1241)
!1255 = !DILocation(line: 142, column: 2, scope: !1241)
!1256 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1257, file: !1257, line: 66, type: !1258, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1263)
!1257 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !1260, !107}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1263 = !{!1264, !1265}
!1264 = !DILocalVariable(name: "v", arg: 1, scope: !1256, file: !1257, line: 66, type: !1260)
!1265 = !DILocalVariable(name: "size", arg: 2, scope: !1256, file: !1257, line: 66, type: !107)
!1266 = !DILocation(line: 66, column: 73, scope: !1256)
!1267 = !DILocation(line: 66, column: 83, scope: !1256)
!1268 = !DILocation(line: 68, column: 19, scope: !1256)
!1269 = !DILocation(line: 68, column: 22, scope: !1256)
!1270 = !DILocation(line: 68, column: 2, scope: !1256)
!1271 = !DILocation(line: 69, column: 2, scope: !1256)
!1272 = !DILocation(line: 70, column: 1, scope: !1256)
!1273 = distinct !DISubprogram(name: "arch_test_bit", scope: !1274, file: !1274, line: 237, type: !1209, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1275)
!1274 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1275 = !{!1276, !1277}
!1276 = !DILocalVariable(name: "nr", arg: 1, scope: !1273, file: !1274, line: 237, type: !56)
!1277 = !DILocalVariable(name: "addr", arg: 2, scope: !1273, file: !1274, line: 237, type: !1211)
!1278 = !DILocation(line: 237, column: 29, scope: !1273)
!1279 = !DILocation(line: 237, column: 63, scope: !1273)
!1280 = !DILocation(line: 239, column: 30, scope: !1273)
!1281 = !DILocation(line: 239, column: 9, scope: !1273)
!1282 = !DILocation(line: 239, column: 54, scope: !1273)
!1283 = !DILocation(line: 239, column: 58, scope: !1273)
!1284 = !DILocation(line: 239, column: 36, scope: !1273)
!1285 = !DILocation(line: 240, column: 26, scope: !1273)
!1286 = !DILocation(line: 240, column: 30, scope: !1273)
!1287 = !DILocation(line: 240, column: 8, scope: !1273)
!1288 = !DILocation(line: 239, column: 2, scope: !1273)
!1289 = distinct !DISubprogram(name: "kasan_check_read", scope: !1290, file: !1290, line: 40, type: !1291, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1293)
!1290 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!166, !1260, !28}
!1293 = !{!1294, !1295}
!1294 = !DILocalVariable(name: "p", arg: 1, scope: !1289, file: !1290, line: 40, type: !1260)
!1295 = !DILocalVariable(name: "size", arg: 2, scope: !1289, file: !1290, line: 40, type: !28)
!1296 = !DILocation(line: 40, column: 58, scope: !1289)
!1297 = !DILocation(line: 40, column: 74, scope: !1289)
!1298 = !DILocation(line: 42, column: 2, scope: !1289)
!1299 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1300, file: !1300, line: 229, type: !1301, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1303)
!1300 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1260, !107, !87}
!1303 = !{!1304, !1305, !1306}
!1304 = !DILocalVariable(name: "ptr", arg: 1, scope: !1299, file: !1300, line: 229, type: !1260)
!1305 = !DILocalVariable(name: "size", arg: 2, scope: !1299, file: !1300, line: 229, type: !107)
!1306 = !DILocalVariable(name: "type", arg: 3, scope: !1299, file: !1300, line: 230, type: !87)
!1307 = !DILocation(line: 229, column: 60, scope: !1299)
!1308 = !DILocation(line: 229, column: 72, scope: !1299)
!1309 = !DILocation(line: 230, column: 15, scope: !1299)
!1310 = !DILocation(line: 230, column: 23, scope: !1299)
!1311 = distinct !DISubprogram(name: "constant_test_bit", scope: !1274, file: !1274, line: 204, type: !1312, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1315)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!166, !1314, !1211}
!1314 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1315 = !{!1316, !1317}
!1316 = !DILocalVariable(name: "nr", arg: 1, scope: !1311, file: !1274, line: 204, type: !1314)
!1317 = !DILocalVariable(name: "addr", arg: 2, scope: !1311, file: !1274, line: 204, type: !1211)
!1318 = !DILocation(line: 204, column: 52, scope: !1311)
!1319 = !DILocation(line: 204, column: 86, scope: !1311)
!1320 = !DILocation(line: 206, column: 19, scope: !1311)
!1321 = !DILocation(line: 206, column: 22, scope: !1311)
!1322 = !DILocation(line: 206, column: 15, scope: !1311)
!1323 = !DILocation(line: 207, column: 4, scope: !1311)
!1324 = !DILocation(line: 207, column: 9, scope: !1311)
!1325 = !DILocation(line: 207, column: 12, scope: !1311)
!1326 = !DILocation(line: 206, column: 44, scope: !1311)
!1327 = !DILocation(line: 207, column: 37, scope: !1311)
!1328 = !DILocation(line: 206, column: 2, scope: !1311)
!1329 = distinct !DISubprogram(name: "variable_test_bit", scope: !1274, file: !1274, line: 224, type: !1312, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DILocalVariable(name: "nr", arg: 1, scope: !1329, file: !1274, line: 224, type: !1314)
!1332 = !DILocalVariable(name: "addr", arg: 2, scope: !1329, file: !1274, line: 224, type: !1211)
!1333 = !DILocalVariable(name: "oldbit", scope: !1329, file: !1274, line: 226, type: !166)
!1334 = !DILocation(line: 224, column: 52, scope: !1329)
!1335 = !DILocation(line: 224, column: 86, scope: !1329)
!1336 = !DILocation(line: 226, column: 2, scope: !1329)
!1337 = !DILocation(line: 226, column: 7, scope: !1329)
!1338 = !DILocation(line: 231, column: 33, scope: !1329)
!1339 = !DILocation(line: 231, column: 46, scope: !1329)
!1340 = !DILocation(line: 228, column: 2, scope: !1329)
!1341 = !{i64 2147807174, i64 2147807248}
!1342 = !DILocation(line: 233, column: 9, scope: !1329)
!1343 = !DILocation(line: 234, column: 1, scope: !1329)
!1344 = !DILocation(line: 233, column: 2, scope: !1329)
!1345 = !DISubprogram(name: "___ratelimit", scope: !215, file: !215, line: 44, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!87, !1348, !587}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1349 = distinct !DISubprogram(name: "find_prm_handler", scope: !2, file: !2, line: 207, type: !1350, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!130, !838}
!1352 = !{!1353}
!1353 = !DILocalVariable(name: "guid", arg: 1, scope: !1349, file: !2, line: 207, type: !838)
!1354 = !DILocation(line: 207, column: 64, scope: !1349)
!1355 = !DILocation(line: 209, column: 52, scope: !1349)
!1356 = !DILocation(line: 209, column: 37, scope: !1349)
!1357 = !DILocation(line: 209, column: 2, scope: !1349)
!1358 = distinct !DISubprogram(name: "find_prm_module", scope: !2, file: !2, line: 202, type: !1359, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!144, !838}
!1361 = !{!1362}
!1362 = !DILocalVariable(name: "guid", arg: 1, scope: !1358, file: !2, line: 202, type: !838)
!1363 = !DILocation(line: 202, column: 62, scope: !1358)
!1364 = !DILocation(line: 204, column: 50, scope: !1358)
!1365 = !DILocation(line: 204, column: 35, scope: !1358)
!1366 = !DILocation(line: 204, column: 2, scope: !1358)
!1367 = !DISubprogram(name: "efi_call_acpi_prm_handler", scope: !135, file: !135, line: 1234, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!140, !137, !58, !53}
!1370 = distinct !DISubprogram(name: "find_guid_info", scope: !2, file: !2, line: 181, type: !1371, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!53, !838, !64}
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1382}
!1374 = !DILocalVariable(name: "guid", arg: 1, scope: !1370, file: !2, line: 181, type: !838)
!1375 = !DILocalVariable(name: "mode", arg: 2, scope: !1370, file: !2, line: 181, type: !64)
!1376 = !DILocalVariable(name: "cur_handler", scope: !1370, file: !2, line: 183, type: !130)
!1377 = !DILocalVariable(name: "cur_module", scope: !1370, file: !2, line: 184, type: !144)
!1378 = !DILocalVariable(name: "i", scope: !1370, file: !2, line: 185, type: !87)
!1379 = !DILocalVariable(name: "__mptr", scope: !1380, file: !2, line: 187, type: !53)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 187, column: 2)
!1381 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 187, column: 2)
!1382 = !DILocalVariable(name: "__mptr", scope: !1383, file: !2, line: 187, type: !53)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 187, column: 2)
!1384 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 187, column: 2)
!1385 = !DILocation(line: 181, column: 43, scope: !1370)
!1386 = !DILocation(line: 181, column: 52, scope: !1370)
!1387 = !DILocation(line: 183, column: 2, scope: !1370)
!1388 = !DILocation(line: 183, column: 27, scope: !1370)
!1389 = !DILocation(line: 184, column: 2, scope: !1370)
!1390 = !DILocation(line: 184, column: 26, scope: !1370)
!1391 = !DILocation(line: 185, column: 2, scope: !1370)
!1392 = !DILocation(line: 185, column: 6, scope: !1370)
!1393 = !DILocation(line: 187, column: 2, scope: !1380)
!1394 = !DILocation(line: 187, column: 2, scope: !1381)
!1395 = !DILocation(line: 187, column: 2, scope: !1384)
!1396 = !DILocation(line: 188, column: 10, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 188, column: 3)
!1398 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 187, column: 65)
!1399 = !DILocation(line: 188, column: 8, scope: !1397)
!1400 = !DILocation(line: 188, column: 15, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 188, column: 3)
!1402 = !DILocation(line: 188, column: 19, scope: !1401)
!1403 = !DILocation(line: 188, column: 31, scope: !1401)
!1404 = !DILocation(line: 188, column: 17, scope: !1401)
!1405 = !DILocation(line: 188, column: 3, scope: !1397)
!1406 = !DILocation(line: 189, column: 19, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 188, column: 51)
!1408 = !DILocation(line: 189, column: 31, scope: !1407)
!1409 = !DILocation(line: 189, column: 40, scope: !1407)
!1410 = !DILocation(line: 189, column: 16, scope: !1407)
!1411 = !DILocation(line: 190, column: 19, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 190, column: 8)
!1413 = !DILocation(line: 190, column: 26, scope: !1412)
!1414 = !DILocation(line: 190, column: 39, scope: !1412)
!1415 = !DILocation(line: 190, column: 8, scope: !1412)
!1416 = !DILocation(line: 190, column: 8, scope: !1407)
!1417 = !DILocation(line: 191, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 191, column: 9)
!1419 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 190, column: 46)
!1420 = !DILocation(line: 191, column: 14, scope: !1418)
!1421 = !DILocation(line: 191, column: 9, scope: !1419)
!1422 = !DILocation(line: 192, column: 21, scope: !1418)
!1423 = !DILocation(line: 192, column: 6, scope: !1418)
!1424 = !DILocation(line: 194, column: 21, scope: !1418)
!1425 = !DILocation(line: 194, column: 6, scope: !1418)
!1426 = !DILocation(line: 196, column: 3, scope: !1407)
!1427 = !DILocation(line: 188, column: 46, scope: !1401)
!1428 = !DILocation(line: 188, column: 3, scope: !1401)
!1429 = distinct !{!1429, !1405, !1430, !564, !565}
!1430 = !DILocation(line: 196, column: 3, scope: !1397)
!1431 = !DILocation(line: 197, column: 2, scope: !1398)
!1432 = !DILocation(line: 187, column: 2, scope: !1383)
!1433 = distinct !{!1433, !1394, !1434, !564, !565}
!1434 = !DILocation(line: 197, column: 2, scope: !1381)
!1435 = !DILocation(line: 199, column: 2, scope: !1370)
!1436 = !DILocation(line: 200, column: 1, scope: !1370)
!1437 = distinct !DISubprogram(name: "guid_equal", scope: !91, file: !91, line: 46, type: !1438, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!166, !838, !838}
!1440 = !{!1441, !1442}
!1441 = !DILocalVariable(name: "u1", arg: 1, scope: !1437, file: !91, line: 46, type: !838)
!1442 = !DILocalVariable(name: "u2", arg: 2, scope: !1437, file: !91, line: 46, type: !838)
!1443 = !DILocation(line: 46, column: 45, scope: !1437)
!1444 = !DILocation(line: 46, column: 63, scope: !1437)
!1445 = !DILocation(line: 48, column: 16, scope: !1437)
!1446 = !DILocation(line: 48, column: 20, scope: !1437)
!1447 = !DILocation(line: 48, column: 9, scope: !1437)
!1448 = !DILocation(line: 48, column: 40, scope: !1437)
!1449 = !DILocation(line: 48, column: 2, scope: !1437)
!1450 = !DISubprogram(name: "memcmp", scope: !1451, file: !1451, line: 196, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1451 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!87, !970, !970, !108}
