; ModuleID = 'drivers/firmware/efi/libstub/relocate.c'
source_filename = "drivers/firmware/efi/libstub/relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_boot_memmap = type { i64, i64, i32, i64, i64, [0 x %struct.efi_memory_desc_t] }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@efi_system_table = external hidden global ptr, align 8
@.str = private unnamed_addr constant [55 x i8] c"\013ERROR: Failed to allocate usable memory for kernel.\0A\00", align 1, !dbg !0
@efi_is64 = external hidden constant i8, align 1

; Function Attrs: noredzone nounwind
define hidden i64 @efi_low_alloc_above(i64 noundef %size, i64 noundef %align, ptr noundef %addr, i64 noundef %min) #0 !dbg !280 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %min.addr = alloca i64, align 8
  %map = alloca ptr, align 8
  %status = alloca i64, align 8
  %nr_pages = alloca i64, align 8
  %i = alloca i32, align 4
  %desc = alloca ptr, align 8
  %m = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %__pad96 = alloca [3 x i64], align 16
  %tmp100 = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !284, metadata !DIExpression()), !dbg !319
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !285, metadata !DIExpression()), !dbg !320
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !286, metadata !DIExpression()), !dbg !321
  store i64 %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !287, metadata !DIExpression()), !dbg !322
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #6, !dbg !323
  call void @llvm.dbg.declare(metadata ptr %map, metadata !288, metadata !DIExpression()), !dbg !324
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #6, !dbg !325
  call void @llvm.dbg.declare(metadata ptr %status, metadata !301, metadata !DIExpression()), !dbg !326
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pages) #6, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !302, metadata !DIExpression()), !dbg !328
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %i, metadata !303, metadata !DIExpression()), !dbg !330
  %call = call i64 @efi_get_memory_map(ptr noundef %map, i1 noundef zeroext false) #7, !dbg !331
  store i64 %call, ptr %status, align 8, !dbg !332
  %0 = load i64, ptr %status, align 8, !dbg !333
  %cmp = icmp ne i64 %0, 0, !dbg !335
  br i1 %cmp, label %if.then, label %if.end, !dbg !336

if.then:                                          ; preds = %entry
  br label %fail, !dbg !337

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %align.addr, align 8, !dbg !338
  %cmp1 = icmp ult i64 %1, 4096, !dbg !340
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !341

if.then2:                                         ; preds = %if.end
  store i64 4096, ptr %align.addr, align 8, !dbg !342
  br label %if.end3, !dbg !343

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !344
  %sub = sub i64 %2, 1, !dbg !344
  %or = or i64 %sub, 4095, !dbg !344
  %add = add i64 %or, 1, !dbg !344
  store i64 %add, ptr %size.addr, align 8, !dbg !345
  %3 = load i64, ptr %size.addr, align 8, !dbg !346
  %div = udiv i64 %3, 4096, !dbg !347
  store i64 %div, ptr %nr_pages, align 8, !dbg !348
  store i32 0, ptr %i, align 4, !dbg !349
  br label %for.cond, !dbg !350

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, ptr %i, align 4, !dbg !351
  %conv = sext i32 %4 to i64, !dbg !351
  %5 = load ptr, ptr %map, align 8, !dbg !352
  %map_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %5, i32 0, i32 0, !dbg !353
  %6 = load i64, ptr %map_size, align 8, !dbg !353
  %7 = load ptr, ptr %map, align 8, !dbg !354
  %desc_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %7, i32 0, i32 1, !dbg !355
  %8 = load i64, ptr %desc_size, align 8, !dbg !355
  %div4 = udiv i64 %6, %8, !dbg !356
  %cmp5 = icmp ult i64 %conv, %div4, !dbg !357
  br i1 %cmp5, label %for.body, label %for.end, !dbg !358

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #6, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !304, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %m, metadata !308, metadata !DIExpression()), !dbg !362
  %9 = load ptr, ptr %map, align 8, !dbg !363
  %map7 = getelementptr inbounds %struct.efi_boot_memmap, ptr %9, i32 0, i32 5, !dbg !364
  %arraydecay = getelementptr inbounds [0 x %struct.efi_memory_desc_t], ptr %map7, i64 0, i64 0, !dbg !363
  %10 = ptrtoint ptr %arraydecay to i64, !dbg !365
  store i64 %10, ptr %m, align 8, !dbg !362
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #6, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %start, metadata !309, metadata !DIExpression()), !dbg !367
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #6, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %end, metadata !310, metadata !DIExpression()), !dbg !368
  %11 = load i64, ptr %m, align 8, !dbg !369
  %12 = inttoptr i64 %11 to ptr, !dbg !369
  %13 = load i32, ptr %i, align 4, !dbg !369
  %conv8 = sext i32 %13 to i64, !dbg !369
  %14 = load ptr, ptr %map, align 8, !dbg !369
  %desc_size9 = getelementptr inbounds %struct.efi_boot_memmap, ptr %14, i32 0, i32 1, !dbg !369
  %15 = load i64, ptr %desc_size9, align 8, !dbg !369
  %mul = mul i64 %conv8, %15, !dbg !369
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %mul, !dbg !369
  store ptr %add.ptr, ptr %desc, align 8, !dbg !370
  %16 = load ptr, ptr %desc, align 8, !dbg !371
  %type = getelementptr inbounds %struct.efi_memory_desc_t, ptr %16, i32 0, i32 0, !dbg !373
  %17 = load i32, ptr %type, align 8, !dbg !373
  %cmp10 = icmp ne i32 %17, 7, !dbg !374
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !375

if.then12:                                        ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !376

if.end13:                                         ; preds = %for.body
  %18 = load ptr, ptr %desc, align 8, !dbg !377
  %attribute = getelementptr inbounds %struct.efi_memory_desc_t, ptr %18, i32 0, i32 5, !dbg !379
  %19 = load i64, ptr %attribute, align 8, !dbg !379
  %and = and i64 %19, 1048576, !dbg !380
  %tobool = icmp ne i64 %and, 0, !dbg !380
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !381

if.then14:                                        ; preds = %if.end13
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !382

if.end15:                                         ; preds = %if.end13
  %call16 = call zeroext i1 @efi_soft_reserve_enabled() #8, !dbg !383
  br i1 %call16, label %land.lhs.true, label %if.end22, !dbg !385

land.lhs.true:                                    ; preds = %if.end15
  %20 = load ptr, ptr %desc, align 8, !dbg !386
  %attribute18 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %20, i32 0, i32 5, !dbg !387
  %21 = load i64, ptr %attribute18, align 8, !dbg !387
  %and19 = and i64 %21, 262144, !dbg !388
  %tobool20 = icmp ne i64 %and19, 0, !dbg !388
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !389

if.then21:                                        ; preds = %land.lhs.true
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !390

if.end22:                                         ; preds = %land.lhs.true, %if.end15
  %22 = load ptr, ptr %desc, align 8, !dbg !391
  %num_pages = getelementptr inbounds %struct.efi_memory_desc_t, ptr %22, i32 0, i32 4, !dbg !393
  %23 = load i64, ptr %num_pages, align 8, !dbg !393
  %24 = load i64, ptr %nr_pages, align 8, !dbg !394
  %cmp23 = icmp ult i64 %23, %24, !dbg !395
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !396

if.then25:                                        ; preds = %if.end22
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !397

if.end26:                                         ; preds = %if.end22
  %25 = load ptr, ptr %desc, align 8, !dbg !398
  %phys_addr = getelementptr inbounds %struct.efi_memory_desc_t, ptr %25, i32 0, i32 2, !dbg !399
  %26 = load i64, ptr %phys_addr, align 8, !dbg !399
  store i64 %26, ptr %start, align 8, !dbg !400
  %27 = load i64, ptr %start, align 8, !dbg !401
  %28 = load ptr, ptr %desc, align 8, !dbg !402
  %num_pages27 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %28, i32 0, i32 4, !dbg !403
  %29 = load i64, ptr %num_pages27, align 8, !dbg !403
  %mul28 = mul i64 %29, 4096, !dbg !404
  %add29 = add i64 %27, %mul28, !dbg !405
  store i64 %add29, ptr %end, align 8, !dbg !406
  %30 = load i64, ptr %start, align 8, !dbg !407
  %31 = load i64, ptr %min.addr, align 8, !dbg !409
  %cmp30 = icmp ult i64 %30, %31, !dbg !410
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !411

if.then32:                                        ; preds = %if.end26
  %32 = load i64, ptr %min.addr, align 8, !dbg !412
  store i64 %32, ptr %start, align 8, !dbg !413
  br label %if.end33, !dbg !414

if.end33:                                         ; preds = %if.then32, %if.end26
  %33 = load i64, ptr %start, align 8, !dbg !415
  %sub34 = sub i64 %33, 1, !dbg !415
  %34 = load i64, ptr %align.addr, align 8, !dbg !415
  %sub35 = sub i64 %34, 1, !dbg !415
  %or36 = or i64 %sub34, %sub35, !dbg !415
  %add37 = add i64 %or36, 1, !dbg !415
  store i64 %add37, ptr %start, align 8, !dbg !416
  %35 = load i64, ptr %start, align 8, !dbg !417
  %36 = load i64, ptr %size.addr, align 8, !dbg !419
  %add38 = add i64 %35, %36, !dbg !420
  %37 = load i64, ptr %end, align 8, !dbg !421
  %cmp39 = icmp ugt i64 %add38, %37, !dbg !422
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !423

if.then41:                                        ; preds = %if.end33
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !424

if.end42:                                         ; preds = %if.end33
  %call43 = call zeroext i1 @efi_is_native() #7, !dbg !425
  br i1 %call43, label %cond.true, label %cond.false51, !dbg !425

cond.true:                                        ; preds = %if.end42
  %call45 = call zeroext i1 @efi_is_native() #7, !dbg !425
  br i1 %call45, label %cond.true47, label %cond.false, !dbg !425

cond.true47:                                      ; preds = %cond.true
  %38 = load ptr, ptr @efi_system_table, align 8, !dbg !425
  %boottime = getelementptr inbounds %struct.anon.1, ptr %38, i32 0, i32 10, !dbg !425
  %39 = load ptr, ptr %boottime, align 8, !dbg !425
  br label %cond.end, !dbg !425

cond.false:                                       ; preds = %cond.true
  %40 = load ptr, ptr @efi_system_table, align 8, !dbg !425
  %boottime48 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %40, i32 0, i32 10, !dbg !425
  %41 = load i32, ptr %boottime48, align 4, !dbg !425
  %conv49 = zext i32 %41 to i64, !dbg !425
  %42 = inttoptr i64 %conv49 to ptr, !dbg !425
  br label %cond.end, !dbg !425

cond.end:                                         ; preds = %cond.false, %cond.true47
  %cond = phi ptr [ %39, %cond.true47 ], [ %42, %cond.false ], !dbg !425
  %allocate_pages = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 3, !dbg !425
  %43 = load ptr, ptr %allocate_pages, align 8, !dbg !425
  %44 = load i64, ptr %nr_pages, align 8, !dbg !425
  %call50 = call win64cc i64 %43(i32 noundef 2, i32 noundef 2, i64 noundef %44, ptr noundef %start) #7, !dbg !425
  br label %cond.end65, !dbg !425

cond.false51:                                     ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !426
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !311, metadata !DIExpression()), !dbg !426
  br label %do.body, !dbg !427

do.body:                                          ; preds = %cond.false51
  br label %do.cond, !dbg !429

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !429

do.end:                                           ; preds = %do.cond
  %call52 = call zeroext i1 @efi_is_native() #7, !dbg !426
  br i1 %call52, label %cond.true54, label %cond.false56, !dbg !426

cond.true54:                                      ; preds = %do.end
  %45 = load ptr, ptr @efi_system_table, align 8, !dbg !426
  %boottime55 = getelementptr inbounds %struct.anon.1, ptr %45, i32 0, i32 10, !dbg !426
  %46 = load ptr, ptr %boottime55, align 8, !dbg !426
  br label %cond.end59, !dbg !426

cond.false56:                                     ; preds = %do.end
  %47 = load ptr, ptr @efi_system_table, align 8, !dbg !426
  %boottime57 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %47, i32 0, i32 10, !dbg !426
  %48 = load i32, ptr %boottime57, align 4, !dbg !426
  %conv58 = zext i32 %48 to i64, !dbg !426
  %49 = inttoptr i64 %conv58 to ptr, !dbg !426
  br label %cond.end59, !dbg !426

cond.end59:                                       ; preds = %cond.false56, %cond.true54
  %cond60 = phi ptr [ %46, %cond.true54 ], [ %49, %cond.false56 ], !dbg !426
  %allocate_pages61 = getelementptr inbounds %struct.anon.0, ptr %cond60, i32 0, i32 3, !dbg !426
  %50 = load i32, ptr %allocate_pages61, align 8, !dbg !426
  %51 = load i64, ptr %nr_pages, align 8, !dbg !426
  %arraydecay62 = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !426
  %call63 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %50, i32 noundef 2, i32 noundef 2, i64 noundef %51, ptr noundef %start, ptr noundef %arraydecay62) #7, !dbg !426
  store i64 %call63, ptr %tmp, align 8, !dbg !426
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !425
  %52 = load i64, ptr %tmp, align 8, !dbg !426
  %call64 = call i64 @__efi64_widen_efi_status(i64 noundef %52) #7, !dbg !425
  br label %cond.end65, !dbg !425

cond.end65:                                       ; preds = %cond.end59, %cond.end
  %cond66 = phi i64 [ %call50, %cond.end ], [ %call64, %cond.end59 ], !dbg !425
  store i64 %cond66, ptr %status, align 8, !dbg !431
  %53 = load i64, ptr %status, align 8, !dbg !432
  %cmp67 = icmp eq i64 %53, 0, !dbg !434
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !435

if.then69:                                        ; preds = %cond.end65
  %54 = load i64, ptr %start, align 8, !dbg !436
  %55 = load ptr, ptr %addr.addr, align 8, !dbg !438
  store i64 %54, ptr %55, align 8, !dbg !439
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !440

if.end70:                                         ; preds = %cond.end65
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !441
  br label %cleanup, !dbg !441

cleanup:                                          ; preds = %if.end70, %if.then69, %if.then41, %if.then25, %if.then21, %if.then14, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #6, !dbg !441
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #6, !dbg !441
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6, !dbg !441
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #6, !dbg !441
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc
    i32 3, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !442

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %56 = load i32, ptr %i, align 4, !dbg !443
  %inc = add nsw i32 %56, 1, !dbg !443
  store i32 %inc, ptr %i, align 4, !dbg !443
  br label %for.cond, !dbg !444, !llvm.loop !445

for.end:                                          ; preds = %cleanup, %for.cond
  %57 = load i32, ptr %i, align 4, !dbg !449
  %conv74 = sext i32 %57 to i64, !dbg !449
  %58 = load ptr, ptr %map, align 8, !dbg !451
  %map_size75 = getelementptr inbounds %struct.efi_boot_memmap, ptr %58, i32 0, i32 0, !dbg !452
  %59 = load i64, ptr %map_size75, align 8, !dbg !452
  %60 = load ptr, ptr %map, align 8, !dbg !453
  %desc_size76 = getelementptr inbounds %struct.efi_boot_memmap, ptr %60, i32 0, i32 1, !dbg !454
  %61 = load i64, ptr %desc_size76, align 8, !dbg !454
  %div77 = udiv i64 %59, %61, !dbg !455
  %cmp78 = icmp eq i64 %conv74, %div77, !dbg !456
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !457

if.then80:                                        ; preds = %for.end
  store i64 -9223372036854775794, ptr %status, align 8, !dbg !458
  br label %if.end81, !dbg !459

if.end81:                                         ; preds = %if.then80, %for.end
  %call82 = call zeroext i1 @efi_is_native() #7, !dbg !460
  br i1 %call82, label %cond.true84, label %cond.false95, !dbg !460

cond.true84:                                      ; preds = %if.end81
  %call85 = call zeroext i1 @efi_is_native() #7, !dbg !460
  br i1 %call85, label %cond.true87, label %cond.false89, !dbg !460

cond.true87:                                      ; preds = %cond.true84
  %62 = load ptr, ptr @efi_system_table, align 8, !dbg !460
  %boottime88 = getelementptr inbounds %struct.anon.1, ptr %62, i32 0, i32 10, !dbg !460
  %63 = load ptr, ptr %boottime88, align 8, !dbg !460
  br label %cond.end92, !dbg !460

cond.false89:                                     ; preds = %cond.true84
  %64 = load ptr, ptr @efi_system_table, align 8, !dbg !460
  %boottime90 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %64, i32 0, i32 10, !dbg !460
  %65 = load i32, ptr %boottime90, align 4, !dbg !460
  %conv91 = zext i32 %65 to i64, !dbg !460
  %66 = inttoptr i64 %conv91 to ptr, !dbg !460
  br label %cond.end92, !dbg !460

cond.end92:                                       ; preds = %cond.false89, %cond.true87
  %cond93 = phi ptr [ %63, %cond.true87 ], [ %66, %cond.false89 ], !dbg !460
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond93, i32 0, i32 7, !dbg !460
  %67 = load ptr, ptr %free_pool, align 8, !dbg !460
  %68 = load ptr, ptr %map, align 8, !dbg !460
  %call94 = call win64cc i64 %67(ptr noundef %68) #7, !dbg !460
  br label %cond.end114, !dbg !460

cond.false95:                                     ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad96) #6, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %__pad96, metadata !316, metadata !DIExpression()), !dbg !461
  br label %do.body97, !dbg !462

do.body97:                                        ; preds = %cond.false95
  br label %do.cond98, !dbg !464

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !464

do.end99:                                         ; preds = %do.cond98
  %call101 = call zeroext i1 @efi_is_native() #7, !dbg !461
  br i1 %call101, label %cond.true103, label %cond.false105, !dbg !461

cond.true103:                                     ; preds = %do.end99
  %69 = load ptr, ptr @efi_system_table, align 8, !dbg !461
  %boottime104 = getelementptr inbounds %struct.anon.1, ptr %69, i32 0, i32 10, !dbg !461
  %70 = load ptr, ptr %boottime104, align 8, !dbg !461
  br label %cond.end108, !dbg !461

cond.false105:                                    ; preds = %do.end99
  %71 = load ptr, ptr @efi_system_table, align 8, !dbg !461
  %boottime106 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %71, i32 0, i32 10, !dbg !461
  %72 = load i32, ptr %boottime106, align 4, !dbg !461
  %conv107 = zext i32 %72 to i64, !dbg !461
  %73 = inttoptr i64 %conv107 to ptr, !dbg !461
  br label %cond.end108, !dbg !461

cond.end108:                                      ; preds = %cond.false105, %cond.true103
  %cond109 = phi ptr [ %70, %cond.true103 ], [ %73, %cond.false105 ], !dbg !461
  %free_pool110 = getelementptr inbounds %struct.anon.0, ptr %cond109, i32 0, i32 7, !dbg !461
  %74 = load i32, ptr %free_pool110, align 8, !dbg !461
  %75 = load ptr, ptr %map, align 8, !dbg !461
  %arraydecay111 = getelementptr inbounds [3 x i64], ptr %__pad96, i64 0, i64 0, !dbg !461
  %call112 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %74, ptr noundef %75, ptr noundef %arraydecay111) #7, !dbg !461
  store i64 %call112, ptr %tmp100, align 8, !dbg !461
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad96) #6, !dbg !460
  %76 = load i64, ptr %tmp100, align 8, !dbg !461
  %call113 = call i64 @__efi64_widen_efi_status(i64 noundef %76) #7, !dbg !460
  br label %cond.end114, !dbg !460

cond.end114:                                      ; preds = %cond.end108, %cond.end92
  %cond115 = phi i64 [ %call94, %cond.end92 ], [ %call113, %cond.end108 ], !dbg !460
  br label %fail, !dbg !460

fail:                                             ; preds = %cond.end114, %if.then
  call void @llvm.dbg.label(metadata !318), !dbg !466
  %77 = load i64, ptr %status, align 8, !dbg !467
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pages) #6, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #6, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #6, !dbg !468
  ret i64 %77, !dbg !469

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone
declare !dbg !470 hidden i64 @efi_get_memory_map(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: inlinehint noredzone nounwind willreturn memory(read)
define internal zeroext i1 @efi_soft_reserve_enabled() #4 !dbg !474 {
entry:
  ret i1 false, !dbg !477
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #5 !dbg !478 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #7, !dbg !480
  ret i1 %call, !dbg !481
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #5 !dbg !482 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !486, metadata !DIExpression()), !dbg !487
  %0 = load i64, ptr %status.addr, align 8, !dbg !488
  %conv = trunc i64 %0 to i32, !dbg !488
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #7, !dbg !489
  %conv1 = zext i32 %call to i64, !dbg !489
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #7, !dbg !490
  ret i64 %call2, !dbg !491
}

; Function Attrs: noredzone
declare !dbg !492 hidden i64 @__efi64_thunk(i32 noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone nounwind
define hidden i64 @efi_relocate_kernel(ptr noundef %image_addr, i64 noundef %image_size, i64 noundef %alloc_size, i64 noundef %preferred_addr, i64 noundef %alignment, i64 noundef %min_addr) #0 !dbg !495 {
entry:
  %retval = alloca i64, align 8
  %image_addr.addr = alloca ptr, align 8
  %image_size.addr = alloca i64, align 8
  %alloc_size.addr = alloca i64, align 8
  %preferred_addr.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %min_addr.addr = alloca i64, align 8
  %cur_image_addr = alloca i64, align 8
  %new_addr = alloca i64, align 8
  %status = alloca i64, align 8
  %nr_pages = alloca i64, align 8
  %efi_addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  store ptr %image_addr, ptr %image_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_addr.addr, metadata !499, metadata !DIExpression()), !dbg !512
  store i64 %image_size, ptr %image_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %image_size.addr, metadata !500, metadata !DIExpression()), !dbg !513
  store i64 %alloc_size, ptr %alloc_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alloc_size.addr, metadata !501, metadata !DIExpression()), !dbg !514
  store i64 %preferred_addr, ptr %preferred_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %preferred_addr.addr, metadata !502, metadata !DIExpression()), !dbg !515
  store i64 %alignment, ptr %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !503, metadata !DIExpression()), !dbg !516
  store i64 %min_addr, ptr %min_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min_addr.addr, metadata !504, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_image_addr) #6, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %cur_image_addr, metadata !505, metadata !DIExpression()), !dbg !519
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_addr) #6, !dbg !520
  call void @llvm.dbg.declare(metadata ptr %new_addr, metadata !506, metadata !DIExpression()), !dbg !521
  store i64 0, ptr %new_addr, align 8, !dbg !521
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #6, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %status, metadata !507, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pages) #6, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !508, metadata !DIExpression()), !dbg !525
  call void @llvm.lifetime.start.p0(i64 8, ptr %efi_addr) #6, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %efi_addr, metadata !509, metadata !DIExpression()), !dbg !527
  %0 = load i64, ptr %preferred_addr.addr, align 8, !dbg !528
  store i64 %0, ptr %efi_addr, align 8, !dbg !527
  %1 = load ptr, ptr %image_addr.addr, align 8, !dbg !529
  %tobool = icmp ne ptr %1, null, !dbg !529
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !531

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %image_size.addr, align 8, !dbg !532
  %tobool1 = icmp ne i64 %2, 0, !dbg !532
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !533

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %alloc_size.addr, align 8, !dbg !534
  %tobool3 = icmp ne i64 %3, 0, !dbg !534
  br i1 %tobool3, label %if.end, label %if.then, !dbg !535

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i64 -9223372036854775806, ptr %retval, align 8, !dbg !536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !536

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load i64, ptr %alloc_size.addr, align 8, !dbg !537
  %5 = load i64, ptr %image_size.addr, align 8, !dbg !539
  %cmp = icmp ult i64 %4, %5, !dbg !540
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !541

if.then4:                                         ; preds = %if.end
  store i64 -9223372036854775806, ptr %retval, align 8, !dbg !542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !542

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %image_addr.addr, align 8, !dbg !543
  %7 = load i64, ptr %6, align 8, !dbg !544
  store i64 %7, ptr %cur_image_addr, align 8, !dbg !545
  %8 = load i64, ptr %alloc_size.addr, align 8, !dbg !546
  %sub = sub i64 %8, 1, !dbg !546
  %or = or i64 %sub, 4095, !dbg !546
  %add = add i64 %or, 1, !dbg !546
  %div = udiv i64 %add, 4096, !dbg !547
  store i64 %div, ptr %nr_pages, align 8, !dbg !548
  %call = call zeroext i1 @efi_is_native() #7, !dbg !549
  br i1 %call, label %cond.true, label %cond.false10, !dbg !549

cond.true:                                        ; preds = %if.end5
  %call6 = call zeroext i1 @efi_is_native() #7, !dbg !549
  br i1 %call6, label %cond.true7, label %cond.false, !dbg !549

cond.true7:                                       ; preds = %cond.true
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !549
  %boottime = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 10, !dbg !549
  %10 = load ptr, ptr %boottime, align 8, !dbg !549
  br label %cond.end, !dbg !549

cond.false:                                       ; preds = %cond.true
  %11 = load ptr, ptr @efi_system_table, align 8, !dbg !549
  %boottime8 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %11, i32 0, i32 10, !dbg !549
  %12 = load i32, ptr %boottime8, align 4, !dbg !549
  %conv = zext i32 %12 to i64, !dbg !549
  %13 = inttoptr i64 %conv to ptr, !dbg !549
  br label %cond.end, !dbg !549

cond.end:                                         ; preds = %cond.false, %cond.true7
  %cond = phi ptr [ %10, %cond.true7 ], [ %13, %cond.false ], !dbg !549
  %allocate_pages = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 3, !dbg !549
  %14 = load ptr, ptr %allocate_pages, align 8, !dbg !549
  %15 = load i64, ptr %nr_pages, align 8, !dbg !549
  %call9 = call win64cc i64 %14(i32 noundef 2, i32 noundef 2, i64 noundef %15, ptr noundef %efi_addr) #7, !dbg !549
  br label %cond.end23, !dbg !549

cond.false10:                                     ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !510, metadata !DIExpression()), !dbg !550
  br label %do.body, !dbg !551

do.body:                                          ; preds = %cond.false10
  br label %do.cond, !dbg !553

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !553

do.end:                                           ; preds = %do.cond
  %call11 = call zeroext i1 @efi_is_native() #7, !dbg !550
  br i1 %call11, label %cond.true13, label %cond.false15, !dbg !550

cond.true13:                                      ; preds = %do.end
  %16 = load ptr, ptr @efi_system_table, align 8, !dbg !550
  %boottime14 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 10, !dbg !550
  %17 = load ptr, ptr %boottime14, align 8, !dbg !550
  br label %cond.end18, !dbg !550

cond.false15:                                     ; preds = %do.end
  %18 = load ptr, ptr @efi_system_table, align 8, !dbg !550
  %boottime16 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %18, i32 0, i32 10, !dbg !550
  %19 = load i32, ptr %boottime16, align 4, !dbg !550
  %conv17 = zext i32 %19 to i64, !dbg !550
  %20 = inttoptr i64 %conv17 to ptr, !dbg !550
  br label %cond.end18, !dbg !550

cond.end18:                                       ; preds = %cond.false15, %cond.true13
  %cond19 = phi ptr [ %17, %cond.true13 ], [ %20, %cond.false15 ], !dbg !550
  %allocate_pages20 = getelementptr inbounds %struct.anon.0, ptr %cond19, i32 0, i32 3, !dbg !550
  %21 = load i32, ptr %allocate_pages20, align 8, !dbg !550
  %22 = load i64, ptr %nr_pages, align 8, !dbg !550
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !550
  %call21 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %21, i32 noundef 2, i32 noundef 2, i64 noundef %22, ptr noundef %efi_addr, ptr noundef %arraydecay) #7, !dbg !550
  store i64 %call21, ptr %tmp, align 8, !dbg !550
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !549
  %23 = load i64, ptr %tmp, align 8, !dbg !550
  %call22 = call i64 @__efi64_widen_efi_status(i64 noundef %23) #7, !dbg !549
  br label %cond.end23, !dbg !549

cond.end23:                                       ; preds = %cond.end18, %cond.end
  %cond24 = phi i64 [ %call9, %cond.end ], [ %call22, %cond.end18 ], !dbg !549
  store i64 %cond24, ptr %status, align 8, !dbg !555
  %24 = load i64, ptr %efi_addr, align 8, !dbg !556
  store i64 %24, ptr %new_addr, align 8, !dbg !557
  %25 = load i64, ptr %status, align 8, !dbg !558
  %cmp25 = icmp ne i64 %25, 0, !dbg !560
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !561

if.then27:                                        ; preds = %cond.end23
  %26 = load i64, ptr %alloc_size.addr, align 8, !dbg !562
  %27 = load i64, ptr %alignment.addr, align 8, !dbg !564
  %28 = load i64, ptr %min_addr.addr, align 8, !dbg !565
  %call28 = call i64 @efi_low_alloc_above(i64 noundef %26, i64 noundef %27, ptr noundef %new_addr, i64 noundef %28) #7, !dbg !566
  store i64 %call28, ptr %status, align 8, !dbg !567
  br label %if.end29, !dbg !568

if.end29:                                         ; preds = %if.then27, %cond.end23
  %29 = load i64, ptr %status, align 8, !dbg !569
  %cmp30 = icmp ne i64 %29, 0, !dbg !571
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !572

if.then32:                                        ; preds = %if.end29
  %call33 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str) #7, !dbg !573
  %30 = load i64, ptr %status, align 8, !dbg !575
  store i64 %30, ptr %retval, align 8, !dbg !576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !576

if.end34:                                         ; preds = %if.end29
  %31 = load i64, ptr %new_addr, align 8, !dbg !577
  %32 = inttoptr i64 %31 to ptr, !dbg !578
  %33 = load i64, ptr %cur_image_addr, align 8, !dbg !579
  %34 = inttoptr i64 %33 to ptr, !dbg !580
  %35 = load i64, ptr %image_size.addr, align 8, !dbg !581
  %call35 = call ptr @memcpy(ptr noundef %32, ptr noundef %34, i64 noundef %35) #7, !dbg !582
  %36 = load i64, ptr %new_addr, align 8, !dbg !583
  %37 = load ptr, ptr %image_addr.addr, align 8, !dbg !584
  store i64 %36, ptr %37, align 8, !dbg !585
  %38 = load i64, ptr %status, align 8, !dbg !586
  store i64 %38, ptr %retval, align 8, !dbg !587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !587

cleanup:                                          ; preds = %if.end34, %if.then32, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %efi_addr) #6, !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pages) #6, !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #6, !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_addr) #6, !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_image_addr) #6, !dbg !588
  %39 = load i64, ptr %retval, align 8, !dbg !588
  ret i64 %39, !dbg !588
}

; Function Attrs: noredzone
declare !dbg !589 hidden i32 @efi_printk(ptr noundef, ...) #3

; Function Attrs: noredzone
declare !dbg !594 hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #5 !dbg !602 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !603, !range !604, !noundef !605
  %tobool = trunc i8 %0 to i1, !dbg !603
  ret i1 %tobool, !dbg !606
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #5 !dbg !607 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !612, metadata !DIExpression()), !dbg !614
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !613, metadata !DIExpression()), !dbg !615
  %0 = load i64, ptr %word.addr, align 8, !dbg !616
  %1 = load i32, ptr %shift.addr, align 4, !dbg !617
  %and = and i32 %1, 63, !dbg !618
  %sh_prom = zext i32 %and to i64, !dbg !619
  %shr = lshr i64 %0, %sh_prom, !dbg !619
  %2 = load i64, ptr %word.addr, align 8, !dbg !620
  %3 = load i32, ptr %shift.addr, align 4, !dbg !621
  %sub = sub i32 0, %3, !dbg !622
  %and1 = and i32 %sub, 63, !dbg !623
  %sh_prom2 = zext i32 %and1 to i64, !dbg !624
  %shl = shl i64 %2, %sh_prom2, !dbg !624
  %or = or i64 %shr, %shl, !dbg !625
  ret i64 %or, !dbg !626
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #5 !dbg !627 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !631, metadata !DIExpression()), !dbg !633
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !632, metadata !DIExpression()), !dbg !634
  %0 = load i32, ptr %word.addr, align 4, !dbg !635
  %1 = load i32, ptr %shift.addr, align 4, !dbg !636
  %and = and i32 %1, 31, !dbg !637
  %shl = shl i32 %0, %and, !dbg !638
  %2 = load i32, ptr %word.addr, align 4, !dbg !639
  %3 = load i32, ptr %shift.addr, align 4, !dbg !640
  %sub = sub i32 0, %3, !dbg !641
  %and1 = and i32 %sub, 31, !dbg !642
  %shr = lshr i32 %2, %and1, !dbg !643
  %or = or i32 %shl, %shr, !dbg !644
  ret i32 %or, !dbg !645
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { inlinehint noredzone nounwind willreturn memory(read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone "no-builtins" }
attributes #8 = { nobuiltin noredzone nounwind willreturn memory(read) "no-builtins" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/libstub/relocate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6f470b60803aa2bbd468901159df544")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 55)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.relocate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/relocate\22 -D KBUILD_BASENAME=\22relocate\22 -D KBUILD_MODNAME=\22relocate\22 -D __KBUILD_MODNAME=kmod_relocate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/relocate.ll drivers/firmware/efi/libstub/relocate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !21, globals: !273, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !15}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 10, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "false", value: 0)
!14 = !DIEnumerator(name: "true", value: 1)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 243, baseType: !11, size: 32, elements: !17)
!16 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!19 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!20 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!21 = !{!22, !23, !41, !35, !42}
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !25, line: 145, baseType: !26)
!25 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 138, size: 320, elements: !27)
!27 = !{!28, !33, !34, !38, !39, !40}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !25, line: 139, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !30, line: 21, baseType: !31)
!30 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !32, line: 27, baseType: !11)
!32 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !26, file: !25, line: 140, baseType: !29, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !26, file: !25, line: 141, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !30, line: 23, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !32, line: 31, baseType: !37)
!37 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !26, file: !25, line: 142, baseType: !35, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !26, file: !25, line: 143, baseType: !35, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !26, file: !25, line: 144, baseType: !35, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !25, line: 250, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !16, line: 252, size: 3008, elements: !45)
!45 = !{!46, !225}
!46 = !DIDerivedType(tag: DW_TAG_member, scope: !44, file: !16, line: 253, baseType: !47, size: 3008)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !16, line: 253, size: 3008, elements: !48)
!48 = !{!49, !58, !59, !60, !68, !72, !78, !83, !87, !97, !102, !106, !107, !111, !112, !113, !114, !115, !132, !133, !134, !139, !155, !159, !166, !173, !177, !181, !185, !186, !190, !191, !192, !196, !197, !198, !199, !200, !201, !205, !209, !213, !214, !220, !224}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !47, file: !16, line: 254, baseType: !50, size: 192)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !25, line: 90, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 84, size: 192, elements: !52)
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !51, file: !25, line: 85, baseType: !35, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !51, file: !25, line: 86, baseType: !29, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !51, file: !25, line: 87, baseType: !29, size: 32, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !51, file: !25, line: 88, baseType: !29, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !51, file: !25, line: 89, baseType: !29, size: 32, offset: 160)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !47, file: !16, line: 255, baseType: !41, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !47, file: !16, line: 256, baseType: !41, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !47, file: !16, line: 257, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !63)
!63 = !{!64, !65, !65, !22, !66}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !25, line: 47, baseType: !22)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !25, line: 50, baseType: !35)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !47, file: !16, line: 259, baseType: !69, size: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !71)
!71 = !{!64, !67, !22}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !47, file: !16, line: 261, baseType: !73, size: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !75)
!75 = !{!64, !76, !41, !76, !76, !77}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !47, file: !16, line: 264, baseType: !79, size: 64, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !81)
!81 = !{!64, !65, !22, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !47, file: !16, line: 266, baseType: !84, size: 64, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !86)
!86 = !{!64, !41}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !47, file: !16, line: 267, baseType: !88, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !90)
!90 = !{!64, !29, !22, !91, !41, !96}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !16, line: 212, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !94)
!94 = !{null, !95, !41}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !16, line: 210, baseType: !41)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !47, file: !16, line: 270, baseType: !98, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !100)
!100 = !{!64, !95, !101, !35}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !16, line: 247, baseType: !15)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !47, file: !16, line: 272, baseType: !103, size: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !105)
!105 = !{!64, !22, !96, !76}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !47, file: !16, line: 275, baseType: !41, size: 64, offset: 832)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !47, file: !16, line: 276, baseType: !108, size: 64, offset: 896)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !110)
!110 = !{!64, !95}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !47, file: !16, line: 277, baseType: !41, size: 64, offset: 960)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !47, file: !16, line: 278, baseType: !41, size: 64, offset: 1024)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !47, file: !16, line: 279, baseType: !41, size: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !47, file: !16, line: 280, baseType: !41, size: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !47, file: !16, line: 281, baseType: !116, size: 64, offset: 1216)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !118)
!118 = !{!64, !119, !120, !82}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !25, line: 51, baseType: !41)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !25, line: 74, baseType: !122, align: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !123, line: 17, baseType: !124)
!123 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 15, size: 128, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !124, file: !123, line: 16, baseType: !127, size: 128)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !130)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !32, line: 21, baseType: !129)
!129 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !{!131}
!131 = !DISubrange(count: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !47, file: !16, line: 283, baseType: !41, size: 64, offset: 1280)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !47, file: !16, line: 284, baseType: !41, size: 64, offset: 1344)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !47, file: !16, line: 285, baseType: !135, size: 64, offset: 1408)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !137)
!137 = !{!64, !65, !120, !41, !76, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !47, file: !16, line: 288, baseType: !140, size: 64, offset: 1472)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !142)
!142 = !{!64, !120, !143, !138}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !16, line: 176, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !25, line: 985, size: 32, elements: !147)
!147 = !{!148, !150, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !25, line: 986, baseType: !149, size: 8)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !30, line: 17, baseType: !128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !146, file: !25, line: 987, baseType: !149, size: 8, offset: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !146, file: !25, line: 988, baseType: !152, size: 16, offset: 16)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !30, line: 19, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !32, line: 24, baseType: !154)
!154 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !47, file: !16, line: 291, baseType: !156, size: 64, offset: 1536)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !158)
!158 = !{!64, !120, !41}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !47, file: !16, line: 293, baseType: !160, size: 64, offset: 1600)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !162)
!162 = !{!64, !163, !119, !144, !41, !22, !138}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !164, line: 35, baseType: !165)
!164 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!165 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !47, file: !16, line: 297, baseType: !167, size: 64, offset: 1664)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !169)
!169 = !{!64, !119, !76, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !25, line: 49, baseType: !152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !47, file: !16, line: 299, baseType: !174, size: 64, offset: 1728)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !176)
!176 = !{!64, !119, !64, !22, !171}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !47, file: !16, line: 303, baseType: !178, size: 64, offset: 1792)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !180)
!180 = !{!64, !119}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !47, file: !16, line: 304, baseType: !182, size: 64, offset: 1856)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !184)
!184 = !{!64, !119, !22}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !47, file: !16, line: 306, baseType: !41, size: 64, offset: 1920)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !47, file: !16, line: 307, baseType: !187, size: 64, offset: 1984)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !189)
!189 = !{!64, !22}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !47, file: !16, line: 308, baseType: !41, size: 64, offset: 2048)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !47, file: !16, line: 309, baseType: !41, size: 64, offset: 2112)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !47, file: !16, line: 310, baseType: !193, size: 64, offset: 2176)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !195)
!195 = !{!64, !119, !119, !119}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !47, file: !16, line: 313, baseType: !41, size: 64, offset: 2240)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !47, file: !16, line: 314, baseType: !41, size: 64, offset: 2304)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !47, file: !16, line: 315, baseType: !41, size: 64, offset: 2368)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !47, file: !16, line: 316, baseType: !41, size: 64, offset: 2432)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !47, file: !16, line: 317, baseType: !41, size: 64, offset: 2496)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !47, file: !16, line: 318, baseType: !202, size: 64, offset: 2560)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !204)
!204 = !{!64, !120, !41, !82}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !47, file: !16, line: 320, baseType: !206, size: 64, offset: 2624)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !208)
!208 = !{!64, !138, null}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !47, file: !16, line: 321, baseType: !210, size: 64, offset: 2688)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !212)
!212 = !{!64, !119, null}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !47, file: !16, line: 322, baseType: !41, size: 64, offset: 2752)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !47, file: !16, line: 323, baseType: !215, size: 64, offset: 2816)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !217)
!217 = !{null, !41, !218, !22}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !47, file: !16, line: 324, baseType: !221, size: 64, offset: 2880)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !223)
!223 = !{null, !41, !22, !129}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !47, file: !16, line: 325, baseType: !41, size: 64, offset: 2944)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !44, file: !16, line: 373, baseType: !226, size: 1600)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !16, line: 327, size: 1600, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !226, file: !16, line: 328, baseType: !50, size: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !226, file: !16, line: 329, baseType: !29, size: 32, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !226, file: !16, line: 330, baseType: !29, size: 32, offset: 224)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !226, file: !16, line: 331, baseType: !29, size: 32, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !226, file: !16, line: 332, baseType: !29, size: 32, offset: 288)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !226, file: !16, line: 333, baseType: !29, size: 32, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !226, file: !16, line: 334, baseType: !29, size: 32, offset: 352)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !226, file: !16, line: 335, baseType: !29, size: 32, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !226, file: !16, line: 336, baseType: !29, size: 32, offset: 416)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !226, file: !16, line: 337, baseType: !29, size: 32, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !226, file: !16, line: 338, baseType: !29, size: 32, offset: 480)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !226, file: !16, line: 339, baseType: !29, size: 32, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !226, file: !16, line: 340, baseType: !29, size: 32, offset: 544)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !226, file: !16, line: 341, baseType: !29, size: 32, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !226, file: !16, line: 342, baseType: !29, size: 32, offset: 608)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !226, file: !16, line: 343, baseType: !29, size: 32, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !226, file: !16, line: 344, baseType: !29, size: 32, offset: 672)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !226, file: !16, line: 345, baseType: !29, size: 32, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !226, file: !16, line: 346, baseType: !29, size: 32, offset: 736)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !226, file: !16, line: 347, baseType: !29, size: 32, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !226, file: !16, line: 348, baseType: !29, size: 32, offset: 800)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !226, file: !16, line: 349, baseType: !29, size: 32, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !226, file: !16, line: 350, baseType: !29, size: 32, offset: 864)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !226, file: !16, line: 351, baseType: !29, size: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !226, file: !16, line: 352, baseType: !29, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !226, file: !16, line: 353, baseType: !29, size: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !226, file: !16, line: 354, baseType: !29, size: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !226, file: !16, line: 355, baseType: !29, size: 32, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !226, file: !16, line: 356, baseType: !29, size: 32, offset: 1056)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !226, file: !16, line: 357, baseType: !29, size: 32, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !226, file: !16, line: 358, baseType: !29, size: 32, offset: 1120)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !226, file: !16, line: 359, baseType: !29, size: 32, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !226, file: !16, line: 360, baseType: !29, size: 32, offset: 1184)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !226, file: !16, line: 361, baseType: !29, size: 32, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !226, file: !16, line: 362, baseType: !29, size: 32, offset: 1248)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !226, file: !16, line: 363, baseType: !29, size: 32, offset: 1280)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !226, file: !16, line: 364, baseType: !29, size: 32, offset: 1312)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !226, file: !16, line: 365, baseType: !29, size: 32, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !226, file: !16, line: 366, baseType: !29, size: 32, offset: 1376)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !226, file: !16, line: 367, baseType: !29, size: 32, offset: 1408)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !226, file: !16, line: 368, baseType: !29, size: 32, offset: 1440)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !226, file: !16, line: 369, baseType: !29, size: 32, offset: 1472)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !226, file: !16, line: 370, baseType: !29, size: 32, offset: 1504)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !226, file: !16, line: 371, baseType: !29, size: 32, offset: 1536)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !226, file: !16, line: 372, baseType: !29, size: 32, offset: 1568)
!273 = !{!0}
!274 = !{i32 7, !"Dwarf Version", i32 5}
!275 = !{i32 2, !"Debug Info Version", i32 3}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 8, !"PIC Level", i32 2}
!278 = !{i32 1, !"Code Model", i32 1}
!279 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!280 = distinct !DISubprogram(name: "efi_low_alloc_above", scope: !2, file: !2, line: 23, type: !281, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{!64, !22, !22, !76, !22}
!283 = !{!284, !285, !286, !287, !288, !301, !302, !303, !304, !308, !309, !310, !311, !316, !318}
!284 = !DILocalVariable(name: "size", arg: 1, scope: !280, file: !2, line: 23, type: !22)
!285 = !DILocalVariable(name: "align", arg: 2, scope: !280, file: !2, line: 23, type: !22)
!286 = !DILocalVariable(name: "addr", arg: 3, scope: !280, file: !2, line: 24, type: !76)
!287 = !DILocalVariable(name: "min", arg: 4, scope: !280, file: !2, line: 24, type: !22)
!288 = !DILocalVariable(name: "map", scope: !280, file: !2, line: 26, type: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_boot_memmap", file: !25, line: 535, size: 320, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "map_size", scope: !290, file: !25, line: 536, baseType: !22, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "desc_size", scope: !290, file: !25, line: 537, baseType: !22, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "desc_ver", scope: !290, file: !25, line: 538, baseType: !29, size: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "map_key", scope: !290, file: !25, line: 539, baseType: !22, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "buff_size", scope: !290, file: !25, line: 540, baseType: !22, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !290, file: !25, line: 541, baseType: !298, offset: 320)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: -1)
!301 = !DILocalVariable(name: "status", scope: !280, file: !2, line: 27, type: !64)
!302 = !DILocalVariable(name: "nr_pages", scope: !280, file: !2, line: 28, type: !22)
!303 = !DILocalVariable(name: "i", scope: !280, file: !2, line: 29, type: !65)
!304 = !DILocalVariable(name: "desc", scope: !305, file: !2, line: 47, type: !23)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 46, column: 55)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 46, column: 2)
!307 = distinct !DILexicalBlock(scope: !280, file: !2, line: 46, column: 2)
!308 = !DILocalVariable(name: "m", scope: !305, file: !2, line: 48, type: !22)
!309 = !DILocalVariable(name: "start", scope: !305, file: !2, line: 49, type: !35)
!310 = !DILocalVariable(name: "end", scope: !305, file: !2, line: 49, type: !35)
!311 = !DILocalVariable(name: "__pad", scope: !312, file: !2, line: 76, type: !313)
!312 = distinct !DILexicalBlock(scope: !305, file: !2, line: 76, column: 12)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 3)
!316 = !DILocalVariable(name: "__pad", scope: !317, file: !2, line: 87, type: !313)
!317 = distinct !DILexicalBlock(scope: !280, file: !2, line: 87, column: 2)
!318 = !DILabel(scope: !280, name: "fail", file: !2, line: 88)
!319 = !DILocation(line: 23, column: 48, scope: !280)
!320 = !DILocation(line: 23, column: 68, scope: !280)
!321 = !DILocation(line: 24, column: 21, scope: !280)
!322 = !DILocation(line: 24, column: 41, scope: !280)
!323 = !DILocation(line: 26, column: 2, scope: !280)
!324 = !DILocation(line: 26, column: 26, scope: !280)
!325 = !DILocation(line: 27, column: 2, scope: !280)
!326 = !DILocation(line: 27, column: 15, scope: !280)
!327 = !DILocation(line: 28, column: 2, scope: !280)
!328 = !DILocation(line: 28, column: 16, scope: !280)
!329 = !DILocation(line: 29, column: 2, scope: !280)
!330 = !DILocation(line: 29, column: 6, scope: !280)
!331 = !DILocation(line: 31, column: 11, scope: !280)
!332 = !DILocation(line: 31, column: 9, scope: !280)
!333 = !DILocation(line: 32, column: 6, scope: !334)
!334 = distinct !DILexicalBlock(scope: !280, file: !2, line: 32, column: 6)
!335 = !DILocation(line: 32, column: 13, scope: !334)
!336 = !DILocation(line: 32, column: 6, scope: !280)
!337 = !DILocation(line: 33, column: 3, scope: !334)
!338 = !DILocation(line: 41, column: 6, scope: !339)
!339 = distinct !DILexicalBlock(scope: !280, file: !2, line: 41, column: 6)
!340 = !DILocation(line: 41, column: 12, scope: !339)
!341 = !DILocation(line: 41, column: 6, scope: !280)
!342 = !DILocation(line: 42, column: 9, scope: !339)
!343 = !DILocation(line: 42, column: 3, scope: !339)
!344 = !DILocation(line: 44, column: 9, scope: !280)
!345 = !DILocation(line: 44, column: 7, scope: !280)
!346 = !DILocation(line: 45, column: 13, scope: !280)
!347 = !DILocation(line: 45, column: 18, scope: !280)
!348 = !DILocation(line: 45, column: 11, scope: !280)
!349 = !DILocation(line: 46, column: 9, scope: !307)
!350 = !DILocation(line: 46, column: 7, scope: !307)
!351 = !DILocation(line: 46, column: 14, scope: !306)
!352 = !DILocation(line: 46, column: 18, scope: !306)
!353 = !DILocation(line: 46, column: 23, scope: !306)
!354 = !DILocation(line: 46, column: 34, scope: !306)
!355 = !DILocation(line: 46, column: 39, scope: !306)
!356 = !DILocation(line: 46, column: 32, scope: !306)
!357 = !DILocation(line: 46, column: 16, scope: !306)
!358 = !DILocation(line: 46, column: 2, scope: !307)
!359 = !DILocation(line: 47, column: 3, scope: !305)
!360 = !DILocation(line: 47, column: 22, scope: !305)
!361 = !DILocation(line: 48, column: 3, scope: !305)
!362 = !DILocation(line: 48, column: 17, scope: !305)
!363 = !DILocation(line: 48, column: 36, scope: !305)
!364 = !DILocation(line: 48, column: 41, scope: !305)
!365 = !DILocation(line: 48, column: 21, scope: !305)
!366 = !DILocation(line: 49, column: 3, scope: !305)
!367 = !DILocation(line: 49, column: 7, scope: !305)
!368 = !DILocation(line: 49, column: 14, scope: !305)
!369 = !DILocation(line: 51, column: 10, scope: !305)
!370 = !DILocation(line: 51, column: 8, scope: !305)
!371 = !DILocation(line: 53, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !305, file: !2, line: 53, column: 7)
!373 = !DILocation(line: 53, column: 13, scope: !372)
!374 = !DILocation(line: 53, column: 18, scope: !372)
!375 = !DILocation(line: 53, column: 7, scope: !305)
!376 = !DILocation(line: 54, column: 4, scope: !372)
!377 = !DILocation(line: 56, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !305, file: !2, line: 56, column: 7)
!379 = !DILocation(line: 56, column: 13, scope: !378)
!380 = !DILocation(line: 56, column: 23, scope: !378)
!381 = !DILocation(line: 56, column: 7, scope: !305)
!382 = !DILocation(line: 57, column: 4, scope: !378)
!383 = !DILocation(line: 59, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !305, file: !2, line: 59, column: 7)
!385 = !DILocation(line: 59, column: 34, scope: !384)
!386 = !DILocation(line: 60, column: 8, scope: !384)
!387 = !DILocation(line: 60, column: 14, scope: !384)
!388 = !DILocation(line: 60, column: 24, scope: !384)
!389 = !DILocation(line: 59, column: 7, scope: !305)
!390 = !DILocation(line: 61, column: 4, scope: !384)
!391 = !DILocation(line: 63, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !305, file: !2, line: 63, column: 7)
!393 = !DILocation(line: 63, column: 13, scope: !392)
!394 = !DILocation(line: 63, column: 25, scope: !392)
!395 = !DILocation(line: 63, column: 23, scope: !392)
!396 = !DILocation(line: 63, column: 7, scope: !305)
!397 = !DILocation(line: 64, column: 4, scope: !392)
!398 = !DILocation(line: 66, column: 11, scope: !305)
!399 = !DILocation(line: 66, column: 17, scope: !305)
!400 = !DILocation(line: 66, column: 9, scope: !305)
!401 = !DILocation(line: 67, column: 9, scope: !305)
!402 = !DILocation(line: 67, column: 17, scope: !305)
!403 = !DILocation(line: 67, column: 23, scope: !305)
!404 = !DILocation(line: 67, column: 33, scope: !305)
!405 = !DILocation(line: 67, column: 15, scope: !305)
!406 = !DILocation(line: 67, column: 7, scope: !305)
!407 = !DILocation(line: 69, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !305, file: !2, line: 69, column: 7)
!409 = !DILocation(line: 69, column: 15, scope: !408)
!410 = !DILocation(line: 69, column: 13, scope: !408)
!411 = !DILocation(line: 69, column: 7, scope: !305)
!412 = !DILocation(line: 70, column: 12, scope: !408)
!413 = !DILocation(line: 70, column: 10, scope: !408)
!414 = !DILocation(line: 70, column: 4, scope: !408)
!415 = !DILocation(line: 72, column: 11, scope: !305)
!416 = !DILocation(line: 72, column: 9, scope: !305)
!417 = !DILocation(line: 73, column: 8, scope: !418)
!418 = distinct !DILexicalBlock(scope: !305, file: !2, line: 73, column: 7)
!419 = !DILocation(line: 73, column: 16, scope: !418)
!420 = !DILocation(line: 73, column: 14, scope: !418)
!421 = !DILocation(line: 73, column: 24, scope: !418)
!422 = !DILocation(line: 73, column: 22, scope: !418)
!423 = !DILocation(line: 73, column: 7, scope: !305)
!424 = !DILocation(line: 74, column: 4, scope: !418)
!425 = !DILocation(line: 76, column: 12, scope: !305)
!426 = !DILocation(line: 76, column: 12, scope: !312)
!427 = !DILocation(line: 76, column: 12, scope: !428)
!428 = distinct !DILexicalBlock(scope: !312, file: !2, line: 76, column: 12)
!429 = !DILocation(line: 76, column: 12, scope: !430)
!430 = distinct !DILexicalBlock(scope: !428, file: !2, line: 76, column: 12)
!431 = !DILocation(line: 76, column: 10, scope: !305)
!432 = !DILocation(line: 78, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !305, file: !2, line: 78, column: 7)
!434 = !DILocation(line: 78, column: 14, scope: !433)
!435 = !DILocation(line: 78, column: 7, scope: !305)
!436 = !DILocation(line: 79, column: 12, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !2, line: 78, column: 30)
!438 = !DILocation(line: 79, column: 5, scope: !437)
!439 = !DILocation(line: 79, column: 10, scope: !437)
!440 = !DILocation(line: 80, column: 4, scope: !437)
!441 = !DILocation(line: 82, column: 2, scope: !306)
!442 = !DILocation(line: 82, column: 2, scope: !305)
!443 = !DILocation(line: 46, column: 51, scope: !306)
!444 = !DILocation(line: 46, column: 2, scope: !306)
!445 = distinct !{!445, !358, !446, !447, !448}
!446 = !DILocation(line: 82, column: 2, scope: !307)
!447 = !{!"llvm.loop.mustprogress"}
!448 = !{!"llvm.loop.unroll.disable"}
!449 = !DILocation(line: 84, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !280, file: !2, line: 84, column: 6)
!451 = !DILocation(line: 84, column: 11, scope: !450)
!452 = !DILocation(line: 84, column: 16, scope: !450)
!453 = !DILocation(line: 84, column: 27, scope: !450)
!454 = !DILocation(line: 84, column: 32, scope: !450)
!455 = !DILocation(line: 84, column: 25, scope: !450)
!456 = !DILocation(line: 84, column: 8, scope: !450)
!457 = !DILocation(line: 84, column: 6, scope: !280)
!458 = !DILocation(line: 85, column: 10, scope: !450)
!459 = !DILocation(line: 85, column: 3, scope: !450)
!460 = !DILocation(line: 87, column: 2, scope: !280)
!461 = !DILocation(line: 87, column: 2, scope: !317)
!462 = !DILocation(line: 87, column: 2, scope: !463)
!463 = distinct !DILexicalBlock(scope: !317, file: !2, line: 87, column: 2)
!464 = !DILocation(line: 87, column: 2, scope: !465)
!465 = distinct !DILexicalBlock(scope: !463, file: !2, line: 87, column: 2)
!466 = !DILocation(line: 88, column: 1, scope: !280)
!467 = !DILocation(line: 89, column: 9, scope: !280)
!468 = !DILocation(line: 90, column: 1, scope: !280)
!469 = !DILocation(line: 89, column: 2, scope: !280)
!470 = !DISubprogram(name: "efi_get_memory_map", scope: !16, file: !16, line: 980, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DISubroutineType(types: !472)
!472 = !{!64, !473, !163}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!474 = distinct !DISubprogram(name: "efi_soft_reserve_enabled", scope: !25, file: !25, line: 888, type: !475, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!475 = !DISubroutineType(types: !476)
!476 = !{!163}
!477 = !DILocation(line: 890, column: 2, scope: !474)
!478 = distinct !DISubprogram(name: "efi_is_native", scope: !479, file: !479, line: 205, type: !475, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!479 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!480 = !DILocation(line: 207, column: 9, scope: !478)
!481 = !DILocation(line: 207, column: 2, scope: !478)
!482 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !479, file: !479, line: 346, type: !483, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!64, !35}
!485 = !{!486}
!486 = !DILocalVariable(name: "status", arg: 1, scope: !482, file: !479, line: 346, type: !35)
!487 = !DILocation(line: 346, column: 57, scope: !482)
!488 = !DILocation(line: 349, column: 21, scope: !482)
!489 = !DILocation(line: 349, column: 15, scope: !482)
!490 = !DILocation(line: 349, column: 9, scope: !482)
!491 = !DILocation(line: 349, column: 2, scope: !482)
!492 = !DISubprogram(name: "__efi64_thunk", scope: !479, file: !479, line: 158, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DISubroutineType(types: !494)
!494 = !{!35, !29, null}
!495 = distinct !DISubprogram(name: "efi_relocate_kernel", scope: !2, file: !2, line: 113, type: !496, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!64, !76, !22, !22, !22, !22, !22}
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!499 = !DILocalVariable(name: "image_addr", arg: 1, scope: !495, file: !2, line: 113, type: !76)
!500 = !DILocalVariable(name: "image_size", arg: 2, scope: !495, file: !2, line: 114, type: !22)
!501 = !DILocalVariable(name: "alloc_size", arg: 3, scope: !495, file: !2, line: 115, type: !22)
!502 = !DILocalVariable(name: "preferred_addr", arg: 4, scope: !495, file: !2, line: 116, type: !22)
!503 = !DILocalVariable(name: "alignment", arg: 5, scope: !495, file: !2, line: 117, type: !22)
!504 = !DILocalVariable(name: "min_addr", arg: 6, scope: !495, file: !2, line: 118, type: !22)
!505 = !DILocalVariable(name: "cur_image_addr", scope: !495, file: !2, line: 120, type: !22)
!506 = !DILocalVariable(name: "new_addr", scope: !495, file: !2, line: 121, type: !22)
!507 = !DILocalVariable(name: "status", scope: !495, file: !2, line: 122, type: !64)
!508 = !DILocalVariable(name: "nr_pages", scope: !495, file: !2, line: 123, type: !22)
!509 = !DILocalVariable(name: "efi_addr", scope: !495, file: !2, line: 124, type: !67)
!510 = !DILocalVariable(name: "__pad", scope: !511, file: !2, line: 142, type: !313)
!511 = distinct !DILexicalBlock(scope: !495, file: !2, line: 142, column: 11)
!512 = !DILocation(line: 113, column: 49, scope: !495)
!513 = !DILocation(line: 114, column: 20, scope: !495)
!514 = !DILocation(line: 115, column: 20, scope: !495)
!515 = !DILocation(line: 116, column: 20, scope: !495)
!516 = !DILocation(line: 117, column: 20, scope: !495)
!517 = !DILocation(line: 118, column: 20, scope: !495)
!518 = !DILocation(line: 120, column: 2, scope: !495)
!519 = !DILocation(line: 120, column: 16, scope: !495)
!520 = !DILocation(line: 121, column: 2, scope: !495)
!521 = !DILocation(line: 121, column: 16, scope: !495)
!522 = !DILocation(line: 122, column: 2, scope: !495)
!523 = !DILocation(line: 122, column: 15, scope: !495)
!524 = !DILocation(line: 123, column: 2, scope: !495)
!525 = !DILocation(line: 123, column: 16, scope: !495)
!526 = !DILocation(line: 124, column: 2, scope: !495)
!527 = !DILocation(line: 124, column: 22, scope: !495)
!528 = !DILocation(line: 124, column: 33, scope: !495)
!529 = !DILocation(line: 126, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !495, file: !2, line: 126, column: 6)
!531 = !DILocation(line: 126, column: 18, scope: !530)
!532 = !DILocation(line: 126, column: 22, scope: !530)
!533 = !DILocation(line: 126, column: 33, scope: !530)
!534 = !DILocation(line: 126, column: 37, scope: !530)
!535 = !DILocation(line: 126, column: 6, scope: !495)
!536 = !DILocation(line: 127, column: 3, scope: !530)
!537 = !DILocation(line: 128, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !495, file: !2, line: 128, column: 6)
!539 = !DILocation(line: 128, column: 19, scope: !538)
!540 = !DILocation(line: 128, column: 17, scope: !538)
!541 = !DILocation(line: 128, column: 6, scope: !495)
!542 = !DILocation(line: 129, column: 3, scope: !538)
!543 = !DILocation(line: 131, column: 20, scope: !495)
!544 = !DILocation(line: 131, column: 19, scope: !495)
!545 = !DILocation(line: 131, column: 17, scope: !495)
!546 = !DILocation(line: 141, column: 13, scope: !495)
!547 = !DILocation(line: 141, column: 51, scope: !495)
!548 = !DILocation(line: 141, column: 11, scope: !495)
!549 = !DILocation(line: 142, column: 11, scope: !495)
!550 = !DILocation(line: 142, column: 11, scope: !511)
!551 = !DILocation(line: 142, column: 11, scope: !552)
!552 = distinct !DILexicalBlock(scope: !511, file: !2, line: 142, column: 11)
!553 = !DILocation(line: 142, column: 11, scope: !554)
!554 = distinct !DILexicalBlock(scope: !552, file: !2, line: 142, column: 11)
!555 = !DILocation(line: 142, column: 9, scope: !495)
!556 = !DILocation(line: 144, column: 13, scope: !495)
!557 = !DILocation(line: 144, column: 11, scope: !495)
!558 = !DILocation(line: 149, column: 6, scope: !559)
!559 = distinct !DILexicalBlock(scope: !495, file: !2, line: 149, column: 6)
!560 = !DILocation(line: 149, column: 13, scope: !559)
!561 = !DILocation(line: 149, column: 6, scope: !495)
!562 = !DILocation(line: 150, column: 32, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !2, line: 149, column: 29)
!564 = !DILocation(line: 150, column: 44, scope: !563)
!565 = !DILocation(line: 151, column: 11, scope: !563)
!566 = !DILocation(line: 150, column: 12, scope: !563)
!567 = !DILocation(line: 150, column: 10, scope: !563)
!568 = !DILocation(line: 152, column: 2, scope: !563)
!569 = !DILocation(line: 153, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !495, file: !2, line: 153, column: 6)
!571 = !DILocation(line: 153, column: 13, scope: !570)
!572 = !DILocation(line: 153, column: 6, scope: !495)
!573 = !DILocation(line: 154, column: 3, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !2, line: 153, column: 29)
!575 = !DILocation(line: 155, column: 10, scope: !574)
!576 = !DILocation(line: 155, column: 3, scope: !574)
!577 = !DILocation(line: 162, column: 17, scope: !495)
!578 = !DILocation(line: 162, column: 9, scope: !495)
!579 = !DILocation(line: 162, column: 35, scope: !495)
!580 = !DILocation(line: 162, column: 27, scope: !495)
!581 = !DILocation(line: 162, column: 51, scope: !495)
!582 = !DILocation(line: 162, column: 2, scope: !495)
!583 = !DILocation(line: 165, column: 16, scope: !495)
!584 = !DILocation(line: 165, column: 3, scope: !495)
!585 = !DILocation(line: 165, column: 14, scope: !495)
!586 = !DILocation(line: 167, column: 9, scope: !495)
!587 = !DILocation(line: 167, column: 2, scope: !495)
!588 = !DILocation(line: 168, column: 1, scope: !495)
!589 = !DISubprogram(name: "efi_printk", scope: !16, file: !16, line: 972, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DISubroutineType(types: !591)
!591 = !{!65, !592, null}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!594 = !DISubprogram(name: "memcpy", scope: !595, file: !595, line: 18, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!596 = !DISubroutineType(types: !597)
!597 = !{!41, !41, !218, !598}
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 61, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !600, line: 72, baseType: !601)
!600 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !600, line: 16, baseType: !22)
!602 = distinct !DISubprogram(name: "efi_is_64bit", scope: !479, file: !479, line: 198, type: !475, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!603 = !DILocation(line: 202, column: 9, scope: !602)
!604 = !{i8 0, i8 2}
!605 = !{}
!606 = !DILocation(line: 202, column: 2, scope: !602)
!607 = distinct !DISubprogram(name: "ror64", scope: !608, file: !608, line: 115, type: !609, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !611)
!608 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!609 = !DISubroutineType(types: !610)
!610 = !{!36, !36, !11}
!611 = !{!612, !613}
!612 = !DILocalVariable(name: "word", arg: 1, scope: !607, file: !608, line: 115, type: !36)
!613 = !DILocalVariable(name: "shift", arg: 2, scope: !607, file: !608, line: 115, type: !11)
!614 = !DILocation(line: 115, column: 33, scope: !607)
!615 = !DILocation(line: 115, column: 52, scope: !607)
!616 = !DILocation(line: 117, column: 10, scope: !607)
!617 = !DILocation(line: 117, column: 19, scope: !607)
!618 = !DILocation(line: 117, column: 25, scope: !607)
!619 = !DILocation(line: 117, column: 15, scope: !607)
!620 = !DILocation(line: 117, column: 35, scope: !607)
!621 = !DILocation(line: 117, column: 46, scope: !607)
!622 = !DILocation(line: 117, column: 45, scope: !607)
!623 = !DILocation(line: 117, column: 53, scope: !607)
!624 = !DILocation(line: 117, column: 40, scope: !607)
!625 = !DILocation(line: 117, column: 32, scope: !607)
!626 = !DILocation(line: 117, column: 2, scope: !607)
!627 = distinct !DISubprogram(name: "rol32", scope: !608, file: !608, line: 125, type: !628, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!31, !31, !11}
!630 = !{!631, !632}
!631 = !DILocalVariable(name: "word", arg: 1, scope: !627, file: !608, line: 125, type: !31)
!632 = !DILocalVariable(name: "shift", arg: 2, scope: !627, file: !608, line: 125, type: !11)
!633 = !DILocation(line: 125, column: 33, scope: !627)
!634 = !DILocation(line: 125, column: 52, scope: !627)
!635 = !DILocation(line: 127, column: 10, scope: !627)
!636 = !DILocation(line: 127, column: 19, scope: !627)
!637 = !DILocation(line: 127, column: 25, scope: !627)
!638 = !DILocation(line: 127, column: 15, scope: !627)
!639 = !DILocation(line: 127, column: 35, scope: !627)
!640 = !DILocation(line: 127, column: 46, scope: !627)
!641 = !DILocation(line: 127, column: 45, scope: !627)
!642 = !DILocation(line: 127, column: 53, scope: !627)
!643 = !DILocation(line: 127, column: 40, scope: !627)
!644 = !DILocation(line: 127, column: 32, scope: !627)
!645 = !DILocation(line: 127, column: 2, scope: !627)
